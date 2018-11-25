package org.etl.process.onethread

import java.io.File
import java.util.Arrays
import java.util.Collections
import java.util.Date
import java.util.TimeZone

import org.etl.command.Context
import org.etl.sparrow.Action
import org.etl.sparrow.GooglecalPUT
import org.etl.util.ResourceAccess

import com.google.api.client.googleapis.auth.oauth2.GoogleCredential
import com.google.api.client.googleapis.javanet.GoogleNetHttpTransport
import com.google.api.client.json.JsonFactory
import com.google.api.client.json.jackson2.JacksonFactory
import com.google.api.client.util.DateTime
import com.google.api.client.util.store.FileDataStoreFactory
import com.google.api.services.calendar.model.Event
import com.google.api.services.calendar.model.EventDateTime
import com.typesafe.scalalogging.LazyLogging
import org.etl.command.CommandProxy
import org.etl.util.ParameterisationEngine
import java.util.concurrent.atomic.AtomicInteger
import org.etl.config.ConfigurationService

class GoogleCalendarAction extends org.etl.command.Action with LazyLogging {
  val DEFAULT_TIMEZONE = "Asia/Kolkata"
  val detailMap = new java.util.HashMap[String, String]

  val DATA_STORE_DIR: java.io.File =
    new java.io.File(System.getProperty("user.home"), ".store/calendar_sample");

  val JSON_FACTORY: JsonFactory = JacksonFactory.getDefaultInstance();

  val CALENDAR_SCOPE = "https://www.googleapis.com/auth/calendar"
  def execute(context: Context, action: Action): Context = {
    val calAsIs: GooglecalPUT = action.asInstanceOf[GooglecalPUT]
    val cal: org.etl.sparrow.GooglecalPUT = CommandProxy.createProxy(calAsIs, classOf[org.etl.sparrow.GooglecalPUT], context)

    val dbSrc = cal.getDbSrc
    val accountId = cal.getAccount
    val mail = cal.getImpersonatedUser
    val relativePath = cal.getPtwelveFile
    val key = cal.getPrivateKey
    val project = cal.getProject
    val authStore = this.getClass.getClassLoader.getResource(relativePath).getPath
    val sql = cal.getValue
    val conn = ResourceAccess.rdbmsConn(dbSrc)
    val stmt = conn.createStatement
    val rs = stmt.executeQuery(sql)
    val httpTransport = GoogleNetHttpTransport.newTrustedTransport();

    val credential: GoogleCredential = new GoogleCredential.Builder().setTransport(httpTransport).
      setJsonFactory(JSON_FACTORY).
      setServiceAccountId(accountId).
      setServiceAccountPrivateKeyId(key).
      setServiceAccountPrivateKeyFromP12File(new File(authStore)).
      setServiceAccountProjectId(project).
      setServiceAccountScopes(Collections.singleton(CALENDAR_SCOPE)).
      setServiceAccountUser(mail).build()

    val client = new com.google.api.services.calendar.Calendar.Builder(
      httpTransport, JSON_FACTORY, credential).setApplicationName(project).build();

    val incomingCalenderEvent: AtomicInteger = new AtomicInteger
    val addedCalenderEvent: AtomicInteger = new AtomicInteger
    val timeZoneLabel = ConfigurationService.getGlobalconfig().get("timeZone").getOrElse(DEFAULT_TIMEZONE)
    val timeZone = TimeZone.getTimeZone(timeZoneLabel);
    
    try {
      while (rs.next()) {
        incomingCalenderEvent.incrementAndGet()
        val calId = rs.getString("event_calendar_id")
        val interval = rs.getInt("event_interval")
        val startDate = rs.getDate("event_start")
        val endDate = rs.getString("event_end")
        val time = rs.getString("event_alert_time")
        val title = rs.getString("event_title")
        val description = rs.getString("description")
        val location = rs.getString("event_location")
        val event = new Event();
        val startDateG = new Date(startDate.getTime+36000)
        

        val start = new DateTime(startDateG, timeZone)
        val startEventDateTime = new EventDateTime()
        startEventDateTime.setTimeZone(timeZoneLabel).setDateTime(start)
        event.setStart(startEventDateTime)
        

        val eventEnd = new Date(startDate.getTime + 60 * 60 * 1000)
        val dailyEnd = new DateTime(eventEnd, TimeZone.getTimeZone(timeZoneLabel));
        event.setEnd(new EventDateTime().setDateTime(dailyEnd).setTimeZone(timeZoneLabel))

        event.setLocation(location)
        event.setSummary(title)
        event.setDescription(description)

        val endDateForRecur = endDate.replaceAll("-", "") + "T170000Z"
        event.setRecurrence(Arrays.asList("RRULE:FREQ=DAILY;UNTIL=" + endDateForRecur));

        val result = client.events().insert(calId, event).execute();
        addedCalenderEvent.incrementAndGet
        logger.info("Adding event  {} with for location {} title {} with counter {} with description {} with final date{}", startDate, location, title, addedCalenderEvent.get, description, endDateForRecur)
      }
    } finally {
      detailMap.put("accountId", accountId)
      detailMap.put("dbSrc", dbSrc)
      detailMap.put("mail", mail)
      detailMap.put("relativePath", relativePath)
      detailMap.put("key", key)
      detailMap.put("project", project)
      detailMap.put("authStore", authStore)
      detailMap.put("sql", sql)
      detailMap.put("incomingContactCounter", incomingCalenderEvent.intValue.toString)
      detailMap.put("addedContactCounter", addedCalenderEvent.intValue.toString)
      stmt.close
      conn.close
    }
    context
  }

  def executeIf(context: Context, action: Action): Boolean = {
    val calAsIs: GooglecalPUT = action.asInstanceOf[GooglecalPUT]
    val cal: org.etl.sparrow.GooglecalPUT = CommandProxy.createProxy(calAsIs, classOf[org.etl.sparrow.GooglecalPUT], context)

    val expression = cal.getCondition
    try {
      val output = ParameterisationEngine.doYieldtoTrue(expression)
      detailMap.putIfAbsent("condition-output", output.toString())
      output
    } finally {
       if(expression!=null)
      detailMap.putIfAbsent("condition", "LHS=" + expression.getLhs + ", Operator=" + expression.getOperator + ", RHS=" + expression.getRhs)

    }
  }

  def generateAudit(): java.util.Map[String, String] = {
    detailMap
  }
}
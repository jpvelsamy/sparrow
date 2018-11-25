package org.etl.audit

import org.etl.config.ConfigurationService
import java.sql.DriverManager
import java.sql.Statement
import org.etl.util.ResourceAccess
import com.typesafe.scalalogging.LazyLogging

object AuditService extends LazyLogging{

  val auditService = ConfigurationService.getGlobalconfig().getOrElse("audit", "audit/spw-audit")
  
  def insertInstanceAudit(instanceName: String, runMode: String, machine: String, file: String): Integer = {

    val conn = ResourceAccess.rdbmsConn(auditService)
    conn.setAutoCommit(false)
    logger.info("Obtained Connection for handle ={} for inserting the audit for process {}", auditService, instanceName)
    val st = conn.prepareStatement("INSERT INTO instance_audit (instance_name, mode, start, hostname, file, status) VALUES (?, ?, NOW(), ?, ?, 1);", Statement.RETURN_GENERATED_KEYS)
    try {
      st.setString(1, instanceName)
      st.setString(2, runMode)
      st.setString(3, machine)
      st.setString(4, file)
      
      val rowsUpdated = st.executeUpdate()
      
      val rs = st.getGeneratedKeys
      rs.next
      val pk = rs.getInt(1)
      logger.info("Retrieved process id post process start as {} for process {} with file {}", pk, instanceName, file)
      rs.close()
      conn.commit
      pk
    } catch {
      case t: Throwable =>
        t.printStackTrace()
        0
    } finally {
      st.close();
      conn.close()
    }
  }

  def updateProcessAudit(processId: Integer, status: Int, contextLog: String, instanceName:String): Unit = {
    val conn = ResourceAccess.rdbmsConn(auditService)
    conn.setAutoCommit(false)
    logger.info("Obtained Connection for handle #{} for updating the audit for processid #{} for process #{} ", auditService, processId, instanceName)
    val st = conn.prepareStatement("update instance_audit set end=now(), status=?, context_log=? where instance_id=?")
    try {
      st.setInt(1, status)
      st.setString(2, contextLog)
      st.setInt(3, processId)
      val rowsUpdated = st.executeUpdate()
      conn.commit
    } catch {
      case t: Throwable =>
        logger.error("Error performing updating the proces audit with process id ={}, for process#{}",processId,instanceName)
        logger.error("Error stack trace#",t)
        
    } finally {
      st.close();
      conn.close()
      logger.info("Completed update for processid #{} for process #{} ", processId, instanceName)
    }
  }

  def insertCommandAudit(instanceId: Int, actionName: String, processName: String): Integer = {
    val conn = ResourceAccess.rdbmsConn(auditService)
    conn.setAutoCommit(false)
    val st = conn.prepareStatement("INSERT INTO command_audit (instance_id, start, action_name, process_name, status) VALUES (?, NOW(), ?, ?, '1')", Statement.RETURN_GENERATED_KEYS)
    logger.info("Insert for command #{} for process #{} for processid#{}", actionName, processName,instanceId)
    try {
      st.setInt(1, instanceId)
      st.setString(2, actionName)
      st.setString(3, processName)
      val rowsUpdated = st.executeUpdate()
      conn.commit
      val rs = st.getGeneratedKeys
      rs.next
      val pk = rs.getInt(1)
      rs.close()
      logger.info("Completed Insert for command #{} for process #{} for processid#{} with id#{}", actionName, processName,instanceId,pk)
      pk
    } catch {
      case t: Throwable =>
        logger.error("Error performing updating the proces audit with process id ={}, for process#{}, for action#{}",instanceId,processName, actionName)
        logger.error("Error stack trace#",t)
        0
    } finally {
      st.close();
      conn.close()
      
    }
  }

  def updateCommandAudit(actionId: Integer, status: Integer, commandDetail:String): Unit = {
    val conn = ResourceAccess.rdbmsConn(auditService)
    logger.info("Obtained Connection for actionid #{} with status #{} ", actionId, status)
    val st = conn.prepareStatement("update command_audit set end=now(), status=?, command_config=?  where command_id=?")
    try {
      st.setInt(1, status)
      st.setString(2, commandDetail)
      st.setInt(3, actionId)
      val rowsUpdated = st.executeUpdate()
      conn.commit
    } catch {
      case t: Throwable =>
        t.printStackTrace()
    } finally {
      st.close();
      conn.close()
    }
  }

  def insertStatementAudit(actionId: Int, actionName: String, processName: String): Int = {
    val conn = ResourceAccess.rdbmsConn(auditService)
    conn.setAutoCommit(false)
    val st = conn.prepareStatement("INSERT INTO statement_audit (action_id, action_name, process_name, start, status) VALUES (?, ?, ?, NOW(),'1');", Statement.RETURN_GENERATED_KEYS)
    try {
      st.setInt(1, actionId)
      st.setString(2, actionName)
      st.setString(3, processName)

      val rowsUpdated = st.executeUpdate()
      conn.commit
      val rs = st.getGeneratedKeys
      rs.next
      val pk = rs.getInt(1)
      rs.close()
      pk
    } catch {
      case t: Throwable =>
        t.printStackTrace()
        0
    } finally {
      st.close();
      conn.close()
    }
  }
  //,
  def updateStatementAudit(statementId: Integer, rowsW: Int, rowsR: Int, statement: String, status: Integer): Unit = {
    val conn = ResourceAccess.rdbmsConn(auditService)
    conn.setAutoCommit(false)
    val st = conn.prepareStatement("update command_audit set end_time=now(), status=?, statement_config=?, rows_written=?, rows_read=? where statement_id=?")
    try {
      st.setInt(1, status)
      st.setString(2, statement)
      st.setInt(3, rowsW)
      st.setInt(4, rowsR)
      val rowsUpdated = st.executeUpdate()
      conn.commit
    } catch {
      case t: Throwable =>
        t.printStackTrace()
    } finally {
      st.close();
      conn.close()
    }
  }
}
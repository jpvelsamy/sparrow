package org.etl.process.onethread

import com.typesafe.scalalogging.LazyLogging
import org.etl.command.Context
import org.etl.command.Action
import org.etl.command.CommandProxy
import org.etl.util.ParameterisationEngine
import org.apache.http.client.methods.HttpPost
import org.apache.http.client.entity.UrlEncodedFormEntity
import org.apache.http.impl.client.DefaultHttpClient
import com.google.gson.Gson
import org.apache.http.entity.StringEntity
import org.json.JSONObject

case class PostData(script: String)

class RunRAction extends org.etl.command.Action with LazyLogging {

  def restCaller(script: String): Boolean = {
    try {
      val postData = PostData(script)
      val gson = new Gson
      // create an HttpPost object
      val post = new HttpPost("http://172.18.0.3:8008")

      // set the Content-type
      post.setHeader("Content-type", "application/json")

      // add the JSON as a StringEntity
      post.setEntity(new StringEntity(gson.toJson(postData)))
      // send the post request
      val response = (new DefaultHttpClient).execute(post)
      var content = ""
      val entity = response.getEntity()
      if (entity != null) {
        val inputStream = entity.getContent()
        content = scala.io.Source.fromInputStream(inputStream).getLines.mkString
        inputStream.close
      }

      val resultObj = new JSONObject(content.toString())
      if (resultObj.getString("message").equals("success")) {
        println("success")
        true
        
      }
      else{
        println("error")
      }
      logger.info("response from python script  #{}", resultObj.getString("message"))

      false
    } catch {
      case e: Exception => false
    }

  }

  def execute(context: org.etl.command.Context, action: org.etl.sparrow.Action): org.etl.command.Context = {
    val runR: org.etl.sparrow.RunR = action.asInstanceOf[org.etl.sparrow.RunR]
    val runRActual: org.etl.sparrow.RunR = CommandProxy.createProxy(runR, classOf[org.etl.sparrow.RunR], context)
    val script = runRActual.getValue
    val result = restCaller(script)
    context
  }

  def executeIf(context: org.etl.command.Context, action: org.etl.sparrow.Action): Boolean = {
    val runR: org.etl.sparrow.RunR = action.asInstanceOf[org.etl.sparrow.RunR]
    val runRActual: org.etl.sparrow.RunR = CommandProxy.createProxy(runR, classOf[org.etl.sparrow.RunR], context)
    val expression = runRActual.getCondition
    ParameterisationEngine.doYieldtoTrue(expression)
  }

}
package org.etl.process.onethread

import com.typesafe.scalalogging.LazyLogging
import org.etl.sparrow.Action
import org.etl.command.Context
import org.etl.util.ResourceAccess
import org.etl.command.CommandProxy
import org.etl.util.ParameterisationEngine
import org.etl.util.ExceptionUtil
import java.sql.SQLException

class TransformAction extends org.etl.command.Action with LazyLogging {
  val detailMap = new java.util.HashMap[String, String]

  def execute(context: Context, action: Action): Context = {
    val transformAsIs = action.asInstanceOf[org.etl.sparrow.Transform]
    val transform: org.etl.sparrow.Transform = CommandProxy.createProxy(transformAsIs, classOf[org.etl.sparrow.Transform], context)

    val dbSrc = transform.getOn
    val name = transform.getName
    val id = context.getValue("process-id")
    val sqlList = transform.getValue
    logger.info("Transform id#{}, name#{}, dbSrc#{}, sqlList#{}", id, name, dbSrc)
    detailMap.put("dbSrc", dbSrc)

    val conn = ResourceAccess.rdbmsConn(dbSrc)
    conn.setAutoCommit(false)

    val stmt = conn.createStatement
    val iter = sqlList.iterator
    try {
      while (iter.hasNext) {
        val sqlWithoutQuotes = iter.next.replaceAll("\"", "")
        val sqlList = sqlWithoutQuotes.split(";")
        sqlList.foreach { sql =>
          if (!sql.trim.isEmpty()) {
            logger.info("Transform id#{}, executing script {}", id, sql.trim)
            try {
              val rowCount = stmt.executeUpdate(sql.trim)
              val warnings = ExceptionUtil.completeSQLWarning(stmt.getWarnings)
              detailMap.put(sql.trim + ".count", rowCount.toString)
              detailMap.put(sql.trim + ".stmtcount", stmt.getUpdateCount.toString)
              detailMap.put(sql.trim + ".count", warnings)
              logger.info("Transform id#{}, executed script {} rows returned {}, with warnings{}", id, sql.trim, rowCount)
              stmt.clearWarnings();
            } catch {
              case ex: SQLException => {
                logger.error(" SQL Error executing sql for {} ", sql, ex)
                detailMap.put(sql.trim +".exception", ExceptionUtil.completeStackTraceex(ex))
              }
              case ex: Throwable => {
                logger.error(" General Error iexecuting sql for {} with for campaign {}", sql, ex)
                detailMap.put(sql.trim +".exception", ExceptionUtil.completeStackTraceex(ex))
              }
            }
          }
        }
      }
      conn.commit
      logger.info("Completed Transform id#{}, name#{}, dbSrc#{}, sqlList#{}", id, name, dbSrc, sqlList)
    } finally {
      stmt.close
      conn.close
    }

    context
  }

  def executeIf(context: Context, action: Action): Boolean = {
    val transformAsIs = action.asInstanceOf[org.etl.sparrow.Transform]
    val transform: org.etl.sparrow.Transform = CommandProxy.createProxy(transformAsIs, classOf[org.etl.sparrow.Transform], context)

    val expression = transform.getCondition
    try {
      val output = ParameterisationEngine.doYieldtoTrue(expression)
      detailMap.putIfAbsent("condition-output", output.toString())
      output
    } finally {
      detailMap.putIfAbsent("condition", "LHS=" + expression.getLhs + ", Operator=" + expression.getOperator + ", RHS=" + expression.getRhs)

    }
  }

  def generateAudit(): java.util.Map[String, String] = {
    detailMap
  }

}
package org.etl.process.onethread

import com.typesafe.scalalogging.LazyLogging
import org.etl.command.Context
import org.etl.util.ResourceAccess
import org.etl.command.CommandProxy
import org.etl.util.ParameterisationEngine
import java.io.FileWriter
import java.sql.Connection
import java.sql.DriverManager
import java.sql.ResultSet
import java.sql.Statement
import scala.collection.JavaConversions._
import java.io.Writer
import java.io.FileOutputStream
import java.io.OutputStreamWriter
import java.io.BufferedOutputStream
import java.io.File

class WriteCsvAndTsvAction extends org.etl.command.Action with LazyLogging {
  val detailMap = new java.util.HashMap[String, String]

  def execute(context: org.etl.command.Context, action: org.etl.sparrow.Action): Context = {
    val writecsvandtsvAsIs = action.asInstanceOf[org.etl.sparrow.WriteCsvAndTsv]
    val writecsvandtsv: org.etl.sparrow.WriteCsvAndTsv = CommandProxy.createProxy(writecsvandtsvAsIs, classOf[org.etl.sparrow.WriteCsvAndTsv], context)

    val from = writecsvandtsv.getSource
    val to: File = new File(writecsvandtsv.getTo)
    val name = writecsvandtsv.getName
    val id = context.getValue("process-id")
    val sqlList = writecsvandtsv.getValue.replaceAll("\"", "")
    val delim = writecsvandtsv.getDelim
    logger.info("WriteCsvAndTsv id#{}, name#{}, from#{}, sqlList#{}", id, name, from)

    val conn = ResourceAccess.rdbmsConn(from)
    conn.setAutoCommit(false)

    val stmt = conn.createStatement
    val ars: ResultSet = stmt.executeQuery(sqlList)
    val ncols: Int = ars.getMetaData.getColumnCount
    conn.commit

    val fop: FileOutputStream = new FileOutputStream(to)
    val out: Writer = new OutputStreamWriter(new BufferedOutputStream(fop))
    var column: String = ""
    if (!to.exists()) {
      to.createNewFile()
    }

    for (i <- 1 to ncols) {
      out.append(ars.getMetaData.getColumnName(i))
      if (i < ncols) out.append(delim) else out.append("\r\n")
    }
    while (ars.next()) {
      for (i <- 1 to ncols) {
        column = ars.getString(i)
        if (column != null)
          column = column.replaceAll("[^a-zA-Z0-9-:]", " ")
        out.append("\"" + column + "\"")
        if (i < ncols) out.append(delim) else out.append("\r\n")
      }
    }

    out.close()
    logger.info("Completed WriteCsvAndTsv id#{}, name#{}, from#{}, sqlList#{}", id, name, from, sqlList)

    stmt.close
    conn.close
    context
  }

  def executeIf(context: org.etl.command.Context, action: org.etl.sparrow.Action): Boolean = {
    val writecsvandtsvAsIs = action.asInstanceOf[org.etl.sparrow.WriteCsvAndTsv]
    val writecsvandtsv: org.etl.sparrow.WriteCsvAndTsv = CommandProxy.createProxy(writecsvandtsvAsIs, classOf[org.etl.sparrow.WriteCsvAndTsv], context)

    val expression = writecsvandtsv.getCondition
    try {
      val output = ParameterisationEngine.doYieldtoTrue(expression)
      detailMap.putIfAbsent("condition-output", output.toString())
      output
    } finally {
      if (expression != null)
        detailMap.putIfAbsent("condition", "LHS=" + expression.getLhs + ", Operator=" + expression.getOperator + ", RHS=" + expression.getRhs)

    }
  }
  def generateAudit(): java.util.Map[String, String] = {
    detailMap
  }

}
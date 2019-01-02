package org.etl.process.onethread

import com.typesafe.scalalogging.LazyLogging
import org.etl.sparrow.Action
import org.etl.command.Context
import org.etl.util.ResourceAccess
import org.etl.command.CommandProxy
import org.etl.util.ParameterisationEngine
import java.io.FileWriter
import java.sql.Connection
import java.sql.DriverManager
import java.sql.ResultSet
import java.sql.Statement
import com.opencsv.CSVWriter
import scala.collection.JavaConversions._
import java.io.Writer
import java.io.FileOutputStream
import java.io.OutputStreamWriter
import java.io.BufferedOutputStream
import java.io.File

class WriteCsvAndTsvAction extends org.etl.command.Action with LazyLogging {
  def execute(context: Context, action: Action): Context = {
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
    
    val stmt = conn.createStatement(ResultSet.TYPE_FORWARD_ONLY, ResultSet.CONCUR_READ_ONLY)
    stmt.setFetchSize(Integer.MIN_VALUE)
    val ars: ResultSet = stmt.executeQuery(sqlList)
    val ncols: Int = ars.getMetaData.getColumnCount
    

    val fop: FileOutputStream = new FileOutputStream(to)
    val out: Writer = new OutputStreamWriter(new BufferedOutputStream(fop))
    var column : String = ""
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
        if(column !=null)
        column = column.replaceAll("[^a-zA-Z0-9-:]", " ")
        out.append("\""+column+"\"")
        if (i < ncols) out.append(delim) else out.append("\r\n")
        println("----")
      }
    }

    out.close()
    conn.commit
    logger.info("Completed WriteCsvAndTsv id#{}, name#{}, from#{}, sqlList#{}", id, name, from, sqlList)

    stmt.close
    conn.close
    context
  }

  def executeIf(context: Context, action: Action): Boolean = {
    val writecsvandtsvAsIs = action.asInstanceOf[org.etl.sparrow.WriteCsvAndTsv]
    val writecsvandtsv: org.etl.sparrow.WriteCsvAndTsv = CommandProxy.createProxy(writecsvandtsvAsIs, classOf[org.etl.sparrow.WriteCsvAndTsv], context)

    val expression = writecsvandtsv.getCondition
    ParameterisationEngine.doYieldtoTrue(expression)
  }

}
package org.etl.dsl.singlethread


import org.etl.server.ProcessAST
import org.junit.Test
import org.etl.server.ProcessExecutor

class FfscFunnelStatus{
  
  @Test def runProcess()={
    
    val instanceName = "ffsc.funelstatus.process#1" 
    val runtimeContext = ProcessAST.loadProcessAST(instanceName,"{}")
    try {
      
      val runtime = ProcessExecutor.execute("org.etl.process.onethread", runtimeContext)
      
    } catch {
      case ex: Throwable => {
        ex.printStackTrace()
      }
    } finally {
      
    }
  }
  
 /* @Test def relativePath {
    System.currentTimeMillis()
    val url = this.getClass.getClassLoader.getResource("auth/Dhuruva-BMS-fa750e3a8102.p12")
    println(url)
  }*/
}
package org.etl.server

import org.etl.SparrowStandaloneSetup
import org.restlet.Application
import com.typesafe.scalalogging.LazyLogging
import org.restlet.Component
import org.restlet.data.Protocol
import org.restlet.routing.Router
import org.etl.parser.antlr.SparrowParser
import java.io.FileReader


object SparrowServer extends Application with LazyLogging{
  def main(args:Array[String]){
    
    logger.info("Starting the restlet server to take in commands, at port 2909")
    val component = new Component()
    component.getServers().add(Protocol.HTTP, 2909)
    // Attach the sample application.
    component.getDefaultHost().attach(this)
    // Start the component.    
    component.start()
    
  }
  override def createInboundRoot: Router = {
    val router = new Router(getContext())
    router.attach("/process/{instance}/{alias}/start",classOf[StartProcess])
    router.attach("/",classOf[ListProcess])
    router.attach("/process/{id}/stop", classOf[StopProcess])
    router
}
}

package org.etl.server

import org.restlet.resource.ServerResource
import org.restlet.resource.Get

class ListProcess extends ServerResource{
  @Get("application/json")
  def represent():String={
    ""
  }
}
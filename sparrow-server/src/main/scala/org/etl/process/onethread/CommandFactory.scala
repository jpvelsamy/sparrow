package org.etl.process.onethread

import org.etl.command.Action

object CommandFactory {
                  
  def create(name:String) :Action={
      
    name.toLowerCase match {
      case "abort" =>  new AbortAction
      case "googlecal" => new GoogleCalendarAction
      case "transform" => new TransformAction
      case "assign" => new FetchVariableAction
      case "callprocess" => new CallProcessAction
      case "doozle"=>new DoozleAction
      case "rest"=>new RestAction
      case "fbclead"=>new FBLeadCreateAction
      case "googlecontactput"=>new GContactCreateAction
      case "googlecalput"=>new GoogleCalendarAction
      case "clicksendsms"=>new SmsActionImpl
      case "fetch"=>new FetchVariableAction
      case "smsleadsms"=>new SmsLeadsAction
      case "writecsvandtsv"=> new WriteCsvAndTsvAction
      case "copydata" => new CopydataAction
      case "mahout" => new ModelTrainingAction
      case "runr" => new RunRAction          
    }
  }
}
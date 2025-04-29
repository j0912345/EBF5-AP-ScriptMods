package com.newgrounds
{
   import flash.events.Event;
   import flash.events.StatusEvent;
   import flash.net.LocalConnection;
   
   public class Bridge
   {
      private var _inConnection:LocalConnection;
      
      private var _outConnection:LocalConnection;
      
      private var _widgetId:String;
      
      public function Bridge(param1:String)
      {
         super();
         this._widgetId = param1;
         this._inConnection = new LocalConnection();
         this._outConnection = new LocalConnection();
         this._inConnection.client = this;
         try
         {
            this._inConnection.connect("rec_" + this._widgetId);
         }
         catch(error:*)
         {
         }
         this._outConnection.addEventListener(StatusEvent.STATUS,this.onStatus);
         Logger.addEventListener(APIEvent.LOG,this.onLogMessage);
      }
      
      private function onLogMessage(param1:APIEvent) : void
      {
         try
         {
            this._outConnection.send(this._widgetId,"sendEvent","trace",String(param1.data));
         }
         catch(error:*)
         {
         }
      }
      
      public function sendEvent(param1:String, param2:Object) : void
      {
         if(this._outConnection)
         {
            param2 = {"data":param2};
            this._outConnection.send(this._widgetId,"sendEvent",param1,param2);
         }
      }
      
      public function receiveEvent(param1:String, param2:Object) : void
      {
      }
      
      private function onStatus(param1:Event) : void
      {
      }
   }
}


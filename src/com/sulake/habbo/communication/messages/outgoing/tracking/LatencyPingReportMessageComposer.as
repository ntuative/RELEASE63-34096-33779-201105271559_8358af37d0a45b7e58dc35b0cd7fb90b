package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2476:int;
      
      private var var_2477:int;
      
      private var var_2478:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2476 = param1;
         this.var_2477 = param2;
         this.var_2478 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2476,this.var_2477,this.var_2478];
      }
      
      public function dispose() : void
      {
      }
   }
}

package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1969:int;
      
      private var var_2714:int;
      
      private var var_1615:int;
      
      private var var_2511:int;
      
      private var var_116:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1969 = param1.readInteger();
         this.var_2714 = param1.readInteger();
         this.var_1615 = param1.readInteger();
         this.var_2511 = param1.readInteger();
         this.var_116 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1969);
      }
      
      public function get callId() : int
      {
         return this.var_1969;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2714;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1615;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2511;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_116;
      }
   }
}

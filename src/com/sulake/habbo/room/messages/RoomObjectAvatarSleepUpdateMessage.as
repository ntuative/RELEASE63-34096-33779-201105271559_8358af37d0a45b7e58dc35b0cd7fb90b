package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarSleepUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1812:Boolean;
      
      public function RoomObjectAvatarSleepUpdateMessage(param1:Boolean = false)
      {
         super();
         this.var_1812 = param1;
      }
      
      public function get isSleeping() : Boolean
      {
         return this.var_1812;
      }
   }
}
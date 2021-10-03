package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarCarryObjectUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1504:int;
      
      private var var_1880:String;
      
      public function RoomObjectAvatarCarryObjectUpdateMessage(param1:int, param2:String)
      {
         super();
         this.var_1504 = param1;
         this.var_1880 = param2;
      }
      
      public function get itemType() : int
      {
         return this.var_1504;
      }
      
      public function get itemName() : String
      {
         return this.var_1880;
      }
   }
}

package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetRoomTagSearchMessage extends RoomWidgetMessage
   {
      
      public static const const_890:String = "RWRTSM_ROOM_TAG_SEARCH";
       
      
      private var var_2525:String = "";
      
      public function RoomWidgetRoomTagSearchMessage(param1:String)
      {
         super(const_890);
         this.var_2525 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2525;
      }
   }
}
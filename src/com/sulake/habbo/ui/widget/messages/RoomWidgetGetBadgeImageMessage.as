package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetGetBadgeImageMessage extends RoomWidgetMessage
   {
      
      public static const const_927:String = "RWGOI_MESSAGE_GET_BADGE_IMAGE";
       
      
      private var var_299:String = "";
      
      public function RoomWidgetGetBadgeImageMessage(param1:String)
      {
         super(const_927);
         this.var_299 = param1;
      }
      
      public function get badgeId() : String
      {
         return this.var_299;
      }
   }
}

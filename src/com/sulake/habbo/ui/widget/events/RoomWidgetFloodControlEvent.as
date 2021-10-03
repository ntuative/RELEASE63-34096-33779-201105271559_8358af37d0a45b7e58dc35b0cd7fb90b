package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetFloodControlEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_722:String = "RWFCE_FLOOD_CONTROL";
       
      
      private var var_2112:int = 0;
      
      public function RoomWidgetFloodControlEvent(param1:int)
      {
         super(const_722,false,false);
         this.var_2112 = param1;
      }
      
      public function get seconds() : int
      {
         return this.var_2112;
      }
   }
}

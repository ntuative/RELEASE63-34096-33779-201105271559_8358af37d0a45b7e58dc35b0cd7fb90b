package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_434:String = "RWGOI_MESSAGE_OPEN_CATALOG";
      
      public static const const_1230:String = "RWOCM_CLUB_MAIN";
      
      public static const const_1118:String = "RWOCM_PIXELS";
      
      public static const const_1348:String = "RWOCM_CREDITS";
       
      
      private var var_2425:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_434);
         this.var_2425 = param1;
      }
      
      public function get pageKey() : String
      {
         return this.var_2425;
      }
   }
}

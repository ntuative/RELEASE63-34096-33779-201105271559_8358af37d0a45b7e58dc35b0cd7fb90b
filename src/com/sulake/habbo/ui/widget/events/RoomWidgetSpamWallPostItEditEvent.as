package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetSpamWallPostItEditEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_472:String = "RWSWPUE_OPEN_EDITOR";
       
      
      private var var_222:int;
      
      private var var_443:String;
      
      private var var_1381:String;
      
      public function RoomWidgetSpamWallPostItEditEvent(param1:String, param2:int, param3:String, param4:String, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.var_222 = param2;
         this.var_443 = param3;
         this.var_1381 = param4;
      }
      
      public function get location() : String
      {
         return this.var_443;
      }
      
      public function get objectId() : int
      {
         return this.var_222;
      }
      
      public function get objectType() : String
      {
         return this.var_1381;
      }
   }
}

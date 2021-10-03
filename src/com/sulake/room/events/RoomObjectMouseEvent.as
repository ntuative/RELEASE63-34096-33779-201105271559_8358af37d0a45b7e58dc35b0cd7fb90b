package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_159:String = "ROE_MOUSE_CLICK";
      
      public static const const_172:String = "ROE_MOUSE_ENTER";
      
      public static const const_567:String = "ROE_MOUSE_MOVE";
      
      public static const const_186:String = "ROE_MOUSE_LEAVE";
      
      public static const const_2119:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_480:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1725:String = "";
      
      private var var_2250:Boolean;
      
      private var var_2247:Boolean;
      
      private var var_2246:Boolean;
      
      private var var_2251:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_1725 = param2;
         this.var_2250 = param5;
         this.var_2247 = param6;
         this.var_2246 = param7;
         this.var_2251 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_1725;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2250;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2247;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2246;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2251;
      }
   }
}

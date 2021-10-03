package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_903:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_2330:int;
      
      private var var_2331:int;
      
      private var _color:uint;
      
      private var var_1140:int;
      
      private var var_2352:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_903);
         this.var_2330 = param1;
         this.var_2331 = param2;
         this._color = param3;
         this.var_1140 = param4;
         this.var_2352 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_2330;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_2331;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_1140;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2352;
      }
   }
}

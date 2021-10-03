package com.sulake.habbo.room.object.visualization.data
{
   public class LayerData
   {
      
      public static const const_778:String = "";
      
      public static const const_402:int = 0;
      
      public static const const_593:int = 255;
      
      public static const const_690:Boolean = false;
      
      public static const const_571:int = 0;
      
      public static const const_532:int = 0;
      
      public static const const_411:int = 0;
      
      public static const const_1150:int = 1;
      
      public static const const_1236:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2525:String = "";
      
      private var var_1678:int = 0;
      
      private var var_2523:int = 255;
      
      private var var_2524:Boolean = false;
      
      private var var_2521:int = 0;
      
      private var var_2522:int = 0;
      
      private var var_2520:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2525 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2525;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_1678 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_1678;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2523 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2523;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2524 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2524;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2521 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2521;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2522 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2522;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2520 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2520;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}

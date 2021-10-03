package com.sulake.habbo.room.object.visualization.room
{
   public class RoomPlaneRectangleMask
   {
       
      
      private var var_2606:Number = 0.0;
      
      private var var_2604:Number = 0.0;
      
      private var var_2603:Number = 0.0;
      
      private var var_2605:Number = 0.0;
      
      public function RoomPlaneRectangleMask(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.var_2606 = param1;
         this.var_2604 = param2;
         this.var_2603 = param3;
         this.var_2605 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_2606;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_2604;
      }
      
      public function get leftSideLength() : Number
      {
         return this.var_2603;
      }
      
      public function get rightSideLength() : Number
      {
         return this.var_2605;
      }
   }
}

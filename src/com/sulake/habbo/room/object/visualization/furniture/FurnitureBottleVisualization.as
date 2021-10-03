package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureBottleVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1012:int = 20;
      
      private static const const_647:int = 9;
      
      private static const const_1376:int = -1;
       
      
      private var var_296:Array;
      
      private var var_835:Boolean = false;
      
      public function FurnitureBottleVisualization()
      {
         this.var_296 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!this.var_835)
            {
               this.var_835 = true;
               this.var_296 = new Array();
               this.var_296.push(const_1376);
               return;
            }
         }
         if(param1 >= 0 && param1 <= 7)
         {
            if(this.var_835)
            {
               this.var_835 = false;
               this.var_296 = new Array();
               this.var_296.push(const_1012);
               this.var_296.push(const_647 + param1);
               this.var_296.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(0))
         {
            if(this.var_296.length > 0)
            {
               super.setAnimation(this.var_296.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}

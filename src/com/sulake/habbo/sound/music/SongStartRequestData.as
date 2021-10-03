package com.sulake.habbo.sound.music
{
   import flash.utils.getTimer;
   
   public class SongStartRequestData
   {
       
      
      private var var_1777:int;
      
      private var var_2019:Number;
      
      private var var_2780:Number;
      
      private var var_2782:int;
      
      private var var_2783:Number;
      
      private var var_2781:Number;
      
      public function SongStartRequestData(param1:int, param2:Number, param3:Number, param4:Number = 2.0, param5:Number = 1.0)
      {
         super();
         this.var_1777 = param1;
         this.var_2019 = param2;
         this.var_2780 = param3;
         this.var_2783 = param4;
         this.var_2781 = param5;
         this.var_2782 = getTimer();
      }
      
      public function get songId() : int
      {
         return this.var_1777;
      }
      
      public function get startPos() : Number
      {
         if(this.var_2019 < 0)
         {
            return 0;
         }
         return this.var_2019 + (getTimer() - this.var_2782) / 1000;
      }
      
      public function get playLength() : Number
      {
         return this.var_2780;
      }
      
      public function get fadeInSeconds() : Number
      {
         return this.var_2783;
      }
      
      public function get fadeOutSeconds() : Number
      {
         return this.var_2781;
      }
   }
}

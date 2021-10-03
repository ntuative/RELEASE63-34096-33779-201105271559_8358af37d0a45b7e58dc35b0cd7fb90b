package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
       
      
      private var var_1920:int = 0;
      
      private var var_1384:Dictionary;
      
      private var var_1659:int = 0;
      
      private var var_1658:int = 0;
      
      private var var_2201:Boolean = false;
      
      private var var_2202:int = 0;
      
      private var var_2200:int = 0;
      
      public function Purse()
      {
         this.var_1384 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_1920;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_1920 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1659;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1659 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1658;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1658 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1659 > 0 || this.var_1658 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2201;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2201 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2202;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2202 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2200;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2200 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1384;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1384 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1384[param1];
      }
   }
}

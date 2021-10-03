package com.sulake.habbo.communication.messages.incoming.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementLevelUpData
   {
       
      
      private var _type:int;
      
      private var var_1200:int;
      
      private var var_2123:int;
      
      private var var_2409:int;
      
      private var var_1734:int;
      
      private var var_1437:int;
      
      private var var_299:int;
      
      private var var_2675:String = "";
      
      private var var_2674:String = "";
      
      private var var_2673:int;
      
      private var _category:String;
      
      public function AchievementLevelUpData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1200 = param1.readInteger();
         this.var_299 = param1.readInteger();
         this.var_2675 = param1.readString();
         this.var_2123 = param1.readInteger();
         this.var_2409 = param1.readInteger();
         this.var_1734 = param1.readInteger();
         this.var_1437 = param1.readInteger();
         this.var_2673 = param1.readInteger();
         this.var_2674 = param1.readString();
         this._category = param1.readString();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1200;
      }
      
      public function get points() : int
      {
         return this.var_2123;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2409;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1734;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_1437;
      }
      
      public function get badgeId() : int
      {
         return this.var_299;
      }
      
      public function get badgeCode() : String
      {
         return this.var_2675;
      }
      
      public function get removedBadgeCode() : String
      {
         return this.var_2674;
      }
      
      public function get achievementID() : int
      {
         return this.var_2673;
      }
      
      public function get category() : String
      {
         return this._category;
      }
   }
}

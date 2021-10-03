package com.sulake.habbo.communication.messages.incoming.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class QuestMessageData
   {
       
      
      private var var_1686:String;
      
      private var var_2297:int;
      
      private var var_2296:int;
      
      private var var_1863:int;
      
      private var _id:int;
      
      private var var_1684:Boolean;
      
      private var _type:String;
      
      private var var_1683:String;
      
      private var var_1685:int;
      
      private var _localizationCode:String;
      
      private var var_2299:int;
      
      private var var_2295:int;
      
      private var var_2298:int;
      
      public function QuestMessageData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1686 = param1.readString();
         this.var_2297 = param1.readInteger();
         this.var_2296 = param1.readInteger();
         this.var_1863 = param1.readInteger();
         this._id = param1.readInteger();
         this.var_1684 = param1.readBoolean();
         this._type = param1.readString();
         this.var_1683 = param1.readString();
         this.var_1685 = param1.readInteger();
         this._localizationCode = param1.readString();
         this.var_2299 = param1.readInteger();
         this.var_2295 = param1.readInteger();
         this.var_2298 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         this._id = 0;
         this._type = "";
         this.var_1683 = "";
         this.var_1685 = 0;
      }
      
      public function get campaignCode() : String
      {
         return this.var_1686;
      }
      
      public function get localizationCode() : String
      {
         return this._localizationCode;
      }
      
      public function get completedQuestsInCampaign() : int
      {
         return this.var_2297;
      }
      
      public function get questCountInCampaign() : int
      {
         return this.var_2296;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1863;
      }
      
      public function get accepted() : Boolean
      {
         return this.var_1684;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get imageVersion() : String
      {
         return this.var_1683;
      }
      
      public function get rewardCurrencyAmount() : int
      {
         return this.var_1685;
      }
      
      public function get completedSteps() : int
      {
         return this.var_2299;
      }
      
      public function get totalSteps() : int
      {
         return this.var_2295;
      }
      
      public function get waitPeriodSeconds() : int
      {
         return this.var_2298;
      }
      
      public function getCampaignLocalizationKey() : String
      {
         return "quests." + this.var_1686;
      }
      
      public function getQuestLocalizationKey() : String
      {
         return this.getCampaignLocalizationKey() + "." + this._localizationCode;
      }
      
      public function get completedCampaign() : Boolean
      {
         return this._id < 1;
      }
      
      public function set id(param1:int) : void
      {
         this._id = param1;
      }
      
      public function set accepted(param1:Boolean) : void
      {
         this.var_1684 = param1;
      }
   }
}

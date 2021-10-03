package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   
   public class QuestController implements IDisposable, IUpdateReceiver
   {
       
      
      private var _questEngine:HabboQuestEngine;
      
      private var var_586:QuestsList;
      
      private var var_492:QuestDetails;
      
      private var _questCompleted:QuestCompleted;
      
      private var var_344:QuestTracker;
      
      private var var_907:CampaignCompleted;
      
      public function QuestController(param1:HabboQuestEngine)
      {
         super();
         this._questEngine = param1;
         this.var_344 = new QuestTracker(this._questEngine);
         this.var_586 = new QuestsList(this._questEngine);
         this.var_492 = new QuestDetails(this._questEngine);
         this._questCompleted = new QuestCompleted(this._questEngine);
         this.var_907 = new CampaignCompleted(this._questEngine);
      }
      
      public function onToolbarClick() : void
      {
         this.var_586.onToolbarClick();
      }
      
      public function onQuests(param1:Array, param2:Boolean) : void
      {
         this.var_586.onQuests(param1,param2);
      }
      
      public function onQuest(param1:QuestMessageData) : void
      {
         this.var_344.onQuest(param1);
         this.var_492.onQuest(param1);
         this._questCompleted.onQuest(param1);
      }
      
      public function onQuestCompleted(param1:QuestMessageData) : void
      {
         this.var_344.onQuestCompleted(param1);
         this.var_492.onQuestCompleted(param1);
         this._questCompleted.onQuestCompleted(param1);
      }
      
      public function onQuestCancelled() : void
      {
         this.var_344.onQuestCancelled();
         this.var_492.onQuestCancelled();
         this._questCompleted.onQuestCancelled();
      }
      
      public function onRoomEnter() : void
      {
         this.var_344.onRoomEnter();
      }
      
      public function onRoomExit() : void
      {
         this.var_586.onRoomExit();
         this.var_344.onRoomExit();
         this.var_492.onRoomExit();
         this.var_907.onRoomExit();
      }
      
      public function update(param1:uint) : void
      {
         this._questCompleted.update(param1);
         this.var_344.update(param1);
      }
      
      public function dispose() : void
      {
         this._questEngine = null;
         if(this.var_586)
         {
            this.var_586.dispose();
            this.var_586 = null;
         }
         if(this.var_344)
         {
            this.var_344.dispose();
            this.var_344 = null;
         }
         if(this.var_492)
         {
            this.var_492.dispose();
            this.var_492 = null;
         }
         if(this._questCompleted)
         {
            this._questCompleted.dispose();
            this._questCompleted = null;
         }
         if(this.var_907)
         {
            this.var_907.dispose();
            this.var_907 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._questEngine == null;
      }
      
      public function get questsList() : QuestsList
      {
         return this.var_586;
      }
      
      public function get questDetails() : QuestDetails
      {
         return this.var_492;
      }
      
      public function get questTracker() : QuestTracker
      {
         return this.var_344;
      }
      
      public function get campaignCompleted() : CampaignCompleted
      {
         return this.var_907;
      }
   }
}

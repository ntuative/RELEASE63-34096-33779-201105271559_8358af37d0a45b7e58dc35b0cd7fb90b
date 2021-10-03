package com.sulake.habbo.help
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.help.cfh.data.CallForHelpData;
   import com.sulake.habbo.help.cfh.data.UserRegistry;
   import com.sulake.habbo.help.enum.HabboHelpViewEnum;
   import com.sulake.habbo.help.help.HelpUI;
   import com.sulake.habbo.help.help.data.FaqIndex;
   import com.sulake.habbo.help.hotelmerge.HotelMergeUI;
   import com.sulake.habbo.help.tutorial.TutorialUI;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.session.IRoomSessionManager;
   import com.sulake.habbo.session.ISessionDataManager;
   import com.sulake.habbo.session.events.RoomSessionEvent;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.IHabboToolbar;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.iid.IIDHabboCommunicationManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import com.sulake.iid.IIDHabboLocalizationManager;
   import com.sulake.iid.IIDHabboRoomSessionManager;
   import com.sulake.iid.IIDHabboToolbar;
   import com.sulake.iid.IIDSessionDataManager;
   import flash.utils.Dictionary;
   import iid.IIDHabboWindowManager;
   
   public class HabboHelp extends Component implements IHabboHelp
   {
       
      
      private var _toolbar:IHabboToolbar;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var _windowManager:IHabboWindowManager;
      
      private var var_257:IHabboCommunicationManager;
      
      private var var_1137:IHabboLocalizationManager;
      
      private var var_918:IHabboConfigurationManager;
      
      private var var_378:ISessionDataManager;
      
      private var var_1136:FaqIndex;
      
      private var _incomingMessages:IncomingMessages;
      
      private var var_68:HelpUI;
      
      private var var_108:TutorialUI;
      
      private var var_737:HotelMergeUI;
      
      private var var_1413:CallForHelpData;
      
      private var var_2348:UserRegistry;
      
      private var var_2347:String = "";
      
      private var var_919:WelcomeScreenController;
      
      public function HabboHelp(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null)
      {
         this.var_1413 = new CallForHelpData();
         this.var_2348 = new UserRegistry();
         super(param1,param2,param3);
         this._assetLibrary = param3;
         this.var_1136 = new FaqIndex();
         queueInterface(new IIDHabboWindowManager(),this.onWindowManagerReady);
         queueInterface(new IIDSessionDataManager(),this.onSessionDataManagerReady);
      }
      
      public function set ownUserName(param1:String) : void
      {
         this.var_2347 = param1;
      }
      
      public function get ownUserName() : String
      {
         return this.var_2347;
      }
      
      public function get callForHelpData() : CallForHelpData
      {
         return this.var_1413;
      }
      
      public function get userRegistry() : UserRegistry
      {
         return this.var_2348;
      }
      
      public function get localization() : IHabboLocalizationManager
      {
         return this.var_1137;
      }
      
      public function get windowManager() : IHabboWindowManager
      {
         return this._windowManager;
      }
      
      public function get toolbar() : IHabboToolbar
      {
         return this._toolbar;
      }
      
      public function get sessionDataManager() : ISessionDataManager
      {
         return this.var_378;
      }
      
      public function get tutorialUI() : TutorialUI
      {
         return this.var_108;
      }
      
      public function get hotelMergeUI() : HotelMergeUI
      {
         return this.var_737;
      }
      
      public function hasChangedName() : Boolean
      {
         if(this.var_108)
         {
            return this.var_108.hasChangedName;
         }
         return true;
      }
      
      override public function dispose() : void
      {
         if(this.var_68 != null)
         {
            this.var_68.dispose();
            this.var_68 = null;
         }
         if(this.var_108 != null)
         {
            this.var_108.dispose();
            this.var_108 = null;
         }
         if(this.var_737)
         {
            this.var_737.dispose();
            this.var_737 = null;
         }
         if(this.var_1136 != null)
         {
            this.var_1136.dispose();
            this.var_1136 = null;
         }
         this._incomingMessages = null;
         if(this._toolbar)
         {
            this._toolbar.release(new IIDHabboToolbar());
            this._toolbar = null;
         }
         if(this.var_1137)
         {
            this.var_1137.release(new IIDHabboLocalizationManager());
            this.var_1137 = null;
         }
         if(this.var_257)
         {
            this.var_257.release(new IIDHabboCommunicationManager());
            this.var_257 = null;
         }
         if(this.var_918)
         {
            this.var_918.release(new IIDHabboConfigurationManager());
            this.var_918 = null;
         }
         if(this._windowManager)
         {
            this._windowManager.release(new IIDHabboWindowManager());
            this._windowManager = null;
         }
         if(this.var_378 != null)
         {
            this.var_378.release(new IIDSessionDataManager());
            this.var_378 = null;
         }
         if(this.var_919 != null)
         {
            this.var_919.dispose();
            this.var_919 = null;
         }
         super.dispose();
      }
      
      public function showUI(param1:String = null) : void
      {
         if(this.var_68 != null)
         {
            this.var_68.showUI(param1);
         }
      }
      
      public function hideUI() : void
      {
         if(this.var_68 != null)
         {
            this.var_68.hideUI();
         }
      }
      
      public function tellUI(param1:String, param2:* = null) : void
      {
         if(this.var_68 != null)
         {
            this.var_68.tellUI(param1,param2);
         }
      }
      
      public function enableCallForGuideBotUI() : void
      {
         if(this.var_68 != null)
         {
            this.var_68.updateCallForGuideBotUI(true);
         }
      }
      
      public function disableCallForGuideBotUI() : void
      {
         if(this.var_68 != null)
         {
            this.var_68.updateCallForGuideBotUI(false);
         }
      }
      
      public function getFaq() : FaqIndex
      {
         return this.var_1136;
      }
      
      public function sendMessage(param1:IMessageComposer) : void
      {
         if(this.var_257 != null && param1 != null)
         {
            this.var_257.getHabboMainConnection(null).send(param1);
         }
      }
      
      public function getConfigurationKey(param1:String, param2:String = null, param3:Dictionary = null) : String
      {
         if(this.var_918 == null)
         {
            return param1;
         }
         return this.var_918.getKey(param1,param2,param3);
      }
      
      public function showCallForHelpReply(param1:String) : void
      {
         if(this.var_68 != null)
         {
            this.var_68.showCallForHelpReply(param1);
         }
      }
      
      public function showCallForHelpResult(param1:String) : void
      {
         if(this.var_68 != null)
         {
            this.var_68.showCallForHelpResult(param1);
         }
      }
      
      public function reportUser(param1:int, param2:String) : void
      {
         this.var_1413.reportedUserId = param1;
         this.var_1413.reportedUserName = param2;
         this.var_68.showUI(HabboHelpViewEnum.const_437);
      }
      
      private function toggleHelpUI() : void
      {
         if(this.var_68 == null)
         {
            if(!this.createHelpUI())
            {
               return;
            }
         }
         this.var_68.toggleUI();
      }
      
      private function createHelpUI() : Boolean
      {
         if(this.var_68 == null && this._assetLibrary != null && this._windowManager != null)
         {
            this.var_68 = new HelpUI(this,this._assetLibrary,this._windowManager);
         }
         return this.var_68 != null;
      }
      
      private function createTutorialUI() : Boolean
      {
         var _loc1_:* = false;
         if(this.var_108 == null && this._assetLibrary != null && this._windowManager != null)
         {
            _loc1_ = this.getConfigurationKey("avatar.widget.enabled","0") == "0";
            this.var_108 = new TutorialUI(this,_loc1_);
         }
         return this.var_108 != null;
      }
      
      public function removeTutorialUI() : void
      {
         if(this.var_108 != null)
         {
            this.var_108.dispose();
            this.var_108 = null;
         }
      }
      
      public function initHotelMergeUI() : void
      {
         if(!this.var_737)
         {
            this.var_737 = new HotelMergeUI(this);
         }
         this.var_737.startNameChange();
      }
      
      public function updateTutorial(param1:Boolean, param2:Boolean, param3:Boolean) : void
      {
         if(param1 && param2 && param3)
         {
            this.removeTutorialUI();
            return;
         }
         if(this.var_108 == null)
         {
            if(!this.createTutorialUI())
            {
               return;
            }
         }
         this.var_108.update(param1,param2,param3);
      }
      
      public function startNameChange() : void
      {
         if(this.var_108)
         {
            this.var_108.showView(TutorialUI.const_342);
         }
      }
      
      private function onWindowManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this._windowManager = IHabboWindowManager(param2);
         queueInterface(new IIDHabboCommunicationManager(),this.onCommunicationManagerReady);
      }
      
      private function onCommunicationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_257 = IHabboCommunicationManager(param2);
         this._incomingMessages = new IncomingMessages(this,this.var_257);
         queueInterface(new IIDHabboToolbar(),this.onToolbarReady);
      }
      
      private function onToolbarReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this._toolbar = IHabboToolbar(param2);
         queueInterface(new IIDHabboLocalizationManager(),this.onLocalizationManagerReady);
      }
      
      private function onLocalizationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_1137 = IHabboLocalizationManager(param2);
         queueInterface(new IIDHabboConfigurationManager(),this.onConfigurationManagerReady);
      }
      
      private function onConfigurationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_918 = IHabboConfigurationManager(param2);
         queueInterface(new IIDHabboRoomSessionManager(),this.onRoomSessionManagerReady);
      }
      
      private function onRoomSessionManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var _loc3_:IRoomSessionManager = IRoomSessionManager(param2);
         _loc3_.events.addEventListener(RoomSessionEvent.const_86,this.onRoomSessionEvent);
         _loc3_.events.addEventListener(RoomSessionEvent.const_96,this.onRoomSessionEvent);
         this._toolbar.events.addEventListener(HabboToolbarEvent.const_49,this.onHabboToolbarEvent);
         this.createHelpUI();
      }
      
      private function onSessionDataManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this.var_378 = param2 as ISessionDataManager;
      }
      
      private function onRoomSessionEvent(param1:RoomSessionEvent) : void
      {
         switch(param1.type)
         {
            case RoomSessionEvent.const_86:
               if(this.var_68 != null)
               {
                  this.var_68.setRoomSessionStatus(true);
               }
               if(this.var_108 != null)
               {
                  this.var_108.setRoomSessionStatus(true);
               }
               break;
            case RoomSessionEvent.const_96:
               if(this.var_68 != null)
               {
                  this.var_68.setRoomSessionStatus(false);
               }
               if(this.var_108 != null)
               {
                  this.var_108.setRoomSessionStatus(false);
               }
               this.userRegistry.unregisterRoom();
         }
      }
      
      public function showWelcomeScreen(param1:WelcomeNotification) : void
      {
         if(!this.var_919)
         {
            this.var_919 = new WelcomeScreenController(this,this._windowManager);
         }
         this.var_919.showWelcomeScreen(param1);
      }
      
      private function onHabboToolbarEvent(param1:HabboToolbarEvent) : void
      {
         if(param1.type == HabboToolbarEvent.const_49)
         {
            if(param1.iconId == HabboToolbarIconEnum.HELP)
            {
               this.toggleHelpUI();
            }
         }
      }
   }
}

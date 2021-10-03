package com.sulake.habbo.ui.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_110:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_163:String = "RWUIUE_PEER";
      
      public static const TRADE_REASON_OK:int = 0;
      
      public static const const_694:int = 2;
      
      public static const const_783:int = 3;
      
      public static const const_1809:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1946:String = "";
      
      private var var_2221:int;
      
      private var var_2222:int = 0;
      
      private var var_2225:int = 0;
      
      private var var_666:String = "";
      
      private var var_47:BitmapData = null;
      
      private var var_241:Array;
      
      private var var_1545:int = 0;
      
      private var var_2473:String = "";
      
      private var var_2471:int = 0;
      
      private var var_2472:int = 0;
      
      private var var_1801:Boolean = false;
      
      private var var_1922:String = "";
      
      private var var_2192:Boolean = false;
      
      private var var_2918:Boolean = false;
      
      private var var_2920:Boolean = true;
      
      private var var_1298:int = 0;
      
      private var var_2915:Boolean = false;
      
      private var var_2914:Boolean = false;
      
      private var var_2916:Boolean = false;
      
      private var var_2919:Boolean = false;
      
      private var var_2921:Boolean = false;
      
      private var var_2922:Boolean = false;
      
      private var var_2917:int = 0;
      
      private var var_1798:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_241 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1946 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1946;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2221 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2221;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2222 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2222;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2225 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2225;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_666 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_666;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_47 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_47;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_241 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_241;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1545 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1545;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2473 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2473;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2918 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2918;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this.var_1298 = param1;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1298;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2915 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2915;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2914 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2914;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2916 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2916;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2919 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2919;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2921 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2921;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2922 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2922;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2917 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2917;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2920 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2920;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1798 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1798;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2471 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2471;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2472 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2472;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_1801 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_1801;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1922 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1922;
      }
      
      public function set allowNameChange(param1:Boolean) : void
      {
         this.var_2192 = param1;
      }
      
      public function get allowNameChange() : Boolean
      {
         return this.var_2192;
      }
   }
}

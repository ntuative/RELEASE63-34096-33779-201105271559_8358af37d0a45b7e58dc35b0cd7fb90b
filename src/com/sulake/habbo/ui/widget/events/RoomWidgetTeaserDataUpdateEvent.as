package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetTeaserDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_533:String = "RWTDUE_TEASER_DATA";
      
      public static const const_835:String = "RWTDUE_GIFT_DATA";
      
      public static const const_725:String = "RWTDUE_GIFT_RECEIVED";
       
      
      private var var_222:int;
      
      private var _data:String;
      
      private var var_410:int;
      
      private var var_190:String;
      
      private var var_2452:String;
      
      private var var_2451:Boolean;
      
      private var var_1556:int = 0;
      
      private var var_2849:String;
      
      public function RoomWidgetTeaserDataUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function get objectId() : int
      {
         return this.var_222;
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function get status() : int
      {
         return this.var_410;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_2452;
      }
      
      public function get giftWasReceived() : Boolean
      {
         return this.var_2451;
      }
      
      public function get ownRealName() : String
      {
         return this.var_2849;
      }
      
      public function get itemCategory() : int
      {
         return this.var_1556;
      }
      
      public function set status(param1:int) : void
      {
         this.var_410 = param1;
      }
      
      public function set data(param1:String) : void
      {
         this._data = param1;
      }
      
      public function set firstClickUserName(param1:String) : void
      {
         this.var_2452 = param1;
      }
      
      public function set giftWasReceived(param1:Boolean) : void
      {
         this.var_2451 = param1;
      }
      
      public function set ownRealName(param1:String) : void
      {
         this.var_2849 = param1;
      }
      
      public function set objectId(param1:int) : void
      {
         this.var_222 = param1;
      }
      
      public function get campaignID() : String
      {
         return this.var_190;
      }
      
      public function set campaignID(param1:String) : void
      {
         this.var_190 = param1;
      }
      
      public function set itemCategory(param1:int) : void
      {
         this.var_1556 = param1;
      }
   }
}

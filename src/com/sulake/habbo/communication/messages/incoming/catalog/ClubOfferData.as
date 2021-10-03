package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var var_1341:int;
      
      private var var_1689:String;
      
      private var var_1688:int;
      
      private var _upgrade:Boolean;
      
      private var var_2305:Boolean;
      
      private var var_2307:int;
      
      private var var_2304:int;
      
      private var var_2303:int;
      
      private var var_2302:int;
      
      private var var_2306:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1341 = param1.readInteger();
         this.var_1689 = param1.readString();
         this.var_1688 = param1.readInteger();
         this._upgrade = param1.readBoolean();
         this.var_2305 = param1.readBoolean();
         this.var_2307 = param1.readInteger();
         this.var_2304 = param1.readInteger();
         this.var_2303 = param1.readInteger();
         this.var_2302 = param1.readInteger();
         this.var_2306 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this.var_1341;
      }
      
      public function get productCode() : String
      {
         return this.var_1689;
      }
      
      public function get price() : int
      {
         return this.var_1688;
      }
      
      public function get upgrade() : Boolean
      {
         return this._upgrade;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2305;
      }
      
      public function get periods() : int
      {
         return this.var_2307;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2304;
      }
      
      public function get year() : int
      {
         return this.var_2303;
      }
      
      public function get month() : int
      {
         return this.var_2302;
      }
      
      public function get day() : int
      {
         return this.var_2306;
      }
   }
}

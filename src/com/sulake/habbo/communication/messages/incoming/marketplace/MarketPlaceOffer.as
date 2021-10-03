package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var var_1341:int;
      
      private var _furniId:int;
      
      private var var_2885:int;
      
      private var var_2170:String;
      
      private var var_1688:int;
      
      private var var_410:int;
      
      private var var_2883:int = -1;
      
      private var var_2785:int;
      
      private var var_2081:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int, param9:int = -1)
      {
         super();
         this.var_1341 = param1;
         this._furniId = param2;
         this.var_2885 = param3;
         this.var_2170 = param4;
         this.var_1688 = param5;
         this.var_410 = param6;
         this.var_2883 = param7;
         this.var_2785 = param8;
         this.var_2081 = param9;
      }
      
      public function get offerId() : int
      {
         return this.var_1341;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniType() : int
      {
         return this.var_2885;
      }
      
      public function get stuffData() : String
      {
         return this.var_2170;
      }
      
      public function get price() : int
      {
         return this.var_1688;
      }
      
      public function get status() : int
      {
         return this.var_410;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2883;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2785;
      }
      
      public function get offerCount() : int
      {
         return this.var_2081;
      }
   }
}

package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_1341:int;
      
      private var var_1862:String;
      
      private var var_1226:int;
      
      private var var_1224:int;
      
      private var var_1863:int;
      
      private var var_1161:Array;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1341 = param1.readInteger();
         this.var_1862 = param1.readString();
         this.var_1226 = param1.readInteger();
         this.var_1224 = param1.readInteger();
         this.var_1863 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this.var_1161 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_1161.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
      }
      
      public function get offerId() : int
      {
         return this.var_1341;
      }
      
      public function get localizationId() : String
      {
         return this.var_1862;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1226;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1224;
      }
      
      public function get products() : Array
      {
         return this.var_1161;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1863;
      }
   }
}

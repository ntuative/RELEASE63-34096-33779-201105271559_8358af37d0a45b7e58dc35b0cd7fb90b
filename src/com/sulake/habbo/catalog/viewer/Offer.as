package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1680:String = "pricing_model_unknown";
      
      public static const const_382:String = "pricing_model_single";
      
      public static const const_388:String = "pricing_model_multi";
      
      public static const const_493:String = "pricing_model_bundle";
      
      public static const const_1761:String = "price_type_none";
      
      public static const const_709:String = "price_type_credits";
      
      public static const const_1298:String = "price_type_activitypoints";
      
      public static const const_1283:String = "price_type_credits_and_activitypoints";
       
      
      private var var_785:String;
      
      private var var_1225:String;
      
      private var var_1341:int;
      
      private var var_1862:String;
      
      private var var_1226:int;
      
      private var var_1224:int;
      
      private var var_1863:int;
      
      private var var_362:ICatalogPage;
      
      private var var_631:IProductContainer;
      
      private var _disposed:Boolean = false;
      
      private var var_2585:int;
      
      public function Offer(param1:int, param2:String, param3:int, param4:int, param5:int, param6:Array, param7:ICatalogPage)
      {
         super();
         this.var_1341 = param1;
         this.var_1862 = param2;
         this.var_1226 = param3;
         this.var_1224 = param4;
         this.var_1863 = param5;
         this.var_362 = param7;
         this.analyzePricingModel(param6);
         this.analyzePriceType();
         this.createProductContainer(param6);
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_362;
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
      
      public function get activityPointType() : int
      {
         return this.var_1863;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_631;
      }
      
      public function get pricingModel() : String
      {
         return this.var_785;
      }
      
      public function get priceType() : String
      {
         return this.var_1225;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2585;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2585 = param1;
      }
      
      public function dispose() : void
      {
         if(this.disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_1341 = 0;
         this.var_1862 = "";
         this.var_1226 = 0;
         this.var_1224 = 0;
         this.var_1863 = 0;
         this.var_362 = null;
         if(this.var_631 != null)
         {
            this.var_631.dispose();
            this.var_631 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_785)
         {
            case const_382:
               this.var_631 = new SingleProductContainer(this,param1);
               break;
            case const_388:
               this.var_631 = new MultiProductContainer(this,param1);
               break;
            case const_493:
               this.var_631 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_785);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_785 = const_382;
            }
            else
            {
               this.var_785 = const_388;
            }
         }
         else if(param1.length > 1)
         {
            this.var_785 = const_493;
         }
         else
         {
            this.var_785 = const_1680;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1226 > 0 && this.var_1224 > 0)
         {
            this.var_1225 = const_1283;
         }
         else if(this.var_1226 > 0)
         {
            this.var_1225 = const_709;
         }
         else if(this.var_1224 > 0)
         {
            this.var_1225 = const_1298;
         }
         else
         {
            this.var_1225 = const_1761;
         }
      }
      
      public function clone() : Offer
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc1_:Array = new Array();
         var _loc2_:IProductData = this.var_362.viewer.catalog.getProductData(this.localizationId);
         for each(_loc3_ in this.var_631.products)
         {
            _loc4_ = this.var_362.viewer.catalog.getFurnitureData(_loc3_.productClassId,_loc3_.productType);
            _loc5_ = new Product(_loc3_.productType,_loc3_.productClassId,_loc3_.extraParam,_loc3_.productCount,_loc3_.expiration,_loc2_,_loc4_);
            _loc1_.push(_loc5_);
         }
         return new Offer(this.offerId,this.localizationId,this.priceInCredits,this.priceInActivityPoints,this.activityPointType,_loc1_,this.page);
      }
   }
}

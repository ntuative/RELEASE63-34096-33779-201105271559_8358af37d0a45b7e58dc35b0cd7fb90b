package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_2785:int;
      
      private var var_2788:int;
      
      private var var_2789:int;
      
      private var _dayOffsets:Array;
      
      private var var_2116:Array;
      
      private var var_2115:Array;
      
      private var var_2787:int;
      
      private var var_2786:int;
      
      public function MarketplaceItemStats()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2785;
      }
      
      public function get offerCount() : int
      {
         return this.var_2788;
      }
      
      public function get historyLength() : int
      {
         return this.var_2789;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_2116;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_2115;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2787;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2786;
      }
      
      public function set averagePrice(param1:int) : void
      {
         this.var_2785 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_2788 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         this.var_2789 = param1;
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         this._dayOffsets = param1.slice();
      }
      
      public function set averagePrices(param1:Array) : void
      {
         this.var_2116 = param1.slice();
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         this.var_2115 = param1.slice();
      }
      
      public function set furniTypeId(param1:int) : void
      {
         this.var_2787 = param1;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         this.var_2786 = param1;
      }
   }
}

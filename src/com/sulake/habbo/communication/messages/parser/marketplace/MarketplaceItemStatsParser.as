package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_2785:int;
      
      private var var_2788:int;
      
      private var var_2789:int;
      
      private var _dayOffsets:Array;
      
      private var var_2116:Array;
      
      private var var_2115:Array;
      
      private var var_2787:int;
      
      private var var_2786:int;
      
      public function MarketplaceItemStatsParser()
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
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2785 = param1.readInteger();
         this.var_2788 = param1.readInteger();
         this.var_2789 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this._dayOffsets = [];
         this.var_2116 = [];
         this.var_2115 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this._dayOffsets.push(param1.readInteger());
            this.var_2116.push(param1.readInteger());
            this.var_2115.push(param1.readInteger());
            _loc3_++;
         }
         this.var_2786 = param1.readInteger();
         this.var_2787 = param1.readInteger();
         return true;
      }
   }
}

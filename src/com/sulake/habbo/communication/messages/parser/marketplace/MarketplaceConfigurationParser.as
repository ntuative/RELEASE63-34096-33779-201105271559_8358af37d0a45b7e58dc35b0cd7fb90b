package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1576:Boolean;
      
      private var var_2454:int;
      
      private var var_1760:int;
      
      private var var_1761:int;
      
      private var var_2460:int;
      
      private var var_2455:int;
      
      private var var_2456:int;
      
      private var var_2458:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1576;
      }
      
      public function get commission() : int
      {
         return this.var_2454;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_1760;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_1761;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2455;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2460;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2456;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2458;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1576 = param1.readBoolean();
         this.var_2454 = param1.readInteger();
         this.var_1760 = param1.readInteger();
         this.var_1761 = param1.readInteger();
         this.var_2455 = param1.readInteger();
         this.var_2460 = param1.readInteger();
         this.var_2456 = param1.readInteger();
         this.var_2458 = param1.readInteger();
         return true;
      }
   }
}

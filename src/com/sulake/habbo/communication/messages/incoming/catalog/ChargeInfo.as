package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChargeInfo
   {
       
      
      private var var_2385:int;
      
      private var var_2386:int;
      
      private var var_1226:int;
      
      private var var_1224:int;
      
      private var var_1863:int;
      
      private var var_2384:int;
      
      public function ChargeInfo(param1:IMessageDataWrapper)
      {
         super();
         this.var_2385 = param1.readInteger();
         this.var_2386 = param1.readInteger();
         this.var_1226 = param1.readInteger();
         this.var_1224 = param1.readInteger();
         this.var_1863 = param1.readInteger();
         this.var_2384 = param1.readInteger();
      }
      
      public function get stuffId() : int
      {
         return this.var_2385;
      }
      
      public function get charges() : int
      {
         return this.var_2386;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1226;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1224;
      }
      
      public function get chargePatchSize() : int
      {
         return this.var_2384;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1863;
      }
   }
}

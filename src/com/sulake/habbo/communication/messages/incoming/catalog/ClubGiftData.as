package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubGiftData
   {
       
      
      private var var_1341:int;
      
      private var var_2545:Boolean;
      
      private var var_2198:Boolean;
      
      private var var_2546:int;
      
      public function ClubGiftData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1341 = param1.readInteger();
         this.var_2545 = param1.readBoolean();
         this.var_2546 = param1.readInteger();
         this.var_2198 = param1.readBoolean();
      }
      
      public function get offerId() : int
      {
         return this.var_1341;
      }
      
      public function get isVip() : Boolean
      {
         return this.var_2545;
      }
      
      public function get isSelectable() : Boolean
      {
         return this.var_2198;
      }
      
      public function get daysRequired() : int
      {
         return this.var_2546;
      }
   }
}

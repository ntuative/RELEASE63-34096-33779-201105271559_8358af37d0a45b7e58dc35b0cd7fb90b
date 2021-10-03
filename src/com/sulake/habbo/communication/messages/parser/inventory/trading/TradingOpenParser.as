package com.sulake.habbo.communication.messages.parser.inventory.trading
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TradingOpenParser implements IMessageParser
   {
       
      
      private var _userID:int;
      
      private var var_1928:Boolean;
      
      private var var_1929:int;
      
      private var var_1927:Boolean;
      
      public function TradingOpenParser()
      {
         super();
      }
      
      public function get userID() : int
      {
         return this._userID;
      }
      
      public function get userCanTrade() : Boolean
      {
         return this.var_1928;
      }
      
      public function get otherUserID() : int
      {
         return this.var_1929;
      }
      
      public function get otherUserCanTrade() : Boolean
      {
         return this.var_1927;
      }
      
      public function flush() : Boolean
      {
         this._userID = -1;
         this.var_1928 = false;
         this.var_1929 = -1;
         this.var_1927 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._userID = param1.readInteger();
         this.var_1928 = param1.readInteger() == 1;
         this.var_1929 = param1.readInteger();
         this.var_1927 = param1.readInteger() == 1;
         return true;
      }
   }
}

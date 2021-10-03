package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class FlatCatMessageParser implements IMessageParser
   {
       
      
      private var var_349:int;
      
      private var var_1986:int;
      
      public function FlatCatMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_349 = param1.readInteger();
         this.var_1986 = param1.readInteger();
         return true;
      }
      
      public function flush() : Boolean
      {
         this.var_349 = 0;
         this.var_1986 = 0;
         return true;
      }
      
      public function get flatId() : int
      {
         return this.var_349;
      }
      
      public function get method_1() : int
      {
         return this.var_1986;
      }
   }
}

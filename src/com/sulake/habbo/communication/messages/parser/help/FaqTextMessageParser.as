package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class FaqTextMessageParser implements IMessageParser
   {
       
      
      private var var_2009:int;
      
      private var var_2010:String;
      
      public function FaqTextMessageParser()
      {
         super();
      }
      
      public function get questionId() : int
      {
         return this.var_2009;
      }
      
      public function get answerText() : String
      {
         return this.var_2010;
      }
      
      public function flush() : Boolean
      {
         this.var_2009 = -1;
         this.var_2010 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2009 = param1.readInteger();
         this.var_2010 = param1.readString();
         return true;
      }
   }
}

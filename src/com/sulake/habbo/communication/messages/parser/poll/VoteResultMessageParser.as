package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1285:String;
      
      private var var_1401:Array;
      
      private var var_1201:Array;
      
      private var var_1690:int;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get question() : String
      {
         return this.var_1285;
      }
      
      public function get choices() : Array
      {
         return this.var_1401.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1201.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_1690;
      }
      
      public function flush() : Boolean
      {
         this.var_1285 = "";
         this.var_1401 = [];
         this.var_1201 = [];
         this.var_1690 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1285 = param1.readString();
         this.var_1401 = [];
         this.var_1201 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            this.var_1401.push(param1.readString());
            this.var_1201.push(param1.readInteger());
            _loc3_++;
         }
         this.var_1690 = param1.readInteger();
         return true;
      }
   }
}

package com.sulake.habbo.communication.messages.parser.facebook
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class FaceBookAppRequestMessageParser implements IMessageParser
   {
       
      
      private var var_1940:String;
      
      private var _data:String;
      
      private var var_1939:String;
      
      private var var_2663:int;
      
      public function FaceBookAppRequestMessageParser()
      {
         super();
      }
      
      public function get authToken() : String
      {
         return this.var_1940;
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function get userFilter() : String
      {
         return this.var_1939;
      }
      
      public function get senderReference() : int
      {
         return this.var_2663;
      }
      
      public function flush() : Boolean
      {
         var _loc1_:* = null;
         this.var_1939 = null;
         this.var_1940 = this._data = _loc1_;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1940 = param1.readString();
         this._data = param1.readString();
         this.var_1939 = param1.readString();
         this.var_2663 = param1.readInteger();
         return true;
      }
   }
}

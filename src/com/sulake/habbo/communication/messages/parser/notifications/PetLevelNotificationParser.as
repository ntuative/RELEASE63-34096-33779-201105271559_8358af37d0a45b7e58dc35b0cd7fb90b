package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1987:int;
      
      private var var_2258:String;
      
      private var var_1200:int;
      
      private var var_1206:int;
      
      private var var_1719:int;
      
      private var _color:String;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1987 = param1.readInteger();
         this.var_2258 = param1.readString();
         this.var_1200 = param1.readInteger();
         this.var_1206 = param1.readInteger();
         this.var_1719 = param1.readInteger();
         this._color = param1.readString();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1987;
      }
      
      public function get petName() : String
      {
         return this.var_2258;
      }
      
      public function get level() : int
      {
         return this.var_1200;
      }
      
      public function get petType() : int
      {
         return this.var_1206;
      }
      
      public function get breed() : int
      {
         return this.var_1719;
      }
      
      public function get color() : String
      {
         return this._color;
      }
   }
}

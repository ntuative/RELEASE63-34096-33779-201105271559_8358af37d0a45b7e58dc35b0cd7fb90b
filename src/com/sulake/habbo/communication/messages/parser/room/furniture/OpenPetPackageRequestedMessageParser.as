package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class OpenPetPackageRequestedMessageParser implements IMessageParser
   {
       
      
      private var var_222:int = -1;
      
      private var var_1206:int = -1;
      
      private var var_1719:int = -1;
      
      private var _color:String = "";
      
      public function OpenPetPackageRequestedMessageParser()
      {
         super();
      }
      
      public function get objectId() : int
      {
         return this.var_222;
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
      
      public function flush() : Boolean
      {
         this.var_222 = -1;
         this.var_1206 = -1;
         this.var_1719 = -1;
         this._color = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_222 = param1.readInteger();
         this.var_1206 = param1.readInteger();
         this.var_1719 = param1.readInteger();
         this._color = param1.readString();
         return true;
      }
   }
}

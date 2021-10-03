package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserChangeMessageParser implements IMessageParser
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var _id:int;
      
      private var var_666:String;
      
      private var var_997:String;
      
      private var var_1916:String;
      
      private var var_2221:int;
      
      public function UserChangeMessageParser()
      {
         super();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get figure() : String
      {
         return this.var_666;
      }
      
      public function get sex() : String
      {
         return this.var_997;
      }
      
      public function get customInfo() : String
      {
         return this.var_1916;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2221;
      }
      
      public function flush() : Boolean
      {
         this._id = 0;
         this.var_666 = "";
         this.var_997 = "";
         this.var_1916 = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = param1.readInteger();
         this.var_666 = param1.readString();
         this.var_997 = param1.readString();
         this.var_1916 = param1.readString();
         this.var_2221 = param1.readInteger();
         if(this.var_997)
         {
            this.var_997 = this.var_997.toUpperCase();
         }
         return true;
      }
   }
}

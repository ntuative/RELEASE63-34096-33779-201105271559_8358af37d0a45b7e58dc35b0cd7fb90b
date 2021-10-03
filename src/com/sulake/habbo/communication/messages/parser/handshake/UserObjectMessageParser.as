package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_666:String;
      
      private var var_997:String;
      
      private var var_2887:String;
      
      private var var_1922:String;
      
      private var var_2891:int;
      
      private var var_2888:String;
      
      private var var_2889:int;
      
      private var var_2890:int;
      
      private var var_2544:int;
      
      private var var_1298:int;
      
      private var _petRespectLeft:int;
      
      private var var_2797:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_666 = param1.readString();
         this.var_997 = param1.readString();
         this.var_2887 = param1.readString();
         this.var_1922 = param1.readString();
         this.var_2891 = param1.readInteger();
         this.var_2888 = param1.readString();
         this.var_2889 = param1.readInteger();
         this.var_2890 = param1.readInteger();
         this.var_2544 = param1.readInteger();
         this.var_1298 = param1.readInteger();
         this._petRespectLeft = param1.readInteger();
         this.var_2797 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this.var_666;
      }
      
      public function get sex() : String
      {
         return this.var_997;
      }
      
      public function get customData() : String
      {
         return this.var_2887;
      }
      
      public function get realName() : String
      {
         return this.var_1922;
      }
      
      public function get tickets() : int
      {
         return this.var_2891;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2888;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2889;
      }
      
      public function get directMail() : int
      {
         return this.var_2890;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2544;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1298;
      }
      
      public function get petRespectLeft() : int
      {
         return this._petRespectLeft;
      }
      
      public function get identityId() : int
      {
         return this.var_2797;
      }
   }
}

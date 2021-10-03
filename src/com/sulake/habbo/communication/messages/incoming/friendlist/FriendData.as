package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_1036:int;
      
      private var var_800:Boolean;
      
      private var var_1947:Boolean;
      
      private var var_666:String;
      
      private var var_1526:int;
      
      private var var_1946:String;
      
      private var var_1924:String;
      
      private var var_1922:String;
      
      private var var_2350:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_1036 = param1.readInteger();
         this.var_800 = param1.readBoolean();
         this.var_1947 = param1.readBoolean();
         this.var_666 = param1.readString();
         this.var_1526 = param1.readInteger();
         this.var_1946 = param1.readString();
         this.var_1924 = param1.readString();
         this.var_1922 = param1.readString();
         this.var_2350 = param1.readString();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_1036;
      }
      
      public function get online() : Boolean
      {
         return this.var_800;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1947;
      }
      
      public function get figure() : String
      {
         return this.var_666;
      }
      
      public function get categoryId() : int
      {
         return this.var_1526;
      }
      
      public function get motto() : String
      {
         return this.var_1946;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1924;
      }
      
      public function get realName() : String
      {
         return this.var_1922;
      }
      
      public function get facebookId() : String
      {
         return this.var_2350;
      }
   }
}

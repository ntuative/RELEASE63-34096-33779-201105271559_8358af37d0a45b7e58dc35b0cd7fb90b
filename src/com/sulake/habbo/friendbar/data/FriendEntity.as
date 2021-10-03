package com.sulake.habbo.friendbar.data
{
   public class FriendEntity implements IFriendEntity
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_1036:int;
      
      private var var_800:Boolean;
      
      private var var_2097:Boolean;
      
      private var var_666:String;
      
      private var var_1526:int;
      
      private var var_1946:String;
      
      private var var_1924:String;
      
      private var var_1922:String;
      
      public function FriendEntity(param1:int, param2:String, param3:String, param4:String, param5:int, param6:Boolean, param7:Boolean, param8:String, param9:int, param10:String)
      {
         super();
         this._id = param1;
         this._name = param2;
         this.var_1922 = param3;
         this.var_1946 = param4;
         this.var_1036 = param5;
         this.var_800 = param6;
         this.var_2097 = param7;
         this.var_666 = param8;
         this.var_1526 = param9;
         this.var_1924 = param10;
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
      
      public function get allowFollow() : Boolean
      {
         return this.var_2097;
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
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function set gender(param1:int) : void
      {
         this.var_1036 = param1;
      }
      
      public function set online(param1:Boolean) : void
      {
         this.var_800 = param1;
      }
      
      public function set allowFollow(param1:Boolean) : void
      {
         this.var_2097 = param1;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_666 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1526 = param1;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1946 = param1;
      }
      
      public function set lastAccess(param1:String) : void
      {
         this.var_1924 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1922 = param1;
      }
   }
}

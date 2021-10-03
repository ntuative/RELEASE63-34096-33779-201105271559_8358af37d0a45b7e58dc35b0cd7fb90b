package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1241:String = "M";
      
      public static const const_1677:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_160:Number = 0;
      
      private var var_159:Number = 0;
      
      private var var_446:int = 0;
      
      private var _name:String = "";
      
      private var var_1647:int = 0;
      
      private var var_997:String = "";
      
      private var var_666:String = "";
      
      private var var_2220:String = "";
      
      private var var_2221:int;
      
      private var var_2222:int = 0;
      
      private var var_2224:String = "";
      
      private var var_2223:int = 0;
      
      private var var_2225:int = 0;
      
      private var var_2657:String = "";
      
      private var var_186:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_186 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_186)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_160;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_186)
         {
            this.var_160 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_159;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_186)
         {
            this.var_159 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_446;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_186)
         {
            this.var_446 = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_186)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this.var_1647;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_186)
         {
            this.var_1647 = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_997;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_186)
         {
            this.var_997 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this.var_666;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_186)
         {
            this.var_666 = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2220;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_186)
         {
            this.var_2220 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2221;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_186)
         {
            this.var_2221 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2222;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_186)
         {
            this.var_2222 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2224;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_186)
         {
            this.var_2224 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2223;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_186)
         {
            this.var_2223 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2225;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_186)
         {
            this.var_2225 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2657;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_186)
         {
            this.var_2657 = param1;
         }
      }
   }
}

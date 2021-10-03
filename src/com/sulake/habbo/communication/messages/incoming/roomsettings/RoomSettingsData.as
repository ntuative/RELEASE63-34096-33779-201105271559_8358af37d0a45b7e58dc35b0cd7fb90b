package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_523:int = 0;
      
      public static const const_194:int = 1;
      
      public static const const_124:int = 2;
      
      public static const const_811:Array = ["open","closed","password"];
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1692:String;
      
      private var var_2265:int;
      
      private var var_1526:int;
      
      private var var_2263:int;
      
      private var var_2262:int;
      
      private var var_887:Array;
      
      private var var_2266:Array;
      
      private var var_2267:int;
      
      private var var_2268:Boolean;
      
      private var var_2264:Boolean;
      
      private var var_2269:Boolean;
      
      private var var_2261:Boolean;
      
      private var var_2260:int;
      
      private var var_2259:int;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2268;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2268 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2264;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2264 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2269;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2269 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2261;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2261 = param1;
      }
      
      public function get wallThickness() : int
      {
         return this.var_2260;
      }
      
      public function set wallThickness(param1:int) : void
      {
         this.var_2260 = param1;
      }
      
      public function get floorThickness() : int
      {
         return this.var_2259;
      }
      
      public function set floorThickness(param1:int) : void
      {
         this.var_2259 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1692;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1692 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2265;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2265 = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1526;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1526 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2263;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2263 = param1;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return this.var_2262;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         this.var_2262 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_887;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_887 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2266;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2266 = param1;
      }
      
      public function get controllerCount() : int
      {
         return this.var_2267;
      }
      
      public function set controllerCount(param1:int) : void
      {
         this.var_2267 = param1;
      }
   }
}

package com.sulake.habbo.inventory.items
{
   public class FloorItem implements IItem
   {
       
      
      protected var _id:int;
      
      protected var _ref:int;
      
      protected var _category:int;
      
      protected var _type:int;
      
      protected var var_2170:String;
      
      protected var var_1589:Number;
      
      protected var var_2952:Boolean;
      
      protected var var_2951:Boolean;
      
      protected var var_2556:Boolean;
      
      protected var var_2293:Boolean;
      
      protected var var_2962:int;
      
      protected var var_2555:int;
      
      protected var var_2554:int;
      
      protected var var_2559:int;
      
      protected var var_2014:String;
      
      protected var var_1777:int;
      
      protected var var_920:Boolean;
      
      public function FloorItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:Number, param11:int, param12:int, param13:int, param14:int, param15:String, param16:int)
      {
         super();
         this._id = param1;
         this._type = param2;
         this._ref = param3;
         this._category = param4;
         this.var_2556 = param5;
         this.var_2951 = param6;
         this.var_2952 = param7;
         this.var_2293 = param8;
         this.var_2170 = param9;
         this.var_1589 = param10;
         this.var_2962 = param11;
         this.var_2555 = param12;
         this.var_2554 = param13;
         this.var_2559 = param14;
         this.var_2014 = param15;
         this.var_1777 = param16;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get ref() : int
      {
         return this._ref;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get stuffData() : String
      {
         return this.var_2170;
      }
      
      public function get extra() : Number
      {
         return this.var_1589;
      }
      
      public function get recyclable() : Boolean
      {
         return this.var_2952;
      }
      
      public function get tradeable() : Boolean
      {
         return this.var_2951;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2556;
      }
      
      public function get sellable() : Boolean
      {
         return this.var_2293;
      }
      
      public function get expires() : int
      {
         return this.var_2962;
      }
      
      public function get creationDay() : int
      {
         return this.var_2555;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2554;
      }
      
      public function get creationYear() : int
      {
         return this.var_2559;
      }
      
      public function get slotId() : String
      {
         return this.var_2014;
      }
      
      public function get songId() : int
      {
         return this.var_1777;
      }
      
      public function set locked(param1:Boolean) : void
      {
         this.var_920 = param1;
      }
      
      public function get locked() : Boolean
      {
         return this.var_920;
      }
   }
}

package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2231:int;
      
      private var var_1504:String;
      
      private var var_2558:int;
      
      private var var_2553:int;
      
      private var _category:int;
      
      private var var_2170:String;
      
      private var var_1589:int;
      
      private var var_2557:int;
      
      private var var_2555:int;
      
      private var var_2554:int;
      
      private var var_2559:int;
      
      private var var_2556:Boolean;
      
      private var var_3018:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2231 = param1;
         this.var_1504 = param2;
         this.var_2558 = param3;
         this.var_2553 = param4;
         this._category = param5;
         this.var_2170 = param6;
         this.var_1589 = param7;
         this.var_2557 = param8;
         this.var_2555 = param9;
         this.var_2554 = param10;
         this.var_2559 = param11;
         this.var_2556 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2231;
      }
      
      public function get itemType() : String
      {
         return this.var_1504;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2558;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2553;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2170;
      }
      
      public function get extra() : int
      {
         return this.var_1589;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2557;
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
      
      public function get groupable() : Boolean
      {
         return this.var_2556;
      }
      
      public function get songID() : int
      {
         return this.var_1589;
      }
   }
}

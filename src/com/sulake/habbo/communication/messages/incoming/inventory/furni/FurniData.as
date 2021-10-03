package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2275:int;
      
      private var var_1504:String;
      
      private var _objId:int;
      
      private var var_1854:int;
      
      private var _category:int;
      
      private var var_2170:String;
      
      private var var_2277:Boolean;
      
      private var var_2278:Boolean;
      
      private var var_2276:Boolean;
      
      private var var_2274:Boolean;
      
      private var var_2228:int;
      
      private var var_1589:int;
      
      private var var_2014:String = "";
      
      private var var_1777:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2275 = param1;
         this.var_1504 = param2;
         this._objId = param3;
         this.var_1854 = param4;
         this._category = param5;
         this.var_2170 = param6;
         this.var_2277 = param7;
         this.var_2278 = param8;
         this.var_2276 = param9;
         this.var_2274 = param10;
         this.var_2228 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_2014 = param1;
         this.var_1589 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2275;
      }
      
      public function get itemType() : String
      {
         return this.var_1504;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_1854;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2170;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2277;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2278;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2276;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2274;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2228;
      }
      
      public function get slotId() : String
      {
         return this.var_2014;
      }
      
      public function get songId() : int
      {
         return this.var_1777;
      }
      
      public function get extra() : int
      {
         return this.var_1589;
      }
   }
}

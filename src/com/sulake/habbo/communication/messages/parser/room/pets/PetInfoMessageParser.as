package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1987:int;
      
      private var _name:String;
      
      private var var_1200:int;
      
      private var var_2727:int;
      
      private var var_2629:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var var_666:String;
      
      private var var_2729:int;
      
      private var var_2728:int;
      
      private var var_2730:int;
      
      private var var_2432:int;
      
      private var var_2731:int;
      
      private var _ownerName:String;
      
      private var var_563:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1987;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1200;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2727;
      }
      
      public function get experience() : int
      {
         return this.var_2629;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this.var_666;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2729;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2728;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2730;
      }
      
      public function get respect() : int
      {
         return this.var_2432;
      }
      
      public function get ownerId() : int
      {
         return this.var_2731;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_563;
      }
      
      public function flush() : Boolean
      {
         this.var_1987 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1987 = param1.readInteger();
         this._name = param1.readString();
         this.var_1200 = param1.readInteger();
         this.var_2727 = param1.readInteger();
         this.var_2629 = param1.readInteger();
         this.var_2729 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2728 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2730 = param1.readInteger();
         this.var_666 = param1.readString();
         this.var_2432 = param1.readInteger();
         this.var_2731 = param1.readInteger();
         this.var_563 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}

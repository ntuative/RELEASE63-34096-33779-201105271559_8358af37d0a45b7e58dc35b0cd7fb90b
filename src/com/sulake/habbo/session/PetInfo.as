package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1987:int;
      
      private var var_1200:int;
      
      private var var_2840:int;
      
      private var var_2629:int;
      
      private var var_2838:int;
      
      private var _energy:int;
      
      private var var_2839:int;
      
      private var _nutrition:int;
      
      private var var_2842:int;
      
      private var var_2731:int;
      
      private var _ownerName:String;
      
      private var var_2432:int;
      
      private var var_563:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1987;
      }
      
      public function get level() : int
      {
         return this.var_1200;
      }
      
      public function get levelMax() : int
      {
         return this.var_2840;
      }
      
      public function get experience() : int
      {
         return this.var_2629;
      }
      
      public function get experienceMax() : int
      {
         return this.var_2838;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get energyMax() : int
      {
         return this.var_2839;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get nutritionMax() : int
      {
         return this.var_2842;
      }
      
      public function get ownerId() : int
      {
         return this.var_2731;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get respect() : int
      {
         return this.var_2432;
      }
      
      public function get age() : int
      {
         return this.var_563;
      }
      
      public function set petId(param1:int) : void
      {
         this.var_1987 = param1;
      }
      
      public function set level(param1:int) : void
      {
         this.var_1200 = param1;
      }
      
      public function set levelMax(param1:int) : void
      {
         this.var_2840 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         this.var_2629 = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         this.var_2838 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         this._energy = param1;
      }
      
      public function set energyMax(param1:int) : void
      {
         this.var_2839 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         this._nutrition = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         this.var_2842 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         this.var_2731 = param1;
      }
      
      public function set ownerName(param1:String) : void
      {
         this._ownerName = param1;
      }
      
      public function set respect(param1:int) : void
      {
         this.var_2432 = param1;
      }
      
      public function set age(param1:int) : void
      {
         this.var_563 = param1;
      }
   }
}

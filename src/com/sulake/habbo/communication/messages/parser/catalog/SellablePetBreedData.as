package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class SellablePetBreedData
   {
       
      
      private var _type:int;
      
      private var var_1719:int;
      
      private var var_2293:Boolean;
      
      private var var_2292:Boolean;
      
      public function SellablePetBreedData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1719 = param1.readInteger();
         this.var_2293 = param1.readBoolean();
         this.var_2292 = param1.readBoolean();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get breed() : int
      {
         return this.var_1719;
      }
      
      public function get sellable() : Boolean
      {
         return this.var_2293;
      }
      
      public function get rare() : Boolean
      {
         return this.var_2292;
      }
   }
}

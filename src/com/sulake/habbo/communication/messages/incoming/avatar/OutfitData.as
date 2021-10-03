package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_2014:int;
      
      private var var_2687:String;
      
      private var var_1036:String;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2014 = param1.readInteger();
         this.var_2687 = param1.readString();
         this.var_1036 = param1.readString();
      }
      
      public function get slotId() : int
      {
         return this.var_2014;
      }
      
      public function get figureString() : String
      {
         return this.var_2687;
      }
      
      public function get gender() : String
      {
         return this.var_1036;
      }
   }
}

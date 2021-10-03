package com.sulake.habbo.communication.messages.outgoing.room.pets
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class GetPetInfoMessageComposer implements IMessageComposer
   {
       
      
      private var var_1987:int;
      
      public function GetPetInfoMessageComposer(param1:int)
      {
         super();
         this.var_1987 = param1;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_1987];
      }
      
      public function dispose() : void
      {
      }
   }
}

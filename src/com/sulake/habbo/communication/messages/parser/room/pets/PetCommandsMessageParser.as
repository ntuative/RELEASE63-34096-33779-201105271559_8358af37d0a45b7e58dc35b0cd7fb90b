package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetCommandsMessageParser implements IMessageParser
   {
       
      
      private var var_1987:int;
      
      private var var_1603:Array;
      
      private var var_1237:Array;
      
      public function PetCommandsMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1987;
      }
      
      public function get allCommands() : Array
      {
         return this.var_1603;
      }
      
      public function get enabledCommands() : Array
      {
         return this.var_1237;
      }
      
      public function flush() : Boolean
      {
         this.var_1987 = -1;
         this.var_1603 = null;
         this.var_1237 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1987 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this.var_1603 = new Array();
         while(_loc2_-- > 0)
         {
            this.var_1603.push(param1.readInteger());
         }
         var _loc3_:int = param1.readInteger();
         this.var_1237 = new Array();
         while(_loc3_-- > 0)
         {
            this.var_1237.push(param1.readInteger());
         }
         return true;
      }
   }
}

package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_1986:int;
      
      private var var_2346:String;
      
      private var var_307:Boolean;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         this.var_1986 = param1.readInteger();
         this.var_2346 = param1.readString();
         this.var_307 = param1.readBoolean();
      }
      
      public function get method_1() : int
      {
         return this.var_1986;
      }
      
      public function get nodeName() : String
      {
         return this.var_2346;
      }
      
      public function get visible() : Boolean
      {
         return this.var_307;
      }
   }
}

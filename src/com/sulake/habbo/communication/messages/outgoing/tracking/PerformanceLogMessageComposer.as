package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2465:int = 0;
      
      private var var_1433:String = "";
      
      private var var_1728:String = "";
      
      private var var_2405:String = "";
      
      private var var_2461:String = "";
      
      private var var_1763:int = 0;
      
      private var var_2462:int = 0;
      
      private var var_2463:int = 0;
      
      private var var_1432:int = 0;
      
      private var var_2464:int = 0;
      
      private var var_1431:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2465 = param1;
         this.var_1433 = param2;
         this.var_1728 = param3;
         this.var_2405 = param4;
         this.var_2461 = param5;
         if(param6)
         {
            this.var_1763 = 1;
         }
         else
         {
            this.var_1763 = 0;
         }
         this.var_2462 = param7;
         this.var_2463 = param8;
         this.var_1432 = param9;
         this.var_2464 = param10;
         this.var_1431 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2465,this.var_1433,this.var_1728,this.var_2405,this.var_2461,this.var_1763,this.var_2462,this.var_2463,this.var_1432,this.var_2464,this.var_1431];
      }
   }
}

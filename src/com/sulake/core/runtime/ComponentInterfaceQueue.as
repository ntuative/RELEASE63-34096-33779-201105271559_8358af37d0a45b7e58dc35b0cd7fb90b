package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_2099:IID;
      
      private var var_1104:Boolean;
      
      private var var_1339:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_2099 = param1;
         this.var_1339 = new Array();
         this.var_1104 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_2099;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_1104;
      }
      
      public function get receivers() : Array
      {
         return this.var_1339;
      }
      
      public function dispose() : void
      {
         if(!this.var_1104)
         {
            this.var_1104 = true;
            this.var_2099 = null;
            while(this.var_1339.length > 0)
            {
               this.var_1339.pop();
            }
            this.var_1339 = null;
         }
      }
   }
}

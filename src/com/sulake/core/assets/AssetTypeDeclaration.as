package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2488:String;
      
      private var var_2487:Class;
      
      private var var_2486:Class;
      
      private var var_1774:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2488 = param1;
         this.var_2487 = param2;
         this.var_2486 = param3;
         if(rest == null)
         {
            this.var_1774 = new Array();
         }
         else
         {
            this.var_1774 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2488;
      }
      
      public function get assetClass() : Class
      {
         return this.var_2487;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_2486;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_1774;
      }
   }
}

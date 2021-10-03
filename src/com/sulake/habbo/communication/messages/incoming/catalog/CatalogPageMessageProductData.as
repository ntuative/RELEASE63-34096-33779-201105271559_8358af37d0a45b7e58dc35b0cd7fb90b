package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_66:String = "i";
      
      public static const const_81:String = "s";
      
      public static const const_192:String = "e";
       
      
      private var var_1506:String;
      
      private var var_2705:int;
      
      private var var_1238:String;
      
      private var var_1505:int;
      
      private var var_1885:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1506 = param1.readString();
         this.var_2705 = param1.readInteger();
         this.var_1238 = param1.readString();
         this.var_1505 = param1.readInteger();
         this.var_1885 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1506;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2705;
      }
      
      public function get extraParam() : String
      {
         return this.var_1238;
      }
      
      public function get productCount() : int
      {
         return this.var_1505;
      }
      
      public function get expiration() : int
      {
         return this.var_1885;
      }
   }
}

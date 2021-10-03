package com.sulake.core.assets.loaders
{
   import flash.events.Event;
   
   public class AssetLoaderEvent extends Event
   {
      
      public static const const_29:String = "AssetLoaderEventComplete";
      
      public static const const_1239:String = "AssetLoaderEventProgress";
      
      public static const const_1297:String = "AssetLoaderEventUnload";
      
      public static const const_1346:String = "AssetLoaderEventStatus";
      
      public static const const_42:String = "AssetLoaderEventError";
      
      public static const const_1305:String = "AssetLoaderEventOpen";
       
      
      private var var_410:int;
      
      public function AssetLoaderEvent(param1:String, param2:int)
      {
         this.var_410 = param2;
         super(param1,false,false);
      }
      
      public function get status() : int
      {
         return this.var_410;
      }
      
      override public function clone() : Event
      {
         return new AssetLoaderEvent(type,this.var_410);
      }
      
      override public function toString() : String
      {
         return formatToString("AssetLoaderEvent","type","status");
      }
   }
}

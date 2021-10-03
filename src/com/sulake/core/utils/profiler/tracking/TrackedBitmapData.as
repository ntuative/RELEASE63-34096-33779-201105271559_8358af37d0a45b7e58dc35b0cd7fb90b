package com.sulake.core.utils.profiler.tracking
{
   import flash.display.BitmapData;
   
   public class TrackedBitmapData extends BitmapData
   {
      
      public static const const_2026:int = 16777215;
      
      public static const const_1226:int = 8191;
      
      public static const const_1213:int = 8191;
      
      public static const const_2097:int = 1;
      
      public static const const_1318:int = 1;
      
      public static const const_1338:int = 1;
      
      private static var var_540:uint = 0;
      
      private static var var_539:uint = 0;
       
      
      private var _owner:Object;
      
      private var _disposed:Boolean = false;
      
      public function TrackedBitmapData(param1:*, param2:int, param3:int, param4:Boolean = true, param5:uint = 4.294967295E9)
      {
         if(param2 > const_1226)
         {
            param2 = const_1226;
         }
         else if(param2 < const_1318)
         {
            param2 = const_1318;
         }
         if(param3 > const_1213)
         {
            param3 = const_1213;
         }
         else if(param3 < const_1338)
         {
            param3 = const_1338;
         }
         super(param2,param3,param4,param5);
         ++var_540;
         var_539 += param2 * param3 * 4;
         this._owner = param1;
      }
      
      public static function get numInstances() : uint
      {
         return var_540;
      }
      
      public static function get allocatedByteCount() : uint
      {
         return var_539;
      }
      
      override public function dispose() : void
      {
         if(!this._disposed)
         {
            var_539 -= width * height * 4;
            --var_540;
            this._disposed = true;
            this._owner = null;
            super.dispose();
         }
      }
   }
}

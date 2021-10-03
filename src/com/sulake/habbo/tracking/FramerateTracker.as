package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1732:int;
      
      private var var_2926:int;
      
      private var var_747:int;
      
      private var var_510:Number;
      
      private var var_2925:Boolean;
      
      private var var_2924:int;
      
      private var var_2114:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function get frameRate() : int
      {
         return Math.round(1000 / this.var_510);
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2926 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2924 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2925 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         ++this.var_747;
         if(this.var_747 == 1)
         {
            this.var_510 = param1;
            this.var_1732 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_747);
            this.var_510 = this.var_510 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2925 && param3 - this.var_1732 >= this.var_2926)
         {
            this.var_747 = 0;
            if(this.var_2114 < this.var_2924)
            {
               param2.track("performance","averageFramerate",this.frameRate);
               ++this.var_2114;
               this.var_1732 = param3;
            }
         }
      }
      
      public function dispose() : void
      {
      }
   }
}

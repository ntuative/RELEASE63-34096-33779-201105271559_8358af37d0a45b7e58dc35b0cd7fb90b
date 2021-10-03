package com.sulake.habbo.room.object.visualization.room
{
   import com.sulake.habbo.room.object.visualization.room.mask.PlaneMaskManager;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.IPlaneRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.animated.LandscapeRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.FloorRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallAdRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallRasterizer;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.utils.IGraphicAssetCollection;
   
   public class RoomVisualizationData implements IRoomObjectVisualizationData
   {
       
      
      private var var_546:WallRasterizer;
      
      private var var_544:FloorRasterizer;
      
      private var var_818:WallAdRasterizer;
      
      private var var_545:LandscapeRasterizer;
      
      private var var_819:PlaneMaskManager;
      
      private var var_798:Boolean = false;
      
      public function RoomVisualizationData()
      {
         super();
         this.var_546 = new WallRasterizer();
         this.var_544 = new FloorRasterizer();
         this.var_818 = new WallAdRasterizer();
         this.var_545 = new LandscapeRasterizer();
         this.var_819 = new PlaneMaskManager();
      }
      
      public function get initialized() : Boolean
      {
         return this.var_798;
      }
      
      public function get floorRasterizer() : IPlaneRasterizer
      {
         return this.var_544;
      }
      
      public function get wallRasterizer() : IPlaneRasterizer
      {
         return this.var_546;
      }
      
      public function get wallAdRasterizr() : WallAdRasterizer
      {
         return this.var_818;
      }
      
      public function get landscapeRasterizer() : IPlaneRasterizer
      {
         return this.var_545;
      }
      
      public function get maskManager() : PlaneMaskManager
      {
         return this.var_819;
      }
      
      public function dispose() : void
      {
         if(this.var_546 != null)
         {
            this.var_546.dispose();
            this.var_546 = null;
         }
         if(this.var_544 != null)
         {
            this.var_544.dispose();
            this.var_544 = null;
         }
         if(this.var_818 != null)
         {
            this.var_818.dispose();
            this.var_818 = null;
         }
         if(this.var_545 != null)
         {
            this.var_545.dispose();
            this.var_545 = null;
         }
         if(this.var_819 != null)
         {
            this.var_819.dispose();
            this.var_819 = null;
         }
      }
      
      public function clearCache() : void
      {
         if(this.var_546 != null)
         {
            this.var_546.clearCache();
         }
         if(this.var_544 != null)
         {
            this.var_544.clearCache();
         }
         if(this.var_545 != null)
         {
            this.var_545.clearCache();
         }
      }
      
      public function initialize(param1:XML) : Boolean
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         this.reset();
         if(param1 == null)
         {
            return false;
         }
         var _loc2_:XMLList = param1.wallData;
         if(_loc2_.length() > 0)
         {
            _loc7_ = _loc2_[0];
            this.var_546.initialize(_loc7_);
         }
         var _loc3_:XMLList = param1.floorData;
         if(_loc3_.length() > 0)
         {
            _loc8_ = _loc3_[0];
            this.var_544.initialize(_loc8_);
         }
         var _loc4_:XMLList = param1.wallAdData;
         if(_loc4_.length() > 0)
         {
            _loc9_ = _loc4_[0];
            this.var_818.initialize(_loc9_);
         }
         var _loc5_:XMLList = param1.landscapeData;
         if(_loc5_.length() > 0)
         {
            _loc10_ = _loc5_[0];
            this.var_545.initialize(_loc10_);
         }
         var _loc6_:XMLList = param1.maskData;
         if(_loc6_.length() > 0)
         {
            _loc11_ = _loc6_[0];
            this.var_819.initialize(_loc11_);
         }
         return true;
      }
      
      public function initializeAssetCollection(param1:IGraphicAssetCollection) : void
      {
         if(this.var_798)
         {
            return;
         }
         this.var_546.initializeAssetCollection(param1);
         this.var_544.initializeAssetCollection(param1);
         this.var_818.initializeAssetCollection(param1);
         this.var_545.initializeAssetCollection(param1);
         this.var_819.initializeAssetCollection(param1);
         this.var_798 = true;
      }
      
      protected function reset() : void
      {
      }
   }
}

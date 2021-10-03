package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_1383:Number = 12;
       
      
      private var var_2335:int = -1;
      
      private var var_2340:int = -2;
      
      private var var_201:Vector3d = null;
      
      private var var_1135:Number = 0;
      
      private var var_1411:Number = 0;
      
      private var var_1709:Boolean = false;
      
      private var var_180:Vector3d = null;
      
      private var var_1710:Vector3d;
      
      private var var_2342:Boolean = false;
      
      private var var_2343:Boolean = false;
      
      private var var_2334:Boolean = false;
      
      private var var_2337:Boolean = false;
      
      private var var_2339:int = 0;
      
      private var var_2338:int = 0;
      
      private var _scale:int = 0;
      
      private var var_2341:int = 0;
      
      private var var_2336:int = 0;
      
      private var var_1703:int = -1;
      
      private var var_1707:int = 0;
      
      private var var_1708:Boolean = false;
      
      public function RoomCamera()
      {
         this.var_1710 = new Vector3d();
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_180;
      }
      
      public function get targetId() : int
      {
         return this.var_2335;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2340;
      }
      
      public function get targetObjectLoc() : IVector3d
      {
         return this.var_1710;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2342;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2343;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2334;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2337;
      }
      
      public function get screenWd() : int
      {
         return this.var_2339;
      }
      
      public function get screenHt() : int
      {
         return this.var_2338;
      }
      
      public function get scale() : int
      {
         return this._scale;
      }
      
      public function get roomWd() : int
      {
         return this.var_2341;
      }
      
      public function get roomHt() : int
      {
         return this.var_2336;
      }
      
      public function get geometryUpdateId() : int
      {
         return this.var_1703;
      }
      
      public function get isMoving() : Boolean
      {
         if(this.var_201 != null && this.var_180 != null)
         {
            return true;
         }
         return false;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2335 = param1;
      }
      
      public function set targetObjectLoc(param1:IVector3d) : void
      {
         this.var_1710.assign(param1);
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2340 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2342 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2343 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2334 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2337 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2339 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2338 = param1;
      }
      
      public function set scale(param1:int) : void
      {
         if(this._scale != param1)
         {
            this._scale = param1;
            this.var_1708 = true;
         }
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2341 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2336 = param1;
      }
      
      public function set geometryUpdateId(param1:int) : void
      {
         this.var_1703 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         var _loc2_:* = null;
         if(this.var_201 == null)
         {
            this.var_201 = new Vector3d();
         }
         if(this.var_201.x != param1.x || this.var_201.y != param1.y || this.var_201.z != param1.z)
         {
            this.var_201.assign(param1);
            this.var_1707 = 0;
            _loc2_ = Vector3d.dif(this.var_201,this.var_180);
            this.var_1135 = _loc2_.length;
            this.var_1709 = true;
         }
      }
      
      public function dispose() : void
      {
         this.var_201 = null;
         this.var_180 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_180 != null)
         {
            return;
         }
         this.var_180 = new Vector3d();
         this.var_180.assign(param1);
      }
      
      public function resetLocation(param1:IVector3d) : void
      {
         if(this.var_180 == null)
         {
            this.var_180 = new Vector3d();
         }
         this.var_180.assign(param1);
      }
      
      public function update(param1:uint, param2:Number) : void
      {
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(this.var_201 != null && this.var_180 != null)
         {
            ++this.var_1707;
            if(this.var_1708)
            {
               this.var_1708 = false;
               this.var_180 = this.var_201;
               this.var_201 = null;
               return;
            }
            _loc3_ = Vector3d.dif(this.var_201,this.var_180);
            if(_loc3_.length > this.var_1135)
            {
               this.var_1135 = _loc3_.length;
            }
            if(_loc3_.length <= param2)
            {
               this.var_180 = this.var_201;
               this.var_201 = null;
               this.var_1411 = 0;
            }
            else
            {
               _loc4_ = Math.sin(0 * _loc3_.length / this.var_1135);
               _loc5_ = param2 * 0.5;
               _loc6_ = this.var_1135 / const_1383;
               _loc7_ = _loc5_ + (_loc6_ - _loc5_) * _loc4_;
               if(this.var_1709)
               {
                  if(_loc7_ < this.var_1411)
                  {
                     _loc7_ = this.var_1411;
                     if(_loc7_ > _loc3_.length)
                     {
                        _loc7_ = _loc3_.length;
                     }
                  }
                  else
                  {
                     this.var_1709 = false;
                  }
               }
               this.var_1411 = _loc7_;
               _loc3_.div(_loc3_.length);
               _loc3_.mul(_loc7_);
               this.var_180 = Vector3d.sum(this.var_180,_loc3_);
            }
         }
      }
      
      public function reset() : void
      {
         this.var_1703 = -1;
      }
   }
}

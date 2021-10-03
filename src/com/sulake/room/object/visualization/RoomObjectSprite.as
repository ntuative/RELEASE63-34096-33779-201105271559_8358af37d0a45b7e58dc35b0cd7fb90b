package com.sulake.room.object.visualization
{
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   import flash.geom.Point;
   
   public final class RoomObjectSprite implements IRoomObjectSprite
   {
      
      private static var var_1175:int = 0;
       
      
      private var var_453:BitmapData = null;
      
      private var var_2255:String = "";
      
      private var var_307:Boolean = true;
      
      private var var_2525:String = "";
      
      private var var_2523:int = 255;
      
      private var _color:int = 16777215;
      
      private var var_1886:String;
      
      private var var_1560:Boolean = false;
      
      private var var_1559:Boolean = false;
      
      private var _offset:Point;
      
      private var var_248:int = 0;
      
      private var _height:int = 0;
      
      private var var_1241:Number = 0;
      
      private var var_2612:Boolean = false;
      
      private var var_2613:Boolean = true;
      
      private var var_2614:Boolean = false;
      
      private var _updateID:int = 0;
      
      private var var_2434:int = 0;
      
      private var var_2615:Array = null;
      
      public function RoomObjectSprite()
      {
         this.var_1886 = BlendMode.NORMAL;
         this._offset = new Point(0,0);
         super();
         this.var_2434 = var_1175++;
      }
      
      public function dispose() : void
      {
         this.var_453 = null;
         this.var_248 = 0;
         this._height = 0;
      }
      
      public function get asset() : BitmapData
      {
         return this.var_453;
      }
      
      public function get assetName() : String
      {
         return this.var_2255;
      }
      
      public function get visible() : Boolean
      {
         return this.var_307;
      }
      
      public function get tag() : String
      {
         return this.var_2525;
      }
      
      public function get alpha() : int
      {
         return this.var_2523;
      }
      
      public function get color() : int
      {
         return this._color;
      }
      
      public function get blendMode() : String
      {
         return this.var_1886;
      }
      
      public function get flipV() : Boolean
      {
         return this.var_1559;
      }
      
      public function get flipH() : Boolean
      {
         return this.var_1560;
      }
      
      public function get offsetX() : int
      {
         return this._offset.x;
      }
      
      public function get offsetY() : int
      {
         return this._offset.y;
      }
      
      public function get width() : int
      {
         return this.var_248;
      }
      
      public function get height() : int
      {
         return this._height;
      }
      
      public function get relativeDepth() : Number
      {
         return this.var_1241;
      }
      
      public function get varyingDepth() : Boolean
      {
         return this.var_2612;
      }
      
      public function get capturesMouse() : Boolean
      {
         return this.var_2613;
      }
      
      public function get clickHandling() : Boolean
      {
         return this.var_2614;
      }
      
      public function get instanceId() : int
      {
         return this.var_2434;
      }
      
      public function get updateId() : int
      {
         return this._updateID;
      }
      
      public function get filters() : Array
      {
         return this.var_2615;
      }
      
      public function set asset(param1:BitmapData) : void
      {
         if(param1 != null)
         {
            this.var_248 = param1.width;
            this._height = param1.height;
         }
         this.var_453 = param1;
         ++this._updateID;
      }
      
      public function set assetName(param1:String) : void
      {
         this.var_2255 = param1;
         ++this._updateID;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.var_307 = param1;
         ++this._updateID;
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2525 = param1;
         ++this._updateID;
      }
      
      public function set alpha(param1:int) : void
      {
         param1 &= 255;
         this.var_2523 = param1;
         ++this._updateID;
      }
      
      public function set color(param1:int) : void
      {
         param1 &= 16777215;
         this._color = param1;
         ++this._updateID;
      }
      
      public function set blendMode(param1:String) : void
      {
         this.var_1886 = param1;
         ++this._updateID;
      }
      
      public function set filters(param1:Array) : void
      {
         this.var_2615 = param1;
         ++this._updateID;
      }
      
      public function set flipH(param1:Boolean) : void
      {
         this.var_1560 = param1;
         ++this._updateID;
      }
      
      public function set flipV(param1:Boolean) : void
      {
         this.var_1559 = param1;
         ++this._updateID;
      }
      
      public function set offsetX(param1:int) : void
      {
         this._offset.x = param1;
         ++this._updateID;
      }
      
      public function set offsetY(param1:int) : void
      {
         this._offset.y = param1;
         ++this._updateID;
      }
      
      public function set relativeDepth(param1:Number) : void
      {
         this.var_1241 = param1;
         ++this._updateID;
      }
      
      public function set varyingDepth(param1:Boolean) : void
      {
         this.var_2612 = param1;
         ++this._updateID;
      }
      
      public function set capturesMouse(param1:Boolean) : void
      {
         this.var_2613 = param1;
         ++this._updateID;
      }
      
      public function set clickHandling(param1:Boolean) : void
      {
         this.var_2614 = param1;
         ++this._updateID;
      }
   }
}

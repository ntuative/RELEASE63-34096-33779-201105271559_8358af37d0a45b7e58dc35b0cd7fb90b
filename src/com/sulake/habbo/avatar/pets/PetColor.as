package com.sulake.habbo.avatar.pets
{
   import flash.geom.ColorTransform;
   
   public class PetColor extends PetEditorInfo implements IPetColor
   {
       
      
      private var _id:int;
      
      private var _rgb:uint;
      
      private var var_1830:uint;
      
      private var var_1829:uint;
      
      private var _b:uint;
      
      private var var_860:ColorTransform;
      
      private var var_1831:Number;
      
      private var var_1832:Number;
      
      private var var_1828:Number;
      
      private var var_2792:int;
      
      public function PetColor(param1:XML)
      {
         super(param1);
         this._id = parseInt(param1.@id);
         var _loc2_:String = param1.text();
         this._rgb = parseInt(_loc2_,16);
         this.var_1830 = this._rgb >> 16 & 255;
         this.var_1829 = this._rgb >> 8 & 255;
         this._b = this._rgb >> 0 & 255;
         this.var_1831 = this.var_1830 / 255 * 1;
         this.var_1832 = this.var_1829 / 255 * 1;
         this.var_1828 = this._b / 255 * 1;
         this.var_860 = new ColorTransform(this.var_1831,this.var_1832,this.var_1828);
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get rgb() : uint
      {
         return this._rgb;
      }
      
      public function get r() : uint
      {
         return this.var_1830;
      }
      
      public function get g() : uint
      {
         return this.var_1829;
      }
      
      public function get b() : uint
      {
         return this._b;
      }
      
      public function get colorTransform() : ColorTransform
      {
         return this.var_860;
      }
      
      public function get figurePartPaletteColorId() : int
      {
         return this.var_2792;
      }
      
      public function set figurePartPaletteColorId(param1:int) : void
      {
         this.var_2792 = param1;
      }
   }
}

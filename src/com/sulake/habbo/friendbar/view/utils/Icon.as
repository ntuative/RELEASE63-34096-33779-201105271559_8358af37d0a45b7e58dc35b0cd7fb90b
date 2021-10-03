package com.sulake.habbo.friendbar.view.utils
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import flash.display.BitmapData;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class Icon implements IDisposable
   {
      
      protected static const const_2225:int = 0;
      
      protected static const const_639:int = 1;
      
      protected static const const_1952:int = 2;
      
      protected static const const_1951:int = 3;
      
      protected static const const_121:int = 4;
      
      protected static const const_640:int = 8;
      
      protected static const const_256:int = 18;
      
      protected static const const_1953:int = 18;
       
      
      private var _disposed:Boolean = false;
      
      private var var_1772:Boolean = false;
      
      protected var var_47:BitmapDataAsset;
      
      protected var var_90:IBitmapWrapperWindow;
      
      private var var_1190:uint;
      
      protected var var_209:Timer;
      
      protected var _frame:int = 0;
      
      private var var_619:Point;
      
      protected var var_890:Boolean = false;
      
      protected var _hover:Boolean = false;
      
      public function Icon()
      {
         this.var_1190 = const_639 | const_640;
         this.var_619 = new Point();
         super();
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get disabled() : Boolean
      {
         return this.var_1772;
      }
      
      protected function set image(param1:BitmapDataAsset) : void
      {
         this.var_47 = param1;
         this.redraw();
      }
      
      protected function get image() : BitmapDataAsset
      {
         return this.var_47;
      }
      
      protected function set canvas(param1:IBitmapWrapperWindow) : void
      {
         this.var_90 = param1;
         this.redraw();
      }
      
      protected function get canvas() : IBitmapWrapperWindow
      {
         return this.var_90;
      }
      
      protected function set alignment(param1:uint) : void
      {
         this.var_1190 = param1;
         this.redraw();
      }
      
      protected function get alignment() : uint
      {
         return this.var_1190;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this.toggleTimer(false,0);
            this.image = null;
            this.canvas = null;
            this._disposed = true;
         }
      }
      
      public function notify(param1:Boolean) : void
      {
         this.var_890 = param1;
         if(this.var_890 && this.var_1772)
         {
            this.enable(true);
         }
      }
      
      public function hover(param1:Boolean) : void
      {
         this._hover = param1;
      }
      
      public function enable(param1:Boolean) : void
      {
         this.var_1772 = !param1;
      }
      
      protected function redraw() : void
      {
         var _loc1_:* = null;
         if(this.var_90 && !this.var_90.disposed)
         {
            if(!this.var_90.bitmap)
            {
               this.var_90.bitmap = new BitmapData(this.var_90.width,this.var_90.height,true,0);
            }
            else
            {
               this.var_90.bitmap.fillRect(this.var_90.bitmap.rect,0);
            }
            if(this.var_47 && !this.var_47.disposed)
            {
               this.var_619.x = this.var_619.y = 0;
               _loc1_ = this.var_47.content as BitmapData;
               switch(this.var_1190 & const_1951)
               {
                  case const_639:
                     this.var_619.x = this.var_90.bitmap.width / 2 - _loc1_.width / 2;
                     break;
                  case const_1952:
                     this.var_619.x = this.var_90.bitmap.width - _loc1_.width;
               }
               switch(this.var_1190 & const_1953)
               {
                  case const_640:
                     this.var_619.y = this.var_90.bitmap.height / 2 - _loc1_.height / 2;
                     break;
                  case const_256:
                     this.var_619.y = this.var_90.bitmap.height - _loc1_.height;
               }
               this.var_90.bitmap.copyPixels(_loc1_,_loc1_.rect,this.var_619);
               this.var_90.invalidate();
            }
         }
      }
      
      protected function toggleTimer(param1:Boolean, param2:int) : void
      {
         if(param1)
         {
            if(!this.var_209)
            {
               this.var_209 = new Timer(param2,0);
               this.var_209.addEventListener(TimerEvent.TIMER,this.onTimerEvent);
               this.var_209.start();
               this.onTimerEvent(null);
            }
            this.var_209.delay = param2;
         }
         else
         {
            this._frame = 0;
            if(this.var_209)
            {
               this.var_209.reset();
               this.var_209.removeEventListener(TimerEvent.TIMER,this.onTimerEvent);
               this.var_209 = null;
            }
         }
      }
      
      protected function onTimerEvent(param1:TimerEvent) : void
      {
      }
   }
}

package com.sulake.habbo.friendbar.view.tabs
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IRegionWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import flash.display.BitmapData;
   
   public class AddFriendsTab extends Tab
   {
      
      private static const const_1113:String = "icon";
      
      private static const TEXT:String = "text";
      
      private static const const_642:String = "header";
      
      private static const const_1996:String = "title";
      
      private static const BUTTON:String = "button";
      
      private static const const_1557:String = "addFriendsTabXML";
      
      private static const const_1558:String = "add_friends_icon_png";
      
      private static var var_1035:int = -1;
      
      private static const const_68:uint = 6907230;
      
      private static const const_1003:uint = 9209986;
      
      private static const POOL:Array = [];
      
      private static const const_448:Array = [];
       
      
      public function AddFriendsTab()
      {
         super();
      }
      
      public static function allocate() : AddFriendsTab
      {
         var _loc1_:AddFriendsTab = false ? POOL.pop() : new AddFriendsTab();
         _loc1_.var_490 = false;
         _loc1_._window = _loc1_.allocateEntityWindow();
         return _loc1_;
      }
      
      public function allocateEntityWindow() : IWindowContainer
      {
         var _loc1_:IWindowContainer = false ? const_448.pop() : var_1357.buildFromXML(var_884.getAssetByName(const_1557).content as XML) as IWindowContainer;
         var _loc2_:IRegionWindow = IRegionWindow(_loc1_.findChildByName(const_642));
         _loc1_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onMouseClick);
         _loc1_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,onMouseOver);
         _loc1_.addEventListener(WindowMouseEvent.const_25,onMouseOut);
         _loc2_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onMouseClick);
         _loc2_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,onMouseOver);
         _loc2_.addEventListener(WindowMouseEvent.const_25,onMouseOut);
         if(var_1035 < 0)
         {
            var_1035 = _loc1_.height;
         }
         _loc1_.height = name_1;
         var _loc3_:IBitmapWrapperWindow = _loc1_.findChildByName(const_1113) as IBitmapWrapperWindow;
         _loc3_.disposesBitmap = false;
         _loc3_.bitmap = var_884.getAssetByName(const_1558).content as BitmapData;
         var _loc4_:IWindow = _loc1_.findChildByName(BUTTON);
         _loc4_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onButtonClick);
         var _loc5_:IWindow = _loc1_.findChildByName(TEXT);
         _loc5_.visible = false;
         return _loc1_;
      }
      
      private function releaseEntityWindow(param1:IWindowContainer) : void
      {
         var _loc2_:* = null;
         if(param1 && !param1.disposed)
         {
            param1.procedure = null;
            param1.removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onMouseClick);
            param1.removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,onMouseOver);
            param1.removeEventListener(WindowMouseEvent.const_25,onMouseOut);
            _loc2_ = IRegionWindow(param1.findChildByName(const_642));
            _loc2_.removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onMouseClick);
            _loc2_.removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,onMouseOver);
            _loc2_.removeEventListener(WindowMouseEvent.const_25,onMouseOut);
            param1.findChildByName(BUTTON).removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onButtonClick);
            param1.findChildByName(TEXT).visible = false;
            param1.width = name_5;
            param1.height = name_1;
            if(const_448.indexOf(param1) == -1)
            {
               const_448.push(param1);
            }
         }
      }
      
      override public function select() : void
      {
         if(!selected)
         {
            _window.height = var_1035;
            _window.y = 0 - (0 - name_1);
            _window.findChildByName(TEXT).visible = true;
            super.select();
         }
      }
      
      override public function deselect() : void
      {
         if(selected)
         {
            _window.y = 0;
            _window.height = name_1;
            _window.findChildByName(TEXT).visible = false;
            super.deselect();
         }
      }
      
      override public function recycle() : void
      {
         if(!disposed)
         {
            if(!var_490)
            {
               if(_window)
               {
                  this.releaseEntityWindow(_window);
                  _window = null;
               }
               var_490 = true;
               POOL.push(this);
            }
         }
      }
      
      override protected function expose() : void
      {
         super.expose();
         ITextWindow(_window.findChildByTag("label")).underline = exposed;
         _window.color = !!exposed ? uint(const_1003) : uint(const_68);
      }
      
      override protected function conceal() : void
      {
         super.conceal();
         ITextWindow(_window.findChildByTag("label")).underline = exposed;
         _window.color = !!exposed ? uint(const_1003) : uint(const_68);
      }
      
      private function onButtonClick(param1:WindowMouseEvent) : void
      {
         if(!disposed && !recycled)
         {
            var_1096.findNewFriends();
            this.deselect();
         }
      }
   }
}

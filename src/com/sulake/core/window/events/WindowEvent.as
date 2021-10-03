package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   
   public class WindowEvent
   {
      
      public static const const_1743:String = "WE_DESTROY";
      
      public static const const_350:String = "WE_DESTROYED";
      
      public static const const_1719:String = "WE_OPEN";
      
      public static const const_1711:String = "WE_OPENED";
      
      public static const const_1768:String = "WE_CLOSE";
      
      public static const const_1733:String = "WE_CLOSED";
      
      public static const const_1840:String = "WE_FOCUS";
      
      public static const const_360:String = "WE_FOCUSED";
      
      public static const const_1650:String = "WE_UNFOCUS";
      
      public static const const_1887:String = "WE_UNFOCUSED";
      
      public static const const_1913:String = "WE_ACTIVATE";
      
      public static const const_555:String = "WE_ACTIVATED";
      
      public static const const_1883:String = "WE_DEACTIVATE";
      
      public static const const_579:String = "WE_DEACTIVATED";
      
      public static const const_332:String = "WE_SELECT";
      
      public static const const_50:String = "WE_SELECTED";
      
      public static const const_611:String = "WE_UNSELECT";
      
      public static const const_580:String = "WE_UNSELECTED";
      
      public static const const_1778:String = "WE_LOCK";
      
      public static const const_1879:String = "WE_LOCKED";
      
      public static const const_1700:String = "WE_UNLOCK";
      
      public static const const_1727:String = "WE_UNLOCKED";
      
      public static const const_873:String = "WE_ENABLE";
      
      public static const const_275:String = "WE_ENABLED";
      
      public static const const_991:String = "WE_DISABLE";
      
      public static const const_291:String = "WE_DISABLED";
      
      public static const WINDOW_EVENT_RELOCATE:String = "WE_RELOCATE";
      
      public static const const_426:String = "WE_RELOCATED";
      
      public static const const_1119:String = "WE_RESIZE";
      
      public static const const_40:String = "WE_RESIZED";
      
      public static const const_1793:String = "WE_MINIMIZE";
      
      public static const const_1671:String = "WE_MINIMIZED";
      
      public static const const_1811:String = "WE_MAXIMIZE";
      
      public static const const_1923:String = "WE_MAXIMIZED";
      
      public static const const_1816:String = "WE_RESTORE";
      
      public static const const_1649:String = "WE_RESTORED";
      
      public static const const_344:String = "WE_CHILD_ADDED";
      
      public static const const_376:String = "WE_CHILD_REMOVED";
      
      public static const const_221:String = "WE_CHILD_RELOCATED";
      
      public static const const_131:String = "WE_CHILD_RESIZED";
      
      public static const const_345:String = "WE_CHILD_ACTIVATED";
      
      public static const const_464:String = "WE_PARENT_ADDED";
      
      public static const const_1750:String = "WE_PARENT_REMOVED";
      
      public static const const_1877:String = "WE_PARENT_RELOCATED";
      
      public static const const_881:String = "WE_PARENT_RESIZED";
      
      public static const const_1186:String = "WE_PARENT_ACTIVATED";
      
      public static const const_175:String = "WE_OK";
      
      public static const const_515:String = "WE_CANCEL";
      
      public static const const_112:String = "WE_CHANGE";
      
      public static const const_627:String = "WE_SCROLL";
      
      public static const const_108:String = "";
      
      private static const POOL:Array = [];
       
      
      protected var _type:String;
      
      protected var _window:IWindow;
      
      protected var var_708:IWindow;
      
      protected var var_1102:Boolean;
      
      protected var var_483:Boolean;
      
      protected var var_490:Boolean;
      
      protected var var_707:Array;
      
      public function WindowEvent()
      {
         super();
      }
      
      public static function allocate(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false) : WindowEvent
      {
         var _loc5_:WindowEvent = POOL.length > 0 ? POOL.pop() : new WindowEvent();
         _loc5_._type = param1;
         _loc5_._window = param2;
         _loc5_.var_708 = param3;
         _loc5_.var_483 = param4;
         _loc5_.var_490 = false;
         _loc5_.var_707 = POOL;
         return _loc5_;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get target() : IWindow
      {
         return this._window;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_708;
      }
      
      public function get cancelable() : Boolean
      {
         return this.var_483;
      }
      
      public function recycle() : void
      {
         if(this.var_490)
         {
            throw new Error("Event already recycled!");
         }
         this.var_708 = null;
         this._window = null;
         this.var_490 = true;
         this.var_1102 = false;
         this.var_707.push(this);
      }
      
      public function clone() : WindowEvent
      {
         return allocate(this._type,this.window,this.related,this.cancelable);
      }
      
      public function preventDefault() : void
      {
         this.preventWindowOperation();
      }
      
      public function isDefaultPrevented() : Boolean
      {
         return this.var_1102;
      }
      
      public function preventWindowOperation() : void
      {
         if(this.cancelable)
         {
            this.var_1102 = true;
            return;
         }
         throw new Error("Attempted to prevent window operation that is not cancelable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1102;
      }
      
      public function stopPropagation() : void
      {
         this.var_1102 = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.var_1102 = true;
      }
      
      public function toString() : String
      {
         return "WindowEvent { type: " + this._type + " cancelable: " + this.var_483 + " window: " + this._window + " }";
      }
   }
}

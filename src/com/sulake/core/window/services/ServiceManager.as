package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_2973:uint;
      
      private var var_155:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var var_265:IWindowContext;
      
      private var var_1158:IMouseDraggingService;
      
      private var var_1156:IMouseScalingService;
      
      private var var_1154:IMouseListenerService;
      
      private var var_1157:IFocusManagerService;
      
      private var var_1159:IToolTipAgentService;
      
      private var var_1155:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_2973 = 0;
         this.var_155 = param2;
         this.var_265 = param1;
         this.var_1158 = new WindowMouseDragger(param2);
         this.var_1156 = new WindowMouseScaler(param2);
         this.var_1154 = new WindowMouseListener(param2);
         this.var_1157 = new FocusManager(param2);
         this.var_1159 = new WindowToolTipAgent(param2);
         this.var_1155 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_1158 != null)
         {
            this.var_1158.dispose();
            this.var_1158 = null;
         }
         if(this.var_1156 != null)
         {
            this.var_1156.dispose();
            this.var_1156 = null;
         }
         if(this.var_1154 != null)
         {
            this.var_1154.dispose();
            this.var_1154 = null;
         }
         if(this.var_1157 != null)
         {
            this.var_1157.dispose();
            this.var_1157 = null;
         }
         if(this.var_1159 != null)
         {
            this.var_1159.dispose();
            this.var_1159 = null;
         }
         if(this.var_1155 != null)
         {
            this.var_1155.dispose();
            this.var_1155 = null;
         }
         this.var_155 = null;
         this.var_265 = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_1158;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_1156;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_1154;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_1157;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_1159;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_1155;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}

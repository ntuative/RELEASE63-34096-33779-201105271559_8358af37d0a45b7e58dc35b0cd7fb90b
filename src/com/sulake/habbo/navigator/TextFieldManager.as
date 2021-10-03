package com.sulake.habbo.navigator
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowKeyboardEvent;
   import flash.geom.Point;
   import flash.ui.Keyboard;
   
   public class TextFieldManager
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var var_79:ITextFieldWindow;
      
      private var var_639:Boolean;
      
      private var var_1528:String = "";
      
      private var var_1888:int;
      
      private var var_1887:Function;
      
      private var var_2617:String = "";
      
      private var var_142:IWindowContainer;
      
      private var var_2619:Boolean;
      
      private var _orgTextBackgroundColor:uint;
      
      private var var_2618:uint;
      
      public function TextFieldManager(param1:HabboNavigator, param2:ITextFieldWindow, param3:int = 1000, param4:Function = null, param5:String = null)
      {
         super();
         this._navigator = param1;
         this.var_79 = param2;
         this.var_1888 = param3;
         this.var_1887 = param4;
         if(param5 != null)
         {
            this.var_639 = true;
            this.var_1528 = param5;
            this.var_79.text = param5;
         }
         Util.setProcDirectly(this.var_79,this.onInputClick);
         this.var_79.addEventListener(WindowKeyboardEvent.const_208,this.checkEnterPress);
         this.var_79.addEventListener(WindowEvent.const_112,this.checkMaxLen);
         this.var_2619 = this.var_79.textBackground;
         this._orgTextBackgroundColor = this.var_79.textBackgroundColor;
         this.var_2618 = this.var_79.textColor;
      }
      
      public function checkMandatory(param1:String) : Boolean
      {
         if(!this.isInputValid())
         {
            this.displayError(param1);
            return false;
         }
         this.restoreBackground();
         return true;
      }
      
      public function restoreBackground() : void
      {
         this.var_79.textBackground = this.var_2619;
         this.var_79.textBackgroundColor = this._orgTextBackgroundColor;
         this.var_79.textColor = this.var_2618;
      }
      
      public function displayError(param1:String) : void
      {
         this.var_79.textBackground = true;
         this.var_79.textBackgroundColor = 4294021019;
         this.var_79.textColor = 4278190080;
         if(this.var_142 == null)
         {
            this.var_142 = IWindowContainer(this._navigator.getXmlWindow("nav_error_popup"));
            this._navigator.refreshButton(this.var_142,"popup_arrow_down",true,null,0);
            IWindowContainer(this.var_79.parent).addChild(this.var_142);
         }
         var _loc2_:ITextWindow = ITextWindow(this.var_142.findChildByName("error_text"));
         _loc2_.text = param1;
         _loc2_.width = _loc2_.textWidth + 5;
         this.var_142.findChildByName("border").width = _loc2_.width + 15;
         this.var_142.width = _loc2_.width + 15;
         var _loc3_:Point = new Point();
         this.var_79.getLocalPosition(_loc3_);
         this.var_142.x = _loc3_.x;
         this.var_142.y = _loc3_.y - this.var_142.height + 3;
         var _loc4_:IWindow = this.var_142.findChildByName("popup_arrow_down");
         _loc4_.x = this.var_142.width / 2 - _loc4_.width / 2;
         this.var_142.x += (this.var_79.width - this.var_142.width) / 2;
         this.var_142.visible = true;
      }
      
      public function goBackToInitialState() : void
      {
         this.clearErrors();
         if(this.var_1528 != null)
         {
            this.var_79.text = this.var_1528;
            this.var_639 = true;
         }
         else
         {
            this.var_79.text = "";
            this.var_639 = false;
         }
      }
      
      public function getText() : String
      {
         if(this.var_639)
         {
            return this.var_2617;
         }
         return this.var_79.text;
      }
      
      public function setText(param1:String) : void
      {
         this.var_639 = false;
         this.var_79.text = param1;
      }
      
      public function clearErrors() : void
      {
         this.restoreBackground();
         if(this.var_142 != null)
         {
            this.var_142.visible = false;
         }
      }
      
      public function get input() : ITextFieldWindow
      {
         return this.var_79;
      }
      
      private function isInputValid() : Boolean
      {
         return !this.var_639 && Util.trim(this.getText()).length > 2;
      }
      
      private function onInputClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_360)
         {
            return;
         }
         if(!this.var_639)
         {
            return;
         }
         this.var_79.text = this.var_2617;
         this.var_639 = false;
         this.restoreBackground();
      }
      
      private function checkEnterPress(param1:WindowKeyboardEvent) : void
      {
         if(param1.charCode == Keyboard.ENTER)
         {
            if(this.var_1887 != null)
            {
               this.var_1887();
            }
         }
      }
      
      private function checkMaxLen(param1:WindowEvent) : void
      {
         var _loc2_:String = this.var_79.text;
         if(_loc2_.length > this.var_1888)
         {
            this.var_79.text = _loc2_.substring(0,this.var_1888);
         }
      }
   }
}

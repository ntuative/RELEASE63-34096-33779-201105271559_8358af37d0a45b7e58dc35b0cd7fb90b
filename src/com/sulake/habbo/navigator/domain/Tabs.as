package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_348:int = 1;
      
      public static const const_190:int = 2;
      
      public static const const_296:int = 3;
      
      public static const const_316:int = 4;
      
      public static const const_217:int = 5;
      
      public static const const_431:int = 1;
      
      public static const const_745:int = 2;
      
      public static const const_827:int = 3;
      
      public static const const_775:int = 4;
      
      public static const const_248:int = 5;
      
      public static const const_762:int = 6;
      
      public static const const_939:int = 7;
      
      public static const const_242:int = 8;
      
      public static const const_418:int = 9;
      
      public static const const_2025:int = 10;
      
      public static const const_735:int = 11;
      
      public static const const_466:int = 12;
       
      
      private var var_418:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_418 = new Array();
         this.var_418.push(new Tab(this._navigator,const_348,const_466,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_521));
         this.var_418.push(new Tab(this._navigator,const_190,const_431,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_521));
         this.var_418.push(new Tab(this._navigator,const_316,const_735,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1208));
         this.var_418.push(new Tab(this._navigator,const_296,const_248,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_521));
         this.var_418.push(new Tab(this._navigator,const_217,const_242,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_805));
         this.setSelectedTab(const_348);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_316;
      }
      
      public function get tabs() : Array
      {
         return this.var_418;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_418)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_418)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_418)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}

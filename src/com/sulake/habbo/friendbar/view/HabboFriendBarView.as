package com.sulake.habbo.friendbar.view
{
   import com.sulake.core.assets.IAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IItemListWindow;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.avatar.IAvatarImage;
   import com.sulake.habbo.avatar.IAvatarImageListener;
   import com.sulake.habbo.avatar.IAvatarRenderManager;
   import com.sulake.habbo.avatar.enum.AvatarScaleType;
   import com.sulake.habbo.avatar.enum.AvatarSetType;
   import com.sulake.habbo.friendbar.HabboFriendBar;
   import com.sulake.habbo.friendbar.data.IFriendEntity;
   import com.sulake.habbo.friendbar.data.IHabboFriendBarData;
   import com.sulake.habbo.friendbar.events.FindFriendsNotificationEvent;
   import com.sulake.habbo.friendbar.events.FriendBarUpdateEvent;
   import com.sulake.habbo.friendbar.events.FriendRequestEvent;
   import com.sulake.habbo.friendbar.events.NewMessageEvent;
   import com.sulake.habbo.friendbar.events.NewRoomEventEvent;
   import com.sulake.habbo.friendbar.iid.IIDHabboFriendBarData;
   import com.sulake.habbo.friendbar.view.tabs.AddFriendsTab;
   import com.sulake.habbo.friendbar.view.tabs.FriendEntityTab;
   import com.sulake.habbo.friendbar.view.tabs.ITab;
   import com.sulake.habbo.friendbar.view.tabs.Tab;
   import com.sulake.habbo.friendbar.view.utils.FriendListIcon;
   import com.sulake.habbo.friendbar.view.utils.Icon;
   import com.sulake.habbo.friendbar.view.utils.MessengerIcon;
   import com.sulake.habbo.friendbar.view.utils.TextCropper;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboAlertDialogFlag;
   import com.sulake.habbo.window.utils.IAlertDialog;
   import com.sulake.iid.IIDAvatarRenderManager;
   import flash.display.BitmapData;
   import flash.events.Event;
   import iid.IIDHabboWindowManager;
   
   public class HabboFriendBarView extends Component implements IHabboFriendBarView, IAvatarImageListener
   {
      
      private static const const_1622:int = 127;
      
      private static const const_462:int = 1;
      
      private static const const_1617:int = 2;
      
      private static const const_683:int = 3;
      
      private static const const_1112:int = 3;
      
      private static const const_1623:Boolean = false;
      
      private static const const_682:int = 3;
      
      private static const const_1616:String = "arrow";
      
      private static const const_1614:String = "left";
      
      private static const const_1611:String = "right";
      
      private static const const_1608:String = "bar_xml";
      
      private static const const_1613:String = "toggle_xml";
      
      private static const const_78:String = "container";
      
      private static const const_1610:String = "wrapper";
      
      private static const const_1619:String = "border";
      
      private static const const_463:String = "list";
      
      private static const const_642:String = "header";
      
      private static const const_643:String = "canvas";
      
      private static const const_1113:String = "icon";
      
      private static const const_1609:String = "button_left";
      
      private static const const_1620:String = "button_right";
      
      private static const const_1621:String = "button_left_page";
      
      private static const const_1606:String = "button_right_page";
      
      private static const const_1607:String = "button_left_end";
      
      private static const const_1615:String = "button_right_end";
      
      private static const const_1354:String = "button_close";
      
      private static const const_1612:String = "button_open";
      
      private static const const_1618:String = "messenger";
      
      private static const const_1111:String = "friendlist";
       
      
      private var _windowManager:IHabboWindowManager;
      
      private var var_1077:IAvatarRenderManager;
      
      private var var_66:IHabboFriendBarData;
      
      private var var_49:IWindowContainer;
      
      private var var_214:IWindowContainer;
      
      private var var_100:Vector.<ITab>;
      
      private var var_1610:ITab;
      
      private var var_1076:int = -1;
      
      private var _startIndex:int = 0;
      
      private var var_1609:TextCropper;
      
      private var var_865:FriendListIcon;
      
      private var var_565:MessengerIcon;
      
      private var var_1611:Boolean = true;
      
      public function HabboFriendBarView(param1:HabboFriendBar, param2:uint, param3:IAssetLibrary)
      {
         super(param1,param2,param3);
         this.var_1609 = new TextCropper();
         this.var_100 = new Vector.<ITab>();
         queueInterface(new IIDAvatarRenderManager(),this.onAvatarRendererAvailable);
         queueInterface(new IIDHabboWindowManager(),this.onWindowManagerAvailable);
         queueInterface(new IIDHabboFriendBarData(),this.onFriendBarDataAvailable);
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(this.var_565)
            {
               this.var_565.dispose();
               this.var_565 = null;
            }
            if(this.var_865)
            {
               this.var_865.dispose();
               this.var_865 = null;
            }
            if(this.var_214)
            {
               this.var_214.dispose();
               this.var_214 = null;
            }
            if(this.var_49)
            {
               this.var_49.dispose();
               this.var_49 = null;
            }
            while(this.var_100.length > 0)
            {
               ITab(this.var_100.pop()).dispose();
            }
            if(this.var_66)
            {
               if(!this.var_66.disposed)
               {
                  if(this.var_66.events)
                  {
                     this.var_66.events.removeEventListener(FriendBarUpdateEvent.const_984,this.onRefreshView);
                     this.var_66.events.removeEventListener(FindFriendsNotificationEvent.TYPE,this.onFindFriendsNotification);
                     this.var_66.events.removeEventListener(FriendRequestEvent.const_828,this.onFriendRequestUpdate);
                     this.var_66.events.removeEventListener(NewMessageEvent.const_878,this.onNewInstantMessage);
                     this.var_66.events.removeEventListener(NewRoomEventEvent.const_893,this.onNewRoomEvent);
                  }
                  this.var_66 = null;
                  release(new IIDHabboFriendBarData());
               }
            }
            if(this._windowManager)
            {
               if(!this._windowManager.disposed)
               {
                  this._windowManager.getWindowContext(const_462).getDesktopWindow().removeEventListener(WindowEvent.const_40,this.onDesktopResized);
                  this._windowManager = null;
                  release(new IIDHabboWindowManager());
               }
            }
            if(this.var_1077)
            {
               if(!this.var_1077.disposed)
               {
                  this.var_1077 = null;
                  release(new IIDAvatarRenderManager());
               }
            }
            this.var_1609.dispose();
            this.var_1609 = null;
            super.dispose();
         }
      }
      
      public function set visible(param1:Boolean) : void
      {
         if(this.var_49)
         {
            this.var_49.visible = param1;
            this.var_49.activate();
         }
         if(this.var_214)
         {
            this.var_214.visible = !param1;
            if(this.var_49)
            {
               this.var_214.x = this.var_49.x;
               this.var_214.y = this.var_49.y;
               this.var_214.activate();
            }
         }
      }
      
      public function get visible() : Boolean
      {
         return this.var_49 && this.var_49.visible;
      }
      
      public function populate() : void
      {
         var _loc5_:int = 0;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:* = null;
         var _loc1_:int = this.var_1076;
         this.deSelect();
         var _loc2_:IWindowContainer = this.var_49.findChildByName(const_78) as IWindowContainer;
         var _loc3_:IItemListWindow = _loc2_.findChildByName(const_463) as IItemListWindow;
         _loc3_.autoArrangeItems = false;
         var _loc4_:int = _loc3_.numListItems;
         _loc5_ = _loc4_;
         while(_loc5_ > 0)
         {
            _loc3_.removeListItemAt(_loc5_ - 1);
            _loc5_--;
         }
         while(this.var_100.length > 0)
         {
            this.var_100.pop().recycle();
         }
         var _loc6_:int = this.var_66.numFriends + (!!this.var_1611 ? 1 : 0);
         var _loc7_:int = Math.min(this.maxNumOfTabsVisible,_loc6_);
         if(this._startIndex + _loc7_ > _loc6_)
         {
            this._startIndex = Math.max(0,this._startIndex - (this._startIndex + _loc7_ - _loc6_));
         }
         _loc4_ = Math.min(this.var_66.numFriends,this._startIndex + _loc7_);
         _loc5_ = this._startIndex;
         while(_loc5_ < _loc4_)
         {
            _loc8_ = this.var_66.getFriendAt(_loc5_);
            _loc9_ = FriendEntityTab.allocate(_loc8_);
            this.var_100.push(_loc9_);
            _loc3_.addListItem(_loc9_.window);
            _loc5_++;
         }
         if(this.var_1611)
         {
            _loc10_ = this.maxNumOfTabsVisible;
            if(this.var_100.length < _loc10_)
            {
               _loc11_ = 1;
               if(this.var_100.length + _loc11_ < const_682)
               {
                  _loc11_ = Math.min(_loc10_ - this.var_100.length,const_682 - this.var_100.length);
               }
               _loc6_ = this.var_66.numFriends + _loc11_;
               while(_loc11_-- > 0)
               {
                  _loc12_ = AddFriendsTab.allocate();
                  _loc3_.addListItem(_loc12_.window);
                  this.var_100.push(_loc12_);
               }
            }
         }
         _loc3_.autoArrangeItems = true;
         if(_loc1_ > -1)
         {
            this.selectFriendEntity(_loc1_);
         }
         _loc2_.visible = this.var_100.length > 0;
         this.toggleArrowButtons(this.var_100.length < _loc6_,this._startIndex != 0,this._startIndex + this.var_100.length < _loc6_);
      }
      
      private function getFriendEntityTabByID(param1:int) : FriendEntityTab
      {
         var _loc2_:* = null;
         var _loc3_:int = this.var_100.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc2_ = this.var_100[_loc4_] as FriendEntityTab;
            if(_loc2_)
            {
               if(_loc2_.friend.id == param1)
               {
                  return _loc2_;
               }
            }
            _loc4_++;
         }
         return null;
      }
      
      private function onFriendBarDataAvailable(param1:IID, param2:IUnknown) : void
      {
         this.var_66 = param2 as IHabboFriendBarData;
         this.var_66.events.addEventListener(FriendBarUpdateEvent.const_984,this.onRefreshView);
         this.var_66.events.addEventListener(FindFriendsNotificationEvent.TYPE,this.onFindFriendsNotification);
         this.var_66.events.addEventListener(FriendRequestEvent.const_828,this.onFriendRequestUpdate);
         this.var_66.events.addEventListener(NewMessageEvent.const_878,this.onNewInstantMessage);
         this.var_66.events.addEventListener(NewRoomEventEvent.const_893,this.onNewRoomEvent);
      }
      
      private function onWindowManagerAvailable(param1:IID, param2:IUnknown) : void
      {
         this._windowManager = param2 as IHabboWindowManager;
      }
      
      private function isUserInterfaceReady() : Boolean
      {
         return this.var_49 && !this.var_49.disposed;
      }
      
      private function buildUserInterface() : void
      {
         var _loc2_:* = null;
         Tab.var_1096 = this.var_66;
         Tab.var_1637 = this;
         Tab.var_884 = assets;
         Tab.var_1357 = this._windowManager;
         Tab.var_2156 = this.var_1609;
         var _loc1_:IAsset = assets.getAssetByName(const_1608);
         this.var_49 = this._windowManager.buildFromXML(_loc1_.content as XML,const_462) as IWindowContainer;
         this.var_49.x = const_683;
         this.var_49.y = this.var_49.parent.height - (this.var_49.height + const_1617);
         this.var_49.width = this.var_49.parent.width - (const_683 + const_1112);
         this.var_49.setParamFlag(WindowParam.const_235,true);
         this.var_49.procedure = this.barWindowEventProc;
         if(const_1623)
         {
            _loc1_ = assets.getAssetByName(const_1613);
            this.var_214 = this._windowManager.buildFromXML(_loc1_.content as XML,const_462) as IWindowContainer;
            this.var_214.x = this.var_49.x;
            this.var_214.y = this.var_49.y;
            this.var_214.setParamFlag(WindowParam.const_235,true);
            this.var_214.visible = false;
            this.var_214.procedure = this.toggleWindowEventProc;
         }
         _loc2_ = IWindowContainer(this.var_49.findChildByName(const_1111));
         _loc2_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onIconMouseEvent);
         _loc2_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,this.onIconMouseEvent);
         _loc2_.addEventListener(WindowMouseEvent.const_25,this.onIconMouseEvent);
         this.var_865 = new FriendListIcon(assets,_loc2_.getChildByName(const_1113) as IBitmapWrapperWindow);
         _loc2_ = IWindowContainer(this.var_49.findChildByName(const_1618));
         _loc2_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onIconMouseEvent);
         _loc2_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,this.onIconMouseEvent);
         _loc2_.addEventListener(WindowMouseEvent.const_25,this.onIconMouseEvent);
         this.var_565 = new MessengerIcon(assets,_loc2_.getChildByName(const_1113) as IBitmapWrapperWindow);
         this.var_565.enable(false);
         this.visible = true;
         this._windowManager.getWindowContext(const_462).getDesktopWindow().addEventListener(WindowEvent.const_40,this.onDesktopResized);
      }
      
      private function onAvatarRendererAvailable(param1:IID, param2:IUnknown) : void
      {
         this.var_1077 = param2 as IAvatarRenderManager;
      }
      
      public function getAvatarFaceBitmap(param1:String) : BitmapData
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(!_loc2_)
         {
            if(this.var_1077)
            {
               _loc3_ = this.var_1077.createAvatarImage(param1,AvatarScaleType.const_56,null,this);
               if(_loc3_)
               {
                  _loc2_ = _loc3_.getCroppedImage(AvatarSetType.const_52);
                  _loc3_.dispose();
               }
            }
         }
         return _loc2_;
      }
      
      public function avatarImageReady(param1:String) : void
      {
         var _loc2_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc3_:IItemListWindow = this.var_49.findChildByName(const_463) as IItemListWindow;
         var _loc4_:int = this.var_66.numFriends;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc2_ = this.var_66.getFriendAt(_loc5_);
            if(_loc2_.figure == param1)
            {
               _loc6_ = this.getAvatarFaceBitmap(_loc2_.figure);
               if(_loc6_)
               {
                  _loc7_ = _loc3_.getListItemByID(_loc2_.id) as IWindowContainer;
                  if(_loc7_)
                  {
                     _loc8_ = _loc7_.getChildByName(const_463) as IItemListWindow;
                     if(_loc8_)
                     {
                        _loc9_ = IWindowContainer(_loc8_.getListItemByName(const_642));
                        if(_loc9_)
                        {
                           _loc10_ = _loc9_.findChildByName(const_643) as IBitmapWrapperWindow;
                           _loc10_.bitmap = _loc6_;
                           _loc10_.width = _loc6_.width;
                           _loc10_.height = _loc6_.height;
                        }
                     }
                  }
               }
            }
            _loc5_++;
         }
      }
      
      public function faceBookImageReady(param1:BitmapData) : void
      {
      }
      
      private function isFriendSelected(param1:IFriendEntity) : Boolean
      {
         return this.var_1076 == param1.id;
      }
      
      public function selectTab(param1:ITab) : void
      {
         if(!param1.selected)
         {
            if(this.var_1610)
            {
               this.deSelect();
            }
            param1.select();
            this.var_1610 = param1;
            if(param1 is FriendEntityTab)
            {
               this.var_1076 = FriendEntityTab(param1).friend.id;
            }
         }
      }
      
      public function selectFriendEntity(param1:int) : void
      {
         if(this.var_1076 == param1)
         {
            return;
         }
         var _loc2_:FriendEntityTab = this.getFriendEntityTabByID(param1);
         if(_loc2_)
         {
            this.selectTab(_loc2_);
            this.var_1076 = param1;
         }
      }
      
      public function deSelect() : void
      {
         if(this.var_1610)
         {
            this.var_1610.deselect();
            this.var_1076 = -1;
         }
      }
      
      private function onRefreshView(param1:Event) : void
      {
         if(!this.isUserInterfaceReady())
         {
            this.buildUserInterface();
         }
         this.resizeAndPopulate(true);
      }
      
      private function onFindFriendsNotification(param1:FindFriendsNotificationEvent) : void
      {
         var event:FindFriendsNotificationEvent = param1;
         var title:String = !!event.success ? "${friendbar.find.success.title}" : "${friendbar.find.error.title}";
         var text:String = !!event.success ? "${friendbar.find.success.text}" : "${friendbar.find.error.text}";
         this._windowManager.notify(title,text,function(param1:IAlertDialog, param2:WindowEvent):void
         {
            param1.dispose();
         },HabboAlertDialogFlag.const_473);
      }
      
      private function onFriendRequestUpdate(param1:FriendRequestEvent) : void
      {
         if(this.var_865)
         {
            this.var_865.notify(this.var_66.numFriendRequests > 0);
         }
      }
      
      private function onNewInstantMessage(param1:NewMessageEvent) : void
      {
         if(this.var_565)
         {
            if(param1.notify)
            {
               this.var_565.notify(true);
            }
            else
            {
               this.var_565.enable(true);
            }
         }
      }
      
      private function onNewRoomEvent(param1:NewRoomEventEvent) : void
      {
      }
      
      private function barWindowEventProc(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(param1.type == WindowMouseEvent.const_43)
         {
            _loc3_ = this._startIndex;
            _loc4_ = this.var_66.numFriends + (!!this.var_1611 ? 1 : 0);
            switch(param2.name)
            {
               case const_1609:
                  _loc3_ = Math.max(0,this._startIndex - 1);
                  break;
               case const_1621:
                  _loc3_ = Math.max(0,this._startIndex - this.maxNumOfTabsVisible);
                  break;
               case const_1607:
                  _loc3_ = 0;
                  break;
               case const_1620:
                  _loc3_ = Math.max(0,Math.min(_loc4_ - this.maxNumOfTabsVisible,this._startIndex + 1));
                  break;
               case const_1606:
                  _loc3_ = Math.max(0,Math.min(_loc4_ - this.maxNumOfTabsVisible,this._startIndex + this.maxNumOfTabsVisible));
                  break;
               case const_1615:
                  _loc3_ = Math.max(0,_loc4_ - this.maxNumOfTabsVisible);
                  break;
               case const_1354:
                  this.visible = false;
                  break;
               case const_1619:
                  this.deSelect();
            }
            if(_loc3_ != this._startIndex)
            {
               this.deSelect();
               this._startIndex = _loc3_;
               this.resizeAndPopulate(true);
            }
         }
         if(param1.type == WindowEvent.const_579)
         {
            this.deSelect();
         }
      }
      
      private function onIconMouseEvent(param1:WindowMouseEvent) : void
      {
         var _loc2_:Icon = param1.window.name == const_1111 ? this.var_865 : this.var_565;
         switch(param1.type)
         {
            case WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK:
               if(_loc2_ is FriendListIcon)
               {
                  this.var_66.toggleFriendList();
                  _loc2_.notify(false);
               }
               else if(_loc2_ is MessengerIcon)
               {
                  this.var_66.toggleMessenger();
                  _loc2_.notify(false);
               }
               break;
            case WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER:
               _loc2_.hover(true);
               break;
            case WindowMouseEvent.const_25:
               _loc2_.hover(false);
         }
      }
      
      private function toggleWindowEventProc(param1:WindowEvent, param2:IWindow) : void
      {
         if(this.var_214.visible)
         {
            if(param1.type == WindowMouseEvent.const_43)
            {
               switch(param2.name)
               {
                  case const_1612:
                     this.visible = true;
               }
            }
         }
      }
      
      private function toggleArrowButtons(param1:Boolean, param2:Boolean, param3:Boolean) : void
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:IWindowContainer = this.var_49.findChildByName(const_1610) as IWindowContainer;
         _loc5_ = [];
         _loc6_.groupChildrenWithTag(const_1616,_loc5_);
         for each(_loc4_ in _loc5_)
         {
            _loc4_.visible = param1;
         }
         _loc5_ = [];
         _loc6_.groupChildrenWithTag(const_1614,_loc5_);
         for each(_loc4_ in _loc5_)
         {
            if(param2)
            {
               _loc4_.enable();
            }
            else
            {
               _loc4_.disable();
            }
         }
         _loc5_ = [];
         _loc6_.groupChildrenWithTag(const_1611,_loc5_);
         for each(_loc4_ in _loc5_)
         {
            if(param3)
            {
               _loc4_.enable();
            }
            else
            {
               _loc4_.disable();
            }
         }
      }
      
      private function resizeAndPopulate(param1:Boolean = false) : void
      {
         var _loc2_:int = 0;
         if(!disposed)
         {
            if(this.var_49)
            {
               this.var_49.width = this.var_49.parent.width - (const_683 + const_1112);
               if(!param1)
               {
                  _loc2_ = this.maxNumOfTabsVisible;
                  if(_loc2_ < this.var_100.length)
                  {
                     param1 = true;
                  }
                  else if(_loc2_ > this.var_100.length)
                  {
                     if(this.var_100.length < const_682)
                     {
                        param1 = true;
                     }
                     else if(this.var_100.length < this.var_66.numFriends + (!!this.var_1611 ? 1 : 0))
                     {
                        param1 = true;
                     }
                     else if(this.numFriendEntityTabsVisible < this.var_66.numFriends)
                     {
                        param1 = true;
                     }
                  }
               }
               if(param1)
               {
                  this.populate();
               }
            }
         }
      }
      
      private function get numFriendEntityTabsVisible() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.var_100.length;
         while(_loc2_-- > 0)
         {
            if(this.var_100[_loc2_] is FriendEntityTab)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      private function get maxNumOfTabsVisible() : int
      {
         var _loc1_:IWindowContainer = this.var_49.findChildByName(const_78) as IWindowContainer;
         var _loc2_:IWindowContainer = _loc1_.getChildByName("wrapper") as IWindowContainer;
         var _loc3_:IItemListWindow = _loc2_.findChildByName(const_463) as IItemListWindow;
         var _loc4_:int = _loc2_.width - _loc3_.width;
         return (_loc1_.width - _loc4_) / (const_1622 + _loc3_.spacing);
      }
      
      private function onDesktopResized(param1:WindowEvent) : void
      {
         this.resizeAndPopulate(false);
      }
   }
}

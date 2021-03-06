package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.ToggleStaffPickMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboNavigatorEvent;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.utils.HabboWebTools;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var _window:IWindowContainer;
      
      private var var_183:IWindowContainer;
      
      private var var_2999:int;
      
      private var var_388:RoomEventViewCtrl;
      
      private var var_390:Timer;
      
      private var var_149:RoomSettingsCtrl;
      
      private var var_278:RoomThumbnailCtrl;
      
      private var var_1055:TagRenderer;
      
      private var var_389:IWindowContainer;
      
      private var var_391:IWindowContainer;
      
      private var var_674:IWindowContainer;
      
      private var var_2030:IWindowContainer;
      
      private var var_2027:IWindowContainer;
      
      private var var_1309:IWindowContainer;
      
      private var var_977:ITextWindow;
      
      private var var_1056:ITextWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_846:ITextWindow;
      
      private var var_1304:ITextWindow;
      
      private var var_1057:ITextWindow;
      
      private var var_845:ITextWindow;
      
      private var var_1580:ITextWindow;
      
      private var var_277:IWindowContainer;
      
      private var var_847:IWindowContainer;
      
      private var var_1582:IWindowContainer;
      
      private var var_2028:ITextWindow;
      
      private var var_673:ITextWindow;
      
      private var var_2029:IWindow;
      
      private var var_1307:IContainerButtonWindow;
      
      private var var_1305:IContainerButtonWindow;
      
      private var var_1308:IContainerButtonWindow;
      
      private var _remFavouriteButton:IContainerButtonWindow;
      
      private var var_1303:IContainerButtonWindow;
      
      private var var_1583:IButtonWindow;
      
      private var var_1585:IButtonWindow;
      
      private var var_1581:IButtonWindow;
      
      private var var_848:IWindowContainer;
      
      private var var_1306:ITextWindow;
      
      private var var_1058:ITextFieldWindow;
      
      private var _buttons:IWindowContainer;
      
      private var var_844:IButtonWindow;
      
      private var var_1584:Boolean = false;
      
      private const const_815:int = 75;
      
      private const const_907:int = 3;
      
      private const const_729:int = 45;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_388 = new RoomEventViewCtrl(this._navigator);
         this.var_149 = new RoomSettingsCtrl(this._navigator,this,true);
         this.var_278 = new RoomThumbnailCtrl(this._navigator);
         this.var_1055 = new TagRenderer(this._navigator);
         this._navigator.roomSettingsCtrls.push(this.var_149);
         this.var_390 = new Timer(6000,1);
         this.var_390.addEventListener(TimerEvent.TIMER,this.hideInfo);
      }
      
      public function dispose() : void
      {
         if(this.var_390)
         {
            this.var_390.removeEventListener(TimerEvent.TIMER,this.hideInfo);
            this.var_390.reset();
            this.var_390 = null;
         }
         this._navigator = null;
         this.var_388 = null;
         this.var_149 = null;
         this.var_278 = null;
         if(this.var_1055)
         {
            this.var_1055.dispose();
            this.var_1055 = null;
         }
         this.var_183 = null;
         this.var_389 = null;
         this.var_391 = null;
         this.var_674 = null;
         this.var_2030 = null;
         this.var_2027 = null;
         this.var_1309 = null;
         this.var_977 = null;
         this.var_1056 = null;
         this._ownerName = null;
         this.var_846 = null;
         this.var_1304 = null;
         this.var_1057 = null;
         this.var_845 = null;
         this.var_1580 = null;
         this.var_277 = null;
         this.var_847 = null;
         this.var_1582 = null;
         this.var_2028 = null;
         this.var_673 = null;
         this.var_2029 = null;
         this.var_1307 = null;
         this.var_1305 = null;
         this.var_1308 = null;
         this._remFavouriteButton = null;
         this.var_1303 = null;
         this.var_1583 = null;
         this.var_1585 = null;
         this.var_1581 = null;
         this.var_848 = null;
         this.var_1306 = null;
         this.var_1058 = null;
         this._buttons = null;
         this.var_844 = null;
         if(this._window)
         {
            this._window.dispose();
            this._window = null;
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         this.refresh();
      }
      
      public function startEventEdit() : void
      {
         this.var_390.reset();
         this.var_388.active = true;
         this.var_149.active = false;
         this.var_278.active = false;
         this.reload();
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this.var_390.reset();
         this.var_149.load(param1);
         this.var_149.active = true;
         this.var_388.active = false;
         this.var_278.active = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function backToRoomSettings() : void
      {
         this.var_149.active = true;
         this.var_388.active = false;
         this.var_278.active = false;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this.var_390.reset();
         this.var_149.active = false;
         this.var_388.active = false;
         this.var_278.active = true;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      public function close() : void
      {
         if(this._window == null)
         {
            return;
         }
         this._window.visible = false;
         this.var_1584 = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      public function reload() : void
      {
         if(this._window != null && this._window.visible)
         {
            this.refresh();
         }
      }
      
      public function toggle() : void
      {
         this.var_390.reset();
         this.var_388.active = false;
         this.var_149.active = false;
         this.var_278.active = false;
         this.refresh();
         this._window.visible = !this._window.visible;
         this._window.x = this._window.desktop.width - this._window.width - this.const_907;
         this._window.y = this.const_815;
         if(this._window.visible)
         {
            this._window.activate();
         }
      }
      
      private function refresh() : void
      {
         this.prepareWindow();
         this.refreshRoom();
         this.refreshEvent();
         this.refreshEmbed();
         this.refreshButtons();
         Util.moveChildrenToColumn(this.var_183,["room_info","event_info","embed_info","buttons_container"],0,2);
         this.var_183.height = Util.getLowestPoint(this.var_183);
         var _loc1_:int = this._window.desktop.height - this._window.height - this.const_729;
         if(this._window.y > _loc1_)
         {
            this._window.y = _loc1_ < 0 ? 0 : int(_loc1_);
         }
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(this.var_389);
         var _loc1_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _loc1_ != null && _loc1_.flatId == this._navigator.data.homeRoomId;
         this.refreshRoomDetails(_loc1_,_loc2_);
         this.refreshPublicSpaceDetails(this._navigator.data.enteredPublicSpace);
         this.refreshRoomButtons(_loc2_);
         this.var_149.refresh(this.var_389);
         this.var_278.refresh(this.var_389);
         Util.moveChildrenToColumn(this.var_389,["room_details","room_buttons"],0,2);
         this.var_389.height = Util.getLowestPoint(this.var_389);
         this.var_389.visible = true;
         Logger.log("XORP: " + this.var_391.visible + ", " + this.var_1309.visible + ", " + this.var_674.visible + ", " + this.var_674.rectangle + ", " + this.var_389.rectangle);
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(this.var_277);
         var _loc1_:RoomEventData = this._navigator.data.roomEventData;
         this.refreshEventDetails(_loc1_);
         this.refreshEventButtons(_loc1_);
         this.var_388.refresh(this.var_277);
         if(Util.hasVisibleChildren(this.var_277) && !(this.var_149.active || this.var_278.active))
         {
            Util.moveChildrenToColumn(this.var_277,["event_details","event_buttons"],0,2);
            this.var_277.height = Util.getLowestPoint(this.var_277);
            this.var_277.visible = true;
         }
         else
         {
            this.var_277.visible = false;
         }
         Logger.log("EVENT: " + this.var_277.visible + ", " + this.var_277.rectangle);
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = this._navigator.configuration.getKey("embed.showInRoomInfo","false") == "true";
         var _loc2_:* = this._navigator.data.enteredGuestRoom != null;
         if(_loc2_ && _loc1_ && !this.var_149.active && !this.var_278.active && !this.var_388.active)
         {
            this.var_848.visible = true;
            this.var_1058.text = this.getEmbedData();
         }
         else
         {
            this.var_848.visible = false;
         }
      }
      
      private function refreshButtons() : void
      {
         var _loc1_:* = false;
         if(!this._buttons)
         {
            return;
         }
         if(this.var_149.active)
         {
            this._buttons.visible = false;
            return;
         }
         this._buttons.visible = true;
         if(this.var_844)
         {
            _loc1_ = this._navigator.data.enteredGuestRoom != null;
            this.var_844.visible = _loc1_;
            if(this.var_1584)
            {
               this.var_844.caption = "${navigator.zoom.in}";
            }
            else
            {
               this.var_844.caption = "${navigator.zoom.out}";
            }
         }
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || this.var_149.active || this.var_278.active)
         {
            return;
         }
         this.var_977.text = param1.roomName;
         this.var_977.height = this.var_977.textHeight + 5;
         this._ownerName.text = param1.ownerName;
         this.var_846.text = param1.description;
         this.var_1055.refreshTags(this.var_391,param1.tags);
         this.var_846.visible = false;
         if(param1.description != "")
         {
            this.var_846.height = this.var_846.textHeight + 5;
            this.var_846.visible = true;
         }
         var _loc3_:Boolean = Boolean(this._navigator.configuration.getKey("client.allow.facebook.like") == "1");
         this._navigator.refreshButton(this.var_1305,"facebook_logo_small",_loc3_,null,0);
         this.var_1305.visible = _loc3_;
         var _loc4_:* = this._navigator.data.currentRoomRating == -1;
         this._navigator.refreshButton(this.var_1307,"thumb_up",_loc4_,null,0);
         this.var_1307.visible = _loc4_;
         this.var_845.visible = !_loc4_;
         this.var_1580.visible = !_loc4_;
         this.var_1580.text = "" + this._navigator.data.currentRoomRating;
         this.refreshStuffPick();
         this._navigator.refreshButton(this.var_391,"home",param2,null,0);
         this._navigator.refreshButton(this.var_391,"favourite",!param2 && this._navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(this.var_391,["room_name","owner_name_cont","tags","room_desc","rating_cont","staff_pick_button"],this.var_977.y,0);
         this.var_391.visible = true;
         this.var_391.height = Util.getLowestPoint(this.var_391);
      }
      
      private function refreshStuffPick() : void
      {
         var _loc1_:IWindow = this.var_391.findChildByName("staff_pick_button");
         if(!this._navigator.data.roomPicker)
         {
            _loc1_.visible = false;
            return;
         }
         _loc1_.visible = true;
         _loc1_.caption = this._navigator.getText(!!this._navigator.data.currentRoomIsStaffPick ? "navigator.staffpicks.unpick" : "navigator.staffpicks.pick");
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || this.var_149.active || this.var_278.active)
         {
            return;
         }
         this.var_1056.text = this._navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         this.var_1056.height = this.var_1056.textHeight + 5;
         this.var_1304.text = this._navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         this.var_1304.height = this.var_1304.textHeight + 5;
         Util.moveChildrenToColumn(this.var_674,["public_space_name","public_space_desc"],this.var_1056.y,0);
         this.var_674.visible = true;
         this.var_674.height = Math.max(86,Util.getLowestPoint(this.var_674));
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || this.var_388.active)
         {
            return;
         }
         this.var_2028.text = param1.eventName;
         this.var_673.text = param1.eventDescription;
         this.var_1055.refreshTags(this.var_847,[this._navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         this.var_673.visible = false;
         if(param1.eventDescription != "")
         {
            this.var_673.height = this.var_673.textHeight + 5;
            this.var_673.y = Util.getLowestPoint(this.var_847) + 2;
            this.var_673.visible = true;
         }
         this.var_847.visible = true;
         this.var_847.height = Util.getLowestPoint(this.var_847);
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(this._navigator.data.enteredGuestRoom == null || this.var_149.active || this.var_278.active)
         {
            return;
         }
         this.var_1583.visible = this._navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = this._navigator.data.isCurrentRoomFavourite();
         this.var_1308.visible = this._navigator.data.canAddFavourite && !_loc2_;
         this._remFavouriteButton.visible = this._navigator.data.canAddFavourite && _loc2_;
         this.var_1303.visible = this._navigator.data.canEditRoomSettings && !param1;
         this.var_1309.visible = Util.hasVisibleChildren(this.var_1309);
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(this.var_388.active)
         {
            return;
         }
         this.var_1585.visible = param1 == null && this._navigator.data.currentRoomOwner;
         this.var_1581.visible = param1 != null && (this._navigator.data.currentRoomOwner || this._navigator.data.eventMod);
         this.var_1582.visible = Util.hasVisibleChildren(this.var_1582);
      }
      
      private function prepareWindow() : void
      {
         if(this._window != null)
         {
            return;
         }
         this._window = IWindowContainer(this._navigator.getXmlWindow("iro_room_details_framed"));
         this.var_183 = this._window.findChildByName("content") as IWindowContainer;
         this._window.visible = false;
         this.var_389 = IWindowContainer(this.find("room_info"));
         this.var_391 = IWindowContainer(this.find("room_details"));
         this.var_674 = IWindowContainer(this.find("public_space_details"));
         this.var_2030 = IWindowContainer(this.find("owner_name_cont"));
         this.var_2027 = IWindowContainer(this.find("rating_cont"));
         this.var_1309 = IWindowContainer(this.find("room_buttons"));
         this.var_977 = ITextWindow(this.find("room_name"));
         this.var_1056 = ITextWindow(this.find("public_space_name"));
         this._ownerName = ITextWindow(this.find("owner_name"));
         this.var_846 = ITextWindow(this.find("room_desc"));
         this.var_1304 = ITextWindow(this.find("public_space_desc"));
         this.var_1057 = ITextWindow(this.find("owner_caption"));
         this.var_845 = ITextWindow(this.find("rating_caption"));
         this.var_1580 = ITextWindow(this.find("rating_txt"));
         this.var_277 = IWindowContainer(this.find("event_info"));
         this.var_847 = IWindowContainer(this.find("event_details"));
         this.var_1582 = IWindowContainer(this.find("event_buttons"));
         this.var_2028 = ITextWindow(this.find("event_name"));
         this.var_673 = ITextWindow(this.find("event_desc"));
         this.var_1305 = IContainerButtonWindow(this.find("facebook_like_button"));
         this.var_1307 = IContainerButtonWindow(this.find("rate_up_button"));
         this.var_2029 = this.find("staff_pick_button");
         this.var_1308 = IContainerButtonWindow(this.find("add_favourite_button"));
         this._remFavouriteButton = IContainerButtonWindow(this.find("rem_favourite_button"));
         this.var_1303 = IContainerButtonWindow(this.find("make_home_button"));
         this.var_1583 = IButtonWindow(this.find("room_settings_button"));
         this.var_1585 = IButtonWindow(this.find("create_event_button"));
         this.var_1581 = IButtonWindow(this.find("edit_event_button"));
         this.var_848 = IWindowContainer(this.find("embed_info"));
         this.var_1306 = ITextWindow(this.find("embed_info_txt"));
         this.var_1058 = ITextFieldWindow(this.find("embed_src_txt"));
         this._buttons = IWindowContainer(this.find("buttons_container"));
         this.var_844 = IButtonWindow(this.find("zoom_button"));
         this.addMouseClickListener(this.var_1308,this.onAddFavouriteClick);
         this.addMouseClickListener(this._remFavouriteButton,this.onRemoveFavouriteClick);
         this.addMouseClickListener(this.var_1583,this.onRoomSettingsClick);
         this.addMouseClickListener(this.var_1303,this.onMakeHomeClick);
         this.addMouseClickListener(this.var_1585,this.onEventSettingsClick);
         this.addMouseClickListener(this.var_1581,this.onEventSettingsClick);
         this.addMouseClickListener(this.var_1058,this.onEmbedSrcClick);
         this.addMouseClickListener(this.var_1307,this.onThumbUp);
         this.addMouseClickListener(this.var_2029,this.onStaffPick);
         this.addMouseClickListener(this.var_1305,this.onFacebookLike);
         this.addMouseClickListener(this.var_844,this.onZoomClick);
         this._navigator.refreshButton(this.var_1308,"favourite",true,null,0);
         this._navigator.refreshButton(this._remFavouriteButton,"favourite",true,null,0);
         this._navigator.refreshButton(this.var_1303,"home",true,null,0);
         this.addMouseClickListener(this._window.findChildByTag("close"),this.onCloseButtonClick);
         this.addMouseOverListener(this.var_389,this.onHover);
         this.addMouseOverListener(this.var_277,this.onHover);
         this.var_1057.width = this.var_1057.textWidth;
         Util.moveChildrenToRow(this.var_2030,["owner_caption","owner_name"],this.var_1057.x,this.var_1057.y,3);
         this.var_845.width = this.var_845.textWidth;
         Util.moveChildrenToRow(this.var_2027,["rating_caption","rating_txt"],this.var_845.x,this.var_845.y,3);
         this.var_1306.height = this.var_1306.textHeight + 5;
         Util.moveChildrenToColumn(this.var_848,["embed_info_txt","embed_src_txt"],this.var_1306.y,2);
         this.var_848.height = Util.getLowestPoint(this.var_848) + 5;
         this.var_2999 = this._window.y + this._window.height;
      }
      
      private function addMouseClickListener(param1:IWindow, param2:Function) : void
      {
         if(param1 != null)
         {
            param1.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,param2);
         }
      }
      
      private function addMouseOverListener(param1:IWindow, param2:Function) : void
      {
         if(param1 != null)
         {
            param1.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,param2);
         }
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = this._window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent) : void
      {
         var _loc2_:* = null;
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(this._navigator.data.isFavouritesFull())
         {
            _loc2_ = new SimpleAlertView(this._navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc2_.show();
         }
         else
         {
            this._navigator.send(new AddFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent) : void
      {
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         this._navigator.send(new DeleteFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onEventSettingsClick(param1:WindowEvent) : void
      {
         if(this._navigator.data.roomEventData == null)
         {
            if(this._navigator.data.currentRoomOwner)
            {
               this._navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            this.startEventEdit();
         }
      }
      
      private function onRoomSettingsClick(param1:WindowEvent) : void
      {
         var _loc2_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc2_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         this.startRoomSettingsEdit(_loc2_.flatId);
      }
      
      private function onMakeHomeClick(param1:WindowEvent) : void
      {
         var _loc2_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc2_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc2_.flatId);
         this._navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc2_.flatId));
      }
      
      private function onCloseButtonClick(param1:WindowEvent) : void
      {
         this.hideInfo(null);
      }
      
      private function onThumbUp(param1:WindowEvent) : void
      {
         this._navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function onStaffPick(param1:WindowEvent) : void
      {
         this._navigator.send(new ToggleStaffPickMessageComposer(this._navigator.data.enteredGuestRoom.flatId,this._navigator.data.currentRoomIsStaffPick));
      }
      
      private function onFacebookLike(param1:WindowEvent) : void
      {
         HabboWebTools.facebookLike(this._navigator.data.enteredGuestRoom.flatId);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent) : void
      {
         this.var_1058.setSelection(0,this.var_1058.text.length);
      }
      
      private function onZoomClick(param1:WindowEvent) : void
      {
         this._navigator.events.dispatchEvent(new HabboNavigatorEvent(HabboNavigatorEvent.ZOOM_TOGGLE));
         this.var_1584 = !this.var_1584;
         this.refreshButtons();
      }
      
      private function onHover(param1:WindowEvent) : void
      {
         this.var_390.reset();
      }
      
      private function hideInfo(param1:Event) : void
      {
         this._window.visible = false;
         if(this.var_149 != null)
         {
            this.var_149.resetView();
         }
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(this._navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + this._navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + this._navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = this._navigator.configuration.getKey("user.hash","");
         this._navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         this._navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         this._navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return this._navigator.getText("navigator.embed.src");
      }
   }
}

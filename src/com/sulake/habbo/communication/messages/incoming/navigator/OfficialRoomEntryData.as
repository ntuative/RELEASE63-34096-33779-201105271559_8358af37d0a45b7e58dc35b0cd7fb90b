package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1335:int = 1;
      
      public static const const_836:int = 2;
      
      public static const const_780:int = 3;
      
      public static const const_1722:int = 4;
       
      
      private var _index:int;
      
      private var var_2927:String;
      
      private var var_2928:String;
      
      private var var_2931:Boolean;
      
      private var var_2929:String;
      
      private var var_1005:String;
      
      private var var_2930:int;
      
      private var var_2752:int;
      
      private var _type:int;
      
      private var var_2525:String;
      
      private var var_1081:GuestRoomData;
      
      private var var_1082:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2927 = param1.readString();
         this.var_2928 = param1.readString();
         this.var_2931 = param1.readInteger() == 1;
         this.var_2929 = param1.readString();
         this.var_1005 = param1.readString();
         this.var_2930 = param1.readInteger();
         this.var_2752 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1335)
         {
            this.var_2525 = param1.readString();
         }
         else if(this._type == const_780)
         {
            this.var_1082 = new PublicRoomData(param1);
         }
         else if(this._type == const_836)
         {
            this.var_1081 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_1081 != null)
         {
            this.var_1081.dispose();
            this.var_1081 = null;
         }
         if(this.var_1082 != null)
         {
            this.var_1082.dispose();
            this.var_1082 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2927;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2928;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2931;
      }
      
      public function get picText() : String
      {
         return this.var_2929;
      }
      
      public function get picRef() : String
      {
         return this.var_1005;
      }
      
      public function get folderId() : int
      {
         return this.var_2930;
      }
      
      public function get tag() : String
      {
         return this.var_2525;
      }
      
      public function get userCount() : int
      {
         return this.var_2752;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_1081;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_1082;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1335)
         {
            return 0;
         }
         if(this.type == const_836)
         {
            return this.var_1081.maxUserCount;
         }
         if(this.type == const_780)
         {
            return this.var_1082.maxUsers;
         }
         return 0;
      }
   }
}

package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_349:int;
      
      private var var_780:Boolean;
      
      private var var_977:String;
      
      private var _ownerName:String;
      
      private var var_2265:int;
      
      private var var_2752:int;
      
      private var var_2878:int;
      
      private var var_1692:String;
      
      private var var_2877:int;
      
      private var var_2879:Boolean;
      
      private var var_836:int;
      
      private var var_1526:int;
      
      private var var_2881:String;
      
      private var var_887:Array;
      
      private var var_2880:RoomThumbnailData;
      
      private var var_2268:Boolean;
      
      private var var_2876:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_887 = new Array();
         super();
         this.var_349 = param1.readInteger();
         this.var_780 = param1.readBoolean();
         this.var_977 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2265 = param1.readInteger();
         this.var_2752 = param1.readInteger();
         this.var_2878 = param1.readInteger();
         this.var_1692 = param1.readString();
         this.var_2877 = param1.readInteger();
         this.var_2879 = param1.readBoolean();
         this.var_836 = param1.readInteger();
         this.var_1526 = param1.readInteger();
         this.var_2881 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_887.push(_loc4_);
            _loc3_++;
         }
         this.var_2880 = new RoomThumbnailData(param1);
         this.var_2268 = param1.readBoolean();
         this.var_2876 = param1.readBoolean();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_887 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get flatId() : int
      {
         return this.var_349;
      }
      
      public function get event() : Boolean
      {
         return this.var_780;
      }
      
      public function get roomName() : String
      {
         return this.var_977;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2265;
      }
      
      public function get userCount() : int
      {
         return this.var_2752;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2878;
      }
      
      public function get description() : String
      {
         return this.var_1692;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2877;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2879;
      }
      
      public function get score() : int
      {
         return this.var_836;
      }
      
      public function get categoryId() : int
      {
         return this.var_1526;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2881;
      }
      
      public function get tags() : Array
      {
         return this.var_887;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2880;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2268;
      }
      
      public function get displayRoomEntryAd() : Boolean
      {
         return this.var_2876;
      }
   }
}

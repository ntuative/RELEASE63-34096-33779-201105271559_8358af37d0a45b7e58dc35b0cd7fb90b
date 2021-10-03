package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var var_1679:Boolean;
      
      private var var_2281:int;
      
      private var var_2279:String;
      
      private var var_349:int;
      
      private var var_2283:int;
      
      private var var_2028:String;
      
      private var var_2282:String;
      
      private var var_2280:String;
      
      private var var_887:Array;
      
      private var _disposed:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         this.var_887 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1679 = false;
            return;
         }
         this.var_1679 = true;
         this.var_2281 = int(_loc2_);
         this.var_2279 = param1.readString();
         this.var_349 = int(param1.readString());
         this.var_2283 = param1.readInteger();
         this.var_2028 = param1.readString();
         this.var_2282 = param1.readString();
         this.var_2280 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            this.var_887.push(_loc5_);
            _loc4_++;
         }
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
      
      public function get ownerAvatarId() : int
      {
         return this.var_2281;
      }
      
      public function get ownerAvatarName() : String
      {
         return this.var_2279;
      }
      
      public function get flatId() : int
      {
         return this.var_349;
      }
      
      public function get eventType() : int
      {
         return this.var_2283;
      }
      
      public function get eventName() : String
      {
         return this.var_2028;
      }
      
      public function get eventDescription() : String
      {
         return this.var_2282;
      }
      
      public function get creationTime() : String
      {
         return this.var_2280;
      }
      
      public function get tags() : Array
      {
         return this.var_887;
      }
      
      public function get exists() : Boolean
      {
         return this.var_1679;
      }
   }
}

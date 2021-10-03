package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1970:Boolean;
      
      private var var_2715:int;
      
      private var _owner:Boolean;
      
      private var var_1274:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function get privateRoom() : Boolean
      {
         return this.var_1970;
      }
      
      public function get guestRoomId() : int
      {
         return this.var_2715;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return this.var_1274;
      }
      
      public function get owner() : Boolean
      {
         return this._owner;
      }
      
      public function flush() : Boolean
      {
         if(this.var_1274 != null)
         {
            this.var_1274.dispose();
            this.var_1274 = null;
         }
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1970 = param1.readBoolean();
         if(this.var_1970)
         {
            this.var_2715 = param1.readInteger();
            this._owner = param1.readBoolean();
         }
         else
         {
            this.var_1274 = new PublicRoomShortData(param1);
         }
         return true;
      }
   }
}

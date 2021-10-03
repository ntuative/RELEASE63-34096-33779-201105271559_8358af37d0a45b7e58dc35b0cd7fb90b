package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2572:String;
      
      private var var_2446:int;
      
      private var var_2515:int;
      
      private var var_2445:String;
      
      private var var_2583:int;
      
      private var var_1986:int;
      
      private var _disposed:Boolean;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2572 = param1.readString();
         this.var_2446 = param1.readInteger();
         this.var_2515 = param1.readInteger();
         this.var_2445 = param1.readString();
         this.var_2583 = param1.readInteger();
         this.var_1986 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get unitPropertySet() : String
      {
         return this.var_2572;
      }
      
      public function get unitPort() : int
      {
         return this.var_2446;
      }
      
      public function get worldId() : int
      {
         return this.var_2515;
      }
      
      public function get castLibs() : String
      {
         return this.var_2445;
      }
      
      public function get maxUsers() : int
      {
         return this.var_2583;
      }
      
      public function get method_1() : int
      {
         return this.var_1986;
      }
   }
}

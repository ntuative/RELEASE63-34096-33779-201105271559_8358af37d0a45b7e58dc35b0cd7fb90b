package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendRequestData
   {
       
      
      private var var_1211:int;
      
      private var var_2779:String;
      
      private var var_2778:int;
      
      public function FriendRequestData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1211 = param1.readInteger();
         this.var_2779 = param1.readString();
         this.var_2778 = int(param1.readString());
      }
      
      public function get requestId() : int
      {
         return this.var_1211;
      }
      
      public function get requesterName() : String
      {
         return this.var_2779;
      }
      
      public function get requesterUserId() : int
      {
         return this.var_2778;
      }
   }
}

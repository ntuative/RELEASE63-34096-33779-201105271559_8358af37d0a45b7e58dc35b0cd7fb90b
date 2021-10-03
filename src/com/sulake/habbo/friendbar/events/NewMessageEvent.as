package com.sulake.habbo.friendbar.events
{
   import flash.events.Event;
   
   public class NewMessageEvent extends Event
   {
      
      public static const const_878:String = "FBE_MESSAGE";
       
      
      public var notify:Boolean;
      
      public function NewMessageEvent(param1:Boolean)
      {
         super(const_878,false,false);
         this.notify = param1;
      }
   }
}

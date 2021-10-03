package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_949:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_675:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_949);
         this.var_675 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_675;
      }
   }
}

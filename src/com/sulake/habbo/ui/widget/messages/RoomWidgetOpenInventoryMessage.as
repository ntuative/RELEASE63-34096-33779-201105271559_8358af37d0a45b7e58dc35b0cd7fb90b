package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_721:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1233:String = "inventory_effects";
      
      public static const const_1168:String = "inventory_badges";
      
      public static const const_1667:String = "inventory_clothes";
      
      public static const const_1656:String = "inventory_furniture";
       
      
      private var var_2505:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_721);
         this.var_2505 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2505;
      }
   }
}

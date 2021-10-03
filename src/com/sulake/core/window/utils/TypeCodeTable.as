package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_704;
         param1["bitmap"] = const_759;
         param1["border"] = const_902;
         param1["border_notify"] = const_1928;
         param1["bubble"] = const_771;
         param1["bubble_pointer_up"] = const_1265;
         param1["bubble_pointer_right"] = const_1201;
         param1["bubble_pointer_down"] = const_1155;
         param1["bubble_pointer_left"] = const_1123;
         param1["button"] = const_469;
         param1["button_thick"] = const_752;
         param1["button_icon"] = const_1827;
         param1["button_group_left"] = const_706;
         param1["button_group_center"] = const_763;
         param1["button_group_right"] = const_931;
         param1["canvas"] = const_859;
         param1["checkbox"] = const_883;
         param1["closebutton"] = const_1309;
         param1["container"] = const_422;
         param1["container_button"] = const_871;
         param1["display_object_wrapper"] = const_870;
         param1["dropmenu"] = const_630;
         param1["dropmenu_item"] = const_485;
         param1["frame"] = const_415;
         param1["frame_notify"] = const_1658;
         param1["header"] = const_838;
         param1["html"] = const_1167;
         param1["icon"] = const_1184;
         param1["itemgrid"] = const_1326;
         param1["itemgrid_horizontal"] = const_475;
         param1["itemgrid_vertical"] = const_933;
         param1["itemlist"] = const_1329;
         param1["itemlist_horizontal"] = const_436;
         param1["itemlist_vertical"] = const_397;
         param1["label"] = const_732;
         param1["maximizebox"] = const_1786;
         param1["menu"] = const_1927;
         param1["menu_item"] = const_1681;
         param1["submenu"] = const_1294;
         param1["minimizebox"] = const_1935;
         param1["notify"] = const_1856;
         param1["null"] = const_937;
         param1["password"] = const_924;
         param1["radiobutton"] = const_889;
         param1["region"] = const_483;
         param1["restorebox"] = const_1810;
         param1["scaler"] = const_474;
         param1["scaler_horizontal"] = const_1785;
         param1["scaler_vertical"] = const_1735;
         param1["scrollbar_horizontal"] = const_490;
         param1["scrollbar_vertical"] = const_880;
         param1["scrollbar_slider_button_up"] = const_1249;
         param1["scrollbar_slider_button_down"] = const_1296;
         param1["scrollbar_slider_button_left"] = const_1188;
         param1["scrollbar_slider_button_right"] = const_1166;
         param1["scrollbar_slider_bar_horizontal"] = const_1161;
         param1["scrollbar_slider_bar_vertical"] = const_1308;
         param1["scrollbar_slider_track_horizontal"] = const_1207;
         param1["scrollbar_slider_track_vertical"] = const_1120;
         param1["scrollable_itemlist"] = const_1683;
         param1["scrollable_itemlist_vertical"] = WINDOW_TYPE_SCROLLABLE_ITEMLIST_VERTICAL;
         param1["scrollable_itemlist_horizontal"] = const_1203;
         param1["selector"] = const_926;
         param1["selector_list"] = const_972;
         param1["submenu"] = const_1294;
         param1["tab_button"] = const_798;
         param1["tab_container_button"] = const_1191;
         param1["tab_context"] = const_414;
         param1["tab_content"] = const_1341;
         param1["tab_selector"] = const_941;
         param1["text"] = const_920;
         param1["input"] = const_983;
         param1["toolbar"] = const_1931;
         param1["tooltip"] = const_421;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}

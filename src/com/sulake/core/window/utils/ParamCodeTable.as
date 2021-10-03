package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_203;
         param1["bound_to_parent_rect"] = const_101;
         param1["child_window"] = const_1247;
         param1["embedded_controller"] = const_1344;
         param1["resize_to_accommodate_children"] = WINDOW_PARAM_RESIZE_TO_ACCOMMODATE_CHILDREN;
         param1["input_event_processor"] = const_31;
         param1["internal_event_handling"] = const_791;
         param1["mouse_dragging_target"] = const_269;
         param1["mouse_dragging_trigger"] = const_442;
         param1["mouse_scaling_target"] = const_306;
         param1["mouse_scaling_trigger"] = const_544;
         param1["horizontal_mouse_scaling_trigger"] = const_289;
         param1["vertical_mouse_scaling_trigger"] = const_293;
         param1["observe_parent_input_events"] = const_1206;
         param1["optimize_region_to_layout_size"] = const_618;
         param1["parent_window"] = const_1295;
         param1["relative_horizontal_scale_center"] = const_220;
         param1["relative_horizontal_scale_fixed"] = const_166;
         param1["relative_horizontal_scale_move"] = const_389;
         param1["relative_horizontal_scale_strech"] = const_428;
         param1["relative_scale_center"] = const_1165;
         param1["relative_scale_fixed"] = const_761;
         param1["relative_scale_move"] = const_1197;
         param1["relative_scale_strech"] = const_1299;
         param1["relative_vertical_scale_center"] = const_223;
         param1["relative_vertical_scale_fixed"] = const_158;
         param1["relative_vertical_scale_move"] = const_235;
         param1["relative_vertical_scale_strech"] = const_343;
         param1["on_resize_align_left"] = const_856;
         param1["on_resize_align_right"] = const_557;
         param1["on_resize_align_center"] = const_511;
         param1["on_resize_align_top"] = const_905;
         param1["on_resize_align_bottom"] = const_629;
         param1["on_resize_align_middle"] = const_565;
         param1["on_accommodate_align_left"] = const_1336;
         param1["on_accommodate_align_right"] = const_586;
         param1["on_accommodate_align_center"] = const_756;
         param1["on_accommodate_align_top"] = const_1223;
         param1["on_accommodate_align_bottom"] = const_578;
         param1["on_accommodate_align_middle"] = const_858;
         param1["route_input_events_to_parent"] = const_495;
         param1["use_parent_graphic_context"] = const_34;
         param1["draggable_with_mouse"] = const_1177;
         param1["scalable_with_mouse"] = const_1333;
         param1["reflect_horizontal_resize_to_parent"] = const_540;
         param1["reflect_vertical_resize_to_parent"] = const_517;
         param1["reflect_resize_to_parent"] = const_340;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         param1["inherit_caption"] = const_1327;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}

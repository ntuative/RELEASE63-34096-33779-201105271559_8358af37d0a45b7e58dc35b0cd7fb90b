package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_153:String = "RWPUE_VOTE_QUESTION";
      
      public static const const_148:String = "RWPUE_VOTE_RESULT";
       
      
      private var var_1285:String;
      
      private var var_1401:Array;
      
      private var var_1201:Array;
      
      private var var_1690:int;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_1285 = param2;
         this.var_1401 = param3;
         this.var_1201 = param4;
         if(this.var_1201 == null)
         {
            this.var_1201 = [];
         }
         this.var_1690 = param5;
      }
      
      public function get question() : String
      {
         return this.var_1285;
      }
      
      public function get choices() : Array
      {
         return this.var_1401.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1201.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_1690;
      }
   }
}

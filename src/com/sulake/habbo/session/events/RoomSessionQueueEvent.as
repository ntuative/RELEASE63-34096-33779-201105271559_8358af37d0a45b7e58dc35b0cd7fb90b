package com.sulake.habbo.session.events
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionQueueEvent extends RoomSessionEvent
   {
      
      public static const const_594:String = "RSQE_QUEUE_STATUS";
      
      public static const const_1232:String = "c";
      
      public static const const_1721:String = "d";
      
      public static const const_1162:int = 2;
      
      public static const const_1321:int = 1;
       
      
      private var _name:String;
      
      private var _target:int;
      
      private var var_1465:Map;
      
      private var var_535:Boolean;
      
      private var var_3020:String;
      
      public function RoomSessionQueueEvent(param1:IRoomSession, param2:String, param3:int, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false)
      {
         super(const_594,param1,param5,param6);
         this._name = param2;
         this._target = param3;
         this.var_1465 = new Map();
         this.var_535 = param4;
      }
      
      public function get isActive() : Boolean
      {
         return this.var_535;
      }
      
      public function get queueSetName() : String
      {
         return this._name;
      }
      
      public function get queueSetTarget() : int
      {
         return this._target;
      }
      
      public function get queueTypes() : Array
      {
         return this.var_1465.getKeys();
      }
      
      public function getQueueSize(param1:String) : int
      {
         return this.var_1465.getValue(param1);
      }
      
      public function method_2(param1:String, param2:int) : void
      {
         this.var_1465.add(param1,param2);
      }
   }
}

package com.sulake.habbo.communication.messages.parser.sound
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.core.utils.Map;
   
   public class JukeboxSongDisksMessageParser implements IMessageParser
   {
       
      
      private var var_1514:Map;
      
      private var var_1902:int;
      
      public function JukeboxSongDisksMessageParser()
      {
         super();
         this.var_1514 = new Map();
      }
      
      public function get songDisks() : Map
      {
         return this.var_1514;
      }
      
      public function get maxLength() : int
      {
         return this.var_1902;
      }
      
      public function flush() : Boolean
      {
         this.var_1514.reset();
         this.var_1902 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1902 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = -1;
         var _loc4_:int = -1;
         var _loc5_:int = 0;
         while(_loc5_ < _loc2_)
         {
            _loc3_ = param1.readInteger();
            _loc4_ = param1.readInteger();
            this.var_1514.add(_loc3_,_loc4_);
            _loc5_++;
         }
         return true;
      }
   }
}

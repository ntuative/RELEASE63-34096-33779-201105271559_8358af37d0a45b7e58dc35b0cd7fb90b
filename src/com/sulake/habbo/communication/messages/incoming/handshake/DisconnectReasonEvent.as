package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_2158:int = 0;
      
      public static const const_1717:int = 1;
      
      public static const const_1784:int = 2;
      
      public static const const_2164:int = 3;
      
      public static const const_2136:int = 4;
      
      public static const const_2074:int = 5;
      
      public static const const_1738:int = 10;
      
      public static const const_2130:int = 11;
      
      public static const const_2132:int = 12;
      
      public static const const_2056:int = 13;
      
      public static const const_2083:int = 16;
      
      public static const const_2053:int = 17;
      
      public static const const_2151:int = 18;
      
      public static const const_2202:int = 19;
      
      public static const const_2199:int = 20;
      
      public static const const_2188:int = 22;
      
      public static const const_2218:int = 23;
      
      public static const const_2043:int = 24;
      
      public static const const_2012:int = 25;
      
      public static const const_2139:int = 26;
      
      public static const const_2095:int = 27;
      
      public static const const_2200:int = 28;
      
      public static const const_2011:int = 29;
      
      public static const const_2159:int = 100;
      
      public static const const_2128:int = 101;
      
      public static const const_2038:int = 102;
      
      public static const const_2098:int = 103;
      
      public static const const_2174:int = 104;
      
      public static const const_2115:int = 105;
      
      public static const const_2118:int = 106;
      
      public static const const_2050:int = 107;
      
      public static const const_2075:int = 108;
      
      public static const const_2215:int = 109;
      
      public static const const_2099:int = 110;
      
      public static const const_2133:int = 111;
      
      public static const const_2006:int = 112;
      
      public static const const_2037:int = 113;
      
      public static const const_2021:int = 114;
      
      public static const const_2063:int = 115;
      
      public static const const_2073:int = 116;
      
      public static const const_2154:int = 117;
      
      public static const const_2140:int = 118;
      
      public static const const_2045:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1717:
            case const_1738:
               return "banned";
            case const_1784:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}

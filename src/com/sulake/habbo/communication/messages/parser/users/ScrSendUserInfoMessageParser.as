package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_2177:int = 1;
      
      public static const const_1901:int = 2;
       
      
      private var var_981:String;
      
      private var var_2218:int;
      
      private var var_2212:int;
      
      private var var_2216:int;
      
      private var var_2213:int;
      
      private var var_2214:Boolean;
      
      private var var_2201:Boolean;
      
      private var var_2202:int;
      
      private var var_2200:int;
      
      private var var_2211:Boolean;
      
      private var var_2215:int;
      
      private var var_2217:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_981 = param1.readString();
         this.var_2218 = param1.readInteger();
         this.var_2212 = param1.readInteger();
         this.var_2216 = param1.readInteger();
         this.var_2213 = param1.readInteger();
         this.var_2214 = param1.readBoolean();
         this.var_2201 = param1.readBoolean();
         this.var_2202 = param1.readInteger();
         this.var_2200 = param1.readInteger();
         this.var_2211 = param1.readBoolean();
         this.var_2215 = param1.readInteger();
         this.var_2217 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_981;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2218;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2212;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2216;
      }
      
      public function get responseType() : int
      {
         return this.var_2213;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2214;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2201;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2202;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2200;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2211;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2215;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2217;
      }
   }
}

package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1003:BigInteger;
      
      private var var_2483:BigInteger;
      
      private var var_1841:BigInteger;
      
      private var var_2565:BigInteger;
      
      private var var_1485:BigInteger;
      
      private var var_1840:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1485 = param1;
         this.var_1840 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1485.toString() + ",generator: " + this.var_1840.toString() + ",secret: " + param1);
         this.var_1003 = new BigInteger();
         this.var_1003.fromRadix(param1,param2);
         this.var_2483 = this.var_1840.modPow(this.var_1003,this.var_1485);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1841 = new BigInteger();
         this.var_1841.fromRadix(param1,param2);
         this.var_2565 = this.var_1841.modPow(this.var_1003,this.var_1485);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2483.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2565.toRadix(param1);
      }
   }
}

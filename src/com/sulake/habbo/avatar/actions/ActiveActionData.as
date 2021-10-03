package com.sulake.habbo.avatar.actions
{
   public class ActiveActionData implements IActiveActionData
   {
       
      
      private var var_1657:String = "";
      
      private var _actionParameter:String = "";
      
      private var var_1112:IActionDefinition;
      
      private var var_2197:int = 0;
      
      private var var_2196:String;
      
      public function ActiveActionData(param1:String, param2:String = "", param3:int = 0)
      {
         super();
         this.var_1657 = param1;
         this._actionParameter = param2;
         this.var_2197 = param3;
      }
      
      public function get actionType() : String
      {
         return this.var_1657;
      }
      
      public function get actionParameter() : String
      {
         return this._actionParameter;
      }
      
      public function get definition() : IActionDefinition
      {
         return this.var_1112;
      }
      
      public function get id() : String
      {
         if(this.var_1112 == null)
         {
            return "";
         }
         return this.var_1112.id + "_" + this._actionParameter;
      }
      
      public function set actionParameter(param1:String) : void
      {
         this._actionParameter = param1;
      }
      
      public function set definition(param1:IActionDefinition) : void
      {
         this.var_1112 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1657 = null;
         this._actionParameter = null;
         this.var_1112 = null;
      }
      
      public function get startFrame() : int
      {
         return this.var_2197;
      }
      
      public function get overridingAction() : String
      {
         return this.var_2196;
      }
      
      public function set overridingAction(param1:String) : void
      {
         this.var_2196 = param1;
      }
   }
}

package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_834:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_1104)
         {
            _structure = null;
            _assets = null;
            var_271 = null;
            var_291 = null;
            var_666 = null;
            var_580 = null;
            var_338 = null;
            if(!var_1370 && var_47)
            {
               var_47.dispose();
            }
            var_47 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_825 = null;
            var_1104 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_834[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_834[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_419:
               switch(_loc3_)
               {
                  case AvatarAction.const_844:
                  case AvatarAction.const_569:
                  case AvatarAction.const_398:
                  case AvatarAction.const_715:
                  case AvatarAction.const_425:
                  case AvatarAction.const_986:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_346:
            case AvatarAction.const_948:
            case AvatarAction.const_271:
            case AvatarAction.const_978:
            case AvatarAction.const_967:
            case AvatarAction.const_768:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}

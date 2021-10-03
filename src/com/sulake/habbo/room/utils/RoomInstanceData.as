package com.sulake.habbo.room.utils
{
   import com.sulake.core.utils.Map;
   
   public class RoomInstanceData
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_739:TileHeightMap = null;
      
      private var var_1139:LegacyWallGeometry = null;
      
      private var var_1138:RoomCamera = null;
      
      private var var_738:SelectedRoomObjectData = null;
      
      private var var_740:SelectedRoomObjectData = null;
      
      private var _worldType:String = null;
      
      private var var_501:Map;
      
      private var var_502:Map;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         this.var_501 = new Map();
         this.var_502 = new Map();
         super();
         this._roomId = param1;
         this._roomCategory = param2;
         this.var_1139 = new LegacyWallGeometry();
         this.var_1138 = new RoomCamera();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return this.var_739;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(this.var_739 != null)
         {
            this.var_739.dispose();
         }
         this.var_739 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return this.var_1139;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return this.var_1138;
      }
      
      public function get worldType() : String
      {
         return this._worldType;
      }
      
      public function set worldType(param1:String) : void
      {
         this._worldType = param1;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return this.var_738;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_738 != null)
         {
            this.var_738.dispose();
         }
         this.var_738 = param1;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return this.var_740;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_740 != null)
         {
            this.var_740.dispose();
         }
         this.var_740 = param1;
      }
      
      public function dispose() : void
      {
         if(this.var_739 != null)
         {
            this.var_739.dispose();
            this.var_739 = null;
         }
         if(this.var_1139 != null)
         {
            this.var_1139.dispose();
            this.var_1139 = null;
         }
         if(this.var_1138 != null)
         {
            this.var_1138.dispose();
            this.var_1138 = null;
         }
         if(this.var_738 != null)
         {
            this.var_738.dispose();
            this.var_738 = null;
         }
         if(this.var_740 != null)
         {
            this.var_740.dispose();
            this.var_740 = null;
         }
         if(this.var_501 != null)
         {
            this.var_501.dispose();
            this.var_501 = null;
         }
         if(this.var_502 != null)
         {
            this.var_502.dispose();
            this.var_502 = null;
         }
      }
      
      public function addFurnitureData(param1:FurnitureData) : void
      {
         if(param1 != null)
         {
            this.var_501.remove(param1.id);
            this.var_501.add(param1.id,param1);
         }
      }
      
      public function getFurnitureData() : FurnitureData
      {
         if(this.var_501.length > 0)
         {
            return this.getFurnitureDataWithId(this.var_501.getKey(0));
         }
         return null;
      }
      
      public function getFurnitureDataWithId(param1:int) : FurnitureData
      {
         return this.var_501.remove(param1);
      }
      
      public function addWallItemData(param1:FurnitureData) : void
      {
         if(param1 != null)
         {
            this.var_502.remove(param1.id);
            this.var_502.add(param1.id,param1);
         }
      }
      
      public function getWallItemData() : FurnitureData
      {
         if(this.var_502.length > 0)
         {
            return this.getWallItemDataWithId(this.var_502.getKey(0));
         }
         return null;
      }
      
      public function getWallItemDataWithId(param1:int) : FurnitureData
      {
         return this.var_502.remove(param1);
      }
   }
}

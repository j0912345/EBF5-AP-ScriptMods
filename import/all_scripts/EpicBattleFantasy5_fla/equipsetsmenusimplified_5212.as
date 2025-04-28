package EpicBattleFantasy5_fla
{
   import flash.accessibility.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.filters.*;
   import flash.geom.*;
   import flash.globalization.*;
   import flash.media.*;
   import flash.net.*;
   import flash.net.drm.*;
   import flash.system.*;
   import flash.text.*;
   import flash.text.ime.*;
   import flash.ui.*;
   import flash.utils.*;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol12831")]
   public dynamic class equipsetsmenusimplified_5212 extends MovieClip
   {
      public var b1:SimpleButton;
      
      public var b2:SimpleButton;
      
      public var b3:SimpleButton;
      
      public var b4:SimpleButton;
      
      public var b5:SimpleButton;
      
      public var b6:SimpleButton;
      
      public var slot1:MovieClip;
      
      public var slot2:MovieClip;
      
      public var slot3:MovieClip;
      
      public var slot4:MovieClip;
      
      public var slot5:MovieClip;
      
      public var slot6:MovieClip;
      
      public var slot:MovieClip;
      
      public var mode:String;
      
      public var pno:int;
      
      public function equipsetsmenusimplified_5212()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2);
      }
      
      public function init(param1:String, param2:int) : *
      {
         var _loc4_:Object = null;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:Array = null;
         var _loc8_:Equip = null;
         var _loc9_:int = 0;
         this.mode = param1;
         this.pno = param2;
         var _loc3_:int = 1;
         while(_loc3_ <= 6)
         {
            this.slot = this["slot" + _loc3_];
            this.slot.numt.text = "" + _loc3_;
            Global.translate(this.slot.modet,"sets4");
            _loc4_ = {};
            for each(_loc5_ in Stats.STATS)
            {
               _loc4_[_loc5_] = 0;
               _loc9_ = 0;
               while(_loc9_ < 6)
               {
                  _loc8_ = Equips.get(SaveData.equipSets[this.pno - 1][_loc3_ - 1][_loc9_]);
                  _loc4_[_loc5_] += _loc8_.getStat(_loc5_);
                  _loc9_++;
               }
               this.slot[_loc5_].text = _loc4_[_loc5_];
               this.slot[_loc5_ + "i"].visible = true;
               this.slot[_loc5_ + "i"].alpha = 1;
               if(_loc4_[_loc5_] == 0)
               {
                  this.slot[_loc5_].text = "";
                  this.slot[_loc5_ + "i"].alpha = 0.3;
               }
               if(_loc4_[_loc5_] <= 0)
               {
                  this.slot[_loc5_].textColor = 16711680;
               }
               if(Equips.get(SaveData.equipSets[this.pno - 1][_loc3_ - 1][0]) == Equips.empty)
               {
                  this.slot[_loc5_].text = "";
                  this.slot[_loc5_ + "i"].visible = false;
               }
            }
            _loc6_ = 0;
            if(_loc3_ < 3)
            {
               _loc6_ = 51;
            }
            _loc7_ = [];
            _loc7_.push(GUI.createIcon(this,Equips.get(SaveData.equipSets[this.pno - 1][_loc3_ - 1][0]),null,!Equips.get(SaveData.equipSets[this.pno - 1][_loc3_ - 1][0]).equipped(this.pno),Icon.EQUIP,0,0,0,-1,_loc6_));
            MapMenu.showPlayerIconOnEquip(_loc7_[_loc7_.length - 1],this.pno);
            _loc7_.push(GUI.createIcon(this,Equips.get(SaveData.equipSets[this.pno - 1][_loc3_ - 1][1]),null,!Equips.get(SaveData.equipSets[this.pno - 1][_loc3_ - 1][1]).equipped(this.pno),Icon.EQUIP,0,0,0,-1,_loc6_));
            MapMenu.showPlayerIconOnEquip(_loc7_[_loc7_.length - 1],this.pno);
            _loc7_.push(GUI.createIcon(this,Equips.get(SaveData.equipSets[this.pno - 1][_loc3_ - 1][2]),null,!Equips.get(SaveData.equipSets[this.pno - 1][_loc3_ - 1][2]).equipped(this.pno),Icon.EQUIP,0,0,0,-1,_loc6_));
            MapMenu.showPlayerIconOnEquip(_loc7_[_loc7_.length - 1],this.pno);
            _loc7_.push(GUI.createIcon(this,Equips.get(SaveData.equipSets[this.pno - 1][_loc3_ - 1][3]),null,!Equips.get(SaveData.equipSets[this.pno - 1][_loc3_ - 1][3]).equipped(this.pno),Icon.EQUIP,0,0,0,-1,_loc6_));
            MapMenu.showPlayerIconOnEquip(_loc7_[_loc7_.length - 1],this.pno);
            _loc7_.push(GUI.createIcon(this,Equips.get(SaveData.equipSets[this.pno - 1][_loc3_ - 1][4]),null,!Equips.get(SaveData.equipSets[this.pno - 1][_loc3_ - 1][4]).equipped(this.pno),Icon.EQUIP,0,0,0,-1,_loc6_));
            MapMenu.showPlayerIconOnEquip(_loc7_[_loc7_.length - 1],this.pno);
            _loc7_.push(GUI.createIcon(this,Equips.get(SaveData.equipSets[this.pno - 1][_loc3_ - 1][5]),null,!Equips.get(SaveData.equipSets[this.pno - 1][_loc3_ - 1][5]).equipped(this.pno),Icon.EQUIP,0,0,0,-1,_loc6_));
            MapMenu.showPlayerIconOnEquip(_loc7_[_loc7_.length - 1],this.pno);
            GUI.createIconMatrix(_loc7_,3,-65 + this.slot.x,-25 + this.slot.y,5);
            _loc3_++;
         }
      }
      
      public function clickSlot(param1:int) : *
      {
         if(!Equips.ALL_EQUIPS[SaveData.equipSets[this.pno - 1][param1 - 1][0]])
         {
            this.update();
            return;
         }
         if(!Equips.ALL_EQUIPS[SaveData.equipSets[this.pno - 1][param1 - 1][0]].equipped())
         {
            parent.newEquips[0] = Equips.ALL_EQUIPS[SaveData.equipSets[this.pno - 1][param1 - 1][0]];
         }
         if(!Equips.ALL_EQUIPS[SaveData.equipSets[this.pno - 1][param1 - 1][1]].equipped())
         {
            parent.newEquips[2] = Equips.ALL_EQUIPS[SaveData.equipSets[this.pno - 1][param1 - 1][1]];
         }
         if(!Equips.ALL_EQUIPS[SaveData.equipSets[this.pno - 1][param1 - 1][2]].equipped())
         {
            parent.newEquips[4] = Equips.ALL_EQUIPS[SaveData.equipSets[this.pno - 1][param1 - 1][2]];
         }
         Equips.emptyFlairs(this.pno);
         if(Boolean(Equips.ALL_EQUIPS[SaveData.equipSets[this.pno - 1][param1 - 1][3]]) && !Equips.ALL_EQUIPS[SaveData.equipSets[this.pno - 1][param1 - 1][3]].equipped(this.pno))
         {
            parent.newEquips[1] = Equips.ALL_EQUIPS[SaveData.equipSets[this.pno - 1][param1 - 1][3]];
         }
         if(Boolean(Equips.ALL_EQUIPS[SaveData.equipSets[this.pno - 1][param1 - 1][4]]) && !Equips.ALL_EQUIPS[SaveData.equipSets[this.pno - 1][param1 - 1][4]].equipped(this.pno))
         {
            parent.newEquips[3] = Equips.ALL_EQUIPS[SaveData.equipSets[this.pno - 1][param1 - 1][4]];
         }
         if(Boolean(Equips.ALL_EQUIPS[SaveData.equipSets[this.pno - 1][param1 - 1][5]]) && !Equips.ALL_EQUIPS[SaveData.equipSets[this.pno - 1][param1 - 1][5]].equipped(this.pno))
         {
            parent.newEquips[5] = Equips.ALL_EQUIPS[SaveData.equipSets[this.pno - 1][param1 - 1][5]];
         }
         Equips.removeDuplicateFlairs(this.pno);
         parent.equipFlag = true;
         this.update();
      }
      
      public function update() : *
      {
         this.visible = false;
         gotoAndStop(3);
         parent.currentMenu = "sets";
         parent.openEquipMenu();
      }
      
      internal function frame1() : *
      {
      }
      
      internal function frame2() : *
      {
         stop();
         this.b1.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            clickSlot(1);
         });
         this.b2.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            clickSlot(2);
         });
         this.b3.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            clickSlot(3);
         });
         this.b4.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            clickSlot(4);
         });
         this.b5.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            clickSlot(5);
         });
         this.b6.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            clickSlot(6);
         });
      }
   }
}


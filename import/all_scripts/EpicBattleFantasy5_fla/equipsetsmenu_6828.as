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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol4933")]
   public dynamic class equipsetsmenu_6828 extends MovieClip
   {
      public var b1:SimpleButton;
      
      public var b2:SimpleButton;
      
      public var b3:SimpleButton;
      
      public var b4:SimpleButton;
      
      public var b5:SimpleButton;
      
      public var b6:SimpleButton;
      
      public var backb:SimpleButton;
      
      public var backt:TextField;
      
      public var db1:SimpleButton;
      
      public var db2:SimpleButton;
      
      public var db3:SimpleButton;
      
      public var db4:SimpleButton;
      
      public var db5:SimpleButton;
      
      public var db6:SimpleButton;
      
      public var dt1:TextField;
      
      public var dt2:TextField;
      
      public var dt3:TextField;
      
      public var dt4:TextField;
      
      public var dt5:TextField;
      
      public var dt6:TextField;
      
      public var icon:MovieClip;
      
      public var slot1:MovieClip;
      
      public var slot2:MovieClip;
      
      public var slot3:MovieClip;
      
      public var slot4:MovieClip;
      
      public var slot5:MovieClip;
      
      public var slot6:MovieClip;
      
      public var txt1:TextField;
      
      public var slot:MovieClip;
      
      public var mode:String;
      
      public var pno:int;
      
      public function equipsetsmenu_6828()
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
         this.icon.gotoAndStop(this.pno + 1);
         MapMenu.tipCompleteFlag[8] = true;
         var _loc3_:int = 1;
         while(_loc3_ <= 6)
         {
            this.slot = this["slot" + _loc3_];
            this.slot.numt.text = "" + _loc3_;
            Global.translate(this["dt" + _loc3_],"save7",20);
            if(this.mode == "save")
            {
               Global.translate(this.slot.modet,"sets3",0,"",false,"",false,true);
            }
            else
            {
               Global.translate(this.slot.modet,"sets4",0,"",false,"",false,true);
            }
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
         parent.createPlayer(this,90);
         parent.graphic.x += 55;
         parent.graphic.y += -137;
      }
      
      public function clickBack() : *
      {
         parent.removePlayer();
         parent.clearMenus();
         parent.currentMenu = "equips";
         parent.selectPlayer();
         parent.playerSelect.visible = true;
      }
      
      public function clickDelete(param1:int) : *
      {
         SaveData.equipSets[this.pno - 1][param1 - 1] = [];
         this.update();
         parent.splash.x = -490 + 310 * ((param1 - 1) % 2);
         parent.splash.y = -353 + 130 * int((param1 - 1) / 2);
         parent.splash.gotoAndPlay("deleted");
         Maps.playSound("unequip");
      }
      
      public function clickSlot(param1:int) : *
      {
         if(this.mode == "save")
         {
            SaveData.equipSets[this.pno - 1][param1 - 1][0] = (Players.PLAYERS[this.pno - 1] as Player).weapon.ID;
            SaveData.equipSets[this.pno - 1][param1 - 1][1] = (Players.PLAYERS[this.pno - 1] as Player).hat.ID;
            SaveData.equipSets[this.pno - 1][param1 - 1][2] = (Players.PLAYERS[this.pno - 1] as Player).armor.ID;
            SaveData.equipSets[this.pno - 1][param1 - 1][3] = (Players.PLAYERS[this.pno - 1] as Player).flair1.ID;
            SaveData.equipSets[this.pno - 1][param1 - 1][4] = (Players.PLAYERS[this.pno - 1] as Player).flair2.ID;
            SaveData.equipSets[this.pno - 1][param1 - 1][5] = (Players.PLAYERS[this.pno - 1] as Player).flair3.ID;
            this.update();
            parent.splash.x = -490 + 310 * ((param1 - 1) % 2);
            parent.splash.y = -353 + 130 * int((param1 - 1) / 2);
            parent.splash.gotoAndPlay("saved");
         }
         if(this.mode == "load")
         {
            if(!Equips.ALL_EQUIPS[SaveData.equipSets[this.pno - 1][param1 - 1][0]])
            {
               Maps.playSound("equipfail");
               return;
            }
            if(!Equips.ALL_EQUIPS[SaveData.equipSets[this.pno - 1][param1 - 1][0]].equipped())
            {
               (Players.PLAYERS[this.pno - 1] as Player).weapon = Equips.ALL_EQUIPS[SaveData.equipSets[this.pno - 1][param1 - 1][0]];
            }
            if(!Equips.ALL_EQUIPS[SaveData.equipSets[this.pno - 1][param1 - 1][1]].equipped())
            {
               (Players.PLAYERS[this.pno - 1] as Player).hat = Equips.ALL_EQUIPS[SaveData.equipSets[this.pno - 1][param1 - 1][1]];
            }
            if(!Equips.ALL_EQUIPS[SaveData.equipSets[this.pno - 1][param1 - 1][2]].equipped())
            {
               (Players.PLAYERS[this.pno - 1] as Player).armor = Equips.ALL_EQUIPS[SaveData.equipSets[this.pno - 1][param1 - 1][2]];
            }
            Equips.emptyFlairs(this.pno);
            if(Boolean(Equips.ALL_EQUIPS[SaveData.equipSets[this.pno - 1][param1 - 1][3]]) && !Equips.ALL_EQUIPS[SaveData.equipSets[this.pno - 1][param1 - 1][3]].equipped(this.pno))
            {
               (Players.PLAYERS[this.pno - 1] as Player).flair1 = Equips.ALL_EQUIPS[SaveData.equipSets[this.pno - 1][param1 - 1][3]];
            }
            if(Boolean(Equips.ALL_EQUIPS[SaveData.equipSets[this.pno - 1][param1 - 1][4]]) && !Equips.ALL_EQUIPS[SaveData.equipSets[this.pno - 1][param1 - 1][4]].equipped(this.pno))
            {
               (Players.PLAYERS[this.pno - 1] as Player).flair2 = Equips.ALL_EQUIPS[SaveData.equipSets[this.pno - 1][param1 - 1][4]];
            }
            if(Boolean(Equips.ALL_EQUIPS[SaveData.equipSets[this.pno - 1][param1 - 1][5]]) && !Equips.ALL_EQUIPS[SaveData.equipSets[this.pno - 1][param1 - 1][5]].equipped(this.pno))
            {
               (Players.PLAYERS[this.pno - 1] as Player).flair3 = Equips.ALL_EQUIPS[SaveData.equipSets[this.pno - 1][param1 - 1][5]];
            }
            Equips.removeDuplicateFlairs(this.pno);
            Maps.playSound("equip");
            parent.prevPlayer.setEquipGraphics();
            parent.prevPlayer.capHPMP();
            Battle.calculateSP();
            parent.updatePlayerBars(true);
            parent.maps.player.skin();
            this.update();
         }
      }
      
      public function update() : *
      {
         parent.removePlayer();
         parent.clearMenus();
         parent.currentMenu = "equips";
         parent.openSetsMenu(this.mode,this.pno);
      }
      
      internal function frame1() : *
      {
      }
      
      internal function frame2() : *
      {
         stop();
         if(this.mode == "save")
         {
            Global.translate(this.txt1,"sets1",10);
         }
         if(this.mode == "load")
         {
            Global.translate(this.txt1,"sets2",10);
         }
         Global.translate(this.backt,"back",25);
         this.backb.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            clickBack();
         });
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
         this.db1.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            clickDelete(1);
         });
         this.db2.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            clickDelete(2);
         });
         this.db3.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            clickDelete(3);
         });
         this.db4.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            clickDelete(4);
         });
         this.db5.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            clickDelete(5);
         });
         this.db6.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            clickDelete(6);
         });
      }
   }
}


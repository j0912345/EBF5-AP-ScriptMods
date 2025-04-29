package
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
   import text.*;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol4637")]
   public dynamic class summonsMenu extends MovieClip
   {
      public var blocker:SimpleButton;
      
      public var box1:MovieClip;
      
      public var box10:MovieClip;
      
      public var box2:MovieClip;
      
      public var box3:MovieClip;
      
      public var box4:MovieClip;
      
      public var box5:MovieClip;
      
      public var box6:MovieClip;
      
      public var box7:MovieClip;
      
      public var box8:MovieClip;
      
      public var box9:MovieClip;
      
      public var num1:TextField;
      
      public var num2:TextField;
      
      public var num3:TextField;
      
      public var num4:TextField;
      
      public var page1:SimpleButton;
      
      public var page2:SimpleButton;
      
      public var page3:SimpleButton;
      
      public var page4:SimpleButton;
      
      public var remove:SimpleButton;
      
      public var renameMenu:MovieClip;
      
      public var renameb:SimpleButton;
      
      public var renamew:MovieClip;
      
      public var show1:SimpleButton;
      
      public var show2:SimpleButton;
      
      public var show3:SimpleButton;
      
      public var show4:SimpleButton;
      
      public var show5:SimpleButton;
      
      public var show6:SimpleButton;
      
      public var show7:SimpleButton;
      
      public var sort1:SimpleButton;
      
      public var sort2:SimpleButton;
      
      public var sort3:SimpleButton;
      
      public var tip1:MovieClip;
      
      public var tip10:MovieClip;
      
      public var tip2:MovieClip;
      
      public var tip3:MovieClip;
      
      public var tip4:MovieClip;
      
      public var tip5:MovieClip;
      
      public var tip6:MovieClip;
      
      public var tip7:MovieClip;
      
      public var tip8:MovieClip;
      
      public var tip9:MovieClip;
      
      public var txt11:TextField;
      
      public var txt12:TextField;
      
      public var txt13:TextField;
      
      public var txt14:TextField;
      
      public var txt15:TextField;
      
      public var txt16:TextField;
      
      public var txt17:TextField;
      
      public var txt18:TextField;
      
      public var txt19:TextField;
      
      public var txt20:TextField;
      
      public var txt21:TextField;
      
      public var txt22:TextField;
      
      public var txt23:TextField;
      
      public var txt24:TextField;
      
      public var txt25:TextField;
      
      public var txt26:TextField;
      
      public var typeToShow:String;
      
      public var page:int;
      
      public var selectedSummon:Object;
      
      public var moveMode:Boolean;
      
      public var i:int;
      
      public function summonsMenu()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      public function update() : *
      {
         GUI.removeIcons();
         var _loc1_:int = 1;
         while(_loc1_ <= 10)
         {
            this["box" + _loc1_].box.gotoAndStop(2);
            _loc1_++;
         }
         MapMenu.showBooleanOption(this.typeToShow == "show all",this.box1);
         MapMenu.showBooleanOption(this.typeToShow == "hit one",this.box2);
         MapMenu.showBooleanOption(this.typeToShow == "hit all",this.box3);
         MapMenu.showBooleanOption(this.typeToShow == "buffs",this.box4);
         MapMenu.showBooleanOption(this.typeToShow == "debuffs",this.box5);
         MapMenu.showBooleanOption(this.typeToShow == "misc",this.box6);
         MapMenu.showBooleanOption(this.typeToShow == "recent",this.box7);
         MapMenu.showBooleanOption(Summons.sortMethod == Summons.SORT_BY_SP,this.box8);
         MapMenu.showBooleanOption(Summons.sortMethod == Summons.SORT_BY_NAME,this.box9);
         MapMenu.showBooleanOption(Summons.sortMethod == Summons.SORT_BY_BESTIARY,this.box10);
         this.displayEquippedSummons();
         this.displayAvailableSummons();
         setChildIndex(this.remove,numChildren - 1);
      }
      
      public function displayEquippedSummons() : *
      {
         var _loc1_:Array = [];
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         a = 0;
         while(a < Summons.PARTY_SUMMONS.length)
         {
            if(Boolean(Summons.PARTY_SUMMONS[a].premium) && !Main.hasPremium)
            {
               Summons.PARTY_SUMMONS[a].equipped = false;
               Summons.PARTY_SUMMONS[a] = Equips.empty;
            }
            if(Summons.PARTY_SUMMONS[a] == Equips.empty)
            {
               _loc1_.push(GUI.createIcon(this,Summons.PARTY_SUMMONS[a],this.dragIcon,true,Icon.EQUIP,0,0,0,-1,3,false,_loc2_));
            }
            else
            {
               _loc1_.push(GUI.createIcon(this,Summons.PARTY_SUMMONS[a],this.dragIcon,true,Icon.SUMMON,0,0,0,-1,48,false,_loc2_));
               _loc3_++;
            }
            _loc2_++;
            ++a;
         }
         if(_loc3_ >= 7)
         {
            Medals.unlock(Medals.notPokemon);
         }
         GUI.createIconMatrix(_loc1_,3,223,-122,4,3);
      }
      
      public function displayAvailableSummons() : *
      {
         var _loc1_:Array = null;
         var _loc8_:int = 0;
         var _loc2_:int = (this.page - 1) * 50;
         var _loc3_:int = _loc2_ + 50;
         if(this.typeToShow == "show all")
         {
            _loc1_ = Summons.OWNED_SUMMONS;
         }
         if(this.typeToShow == "hit one")
         {
            _loc1_ = Summons.ATTACK_SINGLE;
         }
         if(this.typeToShow == "hit all")
         {
            _loc1_ = Summons.ATTACK_ALL;
         }
         if(this.typeToShow == "buffs")
         {
            _loc1_ = Summons.BUFF;
         }
         if(this.typeToShow == "debuffs")
         {
            _loc1_ = Summons.DEBUFF;
         }
         if(this.typeToShow == "misc")
         {
            _loc1_ = Summons.MISC;
         }
         if(this.typeToShow == "recent")
         {
            _loc1_ = Summons.RECENT;
         }
         var _loc4_:Array = [];
         var _loc5_:int = 0;
         var _loc6_:Array = [];
         var _loc7_:int = 0;
         while(_loc7_ < _loc1_.length)
         {
            if(this.typeToShow == "show all" || Summons.OWNED_SUMMONS.indexOf(_loc1_[_loc7_]) != -1)
            {
               if(!(!Main.hasPremium && _loc1_[_loc7_].premium))
               {
                  _loc6_.push(_loc1_[_loc7_]);
               }
            }
            _loc7_++;
         }
         _loc7_ = 0;
         while(_loc7_ < _loc6_.length)
         {
            if(_loc5_ >= _loc2_ && _loc5_ < _loc3_ && Boolean(_loc6_[_loc7_]))
            {
               if(_loc5_ % 10 < 8)
               {
                  _loc8_ = 47;
               }
               else
               {
                  _loc8_ = 48;
               }
               _loc4_.push(GUI.createIcon(this,_loc6_[_loc7_],this.dragIcon,!_loc6_[_loc7_].equipped,Icon.SUMMON,0,0,0,-1,_loc8_));
            }
            _loc5_++;
            _loc7_++;
         }
         var _loc9_:int = Math.ceil(_loc6_.length / 50);
         var _loc10_:int = 1;
         while(_loc10_ <= 4)
         {
            if(_loc10_ <= _loc9_ && _loc9_ != 1)
            {
               this["num" + _loc10_].text = "" + _loc10_;
               this["page" + _loc10_].visible = true;
            }
            else
            {
               this["num" + _loc10_].text = "";
               this["page" + _loc10_].visible = false;
            }
            if(_loc9_ <= 1)
            {
               this.txt13.text = "";
            }
            else
            {
               Global.translate(this["txt" + 13],"summons13",0);
            }
            _loc10_++;
         }
         GUI.createIconMatrix(_loc4_,10,-378,-118,5,4);
      }
      
      public function clickRename() : *
      {
         this.renameMenu.init(this.selectedSummon.fname,this.selectedSummon.foeClassName);
         setChildIndex(this.blocker,numChildren - 1);
         setChildIndex(this.renameMenu,numChildren - 1);
         this.clearSelection();
      }
      
      public function dragIcon(param1:Object) : *
      {
         if(param1 != Equips.empty && !this.selectedSummon)
         {
            this.moveMode = param1.equipped;
         }
         if(param1 == Equips.empty && !this.selectedSummon)
         {
            return;
         }
         if(param1 == this.selectedSummon)
         {
            this.clearSelection();
            return;
         }
         if(this.moveMode && param1 == Equips.empty && Boolean(this.selectedSummon))
         {
            Maps.playSound("equip");
            Summons.PARTY_SUMMONS.splice(param1.temp,1,this.selectedSummon);
            Summons.PARTY_SUMMONS.splice(this.selectedSummon.temp,1,Equips.empty);
            this.clearSelection();
            this.update();
         }
         else if(!this.moveMode && param1 == Equips.empty && Boolean(this.selectedSummon))
         {
            Maps.playSound("equip");
            Summons.PARTY_SUMMONS.splice(param1.temp,1,this.selectedSummon);
            this.clearSelection();
            Summons.checkWhichSummonsAreEquipped();
            this.update();
         }
         else if(this.moveMode && param1 != Equips.empty && Boolean(this.selectedSummon))
         {
            Maps.playSound("equip");
            Summons.PARTY_SUMMONS.splice(param1.temp,1,this.selectedSummon);
            Summons.PARTY_SUMMONS.splice(this.selectedSummon.temp,1,param1);
            this.clearSelection();
            Summons.checkWhichSummonsAreEquipped();
            this.update();
         }
         else if(!this.moveMode && param1 != Equips.empty && Boolean(this.selectedSummon))
         {
            Maps.playSound("equip");
            Summons.PARTY_SUMMONS.splice(param1.temp,1,this.selectedSummon);
            this.clearSelection();
            Summons.checkWhichSummonsAreEquipped();
            this.update();
         }
         else
         {
            this.remove.visible = true;
            if(Options.language == Options.ENGLISH)
            {
               this.renameb.visible = true;
            }
            this.selectedSummon = param1;
            GUI.setDragIcon(param1.icon);
         }
      }
      
      public function removeSelection() : *
      {
         if(this.selectedSummon.equipped)
         {
            Maps.playSound("unequip");
            Summons.PARTY_SUMMONS.splice(this.selectedSummon.temp,1,Equips.empty);
            Summons.checkWhichSummonsAreEquipped();
            this.update();
         }
         this.clearSelection();
      }
      
      public function clearSelection() : *
      {
         this.renameb.visible = false;
         this.selectedSummon = null;
         GUI.clearDragIcon();
         this.remove.visible = false;
      }
      
      internal function frame1() : *
      {
         stop();
         this.typeToShow = "show all";
         this.page = 1;
         this.remove.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            removeSelection();
         });
         this.show1.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            typeToShow = "show all";
            page = 1;
            update();
         });
         this.show2.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            typeToShow = "hit one";
            page = 1;
            update();
         });
         this.show3.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            typeToShow = "hit all";
            page = 1;
            update();
         });
         this.show4.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            typeToShow = "buffs";
            page = 1;
            update();
         });
         this.show5.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            typeToShow = "debuffs";
            page = 1;
            update();
         });
         this.show6.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            typeToShow = "misc";
            page = 1;
            update();
         });
         this.show7.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            typeToShow = "recent";
            page = 1;
            update();
         });
         this.sort1.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            Summons.sortAllSummons(Summons.SORT_BY_SP);
            update();
         });
         this.sort2.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            Summons.sortAllSummons(Summons.SORT_BY_NAME);
            update();
         });
         this.sort3.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            Summons.sortAllSummons(Summons.SORT_BY_BESTIARY);
            update();
         });
         this.page1.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            page = 1;
            update();
         });
         this.page2.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            page = 2;
            update();
         });
         this.page3.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            page = 3;
            update();
         });
         this.page4.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            page = 4;
            update();
         });
         this.renameb.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            clickRename();
         });
         this.moveMode = false;
         this.i = 1;
         while(this.i <= 10)
         {
            this["tip" + this.i].tip = {"text":SetStrings.getString("menus","summons" + this.i)};
            this["tip" + this.i].flip = true;
            ++this.i;
         }
         this.i = 11;
         while(this.i <= 25)
         {
            Global.translate(this["txt" + this.i],"summons" + this.i,35);
            ++this.i;
         }
         Global.translate(this["txt" + 26],"summons" + 26,15);
         GUI.setTextColor(this.txt11);
         GUI.setTextColor(this.txt12);
         GUI.setTextColor(this.txt14);
         GUI.setTextColor(this.txt15);
         if(Options.language != Options.ENGLISH)
         {
            this.renamew.visible = false;
            this.renameb.visible = false;
         }
         else
         {
            this.renamew.visible = true;
            this.renameb.visible = true;
         }
      }
   }
}


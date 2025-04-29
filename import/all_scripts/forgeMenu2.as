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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol4722")]
   public dynamic class forgeMenu2 extends MovieClip
   {
      public var acc:TextField;
      
      public var acc2:TextField;
      
      public var acc3:TextField;
      
      public var acci:MovieClip;
      
      public var acci2:MovieClip;
      
      public var atk:TextField;
      
      public var atk2:TextField;
      
      public var atk3:TextField;
      
      public var atki:MovieClip;
      
      public var atki2:MovieClip;
      
      public var bchance:TextField;
      
      public var bdegree:TextField;
      
      public var buff:MovieClip;
      
      public var def:TextField;
      
      public var def2:TextField;
      
      public var def3:TextField;
      
      public var defi:MovieClip;
      
      public var defi2:MovieClip;
      
      public var degree:TextField;
      
      public var effects1:TextField;
      
      public var effects2:TextField;
      
      public var element:MovieClip;
      
      public var eva:TextField;
      
      public var eva2:TextField;
      
      public var eva3:TextField;
      
      public var evai:MovieClip;
      
      public var evai2:MovieClip;
      
      public var hp:TextField;
      
      public var hp2:TextField;
      
      public var hp3:TextField;
      
      public var hpi:MovieClip;
      
      public var hpi2:MovieClip;
      
      public var matk:TextField;
      
      public var matk2:TextField;
      
      public var matk3:TextField;
      
      public var matki:MovieClip;
      
      public var matki2:MovieClip;
      
      public var mdef:TextField;
      
      public var mdef2:TextField;
      
      public var mdef3:TextField;
      
      public var mdefi:MovieClip;
      
      public var mdefi2:MovieClip;
      
      public var p0:SimpleButton;
      
      public var res1:MovieClip;
      
      public var res2:MovieClip;
      
      public var res3:MovieClip;
      
      public var resistance1:TextField;
      
      public var resistance12:TextField;
      
      public var resistance2:TextField;
      
      public var resistance22:TextField;
      
      public var resistance3:TextField;
      
      public var resistance32:TextField;
      
      public var schance:TextField;
      
      public var sdegree:TextField;
      
      public var status:MovieClip;
      
      public var t13:TextField;
      
      public var t14:TextField;
      
      public var t15:TextField;
      
      public var t16:TextField;
      
      public var t17:TextField;
      
      public var t18:TextField;
      
      public var t19:TextField;
      
      public var t20:TextField;
      
      public var t22:TextField;
      
      public var title:TextField;
      
      public var data:Object;
      
      public var upgradable:Boolean;
      
      public var enoughItems:Boolean;
      
      public var icons:Array;
      
      public function forgeMenu2()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      public function showItems() : *
      {
         var _loc1_:Icon = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:Boolean = false;
         this.enoughItems = true;
         for each(_loc1_ in this.icons)
         {
            if(Boolean(_loc1_) && Boolean(_loc1_.parent))
            {
               removeChild(_loc1_);
            }
            _loc1_ = null;
         }
         if(!this.data.upgradable())
         {
            return;
         }
         this.icons[0] = GUI.createIcon(this,this.data,null,true,Icon.EQUIP);
         addChild(this.icons[0]);
         this.icons[0].x = 92;
         this.icons[0].y = 225;
         var _loc2_:int = this.data.level - 1;
         var _loc3_:int = 0;
         while(_loc3_ < this.data.materials[_loc2_].length)
         {
            _loc5_ = Icon.ITEM;
            if(this.data.materials[_loc2_][_loc3_] is Summon)
            {
               _loc5_ = Icon.SUMMON;
               if(Summons.OWNED_SUMMONS.indexOf(this.data.materials[_loc2_][_loc3_]) != -1)
               {
                  _loc4_ = 1;
               }
               else
               {
                  _loc4_ = 0;
               }
            }
            else
            {
               _loc4_ = int(this.data.materials[_loc2_][_loc3_].quantity);
            }
            _loc6_ = false;
            if(this.data.materials[_loc2_][_loc3_] is Item)
            {
               this.data.materials[_loc2_][_loc3_].quantity = this.data.materials[_loc2_][_loc3_ + 1];
            }
            Icon.text = "" + _loc4_ + "/" + this.data.materials[_loc2_][_loc3_ + 1];
            if(_loc4_ >= this.data.materials[_loc2_][_loc3_ + 1])
            {
               _loc6_ = true;
            }
            else
            {
               this.enoughItems = false;
            }
            this.icons[_loc3_ + 1] = GUI.createIcon(this,this.data.materials[_loc2_][_loc3_],null,_loc6_,_loc5_);
            this.icons[_loc3_ + 1].x = 208 + _loc3_ * 30;
            this.icons[_loc3_ + 1].y = 225;
            if(this.data.materials[_loc2_][_loc3_] is Item)
            {
               this.data.materials[_loc2_][_loc3_].quantity = _loc4_;
            }
            Icon.text = "";
            _loc3_ += 2;
         }
      }
      
      public function showData(param1:Object) : *
      {
         var _loc4_:MovieClip = null;
         var _loc6_:DisplayObject = null;
         var _loc7_:Array = null;
         stop();
         this.data = param1;
         var _loc2_:* = 0;
         while(_loc2_ < numChildren - 1)
         {
            _loc6_ = getChildAt(_loc2_);
            _loc6_.visible = true;
            try
            {
               _loc6_.text = "";
               if(_loc6_.textColor == 16711681)
               {
                  _loc6_.textColor = 16777215;
               }
            }
            catch(errObject:Error)
            {
            }
            _loc2_++;
         }
         Global.translate(this.title,"",20,this.data.name);
         Global.translate(this.effects1,"",20,this.data.description);
         Global.translate(this.effects2,"",20,SetStrings.getSpecialDesc(this.data,this.data.level));
         this.title.setTextFormat(GUI.boldText);
         var _loc3_:int = 15;
         while(_loc3_ <= 20)
         {
            Global.translate(this["t" + _loc3_],"forge" + _loc3_,25);
            _loc3_++;
         }
         Global.translate(this.t13,"forge13",45);
         Global.translate(this.t14,"forge14",45);
         this.upgradable = true;
         if(!this.data.upgradable())
         {
            this.upgradable = false;
            this.t17.text = "";
            this.t16.text = "";
            this.t14.text = "";
            this.t18.text = "";
            this.t22.text = "";
            this.p0.visible = false;
            Global.translate(this.t17,"forge21",15);
            this.t17.y = 230;
         }
         else
         {
            this.t22.text = "+";
            this.p0.visible = true;
         }
         this.showItems();
         GUI.setTextColor(this.t13);
         GUI.setTextColor(this.t15);
         GUI.setTextColor(this.t16);
         GUI.setTextColor(this.t19);
         GUI.setTextColor(this.t20);
         for each(_loc4_ in [this.hpi,this.atki,this.matki,this.defi,this.mdefi,this.acci,this.evai])
         {
            _loc4_.alpha = 0.3;
         }
         if(this.data.getHP() > 0)
         {
            this.hp.text = "+" + this.data.getHP();
            this.hpi.alpha = 1;
            this.hp.setTextFormat(GUI.boldText);
            GUI.setTextColor(this.hp);
         }
         GUI.redTint(this.hpi,true);
         if(this.data.getAttack() > 0)
         {
            this.atk.text = "+" + this.data.getAttack();
            this.atki.alpha = 1;
            this.atk.setTextFormat(GUI.boldText);
            GUI.setTextColor(this.atk);
         }
         GUI.redTint(this.atki,true);
         if(this.data.getMagicAttack() > 0)
         {
            this.matk.text = "+" + this.data.getMagicAttack();
            this.matki.alpha = 1;
            this.matk.setTextFormat(GUI.boldText);
            GUI.setTextColor(this.matk);
         }
         GUI.redTint(this.matki,true);
         if(this.data.getDefence() > 0)
         {
            this.def.text = "+" + this.data.getDefence();
            this.defi.alpha = 1;
            this.def.setTextFormat(GUI.boldText);
            GUI.setTextColor(this.def);
         }
         GUI.redTint(this.defi,true);
         if(this.data.getMagicDefence() > 0)
         {
            this.mdef.text = "+" + this.data.getMagicDefence();
            this.mdefi.alpha = 1;
            this.mdef.setTextFormat(GUI.boldText);
            GUI.setTextColor(this.mdef);
         }
         GUI.redTint(this.mdefi,true);
         if(this.data.getAccuracy() > 0)
         {
            this.acc.text = "+" + this.data.getAccuracy();
            this.acci.alpha = 1;
            this.acc.setTextFormat(GUI.boldText);
            GUI.setTextColor(this.acc);
         }
         GUI.redTint(this.acci,true);
         if(this.data.getEvade() > 0)
         {
            this.eva.text = "+" + this.data.getEvade();
            this.evai.alpha = 1;
            this.eva.setTextFormat(GUI.boldText);
            GUI.setTextColor(this.eva);
         }
         GUI.redTint(this.evai,true);
         if(this.data.getHP() < 0)
         {
            this.hp2.text = "" + this.data.getHP();
            this.hp2.setTextFormat(GUI.boldText);
            this.hpi.visible = false;
            GUI.redTint(this.hpi);
         }
         else
         {
            this.hpi2.visible = false;
         }
         if(this.data.getAttack() < 0)
         {
            this.atk2.text = "" + this.data.getAttack();
            this.atk2.setTextFormat(GUI.boldText);
            this.atki.visible = false;
            GUI.redTint(this.atki);
         }
         else
         {
            this.atki2.visible = false;
         }
         if(this.data.getMagicAttack() < 0)
         {
            this.matk2.text = "" + this.data.getMagicAttack();
            this.matk2.setTextFormat(GUI.boldText);
            this.matki.visible = false;
            GUI.redTint(this.matki);
         }
         else
         {
            this.matki2.visible = false;
         }
         if(this.data.getDefence() < 0)
         {
            this.def2.text = "" + this.data.getDefence();
            this.def2.setTextFormat(GUI.boldText);
            this.defi.visible = false;
            GUI.redTint(this.defi);
         }
         else
         {
            this.defi2.visible = false;
         }
         if(this.data.getMagicDefence() < 0)
         {
            this.mdef2.text = "" + this.data.getMagicDefence();
            this.mdef2.setTextFormat(GUI.boldText);
            this.mdefi.visible = false;
            GUI.redTint(this.mdefi);
         }
         else
         {
            this.mdefi2.visible = false;
         }
         if(this.data.getAccuracy() < 0)
         {
            this.acc2.text = "" + this.data.getAccuracy();
            this.acc2.setTextFormat(GUI.boldText);
            this.acci.visible = false;
            GUI.redTint(this.acci);
         }
         else
         {
            this.acci2.visible = false;
         }
         if(this.data.getEvade() < 0)
         {
            this.eva2.text = "" + this.data.getEvade();
            this.eva2.setTextFormat(GUI.boldText);
            this.evai.visible = false;
            GUI.redTint(this.evai);
         }
         else
         {
            this.evai2.visible = false;
         }
         if(this.upgradable)
         {
            if(this.data.getHP(true) > this.data.getHP())
            {
               this.hp3.text = "+" + (this.data.getHP(true) - this.data.getHP());
               this.hp3.setTextFormat(GUI.boldText);
            }
            if(this.data.getAttack(true) > this.data.getAttack())
            {
               this.atk3.text = "+" + (this.data.getAttack(true) - this.data.getAttack());
               this.atk3.setTextFormat(GUI.boldText);
            }
            if(this.data.getMagicAttack(true) > this.data.getMagicAttack())
            {
               this.matk3.text = "+" + (this.data.getMagicAttack(true) - this.data.getMagicAttack());
               this.matk3.setTextFormat(GUI.boldText);
            }
            if(this.data.getDefence(true) > this.data.getDefence())
            {
               this.def3.text = "+" + (this.data.getDefence(true) - this.data.getDefence());
               this.def3.setTextFormat(GUI.boldText);
            }
            if(this.data.getMagicDefence(true) > this.data.getMagicDefence())
            {
               this.mdef3.text = "+" + (this.data.getMagicDefence(true) - this.data.getMagicDefence());
               this.mdef3.setTextFormat(GUI.boldText);
            }
            if(this.data.getAccuracy(true) > this.data.getAccuracy())
            {
               this.acc3.text = "+" + (this.data.getAccuracy(true) - this.data.getAccuracy());
               this.acc3.setTextFormat(GUI.boldText);
            }
            if(this.data.getEvade(true) > this.data.getEvade())
            {
               this.eva3.text = "+" + (this.data.getEvade(true) - this.data.getEvade());
               this.eva3.setTextFormat(GUI.boldText);
            }
         }
         var _loc5_:Array = this.data.getResistance();
         if(this.upgradable)
         {
            _loc7_ = this.data.getResistance(1);
         }
         _loc2_ = 1;
         while(_loc2_ < 4)
         {
            if(_loc5_.length > [_loc2_ - 1])
            {
               this["res" + _loc2_].gotoAndStop(_loc5_[_loc2_ - 1][0]);
               this["resistance" + _loc2_].text = "" + _loc5_[_loc2_ - 1][1] + "%";
               if(this.upgradable)
               {
                  if(_loc7_[_loc2_ - 1][1] > _loc5_[_loc2_ - 1][1])
                  {
                     this["resistance" + _loc2_ + "2"].text = "+" + (_loc7_[_loc2_ - 1][1] - _loc5_[_loc2_ - 1][1]) + "%";
                  }
               }
               this["resistance" + _loc2_].setTextFormat(GUI.boldText);
               if(this.upgradable)
               {
                  this["resistance" + _loc2_ + "2"].setTextFormat(GUI.boldText);
               }
               if(_loc5_[_loc2_ - 1][1] < 0)
               {
                  this["resistance" + _loc2_].textColor = 16711681;
               }
            }
            else
            {
               this["res" + _loc2_].gotoAndStop("none2");
               this["resistance" + _loc2_].text = "";
            }
            _loc2_++;
         }
         this.element.gotoAndStop(this.data.element);
         if(Boolean(this.data.elementDegree) && this.data.element != "none")
         {
            this.degree.text = "" + this.data.elementDegree + "%";
         }
         this.status.gotoAndStop(this.data.statusEffect);
         this.buff.gotoAndStop(this.data.buffEffect);
         if(Boolean(this.data.statusDegree) && this.data.statusEffect != "none")
         {
            this.sdegree.text = "+" + this.data.getStat("statusDegree");
            this.schance.text = "" + this.data.getStat("statusChance") + "%";
         }
         if(Boolean(this.data.buffDegree) && this.data.buffEffect != "none")
         {
            this.bdegree.text = "" + this.data.getStat("buffDegree");
            this.bchance.text = "" + this.data.getStat("buffChance") + "%";
         }
         this.degree.setTextFormat(GUI.boldText);
      }
      
      internal function frame1() : *
      {
         stop();
         this.upgradable = true;
         this.enoughItems = true;
         this.icons = [];
         this.p0.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            var _loc2_:int = 0;
            var _loc3_:int = 0;
            if(enoughItems)
            {
               gotoAndStop(2);
               gotoAndStop(1);
               _loc2_ = data.level - 1;
               _loc3_ = 0;
               while(_loc3_ < data.materials[_loc2_].length)
               {
                  if(data.materials[_loc2_][_loc3_] is Summon)
                  {
                     Summons.loseSummon(data.materials[_loc2_][_loc3_]);
                     Medals.unlock(Medals.unusualTorture);
                  }
                  else
                  {
                     data.materials[_loc2_][_loc3_].quantity -= data.materials[_loc2_][_loc3_ + 1];
                  }
                  _loc3_ += 2;
               }
               ++data.level;
               SetStrings.setEquipStrings(data,data.level);
               if(data.level == 5)
               {
                  Medals.unlock(Medals.upgradeComplete);
               }
               if(data.upgradable())
               {
                  Maps.playSound("upgrade1");
               }
               else
               {
                  Maps.playSound("upgrade2");
               }
               parent.splash.gotoAndPlay("equipup");
               MapMenu.tipCompleteFlag[1] = true;
               showData(data);
               parent.selectForge(0,true);
               Battle.calculateSP();
               parent.updatePlayerBars(true);
            }
            else
            {
               parent.splash.gotoAndPlay("noitems");
            }
         });
      }
   }
}


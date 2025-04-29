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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol18034")]
   public dynamic class Tooltip extends MovieClip
   {
      public var APcost:MovieClip;
      
      public var acc:TextField;
      
      public var acc2:TextField;
      
      public var acci:MovieClip;
      
      public var atk:TextField;
      
      public var atk2:TextField;
      
      public var atki:MovieClip;
      
      public var bchance:TextField;
      
      public var bchance2:TextField;
      
      public var bdegree:TextField;
      
      public var bdegree2:TextField;
      
      public var body:TextField;
      
      public var buff:MovieClip;
      
      public var buff2:MovieClip;
      
      public var canUse:MovieClip;
      
      public var def:TextField;
      
      public var def2:TextField;
      
      public var defi:MovieClip;
      
      public var degree:TextField;
      
      public var element:MovieClip;
      
      public var eva:TextField;
      
      public var eva2:TextField;
      
      public var evai:MovieClip;
      
      public var fader:MovieClip;
      
      public var hp:TextField;
      
      public var hp2:TextField;
      
      public var hpi:MovieClip;
      
      public var location:TextField;
      
      public var matk:TextField;
      
      public var matk2:TextField;
      
      public var matki:MovieClip;
      
      public var mdef:TextField;
      
      public var mdef2:TextField;
      
      public var mdefi:MovieClip;
      
      public var mp:TextField;
      
      public var mp2:TextField;
      
      public var power:TextField;
      
      public var power2:TextField;
      
      public var res1:MovieClip;
      
      public var res2:MovieClip;
      
      public var res3:MovieClip;
      
      public var resistance1:TextField;
      
      public var resistance2:TextField;
      
      public var resistance3:TextField;
      
      public var schance:TextField;
      
      public var schance2:TextField;
      
      public var sdegree:TextField;
      
      public var sdegree2:TextField;
      
      public var status:MovieClip;
      
      public var status2:MovieClip;
      
      public var target:MovieClip;
      
      public var target2:MovieClip;
      
      public var tf1:TextField;
      
      public var tf2:TextField;
      
      public var tf3:TextField;
      
      public var tf4:TextField;
      
      public var tf5:TextField;
      
      public var tf6:TextField;
      
      public var title:TextField;
      
      public var type:MovieClip;
      
      public var data:Object;
      
      public var goFrame:int;
      
      public var items:Array;
      
      public var icons:Array;
      
      public var b:Boolean;
      
      public var a:int;
      
      public var it:Object;
      
      public var amp:int;
      
      public var ampT:int;
      
      public var ampB:int;
      
      public var mc:MovieClip;
      
      public var res:Array;
      
      public var i:int;
      
      public var qu:int;
      
      public var typ:String;
      
      public var plus:String;
      
      public var weapon:Equip;
      
      public function Tooltip()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,3,this.frame4,4,this.frame5,5,this.frame6,6,this.frame7,7,this.frame8,8,this.frame9,9,this.frame10,10,this.frame11,11,this.frame12,12,this.frame13,13,this.frame14,14,this.frame15,15,this.frame16,16,this.frame17,17,this.frame18,18,this.frame19,19,this.frame20,20,this.frame21,21,this.frame22,22,this.frame23,24,this.frame25,25,this.frame26,30,this.frame31,31,this.frame32,35,this.frame36,44,this.frame45,45,this.frame46,46,this.frame47,47,this.frame48,50,this.frame51);
      }
      
      internal function frame1() : *
      {
         this.icons = [];
         if(this.goFrame == 1)
         {
            gotoAndStop(21);
         }
         else
         {
            gotoAndStop(this.goFrame);
         }
         this.amp = 20;
         this.ampT = 28;
         this.ampB = 23;
      }
      
      internal function frame3() : *
      {
         try
         {
            if(this.data == Equips.empty || !(this.data is Player) && !(this.data is Foe))
            {
               Global.translate(this.title,"",this.ampT,this.data.name);
            }
            else
            {
               Global.translate(this.title,"lvl",this.ampT," " + this.data.level,false,this.data.name + " ");
            }
            if(this.data.name == null)
            {
               if(!Foes.isScanned(this.data) && !Debug.bestiary && !Options.autoScan)
               {
                  Global.translate(this.title,"",0,"" + SetStrings.getString("menus","unknown") + " " + SetStrings.getString("menus","lvl") + " " + this.data.level);
               }
               else
               {
                  Global.translate(this.title,"lvl",0," " + this.data.level,false,this.data.fname + " ");
               }
            }
         }
         catch(e:Error)
         {
         }
         this.title.setTextFormat(GUI.boldText);
      }
      
      internal function frame4() : *
      {
         Global.translate(this.title,"",this.ampT,this.data[0]);
         Global.translate(this.body,"",this.ampB,this.data[1]);
         this.title.setTextFormat(GUI.boldText);
      }
      
      internal function frame5() : *
      {
         Global.translate(this.title,"",this.ampT,this.data[0]);
         Global.translate(this.body,"",this.ampB,this.data[1]);
         this.title.setTextFormat(GUI.boldText);
      }
      
      internal function frame6() : *
      {
         try
         {
            if(this.data == Equips.empty || !this.data.playerNo && !this.data.description)
            {
               Global.translate(this.title,"",this.ampT,this.data.name);
            }
            else
            {
               Global.translate(this.title,"lvl",this.ampT," " + this.data.level,false,SetStrings.getPlayerName(this.data.playerNo - 1) + " ");
            }
         }
         catch(e:Error)
         {
            if(data == Equips.empty || !data.playerNo && !data.description)
            {
               Global.translate(title,"",ampT,data.name);
            }
            else
            {
               Global.translate(title,"lvl",ampT," " + data.level,false,SetStrings.getPlayerName(data.playerNo - 1) + " ");
            }
         }
         if(Global.textLength < 3)
         {
            gotoAndStop(46);
         }
         else if(Global.textLength < 10)
         {
            gotoAndStop(45);
         }
         this.title.setTextFormat(GUI.boldText);
      }
      
      internal function frame7() : *
      {
         Global.translate(this.title,"",this.ampT,this.data.name,false,"",false,true);
         Global.translate(this.body,"",this.ampB,this.data is Card ? SetStrings.getString("cards","" + this.data.effect + this.data.power) : this.data.description);
         this.title.setTextFormat(GUI.boldText);
      }
      
      internal function frame8() : *
      {
         Global.translate(this.title,"",this.ampT,this.data.name,false,"",false,true);
         Global.translate(this.body,"",this.ampB,this.data.description);
         this.title.setTextFormat(GUI.boldText);
      }
      
      internal function frame9() : *
      {
         stop();
         this.title.text = this.data.name[Options.language];
         this.body.text = this.data.description[Options.language];
         this.degree.text = "" + this.data.getStats().elementDegree + "%";
         if(this.data.element == "none")
         {
            this.degree.text = "";
         }
         this.power.text = "" + this.data.getStats().damage;
         if(Battle.SP >= this.data.getStats().MP)
         {
            this.mp.text = "" + this.data.getStats().MP;
            this.mp2.text = "";
         }
         else
         {
            this.mp2.text = "" + this.data.getStats().MP;
            this.mp.text = "";
         }
         if(this.data.element == "weapon")
         {
            this.degree.text = "" + Math.floor(this.data.getStats().elementDegree * Battle.currentPlayer.weapon.elementDegree / 100) + "%";
            this.element.gotoAndStop(Battle.currentPlayer.weapon.element);
         }
         else
         {
            this.element.gotoAndStop(this.data.element);
         }
         if(this.data.type == Stats.ATTACK)
         {
            this.type.gotoAndStop(1);
         }
         if(this.data.type == Stats.MAGIC_ATTACK)
         {
            this.type.gotoAndStop(2);
         }
         if(this.data.type == Stats.NONE)
         {
            this.type.gotoAndStop(4);
         }
         this.title.setTextFormat(GUI.boldText);
         this.power.setTextFormat(GUI.boldText);
         this.mp.setTextFormat(GUI.boldText);
         this.mp2.setTextFormat(GUI.boldText);
      }
      
      internal function frame10() : *
      {
         Global.translate(this.tf1,"resistance",this.amp);
         Global.translate(this.tf2,"element",this.amp);
         Global.translate(this.tf3,"status",this.amp);
         Global.translate(this.tf4,"buff",this.amp);
         Global.translate(this.title,"lvl",this.ampT," " + this.data.level,false,this.data.name + "  ");
         Global.translate(this.body,"",this.ampB + 5,this.data.description);
         this.title.setTextFormat(GUI.boldText);
         for each(this.mc in [this.hpi,this.atki,this.matki,this.defi,this.mdefi,this.acci,this.evai])
         {
            this.mc.alpha = 0.3;
         }
         if(this.data.getHP() > 0)
         {
            this.hp.text = "+" + this.data.getHP();
            this.hpi.alpha = 1;
            this.hp.setTextFormat(GUI.boldText);
         }
         if(this.data.getAttack() > 0)
         {
            this.atk.text = "+" + this.data.getAttack();
            this.atki.alpha = 1;
            this.atk.setTextFormat(GUI.boldText);
         }
         if(this.data.getMagicAttack() > 0)
         {
            this.matk.text = "+" + this.data.getMagicAttack();
            this.matki.alpha = 1;
            this.matk.setTextFormat(GUI.boldText);
         }
         if(this.data.getDefence() > 0)
         {
            this.def.text = "+" + this.data.getDefence();
            this.defi.alpha = 1;
            this.def.setTextFormat(GUI.boldText);
         }
         if(this.data.getMagicDefence() > 0)
         {
            this.mdef.text = "+" + this.data.getMagicDefence();
            this.mdefi.alpha = 1;
            this.mdef.setTextFormat(GUI.boldText);
         }
         if(this.data.getAccuracy() > 0)
         {
            this.acc.text = "+" + this.data.getAccuracy();
            this.acci.alpha = 1;
            this.acc.setTextFormat(GUI.boldText);
         }
         if(this.data.getEvade() > 0)
         {
            this.eva.text = "+" + this.data.getEvade();
            this.evai.alpha = 1;
            this.eva.setTextFormat(GUI.boldText);
         }
         if(this.data.getHP() < 0)
         {
            this.hp2.text = "" + this.data.getHP();
            this.hp2.setTextFormat(GUI.boldText);
            this.hpi.visible = false;
            GUI.redTint(this.hpi);
         }
         if(this.data.getAttack() < 0)
         {
            this.atk2.text = "" + this.data.getAttack();
            this.atk2.setTextFormat(GUI.boldText);
            this.atki.visible = false;
            GUI.redTint(this.atki);
         }
         if(this.data.getMagicAttack() < 0)
         {
            this.matk2.text = "" + this.data.getMagicAttack();
            this.matk2.setTextFormat(GUI.boldText);
            this.matki.visible = false;
            GUI.redTint(this.matki);
         }
         if(this.data.getDefence() < 0)
         {
            this.def2.text = "" + this.data.getDefence();
            this.def2.setTextFormat(GUI.boldText);
            this.defi.visible = false;
            GUI.redTint(this.defi);
         }
         if(this.data.getMagicDefence() < 0)
         {
            this.mdef2.text = "" + this.data.getMagicDefence();
            this.mdef2.setTextFormat(GUI.boldText);
            this.mdefi.visible = false;
            GUI.redTint(this.mdefi);
         }
         if(this.data.getAccuracy() < 0)
         {
            this.acc2.text = "" + this.data.getAccuracy();
            this.acc2.setTextFormat(GUI.boldText);
            this.acci.visible = false;
            GUI.redTint(this.acci);
         }
         if(this.data.getEvade() < 0)
         {
            this.eva2.text = "" + this.data.getEvade();
            this.eva2.setTextFormat(GUI.boldText);
            this.evai.visible = false;
            GUI.redTint(this.evai);
         }
         this.res = this.data.getResistance();
         this.i = 1;
         while(this.i < 4)
         {
            if(this.res.length > [this.i - 1])
            {
               this["res" + this.i].gotoAndStop(this.res[this.i - 1][0]);
               this["resistance" + this.i].text = "" + this.res[this.i - 1][1] + "%";
               this["resistance" + this.i].setTextFormat(GUI.boldText);
               if(this.res[this.i - 1][1] < 0)
               {
                  this["resistance" + this.i].textColor = 16711680;
               }
            }
            else
            {
               this["res" + this.i].gotoAndStop("none2");
               this["resistance" + this.i].text = "";
            }
            ++this.i;
         }
         this.element.gotoAndStop(this.data.element);
         if(Boolean(this.data.elementDegree) && this.data.element != "none")
         {
            this.degree.text = "" + this.data.elementDegree + "%";
         }
         this.status.gotoAndStop(this.data.statusEffect);
         if(Boolean(this.data.statusDegree) && this.data.statusEffect != "none")
         {
            this.sdegree.text = "+" + this.data.getStat("statusDegree") + "";
            this.schance.text = "" + this.data.getStat("statusChance") + "%";
         }
         this.buff.gotoAndStop(this.data.buffEffect);
         if(Boolean(this.data.buffDegree) && this.data.buffEffect != "none")
         {
            this.bdegree.text = "" + this.data.getStat("buffDegree") + "";
            this.bchance.text = "" + this.data.getStat("buffChance") + "%";
         }
      }
      
      internal function frame11() : *
      {
         Global.translate(this.tf1,"resistance",this.amp);
         Global.translate(this.tf2,"element",this.amp);
         Global.translate(this.tf3,"status",this.amp);
         Global.translate(this.tf4,"buff",this.amp);
         Global.translate(this.title,"lvl",this.ampT," " + this.data.level,false,this.data.name + "  ");
         Global.translate(this.body,"",this.ampB + 5,this.data.description);
         this.title.setTextFormat(GUI.boldText);
         for each(this.mc in [this.hpi,this.atki,this.matki,this.defi,this.mdefi,this.acci,this.evai])
         {
            this.mc.alpha = 0.3;
         }
         if(this.data.getHP() > 0)
         {
            this.hp.text = "+" + this.data.getHP();
            this.hpi.alpha = 1;
            this.hp.setTextFormat(GUI.boldText);
         }
         if(this.data.getAttack() > 0)
         {
            this.atk.text = "+" + this.data.getAttack();
            this.atki.alpha = 1;
            this.atk.setTextFormat(GUI.boldText);
         }
         if(this.data.getMagicAttack() > 0)
         {
            this.matk.text = "+" + this.data.getMagicAttack();
            this.matki.alpha = 1;
            this.matk.setTextFormat(GUI.boldText);
         }
         if(this.data.getDefence() > 0)
         {
            this.def.text = "+" + this.data.getDefence();
            this.defi.alpha = 1;
            this.def.setTextFormat(GUI.boldText);
         }
         if(this.data.getMagicDefence() > 0)
         {
            this.mdef.text = "+" + this.data.getMagicDefence();
            this.mdefi.alpha = 1;
            this.mdef.setTextFormat(GUI.boldText);
         }
         if(this.data.getAccuracy() > 0)
         {
            this.acc.text = "+" + this.data.getAccuracy();
            this.acci.alpha = 1;
            this.acc.setTextFormat(GUI.boldText);
         }
         if(this.data.getEvade() > 0)
         {
            this.eva.text = "+" + this.data.getEvade();
            this.evai.alpha = 1;
            this.eva.setTextFormat(GUI.boldText);
         }
         if(this.data.getHP() < 0)
         {
            this.hp2.text = "" + this.data.getHP();
            this.hp2.setTextFormat(GUI.boldText);
            this.hpi.visible = false;
            GUI.redTint(this.hpi);
         }
         if(this.data.getAttack() < 0)
         {
            this.atk2.text = "" + this.data.getAttack();
            this.atk2.setTextFormat(GUI.boldText);
            this.atki.visible = false;
            GUI.redTint(this.atki);
         }
         if(this.data.getMagicAttack() < 0)
         {
            this.matk2.text = "" + this.data.getMagicAttack();
            this.matk2.setTextFormat(GUI.boldText);
            this.matki.visible = false;
            GUI.redTint(this.matki);
         }
         if(this.data.getDefence() < 0)
         {
            this.def2.text = "" + this.data.getDefence();
            this.def2.setTextFormat(GUI.boldText);
            this.defi.visible = false;
            GUI.redTint(this.defi);
         }
         if(this.data.getMagicDefence() < 0)
         {
            this.mdef2.text = "" + this.data.getMagicDefence();
            this.mdef2.setTextFormat(GUI.boldText);
            this.mdefi.visible = false;
            GUI.redTint(this.mdefi);
         }
         if(this.data.getAccuracy() < 0)
         {
            this.acc2.text = "" + this.data.getAccuracy();
            this.acc2.setTextFormat(GUI.boldText);
            this.acci.visible = false;
            GUI.redTint(this.acci);
         }
         if(this.data.getEvade() < 0)
         {
            this.eva2.text = "" + this.data.getEvade();
            this.eva2.setTextFormat(GUI.boldText);
            this.evai.visible = false;
            GUI.redTint(this.evai);
         }
         this.res = this.data.getResistance();
         this.i = 1;
         while(this.i < 4)
         {
            if(this.res.length > [this.i - 1])
            {
               this["res" + this.i].gotoAndStop(this.res[this.i - 1][0]);
               this["resistance" + this.i].text = "" + this.res[this.i - 1][1] + "%";
               this["resistance" + this.i].setTextFormat(GUI.boldText);
               if(this.res[this.i - 1][1] < 0)
               {
                  this["resistance" + this.i].textColor = 16711680;
               }
            }
            else
            {
               this["res" + this.i].gotoAndStop("none2");
               this["resistance" + this.i].text = "";
            }
            ++this.i;
         }
         this.element.gotoAndStop(this.data.element);
         if(Boolean(this.data.elementDegree) && this.data.element != "none")
         {
            this.degree.text = "" + this.data.elementDegree + "%";
         }
         this.status.gotoAndStop(this.data.statusEffect);
         if(Boolean(this.data.statusDegree) && this.data.statusEffect != "none")
         {
            this.sdegree.text = "+" + this.data.getStat("statusDegree") + "";
            this.schance.text = "" + this.data.getStat("statusChance") + "%";
         }
         this.buff.gotoAndStop(this.data.buffEffect);
         if(Boolean(this.data.buffDegree) && this.data.buffEffect != "none")
         {
            this.bdegree.text = "" + this.data.getStat("buffDegree") + "";
            this.bchance.text = "" + this.data.getStat("buffChance") + "%";
         }
      }
      
      internal function frame12() : *
      {
         Global.translate(this.title,"",this.ampT,this.data.name);
         try
         {
            if(this.data.description)
            {
               Global.translate(this.body,"",this.ampB,this.data.description);
            }
         }
         catch(error:Error)
         {
         }
         try
         {
            if(this.data.desc)
            {
               Global.translate(this.body,"",this.ampB,this.data.desc);
            }
         }
         catch(error:Error)
         {
         }
         this.title.setTextFormat(GUI.boldText);
      }
      
      internal function frame13() : *
      {
         Global.translate(this.title,"",this.ampT,this.data.name);
         try
         {
            if(this.data.description)
            {
               Global.translate(this.body,"",this.ampB,this.data.description);
            }
         }
         catch(error:Error)
         {
         }
         try
         {
            if(this.data.desc)
            {
               Global.translate(this.body,"",this.ampB,this.data.desc);
            }
         }
         catch(error:Error)
         {
         }
         this.title.setTextFormat(GUI.boldText);
      }
      
      internal function frame14() : *
      {
         Global.translate(this.tf1,"resistance",this.amp);
         Global.translate(this.tf2,"element",this.amp);
         Global.translate(this.tf3,"status",this.amp);
         Global.translate(this.tf4,"buff",this.amp);
         Global.translate(this.title,"lvl",this.ampT," " + this.data.level,false,this.data.name + "  ");
         Global.translate(this.body,"",this.ampB + 5,this.data.description);
         this.title.setTextFormat(GUI.boldText);
         for each(this.mc in [this.hpi,this.atki,this.matki,this.defi,this.mdefi,this.acci,this.evai])
         {
            this.mc.alpha = 0.3;
         }
         if(this.data.getHP() > 0)
         {
            this.hp.text = "+" + this.data.getHP();
            this.hpi.alpha = 1;
            this.hp.setTextFormat(GUI.boldText);
         }
         if(this.data.getAttack() > 0)
         {
            this.atk.text = "+" + this.data.getAttack();
            this.atki.alpha = 1;
            this.atk.setTextFormat(GUI.boldText);
         }
         if(this.data.getMagicAttack() > 0)
         {
            this.matk.text = "+" + this.data.getMagicAttack();
            this.matki.alpha = 1;
            this.matk.setTextFormat(GUI.boldText);
         }
         if(this.data.getDefence() > 0)
         {
            this.def.text = "+" + this.data.getDefence();
            this.defi.alpha = 1;
            this.def.setTextFormat(GUI.boldText);
         }
         if(this.data.getMagicDefence() > 0)
         {
            this.mdef.text = "+" + this.data.getMagicDefence();
            this.mdefi.alpha = 1;
            this.mdef.setTextFormat(GUI.boldText);
         }
         if(this.data.getAccuracy() > 0)
         {
            this.acc.text = "+" + this.data.getAccuracy();
            this.acci.alpha = 1;
            this.acc.setTextFormat(GUI.boldText);
         }
         if(this.data.getEvade() > 0)
         {
            this.eva.text = "+" + this.data.getEvade();
            this.evai.alpha = 1;
            this.eva.setTextFormat(GUI.boldText);
         }
         if(this.data.getHP() < 0)
         {
            this.hp2.text = "" + this.data.getHP();
            this.hp2.setTextFormat(GUI.boldText);
            this.hpi.visible = false;
            GUI.redTint(this.hpi);
         }
         if(this.data.getAttack() < 0)
         {
            this.atk2.text = "" + this.data.getAttack();
            this.atk2.setTextFormat(GUI.boldText);
            this.atki.visible = false;
            GUI.redTint(this.atki);
         }
         if(this.data.getMagicAttack() < 0)
         {
            this.matk2.text = "" + this.data.getMagicAttack();
            this.matk2.setTextFormat(GUI.boldText);
            this.matki.visible = false;
            GUI.redTint(this.matki);
         }
         if(this.data.getDefence() < 0)
         {
            this.def2.text = "" + this.data.getDefence();
            this.def2.setTextFormat(GUI.boldText);
            this.defi.visible = false;
            GUI.redTint(this.defi);
         }
         if(this.data.getMagicDefence() < 0)
         {
            this.mdef2.text = "" + this.data.getMagicDefence();
            this.mdef2.setTextFormat(GUI.boldText);
            this.mdefi.visible = false;
            GUI.redTint(this.mdefi);
         }
         if(this.data.getAccuracy() < 0)
         {
            this.acc2.text = "" + this.data.getAccuracy();
            this.acc2.setTextFormat(GUI.boldText);
            this.acci.visible = false;
            GUI.redTint(this.acci);
         }
         if(this.data.getEvade() < 0)
         {
            this.eva2.text = "" + this.data.getEvade();
            this.eva2.setTextFormat(GUI.boldText);
            this.evai.visible = false;
            GUI.redTint(this.evai);
         }
         this.res = this.data.getResistance();
         this.i = 1;
         while(this.i < 4)
         {
            if(this.res.length > [this.i - 1])
            {
               this["res" + this.i].gotoAndStop(this.res[this.i - 1][0]);
               this["resistance" + this.i].text = "" + this.res[this.i - 1][1] + "%";
               this["resistance" + this.i].setTextFormat(GUI.boldText);
               if(this.res[this.i - 1][1] < 0)
               {
                  this["resistance" + this.i].textColor = 16711680;
               }
            }
            else
            {
               this["res" + this.i].gotoAndStop("none2");
               this["resistance" + this.i].text = "";
            }
            ++this.i;
         }
         this.element.gotoAndStop(this.data.element);
         if(Boolean(this.data.elementDegree) && this.data.element != "none")
         {
            this.degree.text = "" + this.data.elementDegree + "%";
         }
         this.status.gotoAndStop(this.data.statusEffect);
         if(Boolean(this.data.statusDegree) && this.data.statusEffect != "none")
         {
            this.sdegree.text = "+" + this.data.getStat("statusDegree") + "";
            this.schance.text = "" + this.data.getStat("statusChance") + "%";
         }
         this.buff.gotoAndStop(this.data.buffEffect);
         if(Boolean(this.data.buffDegree) && this.data.buffEffect != "none")
         {
            this.bdegree.text = "" + this.data.getStat("buffDegree") + "";
            this.bchance.text = "" + this.data.getStat("buffChance") + "%";
         }
      }
      
      internal function frame15() : *
      {
         if(this.data.name != null)
         {
            Global.translate(this.title,"",this.ampT,this.data.name);
         }
         if(this.data.name == null)
         {
            Global.translate(this.title,"",this.ampT,this.data.fname);
         }
         this.title.setTextFormat(GUI.boldText);
      }
      
      internal function frame16() : *
      {
         if(this.data.name != null)
         {
            Global.translate(this.title,"",this.ampT,this.data.name);
         }
         if(this.data.name == null)
         {
            Global.translate(this.title,"",this.ampT,this.data.fname);
         }
         this.title.setTextFormat(GUI.boldText);
      }
      
      internal function frame17() : *
      {
         if(this.data.name != null)
         {
            Global.translate(this.title,"",this.ampT,this.data.name);
         }
         if(this.data.name == null)
         {
            Global.translate(this.title,"",this.ampT,this.data.fname);
         }
         this.title.setTextFormat(GUI.boldText);
      }
      
      internal function frame18() : *
      {
         if(this.data.name != null)
         {
            Global.translate(this.title,"",this.ampT,this.data.name);
         }
         if(this.data.name == null)
         {
            Global.translate(this.title,"",this.ampT,this.data.fname);
         }
         this.title.setTextFormat(GUI.boldText);
      }
      
      internal function frame19() : *
      {
         Global.translate(this.title,"",this.ampT,this.data.name);
         Global.translate(this.location,"",this.ampB,this.data.location);
         this.icons = [];
         if(this.data.flag)
         {
            if(this.data.flag)
            {
               this.items = this.data.quest;
            }
            else
            {
               this.items = this.data.rewards;
            }
            this.title.setTextFormat(GUI.boldText);
            this.a = 0;
            while(this.a < this.items.length)
            {
               this.b = true;
               this.it = this.items[this.a];
               Icon.text = "" + this.items[this.a + 1];
               this.typ = Icon.ITEM;
               if(this.it is Summon)
               {
                  this.typ = Icon.SUMMON;
                  if(Summons.OWNED_SUMMONS.indexOf(this.it) == -1)
                  {
                     this.qu = 0;
                  }
                  else
                  {
                     this.qu = 1;
                  }
               }
               else
               {
                  this.qu = this.it.quantity;
               }
               if(this.qu < this.items[this.a + 1] && Boolean(this.data.flag))
               {
                  this.b = false;
               }
               if(this.data.flag)
               {
                  Icon.text = "" + this.qu + "/" + this.items[this.a + 1];
               }
               else
               {
                  Icon.text = "" + this.items[this.a + 1];
               }
               this.icons.push(GUI.createIcon(this,this.it,null,this.b,this.typ));
               Icon.text = "";
               this.a += 2;
            }
            GUI.createIconMatrix(this.icons,3,-210,39,6);
         }
         else
         {
            visible = false;
         }
      }
      
      internal function frame20() : *
      {
         Global.translate(this.title,"",this.ampT,this.data.name);
         Global.translate(this.location,"",this.ampB,this.data.location);
         this.icons = [];
         if(this.data.flag)
         {
            if(this.data.flag)
            {
               this.items = this.data.quest;
            }
            else
            {
               this.items = this.data.rewards;
            }
            this.title.setTextFormat(GUI.boldText);
            this.a = 0;
            while(this.a < this.items.length)
            {
               this.b = true;
               this.it = this.items[this.a];
               Icon.text = "" + this.items[this.a + 1];
               this.typ = Icon.ITEM;
               if(this.it is Summon)
               {
                  this.typ = Icon.SUMMON;
                  if(Summons.OWNED_SUMMONS.indexOf(this.it) == -1)
                  {
                     this.qu = 0;
                  }
                  else
                  {
                     this.qu = 1;
                  }
               }
               else
               {
                  this.qu = this.it.quantity;
               }
               if(this.qu < this.items[this.a + 1] && Boolean(this.data.flag))
               {
                  this.b = false;
               }
               if(this.data.flag)
               {
                  Icon.text = "" + this.qu + "/" + this.items[this.a + 1];
               }
               else
               {
                  Icon.text = "" + this.items[this.a + 1];
               }
               this.icons.push(GUI.createIcon(this,this.it,null,this.b,this.typ));
               Icon.text = "";
               this.a += 2;
            }
            GUI.createIconMatrix(this.icons,3,40,39,6);
         }
         else
         {
            visible = false;
         }
      }
      
      internal function frame21() : *
      {
         Global.translate(this.tf1,"type");
         Global.translate(this.tf2,"element");
         Global.translate(this.tf3,"target");
         Global.translate(this.tf4,"power");
         Global.translate(this.tf5,"status");
         Global.translate(this.tf6,"buff");
         if(this.data.alternative)
         {
            nextFrame();
         }
         this.plus = "+";
         Global.translate(this.title,"",this.ampT,this.data.name);
         Global.translate(this.body,"",this.ampB + 5,this.data.description);
         try
         {
            if(this.data is Summon && Summons.info[this.data.fname]["nickname"] != "")
            {
               Global.translate(this.title,"",0,Summons.info[this.data.fname]["nickname"]);
            }
         }
         catch(error:Error)
         {
         }
         this.target.gotoAndStop(this.data.target);
         this.degree.text = "" + this.data.getStats().elementDegree + "%";
         if(this.data.element == "none")
         {
            this.degree.text = "";
         }
         this.sdegree.text = "+" + this.data.getStats().statusDegree;
         if(this.data.statusEffect == Status.DEFEND || this.data.statusEffect == Status.HASTE || this.data.statusEffect == Status.DEATH || this.data.statusEffect == Status.RANDOM || this.data.statusEffect == Status.DISPEL)
         {
            this.sdegree.text = "";
         }
         this.schance.text = "" + this.data.getStats().statusChance + "%";
         if(this.data.getStats().statusChance == 0)
         {
            this.schance.text = "";
         }
         if(this.data.statusEffect == "none")
         {
            this.sdegree.text = "";
            this.schance.text = "";
         }
         if(this.data.getStats().buffDegree < 0)
         {
            this.plus = "";
         }
         this.bdegree.text = this.plus + this.data.getStats().buffDegree;
         this.bchance.text = "" + this.data.getStats().buffChance + "%";
         if(this.data.getStats().buffChance == 0)
         {
            this.bchance.text = "";
         }
         if(this.data.buffEffect == "none")
         {
            this.bdegree.text = "";
            this.bchance.text = "";
         }
         this.power.text = "" + this.data.getStats().damage;
         if(this.data.getStats().damage == 0)
         {
            this.power.text = "---";
         }
         if(!Battle.currentPlayer)
         {
            Battle.currentPlayer = Game.party[0];
         }
         if(this.data.element == "weapon")
         {
            this.degree.text = "" + Math.floor(this.data.getStats().elementDegree * Battle.currentPlayer.weapon.elementDegree / 100) + "%";
            this.element.gotoAndStop(Battle.currentPlayer.weapon.element);
            if(Battle.currentPlayer.weapon.element == "none")
            {
               this.degree.text = "";
            }
         }
         else
         {
            this.element.gotoAndStop(this.data.element);
         }
         if(this.data.statusEffect == "weapon")
         {
            if(this.data == Spells.rapture && false)
            {
               this.sdegree.text = "";
               this.status.gotoAndStop("none");
            }
            else
            {
               this.weapon = Battle.currentPlayer.weapon;
               if(Battle.currentPlayer.flair1.statusEffect != Status.NONE)
               {
                  this.weapon = Battle.currentPlayer.flair1;
               }
               else if(Battle.currentPlayer.flair2.statusEffect != Status.NONE)
               {
                  this.weapon = Battle.currentPlayer.flair2;
               }
               else if(Battle.currentPlayer.flair3.statusEffect != Status.NONE)
               {
                  this.weapon = Battle.currentPlayer.flair3;
               }
               this.sdegree.text = "+" + Math.floor(this.data.getStats().statusDegree * this.weapon.getStat("statusDegree") / 100);
               this.schance.text = "" + Math.floor(this.data.getStats().statusChance * this.weapon.getStat("statusChance") / 100) + "%";
               this.status.gotoAndStop(this.weapon.statusEffect);
               if(this.weapon.statusEffect == "none")
               {
                  this.status.gotoAndStop("none");
                  this.sdegree.text = "";
                  this.schance.text = "";
               }
            }
         }
         else
         {
            this.status.gotoAndStop(this.data.statusEffect);
         }
         if(this.data.buffEffect == "weapon")
         {
            if(this.data == Spells.rapture && false)
            {
               this.bdegree.text = "";
               this.buff.gotoAndStop("none");
            }
            else
            {
               if(Math.floor(this.data.getStats().buffDegree * Battle.currentPlayer.weapon.getStat("buffDegree") / 100) < 0)
               {
                  this.plus = "";
               }
               this.bdegree.text = this.plus + Math.floor(this.data.getStats().buffDegree * Battle.currentPlayer.weapon.getStat("buffDegree") / 100);
               this.bchance.text = "" + Math.floor(this.data.getStats().buffChance * Battle.currentPlayer.weapon.getStat("buffChance") / 100) + "%";
               this.buff.gotoAndStop(Battle.currentPlayer.weapon.buffEffect);
               if(Battle.currentPlayer.weapon.buffEffect == "none")
               {
                  this.buff.gotoAndStop("none");
                  this.bdegree.text = "";
                  this.bchance.text = "";
               }
            }
         }
         else
         {
            this.buff.gotoAndStop(this.data.buffEffect);
         }
         if(this.data.type == Stats.ATTACK)
         {
            this.type.gotoAndStop(1);
         }
         if(this.data.type == Stats.MAGIC_ATTACK)
         {
            this.type.gotoAndStop(2);
         }
         if(this.data.type == Stats.NONE)
         {
            this.type.gotoAndStop(4);
         }
         this.title.setTextFormat(GUI.boldText);
         this.power.setTextFormat(GUI.boldText);
      }
      
      internal function frame22() : *
      {
         Global.translate(this.tf1,"type");
         Global.translate(this.tf2,"element");
         Global.translate(this.tf3,"target");
         Global.translate(this.tf4,"power");
         Global.translate(this.tf5,"status");
         Global.translate(this.tf6,"buff");
         this.plus = "+";
         Global.translate(this.title,"",this.ampT,this.data.name);
         Global.translate(this.body,"",this.ampB + 5,this.data.description);
         this.target.gotoAndStop(this.data.target);
         this.target2.gotoAndStop(this.data.alternative.target);
         this.degree.text = "" + this.data.getStats().elementDegree + "%";
         if(this.data.element == "none")
         {
            this.degree.text = "";
         }
         this.sdegree.text = "+" + this.data.getStats().statusDegree;
         this.sdegree2.text = "+" + this.data.alternative.getStats().statusDegree;
         if(this.data.statusEffect == Status.DEFEND || this.data.statusEffect == Status.HASTE || this.data.statusEffect == Status.DEATH || this.data.statusEffect == Status.RANDOM || this.data.statusEffect == Status.DISPEL)
         {
            this.sdegree.text = "";
            this.sdegree2.text = "";
         }
         this.schance.text = "" + this.data.getStats().statusChance + "%";
         this.schance2.text = "" + this.data.alternative.getStats().statusChance + "%";
         if(this.data.getStats().statusChance == 0)
         {
            this.schance.text = "";
            this.schance2.text = "";
         }
         if(this.data.statusEffect == "none")
         {
            this.sdegree.text = "";
            this.schance.text = "";
            this.sdegree2.text = "";
            this.schance2.text = "";
         }
         if(this.data.getStats().buffDegree < 0)
         {
            this.plus = "";
         }
         this.bdegree.text = this.plus + this.data.getStats().buffDegree;
         this.bdegree2.text = this.plus + this.data.alternative.getStats().buffDegree;
         this.bchance.text = "" + this.data.getStats().buffChance + "%";
         this.bchance2.text = "" + this.data.alternative.getStats().buffChance + "%";
         if(this.data.getStats().buffChance == 0)
         {
            this.bchance.text = "";
            this.bchance2.text = "";
         }
         if(this.data.buffEffect == "none")
         {
            this.bdegree.text = "";
            this.bchance.text = "";
            this.bdegree2.text = "";
            this.bchance2.text = "";
         }
         this.power.text = "" + this.data.getStats().damage;
         this.power2.text = "" + this.data.alternative.getStats().damage;
         if(this.data.getStats().damage == 0)
         {
            this.power.text = "---";
         }
         if(this.data.alternative.getStats().damage == 0)
         {
            this.power2.text = "---";
         }
         if(this.data.element == "weapon")
         {
            this.degree.text = "" + Math.floor(this.data.getStats().elementDegree * Battle.currentPlayer.weapon.elementDegree / 100) + "%";
            this.element.gotoAndStop(Battle.currentPlayer.weapon.element);
            if(Battle.currentPlayer.weapon.element == "none")
            {
               this.degree.text = "";
            }
         }
         else
         {
            this.element.gotoAndStop(this.data.element);
         }
         if(this.data.statusEffect == "weapon")
         {
            if(this.data == Spells.rapture && false)
            {
               this.sdegree.text = "";
               this.status.gotoAndStop("none");
            }
            else
            {
               this.weapon = Battle.currentPlayer.weapon;
               if(Battle.currentPlayer.flair1.statusEffect != Status.NONE)
               {
                  this.weapon = Battle.currentPlayer.flair1;
               }
               else if(Battle.currentPlayer.flair2.statusEffect != Status.NONE)
               {
                  this.weapon = Battle.currentPlayer.flair2;
               }
               else if(Battle.currentPlayer.flair3.statusEffect != Status.NONE)
               {
                  this.weapon = Battle.currentPlayer.flair3;
               }
               this.sdegree.text = "+" + Math.floor(this.data.getStats().statusDegree * this.weapon.getStat("statusDegree") / 100);
               this.schance.text = "" + Math.floor(this.data.getStats().statusChance * this.weapon.getStat("statusChance") / 100) + "%";
               this.sdegree2.text = "+" + Math.floor(this.data.alternative.getStats().statusDegree * this.weapon.getStat("statusDegree") / 100);
               this.schance2.text = "" + Math.floor(this.data.alternative.getStats().statusChance * this.weapon.getStat("statusChance") / 100) + "%";
               this.status.gotoAndStop(this.weapon.statusEffect);
               if(this.weapon.statusEffect == "none")
               {
                  this.status.gotoAndStop("none");
                  this.sdegree.text = "";
                  this.schance.text = "";
                  this.sdegree2.text = "";
                  this.schance2.text = "";
               }
            }
         }
         else
         {
            this.status.gotoAndStop(this.data.statusEffect);
         }
         if(this.data.buffEffect == "weapon")
         {
            if(this.data == Spells.rapture && false)
            {
               this.bdegree.text = "";
               this.buff.gotoAndStop("none");
            }
            else
            {
               if(Math.floor(this.data.getStats().buffDegree * Battle.currentPlayer.weapon.getStat("buffDegree") / 100) < 0)
               {
                  this.plus = "";
               }
               this.bdegree.text = this.plus + Math.floor(this.data.getStats().buffDegree * Battle.currentPlayer.weapon.getStat("buffDegree") / 100);
               this.bchance.text = "" + Math.floor(this.data.getStats().buffChance * Battle.currentPlayer.weapon.getStat("buffChance") / 100) + "%";
               this.bdegree2.text = this.plus + Math.floor(this.data.alternative.getStats().buffDegree * Battle.currentPlayer.weapon.getStat("buffDegree") / 100);
               this.bchance2.text = "" + Math.floor(this.data.alternative.getStats().buffChance * Battle.currentPlayer.weapon.getStat("buffChance") / 100) + "%";
               this.buff.gotoAndStop(Battle.currentPlayer.weapon.buffEffect);
               if(Battle.currentPlayer.weapon.buffEffect == "none")
               {
                  this.buff.gotoAndStop("none");
                  this.bdegree.text = "";
                  this.bchance.text = "";
                  this.bdegree2.text = "";
                  this.bchance2.text = "";
               }
            }
         }
         else
         {
            this.buff.gotoAndStop(this.data.buffEffect);
         }
         if(this.data.type == Stats.ATTACK)
         {
            this.type.gotoAndStop(1);
         }
         if(this.data.type == Stats.MAGIC_ATTACK)
         {
            this.type.gotoAndStop(2);
         }
         if(this.data.type == Stats.NONE)
         {
            this.type.gotoAndStop(4);
         }
         this.title.setTextFormat(GUI.boldText);
         this.power.setTextFormat(GUI.boldText);
         this.status2.gotoAndStop(this.status.currentFrame);
         this.buff2.gotoAndStop(this.buff.currentFrame);
      }
      
      internal function frame23() : *
      {
         Global.translate(this.tf1,"type");
         Global.translate(this.tf2,"element");
         Global.translate(this.tf3,"target");
         Global.translate(this.tf4,"power");
         Global.translate(this.tf5,"status");
         Global.translate(this.tf6,"buff");
         if(this.data.alternative)
         {
            nextFrame();
         }
         this.plus = "+";
         Global.translate(this.title,"",this.ampT,this.data.name);
         Global.translate(this.body,"",this.ampB + 5,this.data.description);
         try
         {
            if(this.data is Summon && Summons.info[this.data.fname]["nickname"] != "")
            {
               Global.translate(this.title,"",0,Summons.info[this.data.fname]["nickname"]);
            }
         }
         catch(error:Error)
         {
         }
         this.target.gotoAndStop(this.data.target);
         this.degree.text = "" + this.data.getStats().elementDegree + "%";
         if(this.data.element == "none")
         {
            this.degree.text = "";
         }
         this.sdegree.text = "+" + this.data.getStats().statusDegree;
         if(this.data.statusEffect == Status.DEFEND || this.data.statusEffect == Status.HASTE || this.data.statusEffect == Status.DEATH || this.data.statusEffect == Status.RANDOM || this.data.statusEffect == Status.DISPEL)
         {
            this.sdegree.text = "";
         }
         this.schance.text = "" + this.data.getStats().statusChance + "%";
         if(this.data.getStats().statusChance == 0)
         {
            this.schance.text = "";
         }
         if(this.data.statusEffect == "none")
         {
            this.sdegree.text = "";
            this.schance.text = "";
         }
         if(this.data.getStats().buffDegree < 0)
         {
            this.plus = "";
         }
         this.bdegree.text = this.plus + this.data.getStats().buffDegree;
         this.bchance.text = "" + this.data.getStats().buffChance + "%";
         if(this.data.getStats().buffChance == 0)
         {
            this.bchance.text = "";
         }
         if(this.data.buffEffect == "none")
         {
            this.bdegree.text = "";
            this.bchance.text = "";
         }
         this.power.text = "" + this.data.getStats().damage;
         if(this.data.getStats().damage == 0)
         {
            this.power.text = "---";
         }
         if(this.data.element == "weapon")
         {
            this.degree.text = "" + Math.floor(this.data.getStats().elementDegree * Battle.currentPlayer.weapon.elementDegree / 100) + "%";
            this.element.gotoAndStop(Battle.currentPlayer.weapon.element);
            if(Battle.currentPlayer.weapon.element == "none")
            {
               this.degree.text = "";
            }
         }
         else
         {
            this.element.gotoAndStop(this.data.element);
         }
         if(this.data.statusEffect == "weapon")
         {
            if(this.data == Spells.rapture && false)
            {
               this.sdegree.text = "";
               this.status.gotoAndStop("none");
            }
            else
            {
               Equip = Battle.currentPlayer.weapon;
               if(Battle.currentPlayer.flair1.statusEffect != Status.NONE)
               {
                  this.weapon = Battle.currentPlayer.flair1;
               }
               else if(Battle.currentPlayer.flair2.statusEffect != Status.NONE)
               {
                  this.weapon = Battle.currentPlayer.flair2;
               }
               else if(Battle.currentPlayer.flair3.statusEffect != Status.NONE)
               {
                  this.weapon = Battle.currentPlayer.flair3;
               }
               this.sdegree.text = "+" + Math.floor(this.data.getStats().statusDegree * this.weapon.getStat("statusDegree") / 100);
               this.schance.text = "" + Math.floor(this.data.getStats().statusChance * this.weapon.getStat("statusChance") / 100) + "%";
               this.status.gotoAndStop(this.weapon.statusEffect);
               if(this.weapon.statusEffect == "none")
               {
                  this.status.gotoAndStop("none");
                  this.sdegree.text = "";
                  this.schance.text = "";
               }
            }
         }
         else
         {
            this.status.gotoAndStop(this.data.statusEffect);
         }
         if(this.data.buffEffect == "weapon")
         {
            if(this.data == Spells.rapture && false)
            {
               this.bdegree.text = "";
               this.buff.gotoAndStop("none");
            }
            else
            {
               if(Math.floor(this.data.getStats().buffDegree * Battle.currentPlayer.weapon.getStat("buffDegree") / 100) < 0)
               {
                  this.plus = "";
               }
               this.bdegree.text = this.plus + Math.floor(this.data.getStats().buffDegree * Battle.currentPlayer.weapon.getStat("buffDegree") / 100);
               this.bchance.text = "" + Math.floor(this.data.getStats().buffChance * Battle.currentPlayer.weapon.getStat("buffChance") / 100) + "%";
               this.buff.gotoAndStop(Battle.currentPlayer.weapon.buffEffect);
               if(Battle.currentPlayer.weapon.buffEffect == "none")
               {
                  this.buff.gotoAndStop("none");
                  this.bdegree.text = "";
                  this.bchance.text = "";
               }
            }
         }
         else
         {
            this.buff.gotoAndStop(this.data.buffEffect);
         }
         if(this.data.type == Stats.ATTACK)
         {
            this.type.gotoAndStop(1);
         }
         if(this.data.type == Stats.MAGIC_ATTACK)
         {
            this.type.gotoAndStop(2);
         }
         if(this.data.type == Stats.NONE)
         {
            this.type.gotoAndStop(4);
         }
         this.title.setTextFormat(GUI.boldText);
         this.power.setTextFormat(GUI.boldText);
      }
      
      internal function frame25() : *
      {
         Global.translate(this.title,"",this.ampB,this.data.text);
      }
      
      internal function frame26() : *
      {
         Global.translate(this.title,"",this.ampB,this.data.text);
      }
      
      internal function frame31() : *
      {
         Global.translate(this.tf1,"type",this.amp);
         Global.translate(this.tf2,"element",this.amp);
         Global.translate(this.tf3,"target",this.amp);
         Global.translate(this.tf4,"power",this.amp);
         Global.translate(this.tf5,"status",this.amp);
         Global.translate(this.tf6,"buff",this.amp);
         if(this.data.alternative)
         {
            nextFrame();
         }
         this.plus = "+";
         try
         {
            Global.translate(this.title,"",this.ampT,this.data.name);
            Global.translate(this.body,"",this.ampB + 5,this.data.description);
            if(this.data is Summon && Summons.info[this.data.fname]["nickname"] != "")
            {
               Global.translate(this.title,"",0,this.data.name);
               this.title.text = Summons.info[this.data.fname]["nickname"];
            }
         }
         catch(error:Error)
         {
            Global.translate(title,"",0,data.name);
            Global.translate(body,"",0,data.description);
         }
         this.target.gotoAndStop(this.data.target);
         this.degree.text = "" + this.data.getStats().elementDegree + "%";
         if(this.data.element == "none")
         {
            this.degree.text = "";
         }
         this.sdegree.text = "+" + this.data.getStats().statusDegree;
         if(this.data.statusEffect == Status.DEFEND || this.data.statusEffect == Status.HASTE || this.data.statusEffect == Status.DEATH || this.data.statusEffect == Status.RANDOM || this.data.statusEffect == Status.DISPEL)
         {
            this.sdegree.text = "";
         }
         this.schance.text = "" + this.data.getStats().statusChance + "%";
         if(this.data.getStats().statusChance == 0)
         {
            this.schance.text = "";
         }
         if(this.data.statusEffect == "none")
         {
            this.sdegree.text = "";
            this.schance.text = "";
         }
         if(this.data.getStats().buffDegree < 0)
         {
            this.plus = "";
         }
         this.bdegree.text = this.plus + this.data.getStats().buffDegree;
         this.bchance.text = "" + this.data.getStats().buffChance + "%";
         if(this.data.getStats().buffChance == 0)
         {
            this.bchance.text = "";
         }
         if(this.data.buffEffect == "none")
         {
            this.bdegree.text = "";
            this.bchance.text = "";
         }
         this.power.text = "" + this.data.getStats().damage;
         if(this.data.getStats().damage == 0)
         {
            this.power.text = "---";
         }
         if(this.data.element == "weapon")
         {
            this.degree.text = "" + Math.floor(this.data.getStats().elementDegree * Game.mapMenu.prevPlayer.weapon.elementDegree / 100) + "%";
            this.element.gotoAndStop(Game.mapMenu.prevPlayer.weapon.element);
            if(Game.mapMenu.prevPlayer.weapon.element == "none")
            {
               this.degree.text = "";
            }
         }
         else
         {
            this.element.gotoAndStop(this.data.element);
         }
         if(this.data.statusEffect == "weapon")
         {
            if(this.data == Spells.rapture && false)
            {
               this.sdegree.text = "";
               this.status.gotoAndStop("none");
            }
            else
            {
               this.weapon = Game.mapMenu.prevPlayer.weapon;
               if(Game.mapMenu.prevPlayer.flair1.statusEffect != Status.NONE)
               {
                  this.weapon = Game.mapMenu.prevPlayer.flair1;
               }
               else if(Game.mapMenu.prevPlayer.flair2.statusEffect != Status.NONE)
               {
                  this.weapon = Game.mapMenu.prevPlayer.flair2;
               }
               else if(Game.mapMenu.prevPlayer.flair3.statusEffect != Status.NONE)
               {
                  this.weapon = Game.mapMenu.prevPlayer.flair3;
               }
               this.sdegree.text = "+" + Math.floor(this.data.getStats().statusDegree * this.weapon.getStat("statusDegree") / 100);
               this.schance.text = "" + Math.floor(this.data.getStats().statusChance * this.weapon.getStat("statusChance") / 100) + "%";
               this.status.gotoAndStop(this.weapon.statusEffect);
               if(this.weapon.statusEffect == "none")
               {
                  this.status.gotoAndStop("none");
                  this.sdegree.text = "";
                  this.schance.text = "";
               }
            }
         }
         else
         {
            this.status.gotoAndStop(this.data.statusEffect);
         }
         if(this.data.buffEffect == "weapon")
         {
            if(this.data == Spells.rapture && false)
            {
               this.bdegree.text = "";
               this.buff.gotoAndStop("none");
            }
            else
            {
               if(Math.floor(this.data.getStats().buffDegree * Game.mapMenu.prevPlayer.weapon.getStat("buffDegree") / 100) < 0)
               {
                  this.plus = "";
               }
               this.bdegree.text = this.plus + Math.floor(this.data.getStats().buffDegree * Game.mapMenu.prevPlayer.weapon.getStat("buffDegree") / 100);
               this.bchance.text = "" + Math.floor(this.data.getStats().buffChance * Game.mapMenu.prevPlayer.weapon.getStat("buffChance") / 100) + "%";
               this.buff.gotoAndStop(Game.mapMenu.prevPlayer.weapon.buffEffect);
               if(Game.mapMenu.prevPlayer.weapon.buffEffect == "none")
               {
                  this.buff.gotoAndStop("none");
                  this.bdegree.text = "";
                  this.bchance.text = "";
               }
            }
         }
         else
         {
            this.buff.gotoAndStop(this.data.buffEffect);
         }
         if(this.data.type == Stats.ATTACK)
         {
            this.type.gotoAndStop(1);
         }
         if(this.data.type == Stats.MAGIC_ATTACK)
         {
            this.type.gotoAndStop(2);
         }
         if(this.data.type == Stats.NONE)
         {
            this.type.gotoAndStop(4);
         }
         this.title.setTextFormat(GUI.boldText);
         this.power.setTextFormat(GUI.boldText);
      }
      
      internal function frame32() : *
      {
         Global.translate(this.tf1,"type",this.amp);
         Global.translate(this.tf2,"element",this.amp);
         Global.translate(this.tf3,"target",this.amp);
         Global.translate(this.tf4,"power",this.amp);
         Global.translate(this.tf5,"status",this.amp);
         Global.translate(this.tf6,"buff",this.amp);
         this.plus = "+";
         Global.translate(this.title,"",this.ampT,this.data.name);
         Global.translate(this.body,"",this.ampB + 5,this.data.description);
         this.target.gotoAndStop(this.data.target);
         this.target2.gotoAndStop(this.data.alternative.target);
         this.degree.text = "" + this.data.getStats().elementDegree + "%";
         if(this.data.element == "none")
         {
            this.degree.text = "";
         }
         this.sdegree.text = "+" + this.data.getStats().statusDegree;
         this.sdegree2.text = "+" + this.data.alternative.getStats().statusDegree;
         if(this.data.statusEffect == Status.DEFEND || this.data.statusEffect == Status.HASTE || this.data.statusEffect == Status.DEATH || this.data.statusEffect == Status.RANDOM || this.data.statusEffect == Status.DISPEL)
         {
            this.sdegree.text = "";
            this.sdegree2.text = "";
         }
         this.schance.text = "" + this.data.getStats().statusChance + "%";
         this.schance2.text = "" + this.data.alternative.getStats().statusChance + "%";
         if(this.data.getStats().statusChance == 0)
         {
            this.schance.text = "";
            this.schance2.text = "";
         }
         if(this.data.statusEffect == "none")
         {
            this.sdegree.text = "";
            this.schance.text = "";
            this.sdegree2.text = "";
            this.schance2.text = "";
         }
         if(this.data.getStats().buffDegree < 0)
         {
            this.plus = "";
         }
         this.bdegree.text = this.plus + this.data.getStats().buffDegree;
         this.bdegree2.text = this.plus + this.data.alternative.getStats().buffDegree;
         this.bchance.text = "" + this.data.getStats().buffChance + "%";
         this.bchance2.text = "" + this.data.alternative.getStats().buffChance + "%";
         if(this.data.getStats().buffChance == 0)
         {
            this.bchance.text = "";
            this.bchance2.text = "";
         }
         if(this.data.buffEffect == "none")
         {
            this.bdegree.text = "";
            this.bchance.text = "";
            this.bdegree2.text = "";
            this.bchance2.text = "";
         }
         this.power.text = "" + this.data.getStats().damage;
         this.power2.text = "" + this.data.alternative.getStats().damage;
         if(this.data.getStats().damage == 0)
         {
            this.power.text = "---";
         }
         if(this.data.alternative.getStats().damage == 0)
         {
            this.power2.text = "---";
         }
         if(this.data.element == "weapon")
         {
            this.degree.text = "" + Math.floor(this.data.getStats().elementDegree * Game.mapMenu.prevPlayer.weapon.elementDegree / 100) + "%";
            this.element.gotoAndStop(Game.mapMenu.prevPlayer.weapon.element);
            if(Game.mapMenu.prevPlayer.weapon.element == "none")
            {
               this.degree.text = "";
            }
         }
         else
         {
            this.element.gotoAndStop(this.data.element);
         }
         if(this.data.statusEffect == "weapon")
         {
            if(this.data == Spells.rapture && false)
            {
               this.sdegree.text = "";
               this.status.gotoAndStop("none");
            }
            else
            {
               this.weapon = Game.mapMenu.prevPlayer.weapon;
               if(Game.mapMenu.prevPlayer.flair1.statusEffect != Status.NONE)
               {
                  this.weapon = Game.mapMenu.prevPlayer.flair1;
               }
               else if(Game.mapMenu.prevPlayer.flair2.statusEffect != Status.NONE)
               {
                  this.weapon = Game.mapMenu.prevPlayer.flair2;
               }
               else if(Game.mapMenu.prevPlayer.flair3.statusEffect != Status.NONE)
               {
                  this.weapon = Game.mapMenu.prevPlayer.flair3;
               }
               this.sdegree.text = "+" + Math.floor(this.data.getStats().statusDegree * this.weapon.getStat("statusDegree") / 100);
               this.schance.text = "" + Math.floor(this.data.getStats().statusChance * this.weapon.getStat("statusChance") / 100) + "%";
               this.sdegree2.text = "+" + Math.floor(this.data.alternative.getStats().statusDegree * this.weapon.getStat("statusDegree") / 100);
               this.schance2.text = "" + Math.floor(this.data.alternative.getStats().statusChance * this.weapon.getStat("statusChance") / 100) + "%";
               this.status.gotoAndStop(this.weapon.statusEffect);
               if(this.weapon.statusEffect == "none")
               {
                  this.status.gotoAndStop("none");
                  this.sdegree.text = "";
                  this.schance.text = "";
                  this.sdegree2.text = "";
                  this.schance2.text = "";
               }
            }
         }
         else
         {
            this.status.gotoAndStop(this.data.statusEffect);
         }
         if(this.data.buffEffect == "weapon")
         {
            if(this.data == Spells.rapture && false)
            {
               this.bdegree.text = "";
               this.buff.gotoAndStop("none");
            }
            else
            {
               if(Math.floor(this.data.getStats().buffDegree * Game.mapMenu.prevPlayer.weapon.getStat("buffDegree") / 100) < 0)
               {
                  this.plus = "";
               }
               this.bdegree.text = this.plus + Math.floor(this.data.getStats().buffDegree * Game.mapMenu.prevPlayer.weapon.getStat("buffDegree") / 100);
               this.bchance.text = "" + Math.floor(this.data.getStats().buffChance * Game.mapMenu.prevPlayer.weapon.getStat("buffChance") / 100) + "%";
               this.bdegree2.text = this.plus + Math.floor(this.data.alternative.getStats().buffDegree * Game.mapMenu.prevPlayer.weapon.getStat("buffDegree") / 100);
               this.bchance2.text = "" + Math.floor(this.data.alternative.getStats().buffChance * Game.mapMenu.prevPlayer.weapon.getStat("buffChance") / 100) + "%";
               this.buff.gotoAndStop(Game.mapMenu.prevPlayer.weapon.buffEffect);
               if(Game.mapMenu.prevPlayer.weapon.buffEffect == "none")
               {
                  this.buff.gotoAndStop("none");
                  this.bdegree.text = "";
                  this.bchance.text = "";
                  this.bdegree2.text = "";
                  this.bchance2.text = "";
               }
            }
         }
         else
         {
            this.buff.gotoAndStop(this.data.buffEffect);
         }
         if(this.data.type == Stats.ATTACK)
         {
            this.type.gotoAndStop(1);
         }
         if(this.data.type == Stats.MAGIC_ATTACK)
         {
            this.type.gotoAndStop(2);
         }
         if(this.data.type == Stats.NONE)
         {
            this.type.gotoAndStop(4);
         }
         this.title.setTextFormat(GUI.boldText);
         this.power.setTextFormat(GUI.boldText);
         this.status2.gotoAndStop(this.status.currentFrame);
         this.buff2.gotoAndStop(this.buff.currentFrame);
      }
      
      internal function frame36() : *
      {
         try
         {
            if(this.data == Equips.empty || !this.data.playerNo && !this.data.description)
            {
               Global.translate(this.title,"",this.ampT,this.data.name);
            }
            else
            {
               Global.translate(this.title,"lvl",this.ampT," " + this.data.level,false,this.data.name + " ");
            }
         }
         catch(e:Error)
         {
            if(data == Equips.empty || !data.playerNo && !data.description)
            {
               Global.translate(title,"",ampT,data.name);
            }
            else
            {
               Global.translate(title,"lvl",ampT," " + data.level,false,data.name + " ");
            }
         }
         if(Global.textLength < 3)
         {
            gotoAndStop(46);
         }
         else if(Global.textLength < 10)
         {
            gotoAndStop(45);
         }
         this.title.setTextFormat(GUI.boldText);
      }
      
      internal function frame45() : *
      {
         try
         {
            if(this.data == Equips.empty || !this.data.playerNo && !this.data.description)
            {
               Global.translate(this.title,"",this.ampT,this.data.name);
            }
            else
            {
               Global.translate(this.title,"lvl",this.ampT," " + this.data.level,false,this.data.name + " ");
            }
         }
         catch(e:Error)
         {
            if(data == Equips.empty || !data.playerNo && !data.description)
            {
               Global.translate(title,"",ampT,data.name);
            }
            else
            {
               Global.translate(title,"lvl",ampT," " + data.level,false,data.name + " ");
            }
         }
         this.title.setTextFormat(GUI.boldText);
      }
      
      internal function frame46() : *
      {
         try
         {
            if(this.data == Equips.empty || !this.data.playerNo && !this.data.description)
            {
               Global.translate(this.title,"",this.ampT,this.data.name);
            }
            else
            {
               Global.translate(this.title,"lvl",this.ampT," " + this.data.level,false,this.data.name + " ");
            }
         }
         catch(e:Error)
         {
            if(data == Equips.empty || !data.playerNo && !data.description)
            {
               Global.translate(title,"",ampT,data.name);
            }
            else
            {
               Global.translate(title,"lvl",ampT," " + data.level,false,data.name + " ");
            }
         }
         this.title.setTextFormat(GUI.boldText);
      }
      
      internal function frame47() : *
      {
         Global.translate(this.tf1,"type");
         Global.translate(this.tf2,"element");
         Global.translate(this.tf3,"target");
         Global.translate(this.tf4,"power");
         Global.translate(this.tf5,"status");
         Global.translate(this.tf6,"buff");
         if(this.data.alternative)
         {
            nextFrame();
         }
         this.plus = "+";
         Global.translate(this.title,"",this.ampT,this.data.name);
         Global.translate(this.body,"",this.ampB + 5,this.data.description);
         try
         {
            if(this.data is Summon && !Options.isCJK() && Summons.info[this.data.fname]["nickname"] != "")
            {
               Global.translate(this.title,"",0,Summons.info[this.data.fname]["nickname"]);
            }
         }
         catch(error:Error)
         {
         }
         this.target.gotoAndStop(this.data.target);
         this.degree.text = "" + this.data.getStats().elementDegree + "%";
         if(this.data.element == "none")
         {
            this.degree.text = "";
         }
         this.sdegree.text = "+" + this.data.getStats().statusDegree;
         if(this.data.statusEffect == Status.DEFEND || this.data.statusEffect == Status.HASTE || this.data.statusEffect == Status.DEATH || this.data.statusEffect == Status.RANDOM || this.data.statusEffect == Status.DISPEL)
         {
            this.sdegree.text = "";
         }
         this.schance.text = "" + this.data.getStats().statusChance + "%";
         if(this.data.getStats().statusChance == 0)
         {
            this.schance.text = "";
         }
         if(this.data.statusEffect == "none")
         {
            this.sdegree.text = "";
            this.schance.text = "";
         }
         if(this.data.getStats().buffDegree < 0)
         {
            this.plus = "";
         }
         this.bdegree.text = this.plus + this.data.getStats().buffDegree;
         this.bchance.text = "" + this.data.getStats().buffChance + "%";
         if(this.data.getStats().buffChance == 0)
         {
            this.bchance.text = "";
         }
         if(this.data.buffEffect == "none")
         {
            this.bdegree.text = "";
            this.bchance.text = "";
         }
         this.power.text = "" + this.data.getStats().damage;
         if(this.data.getStats().damage == 0)
         {
            this.power.text = "---";
         }
         if(!Battle.currentPlayer)
         {
            Battle.currentPlayer = Game.party[0];
         }
         if(this.data.element == "weapon")
         {
            this.degree.text = "" + Math.floor(this.data.getStats().elementDegree * Battle.currentPlayer.weapon.elementDegree / 100) + "%";
            this.element.gotoAndStop(Battle.currentPlayer.weapon.element);
            if(Battle.currentPlayer.weapon.element == "none")
            {
               this.degree.text = "";
            }
         }
         else
         {
            this.element.gotoAndStop(this.data.element);
         }
         if(this.data.statusEffect == "weapon")
         {
            if(this.data == Spells.rapture && false)
            {
               this.sdegree.text = "";
               this.status.gotoAndStop("none");
            }
            else
            {
               this.weapon = Battle.currentPlayer.weapon;
               if(Battle.currentPlayer.flair1.statusEffect != Status.NONE)
               {
                  this.weapon = Battle.currentPlayer.flair1;
               }
               else if(Battle.currentPlayer.flair2.statusEffect != Status.NONE)
               {
                  this.weapon = Battle.currentPlayer.flair2;
               }
               else if(Battle.currentPlayer.flair3.statusEffect != Status.NONE)
               {
                  this.weapon = Battle.currentPlayer.flair3;
               }
               this.sdegree.text = "+" + Math.floor(this.data.getStats().statusDegree * this.weapon.getStat("statusDegree") / 100);
               this.schance.text = "" + Math.floor(this.data.getStats().statusChance * this.weapon.getStat("statusChance") / 100) + "%";
               this.status.gotoAndStop(this.weapon.statusEffect);
               if(this.weapon.statusEffect == "none")
               {
                  this.status.gotoAndStop("none");
                  this.sdegree.text = "";
                  this.schance.text = "";
               }
            }
         }
         else
         {
            this.status.gotoAndStop(this.data.statusEffect);
         }
         if(this.data.buffEffect == "weapon")
         {
            if(this.data == Spells.rapture && false)
            {
               this.bdegree.text = "";
               this.buff.gotoAndStop("none");
            }
            else
            {
               if(Math.floor(this.data.getStats().buffDegree * Battle.currentPlayer.weapon.getStat("buffDegree") / 100) < 0)
               {
                  this.plus = "";
               }
               this.bdegree.text = this.plus + Math.floor(this.data.getStats().buffDegree * Battle.currentPlayer.weapon.getStat("buffDegree") / 100);
               this.bchance.text = "" + Math.floor(this.data.getStats().buffChance * Battle.currentPlayer.weapon.getStat("buffChance") / 100) + "%";
               this.buff.gotoAndStop(Battle.currentPlayer.weapon.buffEffect);
               if(Battle.currentPlayer.weapon.buffEffect == "none")
               {
                  this.buff.gotoAndStop("none");
                  this.bdegree.text = "";
                  this.bchance.text = "";
               }
            }
         }
         else
         {
            this.buff.gotoAndStop(this.data.buffEffect);
         }
         if(this.data.type == Stats.ATTACK)
         {
            this.type.gotoAndStop(1);
         }
         if(this.data.type == Stats.MAGIC_ATTACK)
         {
            this.type.gotoAndStop(2);
         }
         if(this.data.type == Stats.NONE)
         {
            this.type.gotoAndStop(4);
         }
         this.title.setTextFormat(GUI.boldText);
         this.power.setTextFormat(GUI.boldText);
      }
      
      internal function frame48() : *
      {
         Global.translate(this.tf1,"type");
         Global.translate(this.tf2,"element");
         Global.translate(this.tf3,"target");
         Global.translate(this.tf4,"power");
         Global.translate(this.tf5,"status");
         Global.translate(this.tf6,"buff");
         if(this.data.alternative)
         {
            nextFrame();
         }
         this.plus = "+";
         Global.translate(this.title,"",this.ampT,this.data.name);
         Global.translate(this.body,"",this.ampB + 5,this.data.description);
         try
         {
            if(this.data is Summon && !Options.isCJK() && Summons.info[this.data.fname]["nickname"] != "")
            {
               Global.translate(this.title,"",0,Summons.info[this.data.fname]["nickname"]);
            }
         }
         catch(error:Error)
         {
         }
         this.target.gotoAndStop(this.data.target);
         this.degree.text = "" + this.data.getStats().elementDegree + "%";
         if(this.data.element == "none")
         {
            this.degree.text = "";
         }
         this.sdegree.text = "+" + this.data.getStats().statusDegree;
         if(this.data.statusEffect == Status.DEFEND || this.data.statusEffect == Status.HASTE || this.data.statusEffect == Status.DEATH || this.data.statusEffect == Status.RANDOM || this.data.statusEffect == Status.DISPEL)
         {
            this.sdegree.text = "";
         }
         this.schance.text = "" + this.data.getStats().statusChance + "%";
         if(this.data.getStats().statusChance == 0)
         {
            this.schance.text = "";
         }
         if(this.data.statusEffect == "none")
         {
            this.sdegree.text = "";
            this.schance.text = "";
         }
         if(this.data.getStats().buffDegree < 0)
         {
            this.plus = "";
         }
         this.bdegree.text = this.plus + this.data.getStats().buffDegree;
         this.bchance.text = "" + this.data.getStats().buffChance + "%";
         if(this.data.getStats().buffChance == 0)
         {
            this.bchance.text = "";
         }
         if(this.data.buffEffect == "none")
         {
            this.bdegree.text = "";
            this.bchance.text = "";
         }
         this.power.text = "" + this.data.getStats().damage;
         if(this.data.getStats().damage == 0)
         {
            this.power.text = "---";
         }
         if(this.data.element == "weapon")
         {
            this.degree.text = "" + Math.floor(this.data.getStats().elementDegree * Battle.currentPlayer.weapon.elementDegree / 100) + "%";
            this.element.gotoAndStop(Battle.currentPlayer.weapon.element);
            if(Battle.currentPlayer.weapon.element == "none")
            {
               this.degree.text = "";
            }
         }
         else
         {
            this.element.gotoAndStop(this.data.element);
         }
         if(this.data.statusEffect == "weapon")
         {
            if(this.data == Spells.rapture && false)
            {
               this.sdegree.text = "";
               this.status.gotoAndStop("none");
            }
            else
            {
               Equip = Battle.currentPlayer.weapon;
               if(Battle.currentPlayer.flair1.statusEffect != Status.NONE)
               {
                  this.weapon = Battle.currentPlayer.flair1;
               }
               else if(Battle.currentPlayer.flair2.statusEffect != Status.NONE)
               {
                  this.weapon = Battle.currentPlayer.flair2;
               }
               else if(Battle.currentPlayer.flair3.statusEffect != Status.NONE)
               {
                  this.weapon = Battle.currentPlayer.flair3;
               }
               this.sdegree.text = "+" + Math.floor(this.data.getStats().statusDegree * this.weapon.getStat("statusDegree") / 100);
               this.schance.text = "" + Math.floor(this.data.getStats().statusChance * this.weapon.getStat("statusChance") / 100) + "%";
               this.status.gotoAndStop(this.weapon.statusEffect);
               if(this.weapon.statusEffect == "none")
               {
                  this.status.gotoAndStop("none");
                  this.sdegree.text = "";
                  this.schance.text = "";
               }
            }
         }
         else
         {
            this.status.gotoAndStop(this.data.statusEffect);
         }
         if(this.data.buffEffect == "weapon")
         {
            if(this.data == Spells.rapture && false)
            {
               this.bdegree.text = "";
               this.buff.gotoAndStop("none");
            }
            else
            {
               if(Math.floor(this.data.getStats().buffDegree * Battle.currentPlayer.weapon.getStat("buffDegree") / 100) < 0)
               {
                  this.plus = "";
               }
               this.bdegree.text = this.plus + Math.floor(this.data.getStats().buffDegree * Battle.currentPlayer.weapon.getStat("buffDegree") / 100);
               this.bchance.text = "" + Math.floor(this.data.getStats().buffChance * Battle.currentPlayer.weapon.getStat("buffChance") / 100) + "%";
               this.buff.gotoAndStop(Battle.currentPlayer.weapon.buffEffect);
               if(Battle.currentPlayer.weapon.buffEffect == "none")
               {
                  this.buff.gotoAndStop("none");
                  this.bdegree.text = "";
                  this.bchance.text = "";
               }
            }
         }
         else
         {
            this.buff.gotoAndStop(this.data.buffEffect);
         }
         if(this.data.type == Stats.ATTACK)
         {
            this.type.gotoAndStop(1);
         }
         if(this.data.type == Stats.MAGIC_ATTACK)
         {
            this.type.gotoAndStop(2);
         }
         if(this.data.type == Stats.NONE)
         {
            this.type.gotoAndStop(4);
         }
         this.title.setTextFormat(GUI.boldText);
         this.power.setTextFormat(GUI.boldText);
      }
      
      internal function frame51() : *
      {
         Global.translate(this.tf1,"resistance",this.amp);
         Global.translate(this.tf2,"element",this.amp);
         Global.translate(this.tf3,"status",this.amp);
         Global.translate(this.tf4,"buff",this.amp);
         Global.translate(this.title,"lvl",this.ampT," " + this.data.level,false,this.data.name + "  ");
         Global.translate(this.body,"",this.ampB + 5,this.data.description);
         this.title.setTextFormat(GUI.boldText);
         for each(this.mc in [this.hpi,this.atki,this.matki,this.defi,this.mdefi,this.acci,this.evai])
         {
            this.mc.alpha = 0.3;
         }
         if(this.data.getHP() > 0)
         {
            this.hp.text = "+" + this.data.getHP();
            this.hpi.alpha = 1;
            this.hp.setTextFormat(GUI.boldText);
         }
         if(this.data.getAttack() > 0)
         {
            this.atk.text = "+" + this.data.getAttack();
            this.atki.alpha = 1;
            this.atk.setTextFormat(GUI.boldText);
         }
         if(this.data.getMagicAttack() > 0)
         {
            this.matk.text = "+" + this.data.getMagicAttack();
            this.matki.alpha = 1;
            this.matk.setTextFormat(GUI.boldText);
         }
         if(this.data.getDefence() > 0)
         {
            this.def.text = "+" + this.data.getDefence();
            this.defi.alpha = 1;
            this.def.setTextFormat(GUI.boldText);
         }
         if(this.data.getMagicDefence() > 0)
         {
            this.mdef.text = "+" + this.data.getMagicDefence();
            this.mdefi.alpha = 1;
            this.mdef.setTextFormat(GUI.boldText);
         }
         if(this.data.getAccuracy() > 0)
         {
            this.acc.text = "+" + this.data.getAccuracy();
            this.acci.alpha = 1;
            this.acc.setTextFormat(GUI.boldText);
         }
         if(this.data.getEvade() > 0)
         {
            this.eva.text = "+" + this.data.getEvade();
            this.evai.alpha = 1;
            this.eva.setTextFormat(GUI.boldText);
         }
         if(this.data.getHP() < 0)
         {
            this.hp2.text = "" + this.data.getHP();
            this.hp2.setTextFormat(GUI.boldText);
            this.hpi.visible = false;
            GUI.redTint(this.hpi);
         }
         if(this.data.getAttack() < 0)
         {
            this.atk2.text = "" + this.data.getAttack();
            this.atk2.setTextFormat(GUI.boldText);
            this.atki.visible = false;
            GUI.redTint(this.atki);
         }
         if(this.data.getMagicAttack() < 0)
         {
            this.matk2.text = "" + this.data.getMagicAttack();
            this.matk2.setTextFormat(GUI.boldText);
            this.matki.visible = false;
            GUI.redTint(this.matki);
         }
         if(this.data.getDefence() < 0)
         {
            this.def2.text = "" + this.data.getDefence();
            this.def2.setTextFormat(GUI.boldText);
            this.defi.visible = false;
            GUI.redTint(this.defi);
         }
         if(this.data.getMagicDefence() < 0)
         {
            this.mdef2.text = "" + this.data.getMagicDefence();
            this.mdef2.setTextFormat(GUI.boldText);
            this.mdefi.visible = false;
            GUI.redTint(this.mdefi);
         }
         if(this.data.getAccuracy() < 0)
         {
            this.acc2.text = "" + this.data.getAccuracy();
            this.acc2.setTextFormat(GUI.boldText);
            this.acci.visible = false;
            GUI.redTint(this.acci);
         }
         if(this.data.getEvade() < 0)
         {
            this.eva2.text = "" + this.data.getEvade();
            this.eva2.setTextFormat(GUI.boldText);
            this.evai.visible = false;
            GUI.redTint(this.evai);
         }
         this.res = this.data.getResistance();
         this.i = 1;
         while(this.i < 4)
         {
            if(this.res.length > [this.i - 1])
            {
               this["res" + this.i].gotoAndStop(this.res[this.i - 1][0]);
               this["resistance" + this.i].text = "" + this.res[this.i - 1][1] + "%";
               this["resistance" + this.i].setTextFormat(GUI.boldText);
               if(this.res[this.i - 1][1] < 0)
               {
                  this["resistance" + this.i].textColor = 16711680;
               }
            }
            else
            {
               this["res" + this.i].gotoAndStop("none2");
               this["resistance" + this.i].text = "";
            }
            ++this.i;
         }
         this.element.gotoAndStop(this.data.element);
         if(Boolean(this.data.elementDegree) && this.data.element != "none")
         {
            this.degree.text = "" + this.data.elementDegree + "%";
         }
         this.status.gotoAndStop(this.data.statusEffect);
         if(Boolean(this.data.statusDegree) && this.data.statusEffect != "none")
         {
            this.sdegree.text = "+" + this.data.getStat("statusDegree") + "";
            this.schance.text = "" + this.data.getStat("statusChance") + "%";
         }
         this.buff.gotoAndStop(this.data.buffEffect);
         if(Boolean(this.data.buffDegree) && this.data.buffEffect != "none")
         {
            this.bdegree.text = "" + this.data.getStat("buffDegree") + "";
            this.bchance.text = "" + this.data.getStat("buffChance") + "%";
         }
      }
   }
}


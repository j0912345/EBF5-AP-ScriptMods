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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol4785")]
   public dynamic class skilldisplay_3699 extends MovieClip
   {
      public var bchance:TextField;
      
      public var bchance2:TextField;
      
      public var bdegree:TextField;
      
      public var bdegree2:TextField;
      
      public var body:TextField;
      
      public var buff:MovieClip;
      
      public var buff2:MovieClip;
      
      public var degree:TextField;
      
      public var element:MovieClip;
      
      public var power:TextField;
      
      public var power2:TextField;
      
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
      
      public var icon:Icon;
      
      public var data:Object;
      
      public var plus:String;
      
      public var weapon:Equip;
      
      public function skilldisplay_3699()
      {
         super();
         addFrameScript(1,this.frame2,2,this.frame3);
      }
      
      internal function frame2() : *
      {
         this.icon = new Icon(this.data,false,null,"none");
         this.addChild(this.icon);
         this.icon.x = -158;
         this.icon.y = -125;
         stop();
         if(Boolean(this.data) && Boolean(this.data.alternative))
         {
            gotoAndStop(3);
         }
         else if(this.data)
         {
            Global.translate(this.tf1,"type");
            Global.translate(this.tf2,"element");
            Global.translate(this.tf3,"target");
            Global.translate(this.tf4,"power");
            Global.translate(this.tf5,"status");
            Global.translate(this.tf6,"buff");
            GUI.setTextColor(this.tf1);
            GUI.setTextColor(this.tf2);
            GUI.setTextColor(this.tf3);
            GUI.setTextColor(this.tf4);
            GUI.setTextColor(this.tf5);
            GUI.setTextColor(this.tf6);
            this.plus = "+";
            try
            {
               Global.translate(this.title,"",20,this.data.name);
            }
            catch(e:Error)
            {
            }
            try
            {
               Global.translate(this.body,"",20,this.data.description);
            }
            catch(e:Error)
            {
            }
            try
            {
               if(this.data is Summon && Summons.info[this.data.fname]["nickname"] != "")
               {
                  Global.translate(this.title,"",0,Summons.info[this.data.fname]["nickname"]);
               }
            }
            catch(e:Error)
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
               this.degree.text = "" + Math.floor(this.data.getStats().elementDegree * parent.parent.prevPlayer.weapon.elementDegree / 100) + "%";
               this.element.gotoAndStop(parent.parent.prevPlayer.weapon.element);
               if(parent.parent.prevPlayer.weapon.element == "none")
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
                  this.weapon = parent.parent.prevPlayer.weapon;
                  if(parent.parent.prevPlayer.flair1.statusEffect != Status.NONE)
                  {
                     this.weapon = parent.parent.prevPlayer.flair1;
                  }
                  else if(parent.parent.prevPlayer.flair2.statusEffect != Status.NONE)
                  {
                     this.weapon = parent.parent.prevPlayer.flair2;
                  }
                  else if(parent.parent.prevPlayer.flair3.statusEffect != Status.NONE)
                  {
                     this.weapon = parent.parent.prevPlayer.flair3;
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
                  if(Math.floor(this.data.getStats().buffDegree * parent.parent.prevPlayer.weapon.getStat("buffDegree") / 100) < 0)
                  {
                     this.plus = "";
                  }
                  this.bdegree.text = this.plus + Math.floor(this.data.getStats().buffDegree * parent.parent.prevPlayer.weapon.getStat("buffDegree") / 100);
                  this.bchance.text = "" + Math.floor(this.data.getStats().buffChance * parent.parent.prevPlayer.weapon.getStat("buffChance") / 100) + "%";
                  this.buff.gotoAndStop(parent.parent.prevPlayer.weapon.buffEffect);
                  if(parent.parent.prevPlayer.weapon.buffEffect == "none")
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
      }
      
      internal function frame3() : *
      {
         this.icon = new Icon(this.data,false,null,"none");
         this.addChild(this.icon);
         this.icon.x = -158;
         this.icon.y = -125;
         if(this.data)
         {
            Global.translate(this.tf1,"type");
            Global.translate(this.tf2,"element");
            Global.translate(this.tf3,"target");
            Global.translate(this.tf4,"power");
            Global.translate(this.tf5,"status");
            Global.translate(this.tf6,"buff");
            GUI.setTextColor(this.tf1);
            GUI.setTextColor(this.tf2);
            GUI.setTextColor(this.tf3);
            GUI.setTextColor(this.tf4);
            GUI.setTextColor(this.tf5);
            GUI.setTextColor(this.tf6);
            this.plus = "+";
            try
            {
               Global.translate(this.title,"",20,this.data.name);
            }
            catch(e:Error)
            {
            }
            try
            {
               Global.translate(this.body,"",20,this.data.description);
            }
            catch(e:Error)
            {
            }
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
               this.degree.text = "" + Math.floor(this.data.getStats().elementDegree * parent.parent.prevPlayer.weapon.elementDegree / 100) + "%";
               this.element.gotoAndStop(parent.parent.prevPlayer.weapon.element);
               if(parent.parent.prevPlayer.weapon.element == "none")
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
                  this.weapon = parent.parent.prevPlayer.weapon;
                  if(parent.parent.prevPlayer.flair1.statusEffect != Status.NONE)
                  {
                     this.weapon = parent.parent.prevPlayer.flair1;
                  }
                  else if(parent.parent.prevPlayer.flair2.statusEffect != Status.NONE)
                  {
                     this.weapon = parent.parent.prevPlayer.flair2;
                  }
                  else if(parent.parent.prevPlayer.flair3.statusEffect != Status.NONE)
                  {
                     this.weapon = parent.parent.prevPlayer.flair3;
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
                  if(Math.floor(this.data.getStats().buffDegree * parent.parent.prevPlayer.weapon.getStat("buffDegree") / 100) < 0)
                  {
                     this.plus = "";
                  }
                  this.bdegree.text = this.plus + Math.floor(this.data.getStats().buffDegree * parent.parent.prevPlayer.weapon.getStat("buffDegree") / 100);
                  this.bchance.text = "" + Math.floor(this.data.getStats().buffChance * parent.parent.prevPlayer.weapon.getStat("buffChance") / 100) + "%";
                  this.bdegree2.text = this.plus + Math.floor(this.data.alternative.getStats().buffDegree * parent.parent.prevPlayer.weapon.getStat("buffDegree") / 100);
                  this.bchance2.text = "" + Math.floor(this.data.alternative.getStats().buffChance * parent.parent.prevPlayer.weapon.getStat("buffChance") / 100) + "%";
                  this.buff.gotoAndStop(parent.parent.prevPlayer.weapon.buffEffect);
                  if(parent.parent.prevPlayer.weapon.buffEffect == "none")
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
      }
   }
}


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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol15425")]
   public dynamic class Cocoon extends FoeMC
   {
      public var cc:int;
      
      public var cat1:MovieClip;
      
      public var cat2:MovieClip;
      
      public var cat3:MovieClip;
      
      public function Cocoon()
      {
         super();
         addFrameScript(0,this.frame1,17,this.frame18,33,this.frame34,42,this.frame43,45,this.frame46,50,this.frame51,60,this.frame61,64,this.frame65,71,this.frame72,84,this.frame85,90,this.frame91,92,this.frame93,94,this.frame95,95,this.frame96,112,this.frame113,124,this.frame125,167,this.frame168,173,this.frame174,187,this.frame188,195,this.frame196,208,this.frame209,209,this.frame210,214,this.frame215,225,this.frame226,297,this.frame298,298,this.frame299,299,this.frame300,316,this.frame317,319,this.frame320,320,this.frame321,321,this.frame322,347,this.frame348,364,this.frame365,365,this.frame366,366,this.frame367,398,this.frame399,399,this.frame400,457,this.frame458,467,this.frame468,494,this.frame495,521,this.frame522,527,this.frame528,528,this.frame529,545,this.frame546,641,this.frame642,649,this.frame650,656,this.frame657,657,this.frame658,658,this.frame659,681,this.frame682,761,this.frame762,771,this.frame772,776,this.frame777,785,this.frame786,790,this.frame791,794,this.frame795,798,this.frame799,828,this.frame829,829,this.frame830,834,this.frame835,838,this.frame839,839,this.frame840,846,this.frame847,854,this.frame855,858,this.frame859,862,this.frame863,866,this.frame867,870,this.frame871,874,this.frame875,878,this.frame879,906,this.frame907,907,this.frame908,915,this.frame916,917,this.frame918,920,this.frame921,924,this.frame925,938,this.frame939,947,this.frame948,948,this.frame949,974,this.frame975,975,this.frame976,997,this.frame998,998,this.frame999,1030,this.frame1031,1035,this.frame1036,1050,this.frame1051);
      }
      
      public function inccc() : *
      {
         ++this.cc;
         if(this.cc == 2)
         {
            this.cc = 0;
         }
      }
      
      internal function frame1() : *
      {
         init();
         this.cc = 0;
      }
      
      internal function frame18() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame34() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame43() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame46() : *
      {
         if(isSummon)
         {
            this.x -= 110;
         }
      }
      
      internal function frame51() : *
      {
         Battle.shake("small");
      }
      
      internal function frame61() : *
      {
         if(isSummon)
         {
            Battle.hidePlayers();
         }
      }
      
      internal function frame65() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame72() : *
      {
         Battle.shake("small");
      }
      
      internal function frame85() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame91() : *
      {
         if(isSummon && skin == 1)
         {
            Text.speech(Text.cocoon[7]);
         }
         if(isSummon && skin == 2)
         {
            Text.speech(Text.nest[13]);
         }
      }
      
      internal function frame93() : *
      {
         if(skin == 1)
         {
            Text.speech(Text.cocoon[11]);
         }
         if(skin == 1)
         {
            Text.speech(Text.cocoon[8]);
         }
         if(skin == 2)
         {
            Text.speech(Text.nest[7]);
         }
      }
      
      internal function frame95() : *
      {
         if(isSummon && skin == 1)
         {
            k();
         }
      }
      
      internal function frame96() : *
      {
         this.cat1.skin = 5;
      }
      
      internal function frame113() : *
      {
         this.cat2.skin = 5;
      }
      
      internal function frame125() : *
      {
         this.cat3.skin = 5;
      }
      
      internal function frame168() : *
      {
         k();
      }
      
      internal function frame174() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame188() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame196() : *
      {
         Battle.shake("small");
      }
      
      internal function frame209() : *
      {
         if(isSummon)
         {
            Battle.showPlayers();
         }
      }
      
      internal function frame210() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame215() : *
      {
         flee();
      }
      
      internal function frame226() : *
      {
         stand();
      }
      
      internal function frame298() : *
      {
         ks();
      }
      
      internal function frame299() : *
      {
         self.skinDamage();
         gotoAndPlay(currentFrame + 1);
      }
      
      internal function frame300() : *
      {
         if(skin == 1)
         {
            body.slime1.gotoAndPlay("hit");
            body.slime2.gotoAndPlay("hit");
            body.slime3.gotoAndPlay("hit");
         }
      }
      
      internal function frame317() : *
      {
         Text.speech(Text.cocoon[13]);
         Text.speech(Text.nest[12]);
      }
      
      internal function frame320() : *
      {
         k();
      }
      
      internal function frame321() : *
      {
         self.skinDamage();
         gotoAndPlay(currentFrame + 1);
      }
      
      internal function frame322() : *
      {
         if(skin == 1)
         {
            body.slime1.gotoAndPlay("hit2");
            body.slime2.gotoAndPlay("hit2");
            body.slime3.gotoAndPlay("hit2");
         }
         Battle.shake("tiny");
      }
      
      internal function frame348() : *
      {
         k();
      }
      
      internal function frame365() : *
      {
         k();
      }
      
      internal function frame366() : *
      {
         skinDamage = 1;
         gotoAndPlay(currentFrame + 1);
      }
      
      internal function frame367() : *
      {
         if(skin == 1)
         {
            body.slime1.gotoAndPlay("heal");
            body.slime2.gotoAndPlay("heal");
            body.slime3.gotoAndPlay("heal");
         }
         playSound("heal2");
      }
      
      internal function frame399() : *
      {
         k();
      }
      
      internal function frame400() : *
      {
         if(skin == 1)
         {
            body.slime1.gotoAndPlay("hit2");
            body.slime2.gotoAndPlay("hit2");
            body.slime3.gotoAndPlay("hit2");
         }
         Battle.shake("tiny");
         Battle.whiteFlash();
      }
      
      internal function frame458() : *
      {
         if(skin == 1)
         {
            body.slime1.gotoAndPlay("hit2");
            body.slime2.gotoAndPlay("hit2");
            body.slime3.gotoAndPlay("hit2");
         }
         Battle.shake("tiny");
      }
      
      internal function frame468() : *
      {
         if(skin == 1)
         {
            body.slime1.gotoAndPlay("hit2");
            body.slime2.gotoAndPlay("hit2");
            body.slime3.gotoAndPlay("hit2");
         }
         Battle.shake("tiny");
      }
      
      internal function frame495() : *
      {
         if(skin == 1)
         {
            body.slime1.gotoAndPlay("hit2");
            body.slime2.gotoAndPlay("hit2");
            body.slime3.gotoAndPlay("hit2");
         }
         Battle.shake("tiny");
      }
      
      internal function frame522() : *
      {
         if(skin == 2)
         {
            gotoAndPlay("die2");
         }
      }
      
      internal function frame528() : *
      {
         Battle.shake("small");
      }
      
      internal function frame529() : *
      {
         dropItems();
      }
      
      internal function frame546() : *
      {
         Text.speech(Text.cocoon[15]);
         Text.speech(Text.cocoon[16]);
      }
      
      internal function frame642() : *
      {
         Medals.unlock(Medals.barkAndBite);
         Flags.NEST_DEFEATED.quantity = 1;
         Battle.bossDefeated();
      }
      
      internal function frame650() : *
      {
         dead();
      }
      
      internal function frame657() : *
      {
         this.cat1.skin = 4;
         this.cat2.skin = 5;
      }
      
      internal function frame658() : *
      {
         Battle.shake("small");
      }
      
      internal function frame659() : *
      {
         dropItems();
      }
      
      internal function frame682() : *
      {
         Text.speech(Text.cocoon[15]);
         Text.speech(Text.cocoon[16]);
      }
      
      internal function frame762() : *
      {
         Medals.unlock(Medals.catastrophe);
         Flags.SUPER_NEST_DEFEATED.quantity = 1;
         Battle.bossDefeated();
      }
      
      internal function frame772() : *
      {
         dead();
      }
      
      internal function frame777() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame786() : *
      {
         if(skin == 1)
         {
            body.slime1.gotoAndPlay("heal");
            body.slime2.gotoAndPlay("heal");
            body.slime3.gotoAndPlay("heal");
         }
      }
      
      internal function frame791() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame795() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame799() : *
      {
         self.attack1();
      }
      
      internal function frame829() : *
      {
         k();
      }
      
      internal function frame830() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame835() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame839() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame840() : *
      {
         if(skin == 1)
         {
            body.slime1.gotoAndPlay("hit2");
            body.slime2.gotoAndPlay("hit2");
            body.slime3.gotoAndPlay("hit2");
         }
      }
      
      internal function frame847() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame855() : *
      {
         self.special1();
      }
      
      internal function frame859() : *
      {
         self.special1();
      }
      
      internal function frame863() : *
      {
         self.special1();
      }
      
      internal function frame867() : *
      {
         self.special1();
      }
      
      internal function frame871() : *
      {
         self.special1();
      }
      
      internal function frame875() : *
      {
         self.special1();
      }
      
      internal function frame879() : *
      {
         self.special1();
      }
      
      internal function frame907() : *
      {
         k();
      }
      
      internal function frame908() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame916() : *
      {
         if(skin == 1)
         {
            body.slime1.gotoAndPlay("hit");
            body.slime2.gotoAndPlay("hit");
            body.slime3.gotoAndPlay("hit");
         }
      }
      
      internal function frame918() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.special2();
         }
      }
      
      internal function frame921() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame925() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame939() : *
      {
         if(isSummon && skin == 1)
         {
            Summons.currentSummon.effect();
         }
      }
      
      internal function frame948() : *
      {
         k();
      }
      
      internal function frame949() : *
      {
         if(skin == 2)
         {
            this.cat1.skin = 5;
         }
      }
      
      internal function frame975() : *
      {
         Text.speech(Text.cocoon[14]);
         if(skin == 2)
         {
            Text.speech(Text.nest[8]);
         }
         Text.speech(Text.nest[11]);
      }
      
      internal function frame976() : *
      {
         self.magic1();
      }
      
      internal function frame998() : *
      {
         k();
      }
      
      internal function frame999() : *
      {
         if(skin == 2)
         {
            this.cat1.skin = 4;
         }
      }
      
      internal function frame1031() : *
      {
         Text.speech(Text.cocoon[14]);
         if(skin == 2)
         {
            Text.speech(Text.nest[8]);
         }
         Text.speech(Text.nest[11]);
      }
      
      internal function frame1036() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect3();
         }
         else
         {
            self.magic2();
         }
      }
      
      internal function frame1051() : *
      {
         k();
      }
   }
}


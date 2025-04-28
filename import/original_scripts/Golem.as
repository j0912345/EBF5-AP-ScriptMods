package
{
   import fl.transitions.easing.*;
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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol14410")]
   public dynamic class Golem extends FoeMC
   {
      public var rock:int;
      
      public var hurt:Boolean;
      
      public function Golem()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,3,this.frame4,48,this.frame49,51,this.frame52,62,this.frame63,68,this.frame69,94,this.frame95,99,this.frame100,101,this.frame102,102,this.frame103,117,this.frame118,154,this.frame155,167,this.frame168,169,this.frame170,209,this.frame210,211,this.frame212,229,this.frame230,230,this.frame231,231,this.frame232,254,this.frame255,255,this.frame256,256,this.frame257,266,this.frame267,268,this.frame269,269,this.frame270,270,this.frame271,272,this.frame273,274,this.frame275,275,this.frame276,298,this.frame299,325,this.frame326,365,this.frame366,366,this.frame367,383,this.frame384,385,this.frame386,386,this.frame387,413,this.frame414,415,this.frame416,423,this.frame424,425,this.frame426,440,this.frame441,441,this.frame442,444,this.frame445,445,this.frame446,456,this.frame457,467,this.frame468,479,this.frame480,481,this.frame482,490,this.frame491,491,this.frame492,505,this.frame506,506,this.frame507,509,this.frame510,510,this.frame511,518,this.frame519,519,this.frame520,522,this.frame523,523,this.frame524,533,this.frame534,534,this.frame535,537,this.frame538,538,this.frame539,546,this.frame547,557,this.frame558,569,this.frame570,584,this.frame585,593,this.frame594,602,this.frame603,608,this.frame609,610,this.frame611,644,this.frame645,656,this.frame657,665,this.frame666,668,this.frame669,682,this.frame683,683,this.frame684,689,this.frame690,695,this.frame696,699,this.frame700,723,this.frame724,735,this.frame736,737,this.frame738,739,this.frame740,760,this.frame761,761,this.frame762,770,this.frame771,787,this.frame788,798,this.frame799,806,this.frame807,808,this.frame809,812,this.frame813,816,this.frame817,820,this.frame821,824,this.frame825,832,this.frame833,833,this.frame834,834,this.frame835,835,this.frame836,840,this.frame841,842,this.frame843,857,this.frame858,879,this.frame880,914,this.frame915,917,this.frame918,936,this.frame937,938,this.frame939,948,this.frame949,968,this.frame969,969,this.frame970,985,this.frame986,996,this.frame997,1008,this.frame1009,1010,this.frame1011,1020,this.frame1021,1036,this.frame1037,1037,this.frame1038,1041,this.frame1042,1042,this.frame1043,1055,this.frame1056,1067,this.frame1068,1078,this.frame1079,1090,this.frame1091,1128,this.frame1129,1147,this.frame1148);
      }
      
      public function stabEffect() : *
      {
         if(skin == 3)
         {
            makeMagic(EffectThunder,0,0);
         }
      }
      
      internal function frame1() : *
      {
         init();
         this.rock = 1;
      }
      
      internal function frame3() : *
      {
         this.hurt = false;
      }
      
      internal function frame4() : *
      {
         randomDelay(25);
      }
      
      internal function frame49() : *
      {
         Text.speech(Text.golems[2]);
      }
      
      internal function frame52() : *
      {
         if(isSummon)
         {
            Battle.hidePlayers();
         }
      }
      
      internal function frame63() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame69() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame95() : *
      {
         if(skin == 4 && !isSummon)
         {
            Text.speech(Text.arena[10]);
         }
      }
      
      internal function frame100() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.golems[1]);
         }
         if(!isSummon)
         {
            if(skin == 3)
            {
               Text.speech(Text.golems[4]);
            }
         }
      }
      
      internal function frame102() : *
      {
         k();
      }
      
      internal function frame103() : *
      {
         freezeSound();
      }
      
      internal function frame118() : *
      {
         frozen();
      }
      
      internal function frame155() : *
      {
         if(isSummon)
         {
            Battle.showPlayers();
         }
      }
      
      internal function frame168() : *
      {
         flee();
      }
      
      internal function frame170() : *
      {
         stand();
      }
      
      internal function frame210() : *
      {
         ks();
      }
      
      internal function frame212() : *
      {
         playSound("348");
      }
      
      internal function frame230() : *
      {
         k();
      }
      
      internal function frame231() : *
      {
         playSound("349");
      }
      
      internal function frame232() : *
      {
         playSound("350");
      }
      
      internal function frame255() : *
      {
         k();
      }
      
      internal function frame256() : *
      {
         Battle.shake("small");
         playSound("351");
      }
      
      internal function frame257() : *
      {
         playSound("352");
      }
      
      internal function frame267() : *
      {
         playSound("353");
      }
      
      internal function frame269() : *
      {
         playSound("354");
      }
      
      internal function frame270() : *
      {
         playSound("355");
      }
      
      internal function frame271() : *
      {
         Battle.shake("small");
      }
      
      internal function frame273() : *
      {
         playSound("356");
      }
      
      internal function frame275() : *
      {
         playSound("357");
      }
      
      internal function frame276() : *
      {
         Battle.shake("small");
         playSound("358");
      }
      
      internal function frame299() : *
      {
         randomDelay(15);
      }
      
      internal function frame326() : *
      {
         dropItems();
      }
      
      internal function frame366() : *
      {
         dead();
      }
      
      internal function frame367() : *
      {
         playSound("359");
      }
      
      internal function frame384() : *
      {
         if(Battle.selectedTarget == self && Battle.menu.selectedSkill != Spells.capture)
         {
            Text.speech(Text.creeps[10]);
            Text.speech(Text.creeps[11]);
         }
      }
      
      internal function frame386() : *
      {
         k();
      }
      
      internal function frame387() : *
      {
         playSound("heal2");
      }
      
      internal function frame414() : *
      {
         k();
      }
      
      internal function frame416() : *
      {
         setXY();
         move(35,22,Regular.easeInOut);
      }
      
      internal function frame424() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.golems[5]);
         }
      }
      
      internal function frame426() : *
      {
         swapLayer();
      }
      
      internal function frame441() : *
      {
         this.stabEffect();
      }
      
      internal function frame442() : *
      {
         Battle.finalHit = false;
         self.attack1();
      }
      
      internal function frame445() : *
      {
         this.stabEffect();
      }
      
      internal function frame446() : *
      {
         self.attack1();
      }
      
      internal function frame457() : *
      {
         resetXY();
         move(0,22,Regular.easeInOut);
      }
      
      internal function frame468() : *
      {
         resetLayer();
      }
      
      internal function frame480() : *
      {
         k();
      }
      
      internal function frame482() : *
      {
         setXY();
         move(isSummon ? -35 : 35,22,Regular.easeInOut);
      }
      
      internal function frame491() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.golems[5]);
         }
      }
      
      internal function frame492() : *
      {
         swapLayer();
      }
      
      internal function frame506() : *
      {
         this.stabEffect();
      }
      
      internal function frame507() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.GolemTopaz.effect();
         }
         else
         {
            self.attack2();
         }
      }
      
      internal function frame510() : *
      {
         this.stabEffect();
      }
      
      internal function frame511() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.GolemTopaz.effect();
         }
         else
         {
            self.attack2();
         }
      }
      
      internal function frame519() : *
      {
         this.stabEffect();
      }
      
      internal function frame520() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.GolemTopaz.effect();
         }
         else
         {
            self.attack2();
         }
      }
      
      internal function frame523() : *
      {
         this.stabEffect();
      }
      
      internal function frame524() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.GolemTopaz.effect();
         }
         else
         {
            self.attack2();
         }
      }
      
      internal function frame534() : *
      {
         this.stabEffect();
      }
      
      internal function frame535() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.GolemTopaz.effect();
         }
         else
         {
            self.attack2();
         }
      }
      
      internal function frame538() : *
      {
         this.stabEffect();
      }
      
      internal function frame539() : *
      {
         if(isSummon)
         {
            Summons.GolemTopaz.effect();
         }
         else
         {
            self.attack2();
         }
      }
      
      internal function frame547() : *
      {
         resetXY();
         move(0,22,Regular.easeInOut);
      }
      
      internal function frame558() : *
      {
         resetLayer();
      }
      
      internal function frame570() : *
      {
         k();
      }
      
      internal function frame585() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame594() : *
      {
         if(isSummon)
         {
            Summons.GolemBone.effect();
         }
         else
         {
            self.magic1(1);
         }
      }
      
      internal function frame603() : *
      {
         if(!isSummon)
         {
            self.magic1(2);
         }
      }
      
      internal function frame609() : *
      {
         if(!isSummon)
         {
            self.spawnOres();
         }
      }
      
      internal function frame611() : *
      {
         k();
      }
      
      internal function frame645() : *
      {
         if(isSummon)
         {
            Summons.GolemPearl.effect();
         }
         else
         {
            self.special1();
         }
      }
      
      internal function frame657() : *
      {
         k();
      }
      
      internal function frame666() : *
      {
         this.rock = Math.random() * 2 + 1;
         if(skin == 1)
         {
            this.rock = 3;
         }
      }
      
      internal function frame669() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame683() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame684() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.golems[3]);
         }
      }
      
      internal function frame690() : *
      {
         self.special2();
         if(this.rock == 1)
         {
            makeMagic(EffectFire2,0,0,true);
         }
         if(this.rock == 2)
         {
            makeMagic(EffectThunder,0,0,true);
         }
         if(this.rock == 3)
         {
            makeMagic(EffectPurple,0,0,true);
         }
      }
      
      internal function frame696() : *
      {
         self.spawnOres();
      }
      
      internal function frame700() : *
      {
         k();
      }
      
      internal function frame724() : *
      {
         Battle.shake("big");
         self.attack4();
         makeMagic(EffectEarth2,0,0,true);
      }
      
      internal function frame736() : *
      {
         self.spawnOres();
      }
      
      internal function frame738() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.golems[7]);
         }
      }
      
      internal function frame740() : *
      {
         k();
      }
      
      internal function frame761() : *
      {
         makeMagic(WhiteFlash,0,0);
      }
      
      internal function frame762() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame771() : *
      {
         if(!isSummon)
         {
            self.magic2();
         }
      }
      
      internal function frame788() : *
      {
         k();
      }
      
      internal function frame799() : *
      {
         summonOnTop();
      }
      
      internal function frame807() : *
      {
         if(isSummon)
         {
            Summons.GolemAmethyst.effect();
         }
         else
         {
            self.attack5(1);
            if(Boolean(Battle.selectedTarget) && !Battle.selectedTarget.dead)
            {
               makeMagic(EffectStab,0,0);
            }
         }
      }
      
      internal function frame809() : *
      {
         if(isSummon)
         {
            Summons.GolemAmethyst.effect();
         }
         else
         {
            self.attack5(1);
            if(Boolean(Battle.selectedTarget) && !Battle.selectedTarget.dead)
            {
               makeMagic(EffectStab2,0,0);
            }
         }
      }
      
      internal function frame813() : *
      {
         if(isSummon)
         {
            Summons.GolemAmethyst.effect();
         }
         else
         {
            self.attack5(1);
            if(Boolean(Battle.selectedTarget) && !Battle.selectedTarget.dead)
            {
               makeMagic(EffectStab2,0,0);
            }
         }
      }
      
      internal function frame817() : *
      {
         if(isSummon)
         {
            Summons.GolemAmethyst.effect();
         }
         else
         {
            self.attack5(1);
            if(Boolean(Battle.selectedTarget) && !Battle.selectedTarget.dead)
            {
               makeMagic(EffectStab2,0,0);
            }
         }
      }
      
      internal function frame821() : *
      {
         if(isSummon)
         {
            Summons.GolemAmethyst.effect();
         }
         else
         {
            self.attack5(1);
            if(Boolean(Battle.selectedTarget) && !Battle.selectedTarget.dead)
            {
               makeMagic(EffectStab2,0,0);
            }
         }
      }
      
      internal function frame825() : *
      {
         if(isSummon)
         {
            Summons.GolemAmethyst.effect();
         }
         else
         {
            self.attack5(1);
            if(Boolean(Battle.selectedTarget) && !Battle.selectedTarget.dead)
            {
               makeMagic(EffectStab,0,0);
            }
         }
      }
      
      internal function frame833() : *
      {
         if(isSummon)
         {
            Summons.GolemAmethyst.effect2();
         }
         else
         {
            self.attack5(2);
            if(Boolean(Battle.selectedTarget) && !Battle.selectedTarget.dead)
            {
               makeMagic(EffectSmash,0,0);
            }
         }
      }
      
      internal function frame834() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame835() : *
      {
         if(isSummon)
         {
            Battle.showPlayers();
         }
      }
      
      internal function frame836() : *
      {
         Text.speech(Text.golems[6]);
      }
      
      internal function frame841() : *
      {
         summonOnTop(false);
      }
      
      internal function frame843() : *
      {
         if(isSummon)
         {
            k();
         }
         else
         {
            gotoAndPlay("intro2");
         }
      }
      
      internal function frame858() : *
      {
         self.magic3();
      }
      
      internal function frame880() : *
      {
         k();
      }
      
      internal function frame915() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.golems[8]);
         }
      }
      
      internal function frame918() : *
      {
         self.special3();
      }
      
      internal function frame937() : *
      {
         k();
      }
      
      internal function frame939() : *
      {
         setXY();
         move(70,22,Regular.easeInOut);
      }
      
      internal function frame949() : *
      {
         swapLayer(true);
      }
      
      internal function frame969() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.defenders[2]);
         }
      }
      
      internal function frame970() : *
      {
         self.special4();
         makeMagic(EffectWater2,0,0);
      }
      
      internal function frame986() : *
      {
         resetXY();
         move(0,22,Regular.easeInOut);
      }
      
      internal function frame997() : *
      {
         resetLayer();
      }
      
      internal function frame1009() : *
      {
         k();
      }
      
      internal function frame1011() : *
      {
         setXY();
         move(100,22,Regular.easeInOut);
      }
      
      internal function frame1021() : *
      {
         swapLayer();
      }
      
      internal function frame1037() : *
      {
         this.stabEffect();
      }
      
      internal function frame1038() : *
      {
         Battle.finalHit = false;
         self.attack6(1);
      }
      
      internal function frame1042() : *
      {
         this.stabEffect();
      }
      
      internal function frame1043() : *
      {
         Battle.finalHit = false;
         self.attack6(1);
      }
      
      internal function frame1056() : *
      {
         self.attack6(2);
         Battle.shake("small");
      }
      
      internal function frame1068() : *
      {
         resetXY();
         move(0,22,Regular.easeInOut);
      }
      
      internal function frame1079() : *
      {
         resetLayer();
      }
      
      internal function frame1091() : *
      {
         k();
      }
      
      internal function frame1129() : *
      {
         self.special5();
      }
      
      internal function frame1148() : *
      {
         k();
      }
   }
}


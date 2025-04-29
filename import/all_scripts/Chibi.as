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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol15686")]
   public dynamic class Chibi extends FoeMC
   {
      public var swordType:int;
      
      public function Chibi()
      {
         super();
         addFrameScript(0,this.frame1,52,this.frame53,54,this.frame55,84,this.frame85,87,this.frame88,89,this.frame90,130,this.frame131,132,this.frame133,149,this.frame150,150,this.frame151,180,this.frame181,181,this.frame182,196,this.frame197,197,this.frame198,213,this.frame214,217,this.frame218,218,this.frame219,219,this.frame220,241,this.frame242,243,this.frame244,244,this.frame245,245,this.frame246,318,this.frame319,329,this.frame330,339,this.frame340,342,this.frame343,352,this.frame353,358,this.frame359,366,this.frame367,370,this.frame371,377,this.frame378,382,this.frame383,383,this.frame384,397,this.frame398,407,this.frame408,413,this.frame414,421,this.frame422,425,this.frame426,431,this.frame432,436,this.frame437,441,this.frame442,445,this.frame446,446,this.frame447,451,this.frame452,452,this.frame453,466,this.frame467,475,this.frame476,477,this.frame478,483,this.frame484,491,this.frame492,495,this.frame496,498,this.frame499,502,this.frame503,507,this.frame508,513,this.frame514,515,this.frame516,520,this.frame521,522,this.frame523,524,this.frame525,531,this.frame532,539,this.frame540,545,this.frame546,547,this.frame548,553,this.frame554,554,this.frame555,559,this.frame560,574,this.frame575,595,this.frame596,603,this.frame604,607,this.frame608,626,this.frame627,636,this.frame637,641,this.frame642,662,this.frame663,673,this.frame674,698,this.frame699,701,this.frame702,705,this.frame706,717,this.frame718);
      }
      
      public function swordEffect() : *
      {
         if(this.swordType == 1)
         {
            makeMagic(EffectThunder,0,0);
         }
         if(this.swordType == 2)
         {
            makeMagic(EffectFire2,0,0);
         }
         if(this.swordType == 3)
         {
            makeMagic(EffectIce2,0,0);
         }
      }
      
      internal function frame1() : *
      {
         this.swordType = 0;
         init();
      }
      
      internal function frame53() : *
      {
         if(skin == 1)
         {
            Text.speech(Text.chibi[1]);
         }
         if(skin == 2)
         {
            Text.speech(Text.chibi[5]);
         }
         if(skin == 3)
         {
            Text.speech(Text.chibi[10]);
         }
      }
      
      internal function frame55() : *
      {
         k();
      }
      
      internal function frame85() : *
      {
         Text.speech(Text.chibi[4]);
         Text.speech(Text.chibi[9]);
      }
      
      internal function frame88() : *
      {
         flee();
      }
      
      internal function frame90() : *
      {
         stand();
      }
      
      internal function frame131() : *
      {
         ks();
      }
      
      internal function frame133() : *
      {
         head.eyes.gotoAndPlay("evade");
      }
      
      internal function frame150() : *
      {
         k();
      }
      
      internal function frame151() : *
      {
         head.eyes.gotoAndPlay("evade");
         playSound("heal2");
      }
      
      internal function frame181() : *
      {
         k();
      }
      
      internal function frame182() : *
      {
         freezeSound();
      }
      
      internal function frame197() : *
      {
         frozen();
      }
      
      internal function frame198() : *
      {
         head.eyes.gotoAndPlay("hit");
      }
      
      internal function frame214() : *
      {
         if(skin < 3)
         {
            Text.speech(Text.chibi[7]);
         }
      }
      
      internal function frame218() : *
      {
         k();
      }
      
      internal function frame219() : *
      {
         head.eyes.gotoAndPlay("hit");
      }
      
      internal function frame220() : *
      {
         if(self.dead)
         {
            self.dead = false;
            self.SP = 0;
         }
      }
      
      internal function frame242() : *
      {
         if(skin == 1)
         {
            Text.speech(Text.chibi[2]);
         }
      }
      
      internal function frame244() : *
      {
         if(Boolean(self) && self.realHP <= 0)
         {
            gotoAndPlay("flee");
            Skills.giveStatus(self,Status.SURRENDER,99);
            self.dead = true;
         }
      }
      
      internal function frame245() : *
      {
         k();
      }
      
      internal function frame246() : *
      {
         head.eyes.gotoAndPlay("dead");
         if(skin == 3)
         {
            Battle.whiteFlash();
         }
      }
      
      internal function frame319() : *
      {
         dropItems();
      }
      
      internal function frame330() : *
      {
         Battle.bossDefeated();
         Medals.unlock(Medals.goldenGod);
      }
      
      internal function frame340() : *
      {
         if(skin == 3)
         {
            Text.speech(Text.chibi[15]);
         }
      }
      
      internal function frame343() : *
      {
         dead();
      }
      
      internal function frame353() : *
      {
         setXY();
         move(20,15,Regular.easeOut);
      }
      
      internal function frame359() : *
      {
         swapLayer();
      }
      
      internal function frame367() : *
      {
         Battle.finalHit = false;
         self.attack1();
         this.swordEffect();
         head.eyes.gotoAndPlay("attack");
      }
      
      internal function frame371() : *
      {
         self.attack1();
         this.swordEffect();
      }
      
      internal function frame378() : *
      {
         resetXY();
         move(0,15,Regular.easeOut);
      }
      
      internal function frame383() : *
      {
         resetLayer();
      }
      
      internal function frame384() : *
      {
         if(skin == 1)
         {
            Text.speech(Text.chibi[2]);
         }
      }
      
      internal function frame398() : *
      {
         k();
      }
      
      internal function frame408() : *
      {
         setXY();
         move(20,15,Regular.easeOut);
      }
      
      internal function frame414() : *
      {
         swapLayer();
      }
      
      internal function frame422() : *
      {
         Battle.finalHit = false;
         self.attack2();
         this.swordEffect();
         head.eyes.gotoAndPlay("attack");
      }
      
      internal function frame426() : *
      {
         Battle.finalHit = false;
         self.attack2();
         this.swordEffect();
      }
      
      internal function frame432() : *
      {
         Battle.finalHit = false;
         self.attack2();
         this.swordEffect();
      }
      
      internal function frame437() : *
      {
         Battle.finalHit = false;
         self.attack2();
         this.swordEffect();
      }
      
      internal function frame442() : *
      {
         Battle.finalHit = false;
         self.attack2();
         this.swordEffect();
      }
      
      internal function frame446() : *
      {
         self.attack2();
         this.swordEffect();
      }
      
      internal function frame447() : *
      {
         resetXY();
         move(0,15,Regular.easeOut);
      }
      
      internal function frame452() : *
      {
         resetLayer();
      }
      
      internal function frame453() : *
      {
         if(skin == 1)
         {
            Text.speech(Text.chibi[2]);
         }
         if(skin == 3)
         {
            Text.speech(Text.chibi[12]);
         }
      }
      
      internal function frame467() : *
      {
         k();
      }
      
      internal function frame476() : *
      {
         if(isSummon)
         {
            Summons.ChibiKnightUltra.effect2();
         }
         else
         {
            self.attack33();
         }
      }
      
      internal function frame478() : *
      {
         setXY();
         move(isSummon ? -20 : 20,15,Regular.easeOut);
      }
      
      internal function frame484() : *
      {
         swapLayer();
      }
      
      internal function frame492() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.ChibiKnightUltra.effect();
         }
         else
         {
            self.attack3();
         }
         this.swordEffect();
         head.eyes.gotoAndPlay("attack");
      }
      
      internal function frame496() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.ChibiKnightUltra.effect();
         }
         else
         {
            self.attack3();
         }
         this.swordEffect();
      }
      
      internal function frame499() : *
      {
         if(isSummon)
         {
            Summons.ChibiKnightUltra.effect2();
         }
         else
         {
            self.attack33();
         }
      }
      
      internal function frame503() : *
      {
         setXY();
         move(isSummon ? -20 : 20,12,Regular.easeOut);
      }
      
      internal function frame508() : *
      {
         resetLayer();
         swapLayer();
      }
      
      internal function frame514() : *
      {
         head.eyes.gotoAndPlay("attack");
      }
      
      internal function frame516() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.ChibiKnightUltra.effect();
         }
         else
         {
            self.attack3();
         }
         this.swordEffect();
      }
      
      internal function frame521() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.ChibiKnightUltra.effect();
         }
         else
         {
            self.attack3();
         }
         this.swordEffect();
      }
      
      internal function frame523() : *
      {
         if(isSummon)
         {
            Summons.ChibiKnightUltra.effect2();
         }
         else
         {
            self.attack33();
         }
      }
      
      internal function frame525() : *
      {
         setXY();
         move(isSummon ? -20 : 20,12,Regular.easeOut);
      }
      
      internal function frame532() : *
      {
         resetLayer();
         swapLayer();
      }
      
      internal function frame540() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.ChibiKnightUltra.effect();
         }
         else
         {
            self.attack3();
         }
         this.swordEffect();
         head.eyes.gotoAndPlay("attack");
      }
      
      internal function frame546() : *
      {
         if(isSummon)
         {
            Summons.ChibiKnightUltra.effect();
         }
         else
         {
            self.attack3();
         }
         this.swordEffect();
      }
      
      internal function frame548() : *
      {
         if(skin > 3)
         {
            skin = 3;
         }
         this.swordType = 0;
      }
      
      internal function frame554() : *
      {
         if(skin == 1)
         {
            Text.speech(Text.chibi[2]);
         }
         Text.speech(Text.chibi[3]);
         if(skin == 3)
         {
            Text.speech(Text.chibi[12]);
         }
         if(skin == 3)
         {
            Text.speech(Text.chibi[14]);
         }
      }
      
      internal function frame555() : *
      {
         resetXY();
         move(0,15,Regular.easeOut);
      }
      
      internal function frame560() : *
      {
         resetLayer();
      }
      
      internal function frame575() : *
      {
         k();
      }
      
      internal function frame596() : *
      {
         if(skin == 3)
         {
            self.magic1();
         }
      }
      
      internal function frame604() : *
      {
         if(skin == 3)
         {
            Text.speech(Text.chibi[13]);
         }
      }
      
      internal function frame608() : *
      {
         gotoAndPlay("attack3");
      }
      
      internal function frame627() : *
      {
         self.magic2();
      }
      
      internal function frame637() : *
      {
         Text.speech(Text.chibi[8]);
         Text.speech(Text.chibi[6]);
      }
      
      internal function frame642() : *
      {
         k();
      }
      
      internal function frame663() : *
      {
         self.magic3();
      }
      
      internal function frame674() : *
      {
         k();
      }
      
      internal function frame699() : *
      {
         head.eyes.gotoAndPlay("evade");
      }
      
      internal function frame702() : *
      {
         if(isSummon)
         {
            Summons.ChibiKnightUltra.effect3();
         }
         else
         {
            self.magic4();
         }
      }
      
      internal function frame706() : *
      {
         Text.speech(Text.chibi[8]);
         Text.speech(Text.chibi[6]);
      }
      
      internal function frame718() : *
      {
         k();
      }
   }
}


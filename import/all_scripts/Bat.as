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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol16199")]
   public dynamic class Bat extends FoeMC
   {
      public function Bat()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,38,this.frame39,39,this.frame40,40,this.frame41,53,this.frame54,56,this.frame57,72,this.frame73,74,this.frame75,92,this.frame93,93,this.frame94,117,this.frame118,118,this.frame119,123,this.frame124,145,this.frame146,168,this.frame169,192,this.frame193,207,this.frame208,209,this.frame210,210,this.frame211,234,this.frame235,240,this.frame241,248,this.frame249,262,this.frame263,279,this.frame280,285,this.frame286,292,this.frame293,303,this.frame304,310,this.frame311,327,this.frame328,335,this.frame336,341,this.frame342,348,this.frame349,368,this.frame369,387,this.frame388,422,this.frame423,450,this.frame451,494,this.frame495,503,this.frame504,525,this.frame526,545,this.frame546,577,this.frame578,587,this.frame588,640,this.frame641,646,this.frame647,655,this.frame656,673,this.frame674,687,this.frame688,696,this.frame697,709,this.frame710,719,this.frame720,741,this.frame742,742,this.frame743,756,this.frame757,768,this.frame769,778,this.frame779,784,this.frame785,792,this.frame793,806,this.frame807,823,this.frame824,829,this.frame830,836,this.frame837);
      }
      
      internal function frame1() : *
      {
         init();
      }
      
      internal function frame3() : *
      {
         gotoAndPlay(int(Math.random() * 15 + 3));
      }
      
      internal function frame39() : *
      {
         if(!isSummon && self.graphicScale < 0)
         {
            Text.speech(Text.arcade[20]);
            Text.speech(Text.arcade[21]);
            Text.speech(Text.arcade[22]);
            Text.speech(Text.arcade[23]);
         }
      }
      
      internal function frame40() : *
      {
         k();
      }
      
      internal function frame41() : *
      {
         freezeSound();
      }
      
      internal function frame54() : *
      {
         frozen();
      }
      
      internal function frame57() : *
      {
         stand();
      }
      
      internal function frame73() : *
      {
         ks();
      }
      
      internal function frame75() : *
      {
         playSound("229");
      }
      
      internal function frame93() : *
      {
         k();
      }
      
      internal function frame94() : *
      {
         playSound("230");
      }
      
      internal function frame118() : *
      {
         k();
      }
      
      internal function frame119() : *
      {
         playSound("231");
      }
      
      internal function frame124() : *
      {
      }
      
      internal function frame146() : *
      {
         gotoAndPlay(currentFrame + int(Math.random() * 20));
      }
      
      internal function frame169() : *
      {
         dropItems();
      }
      
      internal function frame193() : *
      {
         dead();
      }
      
      internal function frame208() : *
      {
         if(Battle.selectedTarget == self && Battle.menu.selectedSkill != Spells.capture)
         {
            Text.speech(Text.creeps[10]);
            Text.speech(Text.creeps[11]);
         }
      }
      
      internal function frame210() : *
      {
         k();
      }
      
      internal function frame211() : *
      {
         playSound("heal");
      }
      
      internal function frame235() : *
      {
         k();
      }
      
      internal function frame241() : *
      {
         setXY();
         move(isSummon ? -30 : 30,14,Regular.easeInOut);
      }
      
      internal function frame249() : *
      {
         swapLayer();
      }
      
      internal function frame263() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.attack1();
         }
         makeMagic(EffectWind,0,0);
      }
      
      internal function frame280() : *
      {
         resetXY();
         move(0,14,Regular.easeInOut);
      }
      
      internal function frame286() : *
      {
         resetLayer();
      }
      
      internal function frame293() : *
      {
         k();
      }
      
      internal function frame304() : *
      {
         setXY();
         move(isSummon ? 15 : -15,14,Regular.easeInOut);
      }
      
      internal function frame311() : *
      {
         swapLayer();
      }
      
      internal function frame328() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.attack2();
         }
      }
      
      internal function frame336() : *
      {
         resetXY();
         move(0,14,Regular.easeInOut);
      }
      
      internal function frame342() : *
      {
         resetLayer();
      }
      
      internal function frame349() : *
      {
         if(isSummon)
         {
            Skills.user.graphic.drainage();
            k();
         }
         else
         {
            self.drain();
         }
      }
      
      internal function frame369() : *
      {
         self.attack3();
         makeMagic(EffectWind2,0,0,true);
      }
      
      internal function frame388() : *
      {
         gotoAndPlay("intro");
      }
      
      internal function frame423() : *
      {
         makeMagic(EffectDark,0,0,true);
         self.special1();
      }
      
      internal function frame451() : *
      {
         k();
      }
      
      internal function frame495() : *
      {
         self.special2();
      }
      
      internal function frame504() : *
      {
         k();
      }
      
      internal function frame526() : *
      {
         self.attack4();
         makeMagic(EffectIce2,0,0,true);
      }
      
      internal function frame546() : *
      {
         gotoAndPlay("intro");
      }
      
      internal function frame578() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.magic1();
         }
      }
      
      internal function frame588() : *
      {
         k();
      }
      
      internal function frame641() : *
      {
         flee();
      }
      
      internal function frame647() : *
      {
         setXY();
         move(-40,20,Regular.easeInOut);
      }
      
      internal function frame656() : *
      {
         swapLayer();
      }
      
      internal function frame674() : *
      {
         self.attack5();
      }
      
      internal function frame688() : *
      {
         resetXY();
         move(0,20,Regular.easeInOut);
      }
      
      internal function frame697() : *
      {
         resetLayer();
      }
      
      internal function frame710() : *
      {
         k();
      }
      
      internal function frame720() : *
      {
         setXY();
         move(-60,20,Regular.easeInOut);
      }
      
      internal function frame742() : *
      {
         self.magic2();
      }
      
      internal function frame743() : *
      {
         resetXY();
         move(0,1,null);
      }
      
      internal function frame757() : *
      {
         gotoAndPlay("intro");
      }
      
      internal function frame769() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.magic3();
         }
      }
      
      internal function frame779() : *
      {
         k();
      }
      
      internal function frame785() : *
      {
         setXY();
         move(isSummon ? -30 : 30,14,Regular.easeInOut);
      }
      
      internal function frame793() : *
      {
         swapLayer();
      }
      
      internal function frame807() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.attack6();
         }
      }
      
      internal function frame824() : *
      {
         resetXY();
         move(0,14,Regular.easeInOut);
      }
      
      internal function frame830() : *
      {
         resetLayer();
      }
      
      internal function frame837() : *
      {
         k();
      }
   }
}


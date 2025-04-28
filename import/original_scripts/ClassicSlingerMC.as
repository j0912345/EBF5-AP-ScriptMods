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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol17535")]
   public dynamic class ClassicSlingerMC extends FoeMC
   {
      public function ClassicSlingerMC()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,62,this.frame63,63,this.frame64,66,this.frame67,68,this.frame69,109,this.frame110,111,this.frame112,132,this.frame133,133,this.frame134,162,this.frame163,183,this.frame184,184,this.frame185,185,this.frame186,233,this.frame234,240,this.frame241,247,this.frame248,255,this.frame256,259,this.frame260,264,this.frame265,266,this.frame267,270,this.frame271,276,this.frame277,296,this.frame297,297,this.frame298,330,this.frame331,337,this.frame338,344,this.frame345,352,this.frame353,354,this.frame355,356,this.frame357,358,this.frame359,360,this.frame361,364,this.frame365,367,this.frame368,375,this.frame376,391,this.frame392,398,this.frame399,405,this.frame406,414,this.frame415,417,this.frame418,428,this.frame429,447,this.frame448,454,this.frame455,461,this.frame462,469,this.frame470,470,this.frame471,473,this.frame474,474,this.frame475,484,this.frame485,503,this.frame504,514,this.frame515,516,this.frame517,518,this.frame519,520,this.frame521,522,this.frame523,524,this.frame525,533,this.frame534,553,this.frame554,554,this.frame555,555,this.frame556,568,this.frame569,577,this.frame578,604,this.frame605,629,this.frame630,631,this.frame632,633,this.frame634,636,this.frame637,639,this.frame640,656,this.frame657,684,this.frame685);
      }
      
      internal function frame1() : *
      {
         init();
      }
      
      internal function frame2() : *
      {
         randomDelay(30);
      }
      
      internal function frame63() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf3[0]);
         }
      }
      
      internal function frame64() : *
      {
         if(isSummon && !Flags.isVideoGameBattle())
         {
            Text.speech(Text.ebf1[19]);
         }
      }
      
      internal function frame67() : *
      {
         k();
      }
      
      internal function frame69() : *
      {
         stand();
      }
      
      internal function frame110() : *
      {
         ks();
      }
      
      internal function frame112() : *
      {
         playSound("slingerhit");
      }
      
      internal function frame133() : *
      {
         k();
      }
      
      internal function frame134() : *
      {
         playSound("slingerhit");
      }
      
      internal function frame163() : *
      {
         k();
      }
      
      internal function frame184() : *
      {
         k();
      }
      
      internal function frame185() : *
      {
         playSound("slingerdie");
      }
      
      internal function frame186() : *
      {
         dropItems();
      }
      
      internal function frame234() : *
      {
         dead();
      }
      
      internal function frame241() : *
      {
         setXY();
         move(10,12,null);
      }
      
      internal function frame248() : *
      {
         swapLayer();
      }
      
      internal function frame256() : *
      {
         self.attack1();
      }
      
      internal function frame260() : *
      {
         self.attack1();
      }
      
      internal function frame265() : *
      {
         self.attack1();
      }
      
      internal function frame267() : *
      {
         resetXY();
         move(0,24,null);
      }
      
      internal function frame271() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf3[3]);
         }
      }
      
      internal function frame277() : *
      {
         resetLayer();
      }
      
      internal function frame297() : *
      {
         k();
      }
      
      internal function frame298() : *
      {
         playSound("cheal");
      }
      
      internal function frame331() : *
      {
         k();
      }
      
      internal function frame338() : *
      {
         setXY();
         move(25,12,null);
      }
      
      internal function frame345() : *
      {
         swapLayer();
      }
      
      internal function frame353() : *
      {
         self.attack2();
      }
      
      internal function frame355() : *
      {
         self.attack2();
      }
      
      internal function frame357() : *
      {
         self.attack2();
      }
      
      internal function frame359() : *
      {
         self.attack2();
      }
      
      internal function frame361() : *
      {
         self.attack2();
      }
      
      internal function frame365() : *
      {
         resetXY();
         move(0,24,null);
      }
      
      internal function frame368() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf3[3]);
         }
         if(!isSummon)
         {
            Text.speech(Text.ebf3[4]);
         }
      }
      
      internal function frame376() : *
      {
         resetLayer();
      }
      
      internal function frame392() : *
      {
         k();
      }
      
      internal function frame399() : *
      {
         setXY();
         move(30,12,null);
      }
      
      internal function frame406() : *
      {
         swapLayer();
      }
      
      internal function frame415() : *
      {
         self.attack3();
      }
      
      internal function frame418() : *
      {
         resetXY();
         move(0,24,null);
      }
      
      internal function frame429() : *
      {
         resetLayer();
      }
      
      internal function frame448() : *
      {
         k();
      }
      
      internal function frame455() : *
      {
         setXY();
         if(isSummon)
         {
            move(-40,12,null);
         }
         else
         {
            move(40,12,null);
         }
      }
      
      internal function frame462() : *
      {
         swapLayer();
      }
      
      internal function frame470() : *
      {
         Battle.shake("small");
      }
      
      internal function frame471() : *
      {
         if(isSummon)
         {
            Summons.ClassicSlingerSword.effect();
         }
         else
         {
            self.attack4();
         }
      }
      
      internal function frame474() : *
      {
         resetXY();
         move(0,24,null);
      }
      
      internal function frame475() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf3[1]);
         }
      }
      
      internal function frame485() : *
      {
         resetLayer();
      }
      
      internal function frame504() : *
      {
         k();
      }
      
      internal function frame515() : *
      {
         self.attack5();
      }
      
      internal function frame517() : *
      {
         self.attack5();
      }
      
      internal function frame519() : *
      {
         self.attack5();
      }
      
      internal function frame521() : *
      {
         self.attack5();
      }
      
      internal function frame523() : *
      {
         self.attack5();
      }
      
      internal function frame525() : *
      {
         self.attack5();
      }
      
      internal function frame534() : *
      {
         k();
      }
      
      internal function frame554() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf3[4]);
         }
      }
      
      internal function frame555() : *
      {
         self.attack6();
      }
      
      internal function frame556() : *
      {
         k();
      }
      
      internal function frame569() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf3[2]);
         }
      }
      
      internal function frame578() : *
      {
         if(isSummon)
         {
            Summons.ClassicSlingerGun.effect();
         }
         else
         {
            self.attack7();
         }
         Battle.shake("big");
      }
      
      internal function frame605() : *
      {
         k();
      }
      
      internal function frame630() : *
      {
         self.attack8();
      }
      
      internal function frame632() : *
      {
         self.attack8();
      }
      
      internal function frame634() : *
      {
         self.attack8();
      }
      
      internal function frame637() : *
      {
         self.attack8();
      }
      
      internal function frame640() : *
      {
         self.attack8();
      }
      
      internal function frame657() : *
      {
         k();
      }
      
      internal function frame685() : *
      {
         flee();
      }
   }
}


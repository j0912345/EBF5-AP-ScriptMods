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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol14197")]
   public dynamic class Idol extends FoeMC
   {
      public function Idol()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,40,this.frame41,48,this.frame49,68,this.frame69,69,this.frame70,73,this.frame74,74,this.frame75,89,this.frame90,90,this.frame91,113,this.frame114,134,this.frame135,153,this.frame154,182,this.frame183,184,this.frame185,204,this.frame205,205,this.frame206,232,this.frame233,233,this.frame234,248,this.frame249,253,this.frame254,276,this.frame277,299,this.frame300,311,this.frame312,312,this.frame313,313,this.frame314,340,this.frame341,341,this.frame342,354,this.frame355,359,this.frame360,368,this.frame369,378,this.frame379,379,this.frame380,409,this.frame410,421,this.frame422,432,this.frame433,433,this.frame434,440,this.frame441,443,this.frame444,447,this.frame448,452,this.frame453,455,this.frame456,460,this.frame461,480,this.frame481,481,this.frame482,502,this.frame503,503,this.frame504,510,this.frame511,511,this.frame512,519,this.frame520,541,this.frame542,553,this.frame554,564,this.frame565,565,this.frame566,566,this.frame567,577,this.frame578,595,this.frame596,599,this.frame600,600,this.frame601,601,this.frame602,612,this.frame613,615,this.frame616,624,this.frame625,638,this.frame639,639,this.frame640,653,this.frame654,663,this.frame664,664,this.frame665,676,this.frame677,677,this.frame678,688,this.frame689,695,this.frame696,700,this.frame701,713,this.frame714,715,this.frame716,733,this.frame734,744,this.frame745,756,this.frame757,757,this.frame758,765,this.frame766,782,this.frame783,787,this.frame788,790,this.frame791,792,this.frame793,801,this.frame802,803,this.frame804,804,this.frame805,806,this.frame807,807,this.frame808,814,this.frame815,815,this.frame816,816,this.frame817,818,this.frame819,820,this.frame821,831,this.frame832,833,this.frame834,835,this.frame836,836,this.frame837,846,this.frame847,847,this.frame848,859,this.frame860,875,this.frame876,896,this.frame897,913,this.frame914,923,this.frame924);
      }
      
      public function idolSound(param1:int) : *
      {
         var _loc2_:String = "";
         if(skin <= 3)
         {
            _loc2_ = "a";
         }
         else if(skin <= 6)
         {
            _loc2_ = "b";
         }
         else if(skin <= 9)
         {
            _loc2_ = "c";
         }
         else
         {
            _loc2_ = "d";
         }
         playSound("idol" + param1 + _loc2_);
      }
      
      internal function frame1() : *
      {
         init();
      }
      
      internal function frame3() : *
      {
         randomDelay(30);
      }
      
      internal function frame41() : *
      {
         if(!isSummon)
         {
            if(skin <= 6 && skin > 3)
            {
               Text.speech(Text.idols[1]);
            }
         }
      }
      
      internal function frame49() : *
      {
         this.idolSound(2);
      }
      
      internal function frame69() : *
      {
         if(!isSummon && self.graphicScale < 0)
         {
            Text.speech(Text.arcade[20]);
            Text.speech(Text.arcade[21]);
            Text.speech(Text.arcade[22]);
            Text.speech(Text.arcade[23]);
         }
         else if(skin <= 6)
         {
            Text.speech(Text.idols[4]);
         }
      }
      
      internal function frame70() : *
      {
         this.idolSound(1);
      }
      
      internal function frame74() : *
      {
         k();
      }
      
      internal function frame75() : *
      {
         freezeSound();
      }
      
      internal function frame90() : *
      {
         frozen();
      }
      
      internal function frame91() : *
      {
         this.idolSound(1);
      }
      
      internal function frame114() : *
      {
         this.idolSound(2);
      }
      
      internal function frame135() : *
      {
         flee();
      }
      
      internal function frame154() : *
      {
         stand();
      }
      
      internal function frame183() : *
      {
         ks();
      }
      
      internal function frame185() : *
      {
         this.idolSound(3);
      }
      
      internal function frame205() : *
      {
         k();
      }
      
      internal function frame206() : *
      {
         this.idolSound(3);
      }
      
      internal function frame233() : *
      {
         k();
      }
      
      internal function frame234() : *
      {
         this.idolSound(4);
      }
      
      internal function frame249() : *
      {
         this.idolSound(2);
      }
      
      internal function frame254() : *
      {
         randomDelay(20);
      }
      
      internal function frame277() : *
      {
         dropItems();
      }
      
      internal function frame300() : *
      {
         dead();
      }
      
      internal function frame312() : *
      {
         this.idolSound(1);
      }
      
      internal function frame313() : *
      {
         k();
      }
      
      internal function frame314() : *
      {
         playSound("heal");
      }
      
      internal function frame341() : *
      {
         k();
      }
      
      internal function frame342() : *
      {
         setXY();
         move(80,36,null);
         this.idolSound(1);
      }
      
      internal function frame355() : *
      {
         this.idolSound(2);
      }
      
      internal function frame360() : *
      {
         swapLayer(true);
      }
      
      internal function frame369() : *
      {
         if(!isSummon)
         {
            if(skin <= 6 && skin > 3)
            {
               Text.speech(Text.idols[1]);
            }
         }
      }
      
      internal function frame379() : *
      {
         this.idolSound(3);
      }
      
      internal function frame380() : *
      {
         self.attack1();
      }
      
      internal function frame410() : *
      {
         resetXY();
         move(0,22,null);
         this.idolSound(1);
      }
      
      internal function frame422() : *
      {
         resetLayer();
         this.idolSound(1);
      }
      
      internal function frame433() : *
      {
         this.idolSound(1);
      }
      
      internal function frame434() : *
      {
         k();
      }
      
      internal function frame441() : *
      {
         this.idolSound(1);
      }
      
      internal function frame444() : *
      {
         this.idolSound(2);
      }
      
      internal function frame448() : *
      {
         this.idolSound(1);
      }
      
      internal function frame453() : *
      {
         this.idolSound(2);
      }
      
      internal function frame456() : *
      {
         this.idolSound(1);
      }
      
      internal function frame461() : *
      {
         this.idolSound(3);
      }
      
      internal function frame481() : *
      {
         if(!isSummon)
         {
            if(skin <= 6 && skin > 3)
            {
               Text.speech(Text.idols[1]);
            }
         }
      }
      
      internal function frame482() : *
      {
         if(Flags.STEAL_SHOVEL.quantity)
         {
            Text.speech(Text.idols[2]);
         }
      }
      
      internal function frame503() : *
      {
         if(isSummon)
         {
            k();
         }
      }
      
      internal function frame504() : *
      {
         setXY();
         move(80,1,null);
         swapLayer(true);
      }
      
      internal function frame511() : *
      {
         this.idolSound(4);
      }
      
      internal function frame512() : *
      {
         if(!isSummon)
         {
            self.attack2();
         }
      }
      
      internal function frame520() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
      }
      
      internal function frame542() : *
      {
         if(!isSummon)
         {
            resetXY();
            move(0,22,null);
         }
         this.idolSound(1);
      }
      
      internal function frame554() : *
      {
         if(!isSummon)
         {
            resetLayer();
         }
         this.idolSound(1);
      }
      
      internal function frame565() : *
      {
         this.idolSound(1);
      }
      
      internal function frame566() : *
      {
         k();
      }
      
      internal function frame567() : *
      {
         this.idolSound(1);
      }
      
      internal function frame578() : *
      {
         this.idolSound(2);
      }
      
      internal function frame596() : *
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
      
      internal function frame600() : *
      {
         this.idolSound(1);
      }
      
      internal function frame601() : *
      {
         k();
      }
      
      internal function frame602() : *
      {
         setXY();
         move(10,32,null);
         this.idolSound(1);
      }
      
      internal function frame613() : *
      {
         this.idolSound(2);
      }
      
      internal function frame616() : *
      {
         swapLayer();
      }
      
      internal function frame625() : *
      {
         this.idolSound(1);
      }
      
      internal function frame639() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.idols[3]);
         }
      }
      
      internal function frame640() : *
      {
         self.attack3();
      }
      
      internal function frame654() : *
      {
         resetXY();
         move(0,22,null);
         this.idolSound(1);
      }
      
      internal function frame664() : *
      {
         resetLayer();
      }
      
      internal function frame665() : *
      {
         this.idolSound(2);
      }
      
      internal function frame677() : *
      {
         k();
         this.idolSound(1);
      }
      
      internal function frame678() : *
      {
         setXY();
         move(10,32,null);
         this.idolSound(1);
      }
      
      internal function frame689() : *
      {
         this.idolSound(2);
      }
      
      internal function frame696() : *
      {
         swapLayer();
      }
      
      internal function frame701() : *
      {
         this.idolSound(1);
      }
      
      internal function frame714() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.idols[3]);
         }
      }
      
      internal function frame716() : *
      {
         self.attack4();
      }
      
      internal function frame734() : *
      {
         resetXY();
         move(0,22,null);
         this.idolSound(1);
      }
      
      internal function frame745() : *
      {
         resetLayer();
         this.idolSound(2);
      }
      
      internal function frame757() : *
      {
         k();
         this.idolSound(1);
      }
      
      internal function frame758() : *
      {
         this.idolSound(1);
      }
      
      internal function frame766() : *
      {
         this.idolSound(1);
      }
      
      internal function frame783() : *
      {
         this.idolSound(2);
      }
      
      internal function frame788() : *
      {
         this.idolSound(2);
      }
      
      internal function frame791() : *
      {
         setXY();
         if(isSummon)
         {
            Y = y;
            X = -300;
         }
         move(40,25,null);
      }
      
      internal function frame793() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
      }
      
      internal function frame802() : *
      {
         this.idolSound(2);
      }
      
      internal function frame804() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect2();
         }
      }
      
      internal function frame805() : *
      {
         if(!isSummon)
         {
            swapLayer();
         }
      }
      
      internal function frame807() : *
      {
         if(!isSummon)
         {
            if(skin <= 6 && skin > 3)
            {
               Text.speech(Text.idols[1]);
            }
         }
      }
      
      internal function frame808() : *
      {
         if(Flags.STEAL_SHOVEL.quantity)
         {
            Text.speech(Text.idols[2]);
         }
      }
      
      internal function frame815() : *
      {
         if(isSummon)
         {
            k();
         }
      }
      
      internal function frame816() : *
      {
         this.idolSound(4);
      }
      
      internal function frame817() : *
      {
         if(!isSummon)
         {
            self.attack5();
         }
         this.idolSound(3);
      }
      
      internal function frame819() : *
      {
         this.idolSound(2);
      }
      
      internal function frame821() : *
      {
         this.idolSound(1);
      }
      
      internal function frame832() : *
      {
         this.idolSound(2);
      }
      
      internal function frame834() : *
      {
         this.idolSound(1);
      }
      
      internal function frame836() : *
      {
         this.idolSound(1);
      }
      
      internal function frame837() : *
      {
         if(!isSummon)
         {
            resetXY();
            move(0,22,null);
         }
         this.idolSound(1);
      }
      
      internal function frame847() : *
      {
         resetLayer();
      }
      
      internal function frame848() : *
      {
         this.idolSound(2);
      }
      
      internal function frame860() : *
      {
         k();
         this.idolSound(1);
      }
      
      internal function frame876() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
      }
      
      internal function frame897() : *
      {
         if(isSummon)
         {
            k();
         }
         else
         {
            self.attack6();
            makeMagic(EffectWind);
         }
      }
      
      internal function frame914() : *
      {
         if(!isSummon)
         {
            self.specialEffect();
         }
      }
      
      internal function frame924() : *
      {
         k();
         this.idolSound(1);
      }
   }
}


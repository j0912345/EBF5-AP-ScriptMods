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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol13198")]
   public dynamic class Wraith extends FoeMC
   {
      public function Wraith()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,58,this.frame59,61,this.frame62,102,this.frame103,103,this.frame104,117,this.frame118,119,this.frame120,159,this.frame160,161,this.frame162,181,this.frame182,182,this.frame183,209,this.frame210,210,this.frame211,226,this.frame227,243,this.frame244,267,this.frame268,287,this.frame288,306,this.frame307,307,this.frame308,340,this.frame341,347,this.frame348,359,this.frame360,376,this.frame377,388,this.frame389,403,this.frame404,416,this.frame417,423,this.frame424,435,this.frame436,452,this.frame453,470,this.frame471,485,this.frame486,499,this.frame500,535,this.frame536,540,this.frame541,576,this.frame577,580,this.frame581,582,this.frame583,583,this.frame584,590,this.frame591,602,this.frame603,619,this.frame620,635,this.frame636,650,this.frame651,663,this.frame664,687,this.frame688,693,this.frame694,747,this.frame748,783,this.frame784,787,this.frame788,789,this.frame790,790,this.frame791,813,this.frame814,827,this.frame828,841,this.frame842,859,this.frame860,882,this.frame883,896,this.frame897,910,this.frame911,916,this.frame917,928,this.frame929,967,this.frame968,971,this.frame972,975,this.frame976);
      }
      
      internal function frame1() : *
      {
         init();
      }
      
      internal function frame3() : *
      {
         randomDelay(18);
      }
      
      internal function frame59() : *
      {
         if(skin != 1)
         {
            Text.speech(Text.wraiths[4]);
         }
         if(!isSummon)
         {
            Text.speech(Text.wraiths[5]);
         }
      }
      
      internal function frame62() : *
      {
         k();
      }
      
      internal function frame103() : *
      {
         flee();
      }
      
      internal function frame104() : *
      {
         freezeSound();
      }
      
      internal function frame118() : *
      {
         frozen();
      }
      
      internal function frame120() : *
      {
         stand();
      }
      
      internal function frame160() : *
      {
         ks();
      }
      
      internal function frame162() : *
      {
         playSound("475");
      }
      
      internal function frame182() : *
      {
         k();
      }
      
      internal function frame183() : *
      {
         playSound("476");
      }
      
      internal function frame210() : *
      {
         k();
      }
      
      internal function frame211() : *
      {
         playSound("477");
      }
      
      internal function frame227() : *
      {
         playSound("478");
      }
      
      internal function frame244() : *
      {
         gotoAndPlay(currentFrame + int(Math.random() * 20));
      }
      
      internal function frame268() : *
      {
         dropItems();
      }
      
      internal function frame288() : *
      {
         dead();
      }
      
      internal function frame307() : *
      {
         k();
      }
      
      internal function frame308() : *
      {
         playSound("heal");
      }
      
      internal function frame341() : *
      {
         k();
      }
      
      internal function frame348() : *
      {
         setXY();
         move(40,25,Regular.easeInOut);
      }
      
      internal function frame360() : *
      {
         swapLayer();
      }
      
      internal function frame377() : *
      {
         self.attack1();
      }
      
      internal function frame389() : *
      {
         resetXY();
         move(0,25,Regular.easeInOut);
      }
      
      internal function frame404() : *
      {
         resetLayer();
      }
      
      internal function frame417() : *
      {
         k();
      }
      
      internal function frame424() : *
      {
         setXY();
         move(40,25,Regular.easeInOut);
      }
      
      internal function frame436() : *
      {
         swapLayer();
      }
      
      internal function frame453() : *
      {
         self.attack2();
         if(skin == 1)
         {
            makeMagic(EffectDark,0,0);
         }
         if(skin == 2)
         {
            makeMagic(EffectIce,0,0);
         }
         if(skin == 3)
         {
            makeMagic(EffectDark,0,0);
         }
         if(skin == 4)
         {
            makeMagic(EffectDark,0,0);
         }
         if(skin == 5)
         {
            makeMagic(EffectPoison2,0,0);
         }
      }
      
      internal function frame471() : *
      {
         resetXY();
         move(0,25,Regular.easeInOut);
      }
      
      internal function frame486() : *
      {
         resetLayer();
      }
      
      internal function frame500() : *
      {
         k();
      }
      
      internal function frame536() : *
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
      
      internal function frame541() : *
      {
         k();
      }
      
      internal function frame577() : *
      {
         Battle.finalHit = false;
         self.attack3();
         makeMagic(EffectStab2,0,0,true);
      }
      
      internal function frame581() : *
      {
         Text.speech(Text.wraiths[3]);
      }
      
      internal function frame583() : *
      {
         self.attack3();
         makeMagic(EffectStab2,0,0,true);
      }
      
      internal function frame584() : *
      {
         k();
      }
      
      internal function frame591() : *
      {
         setXY();
         move(40,25,Regular.easeInOut);
      }
      
      internal function frame603() : *
      {
         swapLayer();
      }
      
      internal function frame620() : *
      {
         self.attack4();
      }
      
      internal function frame636() : *
      {
         resetXY();
         move(0,25,Regular.easeInOut);
      }
      
      internal function frame651() : *
      {
         resetLayer();
      }
      
      internal function frame664() : *
      {
         k();
      }
      
      internal function frame688() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.wraiths[1]);
         }
      }
      
      internal function frame694() : *
      {
         self.magic2();
      }
      
      internal function frame748() : *
      {
         k();
      }
      
      internal function frame784() : *
      {
         Battle.finalHit = false;
         self.attack5();
         makeMagic(EffectStab2,0,0,true);
      }
      
      internal function frame788() : *
      {
         Text.speech(Text.wraiths[3]);
      }
      
      internal function frame790() : *
      {
         self.attack5();
         makeMagic(EffectStab2,0,0,true);
      }
      
      internal function frame791() : *
      {
         k();
      }
      
      internal function frame814() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.special1();
         }
         makeMagic(EffectSmash2,0,0);
      }
      
      internal function frame828() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.special1();
         }
         makeMagic(EffectSmash2,0,0);
      }
      
      internal function frame842() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.special1();
         }
         makeMagic(EffectSmash2,0,0);
      }
      
      internal function frame860() : *
      {
         k();
      }
      
      internal function frame883() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.special2();
         }
         makeMagic(EffectSlap,0,0);
      }
      
      internal function frame897() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.special2();
         }
         makeMagic(EffectSlap,0,0);
      }
      
      internal function frame911() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.special2();
         }
         makeMagic(EffectSlap,0,0);
      }
      
      internal function frame917() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.wraiths[2]);
         }
      }
      
      internal function frame929() : *
      {
         k();
      }
      
      internal function frame968() : *
      {
         self.special3();
      }
      
      internal function frame972() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.library[0]);
         }
      }
      
      internal function frame976() : *
      {
         k();
      }
   }
}


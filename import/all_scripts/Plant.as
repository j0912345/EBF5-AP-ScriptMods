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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol13772")]
   public dynamic class Plant extends FoeMC
   {
      public function Plant()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,68,this.frame69,71,this.frame72,73,this.frame74,124,this.frame125,130,this.frame131,199,this.frame200,201,this.frame202,222,this.frame223,223,this.frame224,252,this.frame253,253,this.frame254,257,this.frame258,275,this.frame276,276,this.frame277,277,this.frame278,303,this.frame304,304,this.frame305,305,this.frame306,321,this.frame322,341,this.frame342,379,this.frame380,400,this.frame401,402,this.frame403,417,this.frame418,421,this.frame422,429,this.frame430,445,this.frame446,455,this.frame456,456,this.frame457,457,this.frame458,460,this.frame461,463,this.frame464,465,this.frame466,469,this.frame470,487,this.frame488,488,this.frame489,527,this.frame528,539,this.frame540,561,this.frame562,596,this.frame597,613,this.frame614,642,this.frame643,652,this.frame653,668,this.frame669,693,this.frame694,708,this.frame709,735,this.frame736,741,this.frame742,745,this.frame746);
      }
      
      internal function frame1() : *
      {
         init();
      }
      
      internal function frame3() : *
      {
         randomDelay(20);
      }
      
      internal function frame69() : *
      {
         if(skin <= 2)
         {
            Text.speech(Text.chompers[3]);
         }
         if(!isSummon)
         {
            if(skin == 4)
            {
               Text.speech(Text.chompers[4]);
            }
         }
      }
      
      internal function frame72() : *
      {
         k();
      }
      
      internal function frame74() : *
      {
         stand();
      }
      
      internal function frame125() : *
      {
         ks();
      }
      
      internal function frame131() : *
      {
         head.gotoAndPlay("hit");
      }
      
      internal function frame200() : *
      {
         flee();
      }
      
      internal function frame202() : *
      {
         head.gotoAndPlay("hit");
      }
      
      internal function frame223() : *
      {
         k();
      }
      
      internal function frame224() : *
      {
         head.gotoAndPlay("heal");
         playSound("heal2");
      }
      
      internal function frame253() : *
      {
         k();
      }
      
      internal function frame254() : *
      {
         head.gotoAndPlay("hit");
         playSound("426");
      }
      
      internal function frame258() : *
      {
         playSound("427");
      }
      
      internal function frame276() : *
      {
         k();
      }
      
      internal function frame277() : *
      {
         head.gotoAndPlay("hit");
         playSound("428");
      }
      
      internal function frame278() : *
      {
         playSound("429");
      }
      
      internal function frame304() : *
      {
         k();
      }
      
      internal function frame305() : *
      {
         head.gotoAndPlay("die");
         playSound("428");
      }
      
      internal function frame306() : *
      {
         playSound("429");
      }
      
      internal function frame322() : *
      {
         playSound("430");
      }
      
      internal function frame342() : *
      {
         randomDelay(20);
      }
      
      internal function frame380() : *
      {
         dropItems();
      }
      
      internal function frame401() : *
      {
         dead();
      }
      
      internal function frame403() : *
      {
         freezeSound();
      }
      
      internal function frame418() : *
      {
         frozen();
      }
      
      internal function frame422() : *
      {
         dead();
      }
      
      internal function frame430() : *
      {
         setXY();
         move(40,22,Regular.easeInOut);
      }
      
      internal function frame446() : *
      {
         swapLayer();
      }
      
      internal function frame456() : *
      {
         if(skin == 1)
         {
            makeMagic(EffectPoison,0,0);
         }
         if(skin == 3)
         {
            makeMagic(EffectFire2,0,0);
         }
      }
      
      internal function frame457() : *
      {
         self.attack1();
      }
      
      internal function frame458() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame461() : *
      {
         Text.speech(Text.dragons[12]);
      }
      
      internal function frame464() : *
      {
         resetXY();
         move(0,24,Regular.easeInOut);
      }
      
      internal function frame466() : *
      {
         Text.speech(Text.chompers[1]);
      }
      
      internal function frame470() : *
      {
         resetLayer();
      }
      
      internal function frame488() : *
      {
         Text.speech(Text.chompers[5]);
      }
      
      internal function frame489() : *
      {
         self.drain();
      }
      
      internal function frame528() : *
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
      
      internal function frame540() : *
      {
         k();
      }
      
      internal function frame562() : *
      {
         self.magic2();
      }
      
      internal function frame597() : *
      {
         k();
      }
      
      internal function frame614() : *
      {
         Battle.shake("small");
      }
      
      internal function frame643() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.special1();
         }
      }
      
      internal function frame653() : *
      {
         k();
      }
      
      internal function frame669() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame694() : *
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
      
      internal function frame709() : *
      {
         k();
      }
      
      internal function frame736() : *
      {
         self.magic3();
      }
      
      internal function frame742() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.chompers[4]);
         }
      }
      
      internal function frame746() : *
      {
         k();
      }
   }
}


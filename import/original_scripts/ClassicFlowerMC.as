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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol15589")]
   public dynamic class ClassicFlowerMC extends FoeMC
   {
      public var attacking:Boolean;
      
      public function ClassicFlowerMC()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,72,this.frame73,79,this.frame80,80,this.frame81,94,this.frame95,96,this.frame97,136,this.frame137,138,this.frame139,156,this.frame157,157,this.frame158,182,this.frame183,183,this.frame184,184,this.frame185,216,this.frame217,242,this.frame243,261,this.frame262,262,this.frame263,289,this.frame290,323,this.frame324,326,this.frame327,335,this.frame336,359,this.frame360,383,this.frame384,411,this.frame412,447,this.frame448,485,this.frame486,498,this.frame499,537,this.frame538,544,this.frame545,602,this.frame603,612,this.frame613,649,this.frame650,663,this.frame664,711,this.frame712,719,this.frame720,727,this.frame728,772,this.frame773,775,this.frame776,778,this.frame779,781,this.frame782,784,this.frame785,823,this.frame824,824,this.frame825,828,this.frame829,830,this.frame831,839,this.frame840,871,this.frame872,873,this.frame874,915,this.frame916,924,this.frame925);
      }
      
      internal function frame1() : *
      {
         init();
         this.attacking = false;
      }
      
      internal function frame2() : *
      {
         randomDelay(30);
      }
      
      internal function frame73() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf4[0]);
         }
      }
      
      internal function frame80() : *
      {
         k();
      }
      
      internal function frame81() : *
      {
         playSound("freeze");
      }
      
      internal function frame95() : *
      {
         frozen();
      }
      
      internal function frame97() : *
      {
         stand();
      }
      
      internal function frame137() : *
      {
         ks();
      }
      
      internal function frame139() : *
      {
         playSound("flowerhit1");
      }
      
      internal function frame157() : *
      {
         k();
      }
      
      internal function frame158() : *
      {
         playSound("flowerhit2");
      }
      
      internal function frame183() : *
      {
         k();
      }
      
      internal function frame184() : *
      {
         playSound("flowerhit2");
      }
      
      internal function frame185() : *
      {
         dropItems();
      }
      
      internal function frame217() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf4[4]);
         }
      }
      
      internal function frame243() : *
      {
         dead();
      }
      
      internal function frame262() : *
      {
         k();
      }
      
      internal function frame263() : *
      {
         playSound("cheal");
      }
      
      internal function frame290() : *
      {
         k();
      }
      
      internal function frame324() : *
      {
         self.charge1();
      }
      
      internal function frame327() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf4[3]);
         }
      }
      
      internal function frame336() : *
      {
         k();
      }
      
      internal function frame360() : *
      {
         self.magic1();
      }
      
      internal function frame384() : *
      {
         k();
      }
      
      internal function frame412() : *
      {
         self.special1();
      }
      
      internal function frame448() : *
      {
         k();
      }
      
      internal function frame486() : *
      {
         self.magic2();
      }
      
      internal function frame499() : *
      {
         k();
      }
      
      internal function frame538() : *
      {
         self.magic3();
      }
      
      internal function frame545() : *
      {
         k();
      }
      
      internal function frame603() : *
      {
         self.special2();
      }
      
      internal function frame613() : *
      {
         k();
      }
      
      internal function frame650() : *
      {
         self.magic4();
      }
      
      internal function frame664() : *
      {
         k();
      }
      
      internal function frame712() : *
      {
         self.special3();
      }
      
      internal function frame720() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf4[2]);
         }
      }
      
      internal function frame728() : *
      {
         k();
      }
      
      internal function frame773() : *
      {
         self.special4();
      }
      
      internal function frame776() : *
      {
         self.special4();
      }
      
      internal function frame779() : *
      {
         self.special4();
      }
      
      internal function frame782() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf4[1]);
         }
      }
      
      internal function frame785() : *
      {
         k();
      }
      
      internal function frame824() : *
      {
         if(this.attacking)
         {
            this.attacking = false;
            gotoAndPlay("attack1");
         }
         else
         {
            flee();
         }
      }
      
      internal function frame825() : *
      {
         setXY();
         move(-100,1,null);
         swapLayer();
      }
      
      internal function frame829() : *
      {
         Battle.shake("small");
      }
      
      internal function frame831() : *
      {
         self.attack1();
      }
      
      internal function frame840() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf4[1]);
         }
      }
      
      internal function frame872() : *
      {
         resetXY();
         move(0,1,null);
         resetLayer();
      }
      
      internal function frame874() : *
      {
         dead();
      }
      
      internal function frame916() : *
      {
         self.magic5();
      }
      
      internal function frame925() : *
      {
         k();
      }
   }
}


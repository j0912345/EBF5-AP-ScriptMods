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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol13680")]
   public dynamic class RockBit extends FoeMC
   {
      public function RockBit()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,27,this.frame28,49,this.frame50,77,this.frame78,78,this.frame79,93,this.frame94,95,this.frame96,136,this.frame137,137,this.frame138,153,this.frame154,154,this.frame155,175,this.frame176,176,this.frame177,188,this.frame189,189,this.frame190,199,this.frame200,232,this.frame233,256,this.frame257,257,this.frame258,284,this.frame285,285,this.frame286,301,this.frame302,325,this.frame326,326,this.frame327,333,this.frame334,344,this.frame345,361,this.frame362,368,this.frame369,372,this.frame373,373,this.frame374,375,this.frame376,377,this.frame378,380,this.frame381,403,this.frame404,410,this.frame411,415,this.frame416,416,this.frame417,421,this.frame422,435,this.frame436);
      }
      
      internal function frame1() : *
      {
         init();
      }
      
      internal function frame3() : *
      {
         randomDelay(20);
      }
      
      internal function frame28() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame50() : *
      {
         k();
      }
      
      internal function frame78() : *
      {
         flee();
      }
      
      internal function frame79() : *
      {
         freezeSound();
      }
      
      internal function frame94() : *
      {
         frozen();
      }
      
      internal function frame96() : *
      {
         stand();
      }
      
      internal function frame137() : *
      {
         ks();
      }
      
      internal function frame138() : *
      {
         head.eyes.gotoAndPlay("blink");
         playSound("431");
      }
      
      internal function frame154() : *
      {
         k();
      }
      
      internal function frame155() : *
      {
         head.eyes.gotoAndPlay("hit");
         playSound("432");
      }
      
      internal function frame176() : *
      {
         k();
      }
      
      internal function frame177() : *
      {
         head.eyes.gotoAndPlay("die");
         playSound("433");
      }
      
      internal function frame189() : *
      {
         playSound("434");
      }
      
      internal function frame190() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame200() : *
      {
         randomDelay(30);
      }
      
      internal function frame233() : *
      {
         dropItems();
      }
      
      internal function frame257() : *
      {
         dead();
      }
      
      internal function frame258() : *
      {
         playSound("heal");
      }
      
      internal function frame285() : *
      {
         k();
      }
      
      internal function frame286() : *
      {
         head.eyes.gotoAndPlay("hit");
      }
      
      internal function frame302() : *
      {
         k();
      }
      
      internal function frame326() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame327() : *
      {
         dropItems();
      }
      
      internal function frame334() : *
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
      
      internal function frame345() : *
      {
         if(isSummon)
         {
            k();
         }
         else
         {
            dead();
         }
      }
      
      internal function frame362() : *
      {
         setXY();
         if(isSummon)
         {
            Y = y + 150;
            X = 660;
         }
         move(isSummon ? 60 : -60,12,Regular.easeIn);
      }
      
      internal function frame369() : *
      {
         if(isSummon)
         {
            summonOnTop();
         }
         else
         {
            swapLayer();
         }
      }
      
      internal function frame373() : *
      {
         Text.speech(Text.golems[9]);
         Text.speech(Text.golems[10]);
      }
      
      internal function frame374() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.magic2();
         }
      }
      
      internal function frame376() : *
      {
         dropItems();
      }
      
      internal function frame378() : *
      {
         resetXY();
         resetLayer();
         move(0,1,null);
      }
      
      internal function frame381() : *
      {
         if(isSummon)
         {
            summonOnTop(false);
            k();
         }
         else
         {
            dead();
         }
      }
      
      internal function frame404() : *
      {
         setXY();
         move(-20,12,Regular.easeIn);
      }
      
      internal function frame411() : *
      {
         swapLayer();
      }
      
      internal function frame416() : *
      {
         self.attack1();
         makeMagic(EffectSmash,0,0);
         head.eyes.gotoAndPlay("hit");
      }
      
      internal function frame417() : *
      {
         resetXY();
         move(0,18,Regular.easeOut);
      }
      
      internal function frame422() : *
      {
         resetLayer();
      }
      
      internal function frame436() : *
      {
         k();
      }
   }
}


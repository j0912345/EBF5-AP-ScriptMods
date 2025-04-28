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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol13794")]
   public dynamic class Pixels extends FoeMC
   {
      public function Pixels()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,77,this.frame78,80,this.frame81,82,this.frame83,148,this.frame149,178,this.frame179,179,this.frame180,194,this.frame195,195,this.frame196,215,this.frame216,216,this.frame217,242,this.frame243,243,this.frame244,259,this.frame260,260,this.frame261,271,this.frame272,347,this.frame348,349,this.frame350,350,this.frame351,365,this.frame366,377,this.frame378,382,this.frame383,404,this.frame405,417,this.frame418,438,this.frame439,448,this.frame449,471,this.frame472,479,this.frame480,491,this.frame492,499,this.frame500,507,this.frame508,512,this.frame513,513,this.frame514);
      }
      
      internal function frame1() : *
      {
         init();
      }
      
      internal function frame2() : *
      {
         randomDelay(40);
      }
      
      internal function frame78() : *
      {
      }
      
      internal function frame81() : *
      {
         k();
      }
      
      internal function frame83() : *
      {
         stand();
      }
      
      internal function frame149() : *
      {
         ks();
      }
      
      internal function frame179() : *
      {
         flee();
      }
      
      internal function frame180() : *
      {
         freezeSound();
         playSound("420");
      }
      
      internal function frame195() : *
      {
         frozen();
      }
      
      internal function frame196() : *
      {
         playSound("421");
      }
      
      internal function frame216() : *
      {
         k();
      }
      
      internal function frame217() : *
      {
         playSound("422");
      }
      
      internal function frame243() : *
      {
         k();
      }
      
      internal function frame244() : *
      {
         playSound("423");
      }
      
      internal function frame260() : *
      {
         k();
      }
      
      internal function frame261() : *
      {
         playSound("slimeDie");
         playSound("424");
      }
      
      internal function frame272() : *
      {
         gotoAndPlay(currentFrame + int(Math.random() * 20));
      }
      
      internal function frame348() : *
      {
         dropItems();
      }
      
      internal function frame350() : *
      {
         dead();
      }
      
      internal function frame351() : *
      {
         playSound("425");
      }
      
      internal function frame366() : *
      {
         k();
      }
      
      internal function frame378() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.attack1();
         }
      }
      
      internal function frame383() : *
      {
         k();
      }
      
      internal function frame405() : *
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
      
      internal function frame418() : *
      {
         k();
      }
      
      internal function frame439() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.attack3();
         }
      }
      
      internal function frame449() : *
      {
         k();
      }
      
      internal function frame472() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.attack4();
         }
      }
      
      internal function frame480() : *
      {
         k();
      }
      
      internal function frame492() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.attack5();
         }
      }
      
      internal function frame500() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.attack5();
         }
      }
      
      internal function frame508() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.attack5();
         }
      }
      
      internal function frame513() : *
      {
         k();
      }
      
      internal function frame514() : *
      {
         k();
      }
   }
}


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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol7529")]
   public dynamic class ClassicTreeMC extends FoeMC
   {
      public function ClassicTreeMC()
      {
         super();
         addFrameScript(0,this.frame1,6,this.frame7,22,this.frame23,57,this.frame58,58,this.frame59,59,this.frame60,60,this.frame61,62,this.frame63,63,this.frame64,91,this.frame92,92,this.frame93,125,this.frame126,126,this.frame127,127,this.frame128,154,this.frame155,166,this.frame167,172,this.frame173,187,this.frame188,260,this.frame261,297,this.frame298,312,this.frame313,318,this.frame319,349,this.frame350,364,this.frame365,406,this.frame407);
      }
      
      internal function frame1() : *
      {
         init();
      }
      
      internal function frame7() : *
      {
         randomDelay(15);
      }
      
      internal function frame23() : *
      {
         if(isSummon)
         {
            this.y += 25;
            this.x += 40;
         }
      }
      
      internal function frame58() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf1[8]);
         }
      }
      
      internal function frame59() : *
      {
         if(isSummon && !Flags.isVideoGameBattle())
         {
            Text.speech(Text.ebf1[19]);
         }
      }
      
      internal function frame60() : *
      {
         k();
      }
      
      internal function frame61() : *
      {
         stand();
         stop();
      }
      
      internal function frame63() : *
      {
         k();
      }
      
      internal function frame64() : *
      {
         playSound("treehit");
      }
      
      internal function frame92() : *
      {
         k();
      }
      
      internal function frame93() : *
      {
         playSound("treehit");
      }
      
      internal function frame126() : *
      {
         k();
      }
      
      internal function frame127() : *
      {
         playSound("treedie");
      }
      
      internal function frame128() : *
      {
         dropItems();
      }
      
      internal function frame155() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf1[9]);
         }
      }
      
      internal function frame167() : *
      {
         dead();
      }
      
      internal function frame173() : *
      {
      }
      
      internal function frame188() : *
      {
         self.attack1();
      }
      
      internal function frame261() : *
      {
         k();
      }
      
      internal function frame298() : *
      {
         self.special1();
      }
      
      internal function frame313() : *
      {
         k();
      }
      
      internal function frame319() : *
      {
         summonOnTop();
      }
      
      internal function frame350() : *
      {
         if(isSummon)
         {
            Summons.ClassicTree.effect();
         }
         else
         {
            self.special2();
         }
      }
      
      internal function frame365() : *
      {
         k();
      }
      
      internal function frame407() : *
      {
         flee();
      }
   }
}


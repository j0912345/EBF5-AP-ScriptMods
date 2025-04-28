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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol7641")]
   public dynamic class ClassicEyeballMC extends FoeMC
   {
      public function ClassicEyeballMC()
      {
         super();
         addFrameScript(0,this.frame1,5,this.frame6,36,this.frame37,65,this.frame66,66,this.frame67,67,this.frame68,68,this.frame69,70,this.frame71,71,this.frame72,88,this.frame89,89,this.frame90,113,this.frame114,114,this.frame115,115,this.frame116,119,this.frame120,151,this.frame152,159,this.frame160,165,this.frame166,173,this.frame174,177,this.frame178,188,this.frame189,201,this.frame202,214,this.frame215,226,this.frame227,238,this.frame239,251,this.frame252,274,this.frame275,284,this.frame285,310,this.frame311);
      }
      
      internal function frame1() : *
      {
         init();
      }
      
      internal function frame6() : *
      {
         randomDelay(30);
      }
      
      internal function frame37() : *
      {
         if(isSummon)
         {
            this.y += 20;
            this.x += 50;
         }
      }
      
      internal function frame66() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf1[10]);
         }
      }
      
      internal function frame67() : *
      {
         if(isSummon && !Flags.isVideoGameBattle())
         {
            Text.speech(Text.ebf1[19]);
         }
      }
      
      internal function frame68() : *
      {
         k();
      }
      
      internal function frame69() : *
      {
         stand();
         stop();
      }
      
      internal function frame71() : *
      {
         k();
      }
      
      internal function frame72() : *
      {
         playSound("ceyehit");
      }
      
      internal function frame89() : *
      {
         k();
      }
      
      internal function frame90() : *
      {
         playSound("ceyehit");
      }
      
      internal function frame114() : *
      {
         k();
      }
      
      internal function frame115() : *
      {
         playSound("ceyedie");
      }
      
      internal function frame116() : *
      {
         dropItems();
      }
      
      internal function frame120() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf1[11]);
         }
      }
      
      internal function frame152() : *
      {
         dead();
      }
      
      internal function frame160() : *
      {
         setXY();
         move(10,13,null);
      }
      
      internal function frame166() : *
      {
         swapLayer();
      }
      
      internal function frame174() : *
      {
         self.attack1();
      }
      
      internal function frame178() : *
      {
         resetXY();
         move(0,24,null);
      }
      
      internal function frame189() : *
      {
         resetLayer();
      }
      
      internal function frame202() : *
      {
         k();
      }
      
      internal function frame215() : *
      {
         summonOnTop();
      }
      
      internal function frame227() : *
      {
         if(isSummon)
         {
            Summons.ClassicEyeball.effect();
         }
         else
         {
            self.special1();
         }
      }
      
      internal function frame239() : *
      {
         if(isSummon)
         {
            resetLayer();
         }
      }
      
      internal function frame252() : *
      {
         k();
      }
      
      internal function frame275() : *
      {
         self.special2();
      }
      
      internal function frame285() : *
      {
         k();
      }
      
      internal function frame311() : *
      {
         flee();
      }
   }
}


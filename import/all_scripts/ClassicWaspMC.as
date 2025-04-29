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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol18466")]
   public dynamic class ClassicWaspMC extends FoeMC
   {
      public function ClassicWaspMC()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3,50,this.frame51,51,this.frame52,53,this.frame54,56,this.frame57,91,this.frame92,98,this.frame99,117,this.frame118,118,this.frame119,143,this.frame144,144,this.frame145,145,this.frame146,159,this.frame160,182,this.frame183,183,this.frame184,190,this.frame191,198,this.frame199,203,this.frame204,214,this.frame215,227,this.frame228,251,this.frame252,254,this.frame255,266,this.frame267,279,this.frame280,298,this.frame299,308,this.frame309,309,this.frame310,316,this.frame317,324,this.frame325,329,this.frame330,339,this.frame340,342,this.frame343,353,this.frame354,366,this.frame367,386,this.frame387,415,this.frame416);
      }
      
      internal function frame1() : *
      {
         init();
      }
      
      internal function frame2() : *
      {
      }
      
      internal function frame3() : *
      {
         randomDelay(22);
      }
      
      internal function frame51() : *
      {
         if(isSummon && !Flags.isVideoGameBattle())
         {
            Text.speech(Text.ebf1[19]);
         }
      }
      
      internal function frame52() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf2[8]);
         }
      }
      
      internal function frame54() : *
      {
         k();
      }
      
      internal function frame57() : *
      {
         stand();
      }
      
      internal function frame92() : *
      {
         ks();
      }
      
      internal function frame99() : *
      {
         playSound("wasphit");
      }
      
      internal function frame118() : *
      {
         k();
      }
      
      internal function frame119() : *
      {
         playSound("wasphit");
      }
      
      internal function frame144() : *
      {
         k();
      }
      
      internal function frame145() : *
      {
         playSound("wasphit");
      }
      
      internal function frame146() : *
      {
         dropItems();
      }
      
      internal function frame160() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf2[10]);
         }
      }
      
      internal function frame183() : *
      {
         dead();
      }
      
      internal function frame184() : *
      {
         setXY();
         move(10,12,null);
      }
      
      internal function frame191() : *
      {
         swapLayer();
      }
      
      internal function frame199() : *
      {
         self.attack1();
      }
      
      internal function frame204() : *
      {
         resetXY();
         move(0,24,null);
      }
      
      internal function frame215() : *
      {
         resetLayer();
      }
      
      internal function frame228() : *
      {
         k();
      }
      
      internal function frame252() : *
      {
         if(isSummon)
         {
            Summons.ClassicWaspBlack.effect();
         }
         else
         {
            self.special1();
         }
      }
      
      internal function frame255() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf2[9]);
         }
      }
      
      internal function frame267() : *
      {
         k();
      }
      
      internal function frame280() : *
      {
         summonOnTop();
      }
      
      internal function frame299() : *
      {
         if(isSummon)
         {
            Summons.ClassicWaspRed.effect();
         }
         else
         {
            self.special2();
         }
      }
      
      internal function frame309() : *
      {
         k();
      }
      
      internal function frame310() : *
      {
         setXY();
         move(10,12,null);
      }
      
      internal function frame317() : *
      {
         swapLayer();
      }
      
      internal function frame325() : *
      {
         self.attack2();
      }
      
      internal function frame330() : *
      {
         self.attack2();
      }
      
      internal function frame340() : *
      {
         self.attack2();
      }
      
      internal function frame343() : *
      {
         resetXY();
         move(0,24,null);
      }
      
      internal function frame354() : *
      {
         resetLayer();
      }
      
      internal function frame367() : *
      {
         k();
      }
      
      internal function frame387() : *
      {
         k();
      }
      
      internal function frame416() : *
      {
         k();
      }
   }
}


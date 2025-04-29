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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol7562")]
   public dynamic class ClassicSlimeMC extends FoeMC
   {
      public function ClassicSlimeMC()
      {
         super();
         addFrameScript(0,this.frame1,4,this.frame5,61,this.frame62,62,this.frame63,63,this.frame64,64,this.frame65,67,this.frame68,87,this.frame88,88,this.frame89,114,this.frame115,115,this.frame116,144,this.frame145,169,this.frame170,179,this.frame180,186,this.frame187,193,this.frame194,225,this.frame226,240,this.frame241,250,this.frame251,256,this.frame257,264,this.frame265,271,this.frame272,277,this.frame278,302,this.frame303,341,this.frame342);
      }
      
      internal function frame1() : *
      {
         init();
      }
      
      internal function frame5() : *
      {
         randomDelay(20);
      }
      
      internal function frame62() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf1[0]);
         }
      }
      
      internal function frame63() : *
      {
         if(isSummon && !Flags.isVideoGameBattle())
         {
            Text.speech(Text.ebf1[19]);
         }
      }
      
      internal function frame64() : *
      {
         k();
      }
      
      internal function frame65() : *
      {
         body.skin = this.skin;
         stand();
         stop();
      }
      
      internal function frame68() : *
      {
         playSound("ceyehit");
      }
      
      internal function frame88() : *
      {
         k();
      }
      
      internal function frame89() : *
      {
         playSound("ceyehit");
      }
      
      internal function frame115() : *
      {
         k();
      }
      
      internal function frame116() : *
      {
         playSound("ceyedie");
      }
      
      internal function frame145() : *
      {
         Text.speech(Text.ebf1[1]);
      }
      
      internal function frame170() : *
      {
         dead();
      }
      
      internal function frame180() : *
      {
         setXY();
         move(10,14,null);
      }
      
      internal function frame187() : *
      {
         swapLayer();
      }
      
      internal function frame194() : *
      {
         if(isSummon)
         {
            Summons.ClassicSlime.effect();
         }
         else
         {
            self.attack1();
         }
      }
      
      internal function frame226() : *
      {
         resetXY();
         move(0,1,null);
         resetLayer();
      }
      
      internal function frame241() : *
      {
         k();
      }
      
      internal function frame251() : *
      {
         setXY();
         move(10,14,null);
      }
      
      internal function frame257() : *
      {
         swapLayer();
      }
      
      internal function frame265() : *
      {
         if(isSummon)
         {
            Summons.ClassicSlime.effect();
         }
         else
         {
            self.attack2();
         }
      }
      
      internal function frame272() : *
      {
         resetXY();
         move(0,14,null);
      }
      
      internal function frame278() : *
      {
         resetLayer();
      }
      
      internal function frame303() : *
      {
         k();
      }
      
      internal function frame342() : *
      {
         flee();
      }
   }
}


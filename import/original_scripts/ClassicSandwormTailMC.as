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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol18540")]
   public dynamic class ClassicSandwormTailMC extends FoeMC
   {
      public function ClassicSandwormTailMC()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,60,this.frame61,88,this.frame89,89,this.frame90,113,this.frame114,132,this.frame133,163,this.frame164,179,this.frame180,205,this.frame206,206,this.frame207,207,this.frame208,209,this.frame210,221,this.frame222,222,this.frame223,242,this.frame243,244,this.frame245,246,this.frame247,258,this.frame259,288,this.frame289,289,this.frame290,295,this.frame296,302,this.frame303,310,this.frame311,318,this.frame319,326,this.frame327,335,this.frame336,345,this.frame346,361,this.frame362);
      }
      
      internal function frame1() : *
      {
         init();
      }
      
      internal function frame2() : *
      {
      }
      
      internal function frame61() : *
      {
         Battle.shake("small");
      }
      
      internal function frame89() : *
      {
         k();
      }
      
      internal function frame90() : *
      {
         stop();
         stand();
      }
      
      internal function frame114() : *
      {
         k();
      }
      
      internal function frame133() : *
      {
         k();
      }
      
      internal function frame164() : *
      {
         k();
      }
      
      internal function frame180() : *
      {
         if(self.dead)
         {
            dropItems();
         }
      }
      
      internal function frame206() : *
      {
         if(self.dead)
         {
            dead();
         }
      }
      
      internal function frame207() : *
      {
         self.nextAnimation();
      }
      
      internal function frame208() : *
      {
         setXY();
         move(-70,1,null);
         swapLayer();
      }
      
      internal function frame210() : *
      {
         self.attack1();
         Battle.shake("small");
      }
      
      internal function frame222() : *
      {
         Battle.shake("small");
      }
      
      internal function frame223() : *
      {
         self.attack1();
      }
      
      internal function frame243() : *
      {
         resetXY();
         move(0,1,null);
         resetLayer();
         gotoAndPlay("intro2");
      }
      
      internal function frame245() : *
      {
         setXY();
         move(70,1,null);
         swapLayer();
      }
      
      internal function frame247() : *
      {
         Battle.shake("small");
      }
      
      internal function frame259() : *
      {
         self.attack2();
      }
      
      internal function frame289() : *
      {
         resetXY();
         move(0,1,null);
         resetLayer();
         gotoAndPlay("intro2");
      }
      
      internal function frame290() : *
      {
         setXY();
         move(0,1,null);
         swapLayer();
      }
      
      internal function frame296() : *
      {
         self.attack3();
      }
      
      internal function frame303() : *
      {
         self.attack3();
      }
      
      internal function frame311() : *
      {
         self.attack3();
      }
      
      internal function frame319() : *
      {
         self.attack3();
      }
      
      internal function frame327() : *
      {
         self.attack3();
      }
      
      internal function frame336() : *
      {
         self.attack3();
      }
      
      internal function frame346() : *
      {
         self.attack3();
      }
      
      internal function frame362() : *
      {
         resetXY();
         move(0,1,null);
         resetLayer();
         gotoAndPlay("intro2");
      }
   }
}


package EpicBattleFantasy5_fla
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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol20352")]
   public dynamic class pixelshinecopy_1200 extends MovieClip
   {
      public function pixelshinecopy_1200()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,19,this.frame20,28,this.frame29,41,this.frame42,87,this.frame88);
      }
      
      internal function frame1() : *
      {
         if(Flags.UNDERLEGS_DEFEATED.quantity == 1)
         {
            gotoAndPlay(30 + int(Math.random() * 10));
            if(!Options.idleBackgrounds)
            {
               stop();
            }
         }
         if(Flags.UNDERLEGS_DEFEATED.quantity == 2)
         {
            gotoAndPlay(43 + int(Math.random() * 35));
            if(!Options.idleBackgrounds)
            {
               stop();
            }
         }
      }
      
      internal function frame2() : *
      {
         if(!Options.idleBackgrounds)
         {
            stop();
         }
         else
         {
            gotoAndPlay(int(Math.random() * 15 + 2));
         }
      }
      
      internal function frame20() : *
      {
         if(Math.random() < 0.95)
         {
            gotoAndPlay(3);
         }
      }
      
      internal function frame29() : *
      {
         gotoAndPlay(3);
      }
      
      internal function frame42() : *
      {
         gotoAndPlay(30);
      }
      
      internal function frame88() : *
      {
         gotoAndPlay(43);
      }
   }
}


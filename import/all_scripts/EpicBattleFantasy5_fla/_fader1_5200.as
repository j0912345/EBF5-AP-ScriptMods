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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol12814")]
   public dynamic class _fader1_5200 extends MovieClip
   {
      public function _fader1_5200()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3,3,this.frame4,4,this.frame5);
      }
      
      internal function frame1() : *
      {
         visible = false;
         if(Options.fades)
         {
            parent.alpha = 0.2;
         }
      }
      
      internal function frame2() : *
      {
         if(!Options.fades)
         {
            gotoAndStop(5);
         }
         else
         {
            parent.alpha = 0.4;
         }
      }
      
      internal function frame3() : *
      {
         parent.alpha = 0.6;
      }
      
      internal function frame4() : *
      {
         parent.alpha = 0.8;
      }
      
      internal function frame5() : *
      {
         parent.alpha = 1;
         stop();
      }
   }
}


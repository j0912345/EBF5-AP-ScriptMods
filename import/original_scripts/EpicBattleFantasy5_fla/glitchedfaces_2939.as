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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol6510")]
   public dynamic class glitchedfaces_2939 extends MovieClip
   {
      public function glitchedfaces_2939()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         try
         {
            if(!Flags.GLITCHINESS.quantity)
            {
               stop();
               visible = false;
            }
            if(Global.pauseHats)
            {
               gotoAndStop(int(Math.random() * 9) + 2);
            }
         }
         catch(e:Error)
         {
         }
      }
   }
}


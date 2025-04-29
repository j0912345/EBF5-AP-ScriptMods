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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol6397")]
   public dynamic class NPChat_2914 extends MovieClip
   {
      public var temp:Boolean;
      
      public function NPChat_2914()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         if(parent)
         {
            this.temp = Global.pauseHats;
            if(!Options.idleBackgrounds)
            {
               Global.pauseHats = false;
            }
            gotoAndStop(parent.hat);
            Global.pauseHats = this.temp;
         }
      }
   }
}


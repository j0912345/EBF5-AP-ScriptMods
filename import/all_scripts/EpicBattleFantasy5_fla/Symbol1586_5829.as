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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol3232")]
   public dynamic class Symbol1586_5829 extends MovieClip
   {
      public function Symbol1586_5829()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         stop();
         try
         {
            if(Boolean(parent.zombieMode) || Boolean(parent.parent.zombieMode))
            {
               nextFrame();
            }
         }
         catch(e:Error)
         {
         }
      }
   }
}


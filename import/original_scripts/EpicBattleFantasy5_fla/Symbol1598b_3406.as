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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol3077")]
   public dynamic class Symbol1598b_3406 extends MovieClip
   {
      public function Symbol1598b_3406()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         stop();
         try
         {
            if(Boolean(parent.parent.zombieMode) && Boolean(parent.parent.zombieNoLegs))
            {
               gotoAndStop(15);
            }
            else if(parent.parent.zombieMode)
            {
               gotoAndStop(2);
            }
         }
         catch(errObject:Error)
         {
         }
      }
   }
}


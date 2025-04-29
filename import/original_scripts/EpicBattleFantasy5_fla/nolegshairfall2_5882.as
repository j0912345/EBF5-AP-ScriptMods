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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol11117")]
   public dynamic class nolegshairfall2_5882 extends MovieClip
   {
      public function nolegshairfall2_5882()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
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
            else
            {
               gotoAndStop(Players.equips[5][6]);
            }
         }
         catch(errObject:Error)
         {
         }
      }
   }
}


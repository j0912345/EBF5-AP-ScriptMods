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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol11508")]
   public dynamic class natzshoe_5335 extends MovieClip
   {
      public function natzshoe_5335()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,11,this.frame12);
      }
      
      internal function frame1() : *
      {
         try
         {
            if(Boolean(parent.zombieMode) && Boolean(parent.zombieAnna))
            {
               gotoAndStop(17);
            }
            else if(Boolean(parent.zombieMode) && Boolean(parent.zombieNatz))
            {
               gotoAndStop(56);
            }
            else
            {
               gotoAndStop(Players.equips[parent.playerNo][2]);
            }
         }
         catch(errObject:Error)
         {
         }
      }
      
      internal function frame2() : *
      {
         if(parent.playerNo == 4)
         {
            gotoAndStop(40);
         }
      }
      
      internal function frame12() : *
      {
      }
   }
}


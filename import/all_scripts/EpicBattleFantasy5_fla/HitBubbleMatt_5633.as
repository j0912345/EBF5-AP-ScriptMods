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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol11914")]
   public dynamic class HitBubbleMatt_5633 extends MovieClip
   {
      public function HitBubbleMatt_5633()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         try
         {
            gotoAndStop(Math.floor(Math.random() * 20) + 2);
            if(parent.parent.self is Foe)
            {
               visible = false;
            }
         }
         catch(e:Error)
         {
         }
      }
   }
}


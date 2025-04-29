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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol11201")]
   public dynamic class grave2_5420 extends MovieClip
   {
      public function grave2_5420()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         if(!parent.grave)
         {
            gotoAndStop(1);
         }
         else
         {
            gotoAndStop(parent.grave);
         }
         if(parent.self is Foe)
         {
            gotoAndStop(15);
         }
      }
   }
}


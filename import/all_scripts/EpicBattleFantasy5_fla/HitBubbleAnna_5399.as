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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol12457")]
   public dynamic class HitBubbleAnna_5399 extends MovieClip
   {
      public function HitBubbleAnna_5399()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         try
         {
            gotoAndStop(Math.floor(Math.random() * 32) + 2);
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


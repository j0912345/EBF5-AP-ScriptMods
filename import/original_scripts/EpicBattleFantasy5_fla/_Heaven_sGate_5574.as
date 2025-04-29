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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol11874")]
   public dynamic class _Heaven_sGate_5574 extends MovieClip
   {
      public var hand:MovieClip;
      
      public function _Heaven_sGate_5574()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         try
         {
            if(parent.zombieMode)
            {
               this.hand.gotoAndStop(2);
            }
            else
            {
               this.hand.stop();
            }
         }
         catch(e:Error)
         {
            hand.stop();
         }
         stop();
      }
   }
}


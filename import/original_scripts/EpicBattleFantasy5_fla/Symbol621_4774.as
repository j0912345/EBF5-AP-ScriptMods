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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol14241")]
   public dynamic class Symbol621_4774 extends MovieClip
   {
      public var eye:MovieClip;
      
      public function Symbol621_4774()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         if(parent)
         {
            if(!parent.weapon)
            {
               parent.weapon = int(Math.random() * 6 + 1);
            }
            else
            {
               gotoAndStop(parent.weapon);
            }
         }
      }
   }
}


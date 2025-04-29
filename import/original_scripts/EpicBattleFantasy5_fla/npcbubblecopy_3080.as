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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol18068")]
   public dynamic class npcbubblecopy_3080 extends MovieClip
   {
      public function npcbubblecopy_3080()
      {
         super();
         addFrameScript(0,this.frame1,35,this.frame36);
      }
      
      internal function frame1() : *
      {
         stop();
         if(Maps.treasureSoundPlayed)
         {
            play();
         }
      }
      
      internal function frame36() : *
      {
         stop();
      }
   }
}


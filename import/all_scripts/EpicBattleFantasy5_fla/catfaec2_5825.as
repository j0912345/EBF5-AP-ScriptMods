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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol3234")]
   public dynamic class catfaec2_5825 extends MovieClip
   {
      public function catfaec2_5825()
      {
         super();
         addFrameScript(0,this.frame1,96,this.frame97,100,this.frame101,108,this.frame109);
      }
      
      internal function frame1() : *
      {
         if(Boolean(parent) && Boolean(parent.lowHP))
         {
            gotoAndStop("hurt");
         }
      }
      
      internal function frame97() : *
      {
         gotoAndPlay(2);
      }
      
      internal function frame101() : *
      {
         stop();
      }
      
      internal function frame109() : *
      {
         stop();
      }
   }
}


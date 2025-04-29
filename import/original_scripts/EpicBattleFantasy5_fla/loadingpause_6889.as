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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol2945")]
   public dynamic class loadingpause_6889 extends MovieClip
   {
      public function loadingpause_6889()
      {
         super();
         addFrameScript(4,this.frame5,149,this.frame150);
      }
      
      internal function frame5() : *
      {
         Main.meowsRequested = false;
         SaveMenu.loadMeowFiles(true);
      }
      
      internal function frame150() : *
      {
         stop();
         parent.fadeTo(MainMenu.CONTINUE);
      }
   }
}


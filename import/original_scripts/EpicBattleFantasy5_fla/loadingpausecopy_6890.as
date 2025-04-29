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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol2946")]
   public dynamic class loadingpausecopy_6890 extends MovieClip
   {
      public function loadingpausecopy_6890()
      {
         super();
         addFrameScript(8,this.frame9,9,this.frame10);
      }
      
      internal function frame9() : *
      {
         if(!SaveMenu.meowLoadingComplete)
         {
            gotoAndPlay(1);
         }
      }
      
      internal function frame10() : *
      {
         stop();
         parent.fadeTo(MainMenu.CONTINUE);
      }
   }
}


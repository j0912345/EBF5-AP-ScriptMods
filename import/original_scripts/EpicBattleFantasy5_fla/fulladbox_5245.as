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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol13035")]
   public dynamic class fulladbox_5245 extends MovieClip
   {
      public function fulladbox_5245()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3);
      }
      
      internal function frame1() : *
      {
         this.visible = false;
         stop();
      }
      
      internal function frame2() : *
      {
         try
         {
            MochiAd.showInterLevelAd({
               "clip":this,
               "id":"901c5807658ea512",
               "res":"700x500",
               "no_bg":true
            });
            BGM.play(BGM.SILENCE);
         }
         catch(e:Error)
         {
            this.visible = false;
            stop();
         }
      }
      
      internal function frame3() : *
      {
         this.visible = false;
         stop();
      }
   }
}


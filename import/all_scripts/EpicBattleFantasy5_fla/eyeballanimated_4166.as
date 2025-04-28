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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol15879")]
   public dynamic class eyeballanimated_4166 extends MovieClip
   {
      public function eyeballanimated_4166()
      {
         super();
         addFrameScript(0,this.frame1,24,this.frame25,101,this.frame102,221,this.frame222,238,this.frame239,263,this.frame264);
      }
      
      internal function frame1() : *
      {
         Global.nestedAnimation(this);
      }
      
      internal function frame25() : *
      {
         if(Math.random() > 0.2)
         {
            gotoAndPlay(2);
         }
      }
      
      internal function frame102() : *
      {
         if(Math.random() > 0.5)
         {
            gotoAndPlay(30);
         }
      }
      
      internal function frame222() : *
      {
         gotoAndPlay(2);
      }
      
      internal function frame239() : *
      {
         gotoAndPlay(2);
      }
      
      internal function frame264() : *
      {
         gotoAndPlay(2);
      }
   }
}


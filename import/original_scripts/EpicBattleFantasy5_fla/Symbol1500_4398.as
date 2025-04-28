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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol15346")]
   public dynamic class Symbol1500_4398 extends MovieClip
   {
      public var head:MovieClip;
      
      public function Symbol1500_4398()
      {
         super();
         addFrameScript(0,this.frame1,83,this.frame84,84,this.frame85,99,this.frame100,100,this.frame101,122,this.frame123,123,this.frame124,150,this.frame151,151,this.frame152);
      }
      
      internal function frame1() : *
      {
         Global.nestedAnimation(this);
      }
      
      internal function frame84() : *
      {
         Global.nestedAnimation(this);
         gotoAndPlay(2);
      }
      
      internal function frame85() : *
      {
         this.head.gotoAndPlay("hit");
      }
      
      internal function frame100() : *
      {
         stop();
      }
      
      internal function frame101() : *
      {
         this.head.gotoAndPlay("hit2");
      }
      
      internal function frame123() : *
      {
         stop();
      }
      
      internal function frame124() : *
      {
         this.head.gotoAndPlay("heal");
      }
      
      internal function frame151() : *
      {
         stop();
      }
      
      internal function frame152() : *
      {
         this.head.gotoAndPlay("die");
      }
   }
}


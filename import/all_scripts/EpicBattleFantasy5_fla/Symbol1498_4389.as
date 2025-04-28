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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol15336")]
   public dynamic class Symbol1498_4389 extends MovieClip
   {
      public var head:MovieClip;
      
      public function Symbol1498_4389()
      {
         super();
         addFrameScript(0,this.frame1,61,this.frame62,62,this.frame63,77,this.frame78,78,this.frame79,100,this.frame101,101,this.frame102,128,this.frame129,129,this.frame130);
      }
      
      internal function frame1() : *
      {
         Global.nestedAnimation(this);
      }
      
      internal function frame62() : *
      {
         gotoAndPlay(2);
      }
      
      internal function frame63() : *
      {
         this.head.gotoAndPlay("hit");
      }
      
      internal function frame78() : *
      {
         stop();
      }
      
      internal function frame79() : *
      {
         this.head.gotoAndPlay("hit2");
      }
      
      internal function frame101() : *
      {
         stop();
      }
      
      internal function frame102() : *
      {
         this.head.gotoAndPlay("heal");
      }
      
      internal function frame129() : *
      {
         stop();
      }
      
      internal function frame130() : *
      {
         this.head.gotoAndPlay("die");
      }
   }
}


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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol15342")]
   public dynamic class Symbol1499_4396 extends MovieClip
   {
      public var head:MovieClip;
      
      public function Symbol1499_4396()
      {
         super();
         addFrameScript(0,this.frame1,73,this.frame74,74,this.frame75,89,this.frame90,90,this.frame91,112,this.frame113,113,this.frame114,140,this.frame141,141,this.frame142);
      }
      
      internal function frame1() : *
      {
         Global.nestedAnimation(this);
      }
      
      internal function frame74() : *
      {
         Global.nestedAnimation(this);
         gotoAndPlay(2);
      }
      
      internal function frame75() : *
      {
         this.head.gotoAndPlay("hit");
      }
      
      internal function frame90() : *
      {
         stop();
      }
      
      internal function frame91() : *
      {
         this.head.gotoAndPlay("hit2");
      }
      
      internal function frame113() : *
      {
         stop();
      }
      
      internal function frame114() : *
      {
         this.head.gotoAndPlay("heal");
      }
      
      internal function frame141() : *
      {
         stop();
      }
      
      internal function frame142() : *
      {
         this.head.gotoAndPlay("die");
      }
   }
}


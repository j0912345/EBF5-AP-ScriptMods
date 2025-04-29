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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol13557")]
   public dynamic class Symbol1247_5027 extends MovieClip
   {
      public function Symbol1247_5027()
      {
         super();
         addFrameScript(0,this.frame1,4,this.frame5,15,this.frame16,35,this.frame36,57,this.frame58);
      }
      
      internal function frame1() : *
      {
         Global.nestedAnimation(this,true);
      }
      
      internal function frame5() : *
      {
         if(Math.random() < 0.02)
         {
            gotoAndPlay("blink");
         }
         else
         {
            gotoAndPlay(1);
         }
      }
      
      internal function frame16() : *
      {
         gotoAndPlay(1);
      }
      
      internal function frame36() : *
      {
         gotoAndPlay(1);
      }
      
      internal function frame58() : *
      {
         stop();
      }
   }
}


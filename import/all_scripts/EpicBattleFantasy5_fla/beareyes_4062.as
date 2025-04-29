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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol16094")]
   public dynamic class beareyes_4062 extends MovieClip
   {
      public function beareyes_4062()
      {
         super();
         addFrameScript(0,this.frame1,61,this.frame62,62,this.frame63,82,this.frame83,103,this.frame104,131,this.frame132,137,this.frame138,167,this.frame168,228,this.frame229);
      }
      
      internal function frame1() : *
      {
         Global.nestedAnimation(this);
         if(Boolean(parent) && Boolean(parent.parent) && Boolean(parent.parent.angry))
         {
            gotoAndPlay("angry");
         }
      }
      
      internal function frame62() : *
      {
         gotoAndPlay(2);
      }
      
      internal function frame63() : *
      {
         if(Boolean(parent) && Boolean(parent.parent) && Boolean(parent.parent.angry))
         {
            gotoAndPlay("hit2");
         }
      }
      
      internal function frame83() : *
      {
         gotoAndPlay(2);
      }
      
      internal function frame104() : *
      {
         gotoAndPlay("angry");
      }
      
      internal function frame132() : *
      {
         gotoAndPlay(2);
      }
      
      internal function frame138() : *
      {
         stop();
      }
      
      internal function frame168() : *
      {
         Global.nestedAnimation(this);
      }
      
      internal function frame229() : *
      {
         gotoAndPlay("angry");
      }
   }
}


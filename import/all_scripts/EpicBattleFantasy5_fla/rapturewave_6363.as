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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9706")]
   public dynamic class rapturewave_6363 extends MovieClip
   {
      public var swoosh:MovieClip;
      
      public var myColorTransform:*;
      
      public function rapturewave_6363()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3,3,this.frame4);
      }
      
      internal function frame1() : *
      {
         gotoAndStop(int(Math.random() * 3 + 2));
      }
      
      internal function frame2() : *
      {
         this.myColorTransform = new ColorTransform();
         this.myColorTransform.color = Global.getElementColor();
         this.swoosh.transform.colorTransform = this.myColorTransform;
      }
      
      internal function frame3() : *
      {
         this.myColorTransform = new ColorTransform();
         this.myColorTransform.color = Global.getElementColor();
         this.swoosh.transform.colorTransform = this.myColorTransform;
      }
      
      internal function frame4() : *
      {
         this.myColorTransform = new ColorTransform();
         this.myColorTransform.color = Global.getElementColor();
         this.swoosh.transform.colorTransform = this.myColorTransform;
      }
   }
}


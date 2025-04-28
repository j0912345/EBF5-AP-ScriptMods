package
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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol331")]
   public dynamic class Idols3 extends MovieClip
   {
      public var bo:SimpleButton;
      
      public var body:MovieClip;
      
      public var point1:MovieClip;
      
      public var point2:MovieClip;
      
      public var point3:MovieClip;
      
      public var point4:MovieClip;
      
      public var init:Boolean;
      
      public var skin:int;
      
      public function Idols3()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,57,this.frame58,73,this.frame74,95,this.frame96,134,this.frame135,135,this.frame136,160,this.frame161);
      }
      
      public function die(param1:Event) : *
      {
         gotoAndPlay("die");
      }
      
      public function scared(param1:Event) : *
      {
         if(this.body)
         {
            this.body.eyes.gotoAndPlay("oh");
         }
      }
      
      public function phew(param1:Event) : *
      {
         if(this.body)
         {
            this.body.eyes.gotoAndPlay("phew");
         }
      }
      
      internal function frame1() : *
      {
         this.init = false;
         gotoAndPlay("intro");
         this.skin = 1 + Math.floor(Math.random() * 24);
         Options.setVolume(this);
      }
      
      internal function frame3() : *
      {
         gotoAndPlay(Math.floor(5 + Math.random() * 50));
      }
      
      internal function frame58() : *
      {
         this.mouseEnabled = false;
         this.mouseChildren = false;
      }
      
      internal function frame74() : *
      {
         if(!this.init)
         {
            this.init = true;
            this.bo.addEventListener(MouseEvent.MOUSE_DOWN,this.die);
            this.bo.addEventListener(MouseEvent.MOUSE_OVER,this.scared);
            this.bo.addEventListener(MouseEvent.MOUSE_OUT,this.phew);
         }
         this.mouseEnabled = true;
         this.mouseChildren = true;
      }
      
      internal function frame96() : *
      {
         Options.setVolume(this);
      }
      
      internal function frame135() : *
      {
         gotoAndPlay("stand");
      }
      
      internal function frame136() : *
      {
         this.mouseEnabled = false;
         this.mouseChildren = false;
         this.bo.removeEventListener(MouseEvent.MOUSE_DOWN,this.die);
         this.bo.removeEventListener(MouseEvent.MOUSE_OVER,this.scared);
         this.bo.removeEventListener(MouseEvent.MOUSE_OUT,this.phew);
         Options.setVolume(this);
         parent.addScore();
      }
      
      internal function frame161() : *
      {
         stop();
         parent.death(this);
      }
   }
}


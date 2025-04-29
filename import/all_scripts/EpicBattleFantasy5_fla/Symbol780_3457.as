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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol6748")]
   public dynamic class Symbol780_3457 extends MovieClip
   {
      public var b1:SimpleButton;
      
      public var h:Boolean;
      
      public function Symbol780_3457()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,15,this.frame16,16,this.frame17,35,this.frame36);
      }
      
      internal function frame1() : *
      {
         stop();
         stop();
         if(!this.h)
         {
            this.b1.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):*
            {
               gotoAndPlay("bounce3");
               Global.playSound("boing1");
            });
            this.h = true;
         }
      }
      
      internal function frame2() : *
      {
         parent.tit.gotoAndPlay("bounce1");
         parent.boob.gotoAndPlay("bounce1");
      }
      
      internal function frame16() : *
      {
         gotoAndStop(1);
      }
      
      internal function frame17() : *
      {
         parent.tit.gotoAndPlay("bounce2");
         parent.boob.gotoAndPlay("bounce2");
      }
      
      internal function frame36() : *
      {
         gotoAndStop(1);
      }
   }
}


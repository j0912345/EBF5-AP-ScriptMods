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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol6727")]
   public dynamic class Symbol790_3447 extends MovieClip
   {
      public var b1:SimpleButton;
      
      public var h:Boolean;
      
      public function Symbol790_3447()
      {
         super();
         addFrameScript(0,this.frame1,15,this.frame16,35,this.frame36);
      }
      
      internal function frame1() : *
      {
         stop();
         stop();
         if(!this.h)
         {
            this.b1.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):*
            {
               gotoAndPlay("bounce2");
               Global.playSound("boing2");
            });
            this.h = true;
         }
         if(!Options.titties)
         {
            this.b1.mouseEnabled = false;
            mouseEnabled = false;
         }
         if(Boolean(parent) && Boolean(parent.parent) && parent.parent.skin == 1)
         {
            this.b1.mouseEnabled = false;
            mouseEnabled = false;
         }
      }
      
      internal function frame16() : *
      {
         gotoAndStop(1);
      }
      
      internal function frame36() : *
      {
         gotoAndStop(1);
      }
   }
}


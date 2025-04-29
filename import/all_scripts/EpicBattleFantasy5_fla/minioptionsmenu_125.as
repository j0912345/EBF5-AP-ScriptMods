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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol350")]
   public dynamic class minioptionsmenu_125 extends MovieClip
   {
      public var bf:SimpleButton;
      
      public var bm:SimpleButton;
      
      public var bq:SimpleButton;
      
      public var bs:SimpleButton;
      
      public var im:MovieClip;
      
      public var iq:MovieClip;
      
      public var iso:MovieClip;
      
      public var w1:MovieClip;
      
      public function minioptionsmenu_125()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2);
      }
      
      public function update() : *
      {
         if(!Options.sound)
         {
            this.iso.alpha = 0.3;
         }
         else
         {
            this.iso.alpha = 1;
         }
         if(!Options.music)
         {
            this.im.alpha = 0.3;
         }
         else
         {
            this.im.alpha = 1;
         }
         if(Options.quality == Options.LOW)
         {
            this.iq.alpha = 0.3;
         }
         if(Options.quality == Options.MEDIUM)
         {
            this.iq.alpha = 0.7;
         }
         if(Options.quality == Options.HIGH)
         {
            this.iq.alpha = 1;
         }
         if(!Options.applicationFeatures || Game.mode != Game.MAIN_MENU)
         {
            Options.save();
         }
         if(Game.mode == Game.MAIN_MENU)
         {
            this.w1.visible = false;
         }
      }
      
      internal function frame1() : *
      {
         this.bq.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            Options.toggleQuality();
            update();
         });
         this.bs.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            Options.toggleSound();
            update();
         });
         this.bm.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            Options.toggleMusic();
            update();
         });
         this.update();
         stop();
         if(!Debug.enableKong)
         {
            nextFrame();
         }
      }
      
      internal function frame2() : *
      {
         this.bf.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            Options.toggleFullscreen();
         });
      }
   }
}


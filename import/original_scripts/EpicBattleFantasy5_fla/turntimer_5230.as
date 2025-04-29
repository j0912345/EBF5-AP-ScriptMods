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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol12941")]
   public dynamic class turntimer_5230 extends MovieClip
   {
      public var timeT:TextField;
      
      public var w1:MovieClip;
      
      public var time:int;
      
      public var timer:Timer;
      
      public function turntimer_5230()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3);
      }
      
      public function resetTime() : *
      {
         this.time = 30;
         this.timer.reset();
      }
      
      public function pause() : *
      {
         this.timer.stop();
      }
      
      public function unpause() : *
      {
         this.timer.start();
      }
      
      public function teardown() : *
      {
         this.timer.removeEventListener(TimerEvent.TIMER,this.tick);
         this.timer.stop();
         this.timer = null;
      }
      
      public function tick(param1:* = null) : *
      {
         if(this.time == 0)
         {
            this.timer.stop();
            (parent as BattleMenu).timeUp();
         }
         --this.time;
         if(this.time < 11)
         {
            SFX.playSound("tick");
         }
         if(this.time <= 0)
         {
            this.time = 0;
         }
      }
      
      internal function frame1() : *
      {
         if(Options.turnTimeLimit)
         {
            this.timer = new Timer(1000,0);
            this.timer.addEventListener(TimerEvent.TIMER,this.tick);
            this.resetTime();
         }
         else
         {
            stop();
            visible = false;
         }
      }
      
      internal function frame2() : *
      {
         this.timeT.text = this.time;
      }
      
      internal function frame3() : *
      {
         gotoAndPlay(2);
      }
   }
}


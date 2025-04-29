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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol6741")]
   public dynamic class Symbol784_3452 extends MovieClip
   {
      public var b1:SimpleButton;
      
      public function Symbol784_3452()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,251,this.frame252,274,this.frame275,299,this.frame300,336,this.frame337,385,this.frame386,386,this.frame387,390,this.frame391,399,this.frame400);
      }
      
      internal function frame1() : *
      {
         Global.nestedAnimation(this);
         this.b1.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):*
         {
            gotoAndPlay("poke");
         });
      }
      
      internal function frame3() : *
      {
         if(Math.random() > 0.1)
         {
            gotoAndPlay(2);
         }
      }
      
      internal function frame252() : *
      {
         gotoAndPlay(2);
      }
      
      internal function frame275() : *
      {
         gotoAndPlay(2);
      }
      
      internal function frame300() : *
      {
         gotoAndPlay(2);
      }
      
      internal function frame337() : *
      {
         gotoAndPlay(2);
      }
      
      internal function frame386() : *
      {
         stop();
      }
      
      internal function frame387() : *
      {
         Global.playSound("poke");
         ++Global.bounce;
      }
      
      internal function frame391() : *
      {
         if(Global.bounce >= 10)
         {
            Medals.unlock(Medals.pervert);
         }
      }
      
      internal function frame400() : *
      {
         gotoAndPlay(2);
      }
   }
}


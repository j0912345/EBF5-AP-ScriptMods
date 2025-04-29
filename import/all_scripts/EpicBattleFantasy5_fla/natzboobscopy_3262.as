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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol5522")]
   public dynamic class natzboobscopy_3262 extends MovieClip
   {
      public var boob1:SimpleButton;
      
      public var boob2:SimpleButton;
      
      public var boobs:SimpleButton;
      
      public function natzboobscopy_3262()
      {
         super();
         addFrameScript(0,this.frame1,32,this.frame33,33,this.frame34,66,this.frame67,67,this.frame68,101,this.frame102,102,this.frame103);
      }
      
      internal function frame1() : *
      {
         stop();
         this.boob1.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):*
         {
            gotoAndPlay("bounce2");
            ++Global.bounce;
         });
         this.boob2.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):*
         {
            gotoAndPlay("bounce3");
            ++Global.bounce;
         });
         this.boobs.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):*
         {
            gotoAndPlay("bounce1");
            ++Global.bounce;
         });
         if(!Options.titties)
         {
            this.boob1.mouseEnabled = false;
            this.boob2.mouseEnabled = false;
            this.boobs.mouseEnabled = false;
         }
      }
      
      internal function frame33() : *
      {
         if(Global.bounce >= 10)
         {
            Medals.unlock(Medals.pervert);
         }
      }
      
      internal function frame34() : *
      {
         gotoAndStop(104);
      }
      
      internal function frame67() : *
      {
         if(Global.bounce >= 10)
         {
            Medals.unlock(Medals.pervert);
         }
      }
      
      internal function frame68() : *
      {
         gotoAndStop(104);
      }
      
      internal function frame102() : *
      {
         if(Global.bounce >= 10)
         {
            Medals.unlock(Medals.pervert);
         }
      }
      
      internal function frame103() : *
      {
         gotoAndStop(104);
      }
   }
}


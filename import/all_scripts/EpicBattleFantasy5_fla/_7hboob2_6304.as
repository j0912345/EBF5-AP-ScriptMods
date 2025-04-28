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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9929")]
   public dynamic class _7hboob2_6304 extends MovieClip
   {
      public var boob:SimpleButton;
      
      public function _7hboob2_6304()
      {
         super();
         addFrameScript(0,this.frame1,24,this.frame25);
      }
      
      internal function frame1() : *
      {
         stop();
         if(!Options.titties)
         {
            this.boob.visible = false;
         }
         else
         {
            this.boob.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):*
            {
               gotoAndPlay(2);
               Global.playSound("boing3");
               ++Global.bounce;
            });
         }
      }
      
      internal function frame25() : *
      {
         if(Global.bounce >= 10)
         {
            Medals.unlock(Medals.pervert);
         }
      }
   }
}


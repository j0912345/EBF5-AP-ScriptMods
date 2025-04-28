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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol3201")]
   public dynamic class Symbol56_3419 extends MovieClip
   {
      public var b1:MovieClip;
      
      public function Symbol56_3419()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         stop();
         this.b1.addEventListener(MouseEvent.ROLL_OUT,function(param1:MouseEvent):*
         {
            gotoAndPlay(2);
         });
         try
         {
            if(!parent.zombieMode && Options.showNoLegsHat)
            {
               visible = false;
               stop();
            }
         }
         catch(e:Error)
         {
         }
      }
   }
}


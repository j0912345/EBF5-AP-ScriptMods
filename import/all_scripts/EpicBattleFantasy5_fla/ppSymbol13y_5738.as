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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol11618")]
   public dynamic class ppSymbol13y_5738 extends MovieClip
   {
      public var hand:MovieClip;
      
      public var zombieMode:Boolean;
      
      public function ppSymbol13y_5738()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         try
         {
            this.zombieMode = parent.zombieMode;
            if(parent.zombieMode)
            {
               this.hand.gotoAndStop(5);
            }
            else
            {
               this.hand.stop();
            }
         }
         catch(e:Error)
         {
            hand.stop();
         }
         stop();
      }
   }
}


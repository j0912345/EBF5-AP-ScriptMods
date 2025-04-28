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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol11623")]
   public dynamic class ppSymbol55y_5740 extends MovieClip
   {
      public var derp:MovieClip;
      
      public var hand:MovieClip;
      
      public function ppSymbol55y_5740()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         try
         {
            playerNo = parent.playerNo;
            if(Boolean(parent.zombieMode) && Boolean(parent.zombieAnna))
            {
               this.derp.gotoAndStop(55);
            }
            else if(Boolean(parent.zombieMode) && Boolean(parent.zombieNatz))
            {
               this.derp.gotoAndStop(56);
            }
            else if(Boolean(parent.zombieMode) && Boolean(parent.zombieMatt))
            {
               this.derp.gotoAndStop(25);
            }
            else
            {
               this.derp.gotoAndStop(Players.equips[2][2]);
            }
         }
         catch(errObject:Error)
         {
         }
         try
         {
            if(Boolean(parent.zombieMode) && Boolean(parent.zombieMatt))
            {
               this.hand.gotoAndStop(2);
            }
            else if(Boolean(parent.zombieMode) && Boolean(parent.zombieAnna))
            {
               this.hand.gotoAndStop(4);
            }
            else if(Boolean(parent.zombieMode) && Boolean(parent.zombieNatz))
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
      }
   }
}


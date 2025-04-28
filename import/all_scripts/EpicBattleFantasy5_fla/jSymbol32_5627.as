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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol11875")]
   public dynamic class jSymbol32_5627 extends MovieClip
   {
      public var derp:MovieClip;
      
      public var hand:MovieClip;
      
      public var playerNo:int;
      
      public function jSymbol32_5627()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         try
         {
            this.playerNo = parent.playerNo;
            if(parent.zombieMode)
            {
               if(parent.zombieAnna)
               {
                  this.derp.gotoAndStop(13);
               }
               else if(parent.zombieNatz)
               {
                  this.derp.gotoAndStop(13);
               }
               else if(parent.zombieMatt)
               {
                  this.derp.gotoAndStop(2);
               }
            }
            else
            {
               this.derp.gotoAndStop(Players.equips[1][2]);
            }
         }
         catch(errObject:Error)
         {
         }
         try
         {
            if(parent.zombieMode)
            {
               if(parent.zombieAnna)
               {
                  this.hand.gotoAndStop(4);
               }
               if(parent.zombieNatz)
               {
                  this.hand.gotoAndStop(5);
               }
               if(parent.zombieMatt)
               {
                  this.hand.gotoAndStop(2);
               }
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


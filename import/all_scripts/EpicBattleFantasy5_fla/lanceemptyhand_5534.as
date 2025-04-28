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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8794")]
   public dynamic class lanceemptyhand_5534 extends MovieClip
   {
      public var derp:MovieClip;
      
      public var hand:MovieClip;
      
      public function lanceemptyhand_5534()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2);
      }
      
      internal function frame1() : *
      {
         stop();
         try
         {
            if(!this.derp || !parent)
            {
               return;
            }
            if(Boolean(parent.zombieMode) && Boolean(parent.zombieLance))
            {
               this.derp.gotoAndStop(10);
            }
            else if(Boolean(parent.zombieMode) && Boolean(parent.zombieMatt))
            {
               this.derp.gotoAndStop(25);
            }
            else
            {
               this.derp.gotoAndStop(Players.equips[3][2]);
            }
         }
         catch(e:Error)
         {
         }
         try
         {
            if(parent.zombieMode)
            {
               if(!this.hand || !parent)
               {
                  return;
               }
               this.hand.stop();
               if(parent.zombieMatt)
               {
                  this.hand.gotoAndStop(2);
               }
               if(parent.zombieLance)
               {
                  this.hand.gotoAndStop(3);
               }
               if(parent.zombieAnna)
               {
                  this.hand.gotoAndStop(4);
               }
               if(parent.zombieNatalie)
               {
                  this.hand.gotoAndStop(5);
               }
            }
         }
         catch(e:Error)
         {
            hand.stop();
         }
      }
      
      internal function frame2() : *
      {
         stop();
         try
         {
            if(!this.derp || !parent)
            {
               return;
            }
            if(Boolean(parent.zombieMode) && Boolean(parent.zombieLance))
            {
               this.derp.gotoAndStop(10);
            }
            else if(Boolean(parent.zombieMode) && Boolean(parent.zombieMatt))
            {
               this.derp.gotoAndStop(25);
            }
            else
            {
               this.derp.gotoAndStop(Players.equips[3][2]);
            }
         }
         catch(e:Error)
         {
         }
         if(parent.zombieMode)
         {
            if(!this.hand || !parent)
            {
               return;
            }
            this.hand.stop();
            if(parent.zombieMatt)
            {
               this.hand.gotoAndStop(2);
            }
            if(parent.zombieLance)
            {
               this.hand.gotoAndStop(3);
            }
            if(parent.zombieAnna)
            {
               this.hand.gotoAndStop(4);
            }
            if(parent.zombieNatalie)
            {
               this.hand.gotoAndStop(5);
            }
         }
      }
   }
}


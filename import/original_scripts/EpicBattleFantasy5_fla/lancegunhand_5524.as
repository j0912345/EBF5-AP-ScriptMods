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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol12113")]
   public dynamic class lancegunhand_5524 extends MovieClip
   {
      public var finger:MovieClip;
      
      public var hand:MovieClip;
      
      public function lancegunhand_5524()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         try
         {
            if(parent.zombieMode)
            {
               this.hand.stop();
               this.finger.stop();
               if(parent.zombieMatt)
               {
                  this.hand.gotoAndStop(2);
                  this.finger.gotoAndStop(2);
               }
               if(parent.zombieLance)
               {
                  this.hand.gotoAndStop(3);
                  this.finger.gotoAndStop(3);
               }
               if(parent.zombieAnna)
               {
                  this.hand.gotoAndStop(4);
                  this.finger.gotoAndStop(4);
               }
               if(parent.zombieNatalie)
               {
                  this.hand.gotoAndStop(5);
                  this.finger.gotoAndStop(5);
               }
            }
         }
         catch(e:Error)
         {
            hand.stop();
         }
      }
   }
}


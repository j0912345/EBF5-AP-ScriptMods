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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol12377")]
   public dynamic class annaarm3_5340 extends MovieClip
   {
      public var derp:MovieClip;
      
      public var hand:MovieClip;
      
      public var playerNo:int;
      
      public function annaarm3_5340()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         try
         {
            this.playerNo = parent.playerNo;
            if(Boolean(parent.zombieMode) && Boolean(parent.zombieAnna))
            {
               this.derp.gotoAndStop(55);
            }
            else if(Boolean(parent.zombieMode) && Boolean(parent.zombieNatz))
            {
               this.derp.gotoAndStop(13);
            }
            else
            {
               this.derp.gotoAndStop(Players.equips[this.playerNo][2]);
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


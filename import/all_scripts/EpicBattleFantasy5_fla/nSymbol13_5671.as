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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol11487")]
   public dynamic class nSymbol13_5671 extends MovieClip
   {
      public var hand:MovieClip;
      
      public var zombieMode:Boolean;
      
      public function nSymbol13_5671()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         this.zombieMode = parent.zombieMode;
         try
         {
            this.hand.stop();
            if(parent.zombieMode)
            {
               this.hand.gotoAndStop(5);
            }
            else if(Players.equips[parent.playerNo][2] == 9 || Players.equips[parent.playerNo][2] == 13)
            {
               gotoAndStop(3);
            }
            else
            {
               this.hand.stop();
            }
         }
         catch(e:Error)
         {
         }
         stop();
      }
   }
}


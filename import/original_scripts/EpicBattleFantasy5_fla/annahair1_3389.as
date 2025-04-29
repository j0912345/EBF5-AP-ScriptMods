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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol5837")]
   public dynamic class annahair1_3389 extends MovieClip
   {
      public var derp:MovieClip;
      
      public var playerNo:int;
      
      public function annahair1_3389()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         stop();
         try
         {
            this.playerNo = 4;
            if(parent.zombieMode)
            {
               this.derp.gotoAndStop(55);
            }
            else
            {
               this.derp.gotoAndStop(Players.equips[this.playerNo][1]);
            }
         }
         catch(e:Error)
         {
         }
      }
   }
}


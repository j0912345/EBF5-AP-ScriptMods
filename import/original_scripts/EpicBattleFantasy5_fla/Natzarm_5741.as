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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol11622")]
   public dynamic class Natzarm_5741 extends MovieClip
   {
      public var derp:MovieClip;
      
      public var playerNo:int;
      
      public function Natzarm_5741()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         try
         {
            if(Boolean(parent.zombieMode) || Boolean(parent.parent.zombieMode))
            {
               this.derp.gotoAndStop(56);
            }
            else
            {
               this.playerNo = 2;
               this.derp.gotoAndStop(Players.equips[2][2]);
            }
         }
         catch(e:Error)
         {
         }
      }
   }
}


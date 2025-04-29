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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol5595")]
   public dynamic class natzhair1_3289 extends MovieClip
   {
      public var derp:MovieClip;
      
      public var playerNo:int;
      
      public function natzhair1_3289()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         stop();
         try
         {
            this.playerNo = 2;
            if(parent.zombieMode)
            {
               this.derp.visible = false;
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


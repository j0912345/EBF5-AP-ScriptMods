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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol11712")]
   public dynamic class nSymbol57_5750 extends MovieClip
   {
      public function nSymbol57_5750()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         stop();
         try
         {
            if(!parent.parent.zombieMode)
            {
               gotoAndStop(Players.equips[2][6]);
            }
         }
         catch(errObject:Error)
         {
         }
      }
   }
}


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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol12471")]
   public dynamic class Symbol435_5402 extends MovieClip
   {
      public function Symbol435_5402()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         try
         {
            if(parent.parent.zombieMode)
            {
               gotoAndStop(8);
            }
            else
            {
               gotoAndStop(Players.equips[4][6]);
            }
         }
         catch(errObject:Error)
         {
         }
      }
   }
}


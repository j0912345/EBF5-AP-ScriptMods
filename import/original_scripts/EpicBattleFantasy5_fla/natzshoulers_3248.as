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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol5440")]
   public dynamic class natzshoulers_3248 extends MovieClip
   {
      public function natzshoulers_3248()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         try
         {
            if(Boolean(parent.zombieMode) && Boolean(parent.zombieAnna))
            {
               gotoAndStop(55);
            }
            else if(Boolean(parent.zombieMode) && Boolean(parent.zombieNatz))
            {
               gotoAndStop(56);
            }
            else
            {
               a = Players.equips[parent.playerNo][2];
               if(parent.playerNo == 2)
               {
                  b = 22;
               }
               else
               {
                  b = 0;
               }
               gotoAndStop(a + b);
            }
         }
         catch(errObject:Error)
         {
         }
      }
   }
}


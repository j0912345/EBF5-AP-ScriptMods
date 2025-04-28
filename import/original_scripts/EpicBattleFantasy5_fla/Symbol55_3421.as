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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol3205")]
   public dynamic class Symbol55_3421 extends MovieClip
   {
      public function Symbol55_3421()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         try
         {
            if(Boolean(parent.zombieMode) && Boolean(parent.zombieNoLegs))
            {
               gotoAndStop(15);
            }
            else if(parent.zombieMode)
            {
               gotoAndStop(2);
            }
            else
            {
               gotoAndStop(Players.equips[5][6]);
            }
            if(!parent.zombieMode && Options.showNoLegsHat)
            {
               visible = false;
               stop();
            }
         }
         catch(errObject:Error)
         {
         }
         mouseEnabled = false;
      }
   }
}


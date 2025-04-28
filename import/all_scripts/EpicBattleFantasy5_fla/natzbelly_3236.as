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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol5359")]
   public dynamic class natzbelly_3236 extends MovieClip
   {
      public function natzbelly_3236()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,11,this.frame12,16,this.frame17);
      }
      
      internal function frame1() : *
      {
         try
         {
            if(Boolean(parent.zombieMode) && Boolean(parent.zombieAnna))
            {
               gotoAndStop(22);
            }
            else if(Boolean(parent.zombieMode) && Boolean(parent.zombieNatz))
            {
               gotoAndStop(56);
            }
            else
            {
               gotoAndStop(Players.equips[parent.playerNo][2]);
            }
         }
         catch(errObject:Error)
         {
         }
      }
      
      internal function frame2() : *
      {
         if(parent.playerNo == 4)
         {
            gotoAndStop(40);
         }
      }
      
      internal function frame12() : *
      {
      }
      
      internal function frame17() : *
      {
         if(parent.playerNo == 2 && Players.equips[2][1] == 3 && Options.titties)
         {
            gotoAndStop(25);
         }
      }
   }
}


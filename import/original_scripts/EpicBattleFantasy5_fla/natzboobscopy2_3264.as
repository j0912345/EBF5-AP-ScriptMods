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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol5520")]
   public dynamic class natzboobscopy2_3264 extends MovieClip
   {
      public function natzboobscopy2_3264()
      {
         super();
         addFrameScript(0,this.frame1,4,this.frame5,16,this.frame17);
      }
      
      internal function frame1() : *
      {
         try
         {
            if(parent.parent.parent.zombieMode)
            {
               gotoAndStop(56);
            }
            else
            {
               gotoAndStop(Players.equips[2][2]);
            }
         }
         catch(errObject:Error)
         {
         }
      }
      
      internal function frame5() : *
      {
         if(Players.equips[2][1] == 4)
         {
            gotoAndStop(23);
         }
      }
      
      internal function frame17() : *
      {
         if(Players.equips[2][1] == 3 && Options.titties)
         {
            gotoAndStop(25);
         }
      }
   }
}


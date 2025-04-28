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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol12507")]
   public dynamic class bowsounds_5448 extends MovieClip
   {
      public function bowsounds_5448()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         Options.setVolume(this);
         visible = false;
         stop();
         if(parent.zombieMode)
         {
            gotoAndStop(6);
         }
         else
         {
            if(Players.P4equips[0] == 21 || Players.P4equips[0] == 17)
            {
               gotoAndStop(2);
            }
            if(Players.P4equips[0] == 16)
            {
               gotoAndStop(3);
            }
            if(Players.P4equips[0] == 20)
            {
               gotoAndStop(4);
            }
            if(Players.P4equips[0] == 5 || Players.P4equips[0] == 8 || Players.P4equips[0] == 18 || Players.P4equips[0] == 10)
            {
               gotoAndStop(5);
            }
            if(Players.P4equips[0] == 15)
            {
               gotoAndStop(6);
            }
            if(Players.P4equips[0] == 13)
            {
               gotoAndStop(7);
            }
            if(Players.P4equips[0] == 6)
            {
               gotoAndStop(9);
            }
            if(Players.P4equips[0] == 9 || Players.P4equips[0] == 14)
            {
               gotoAndStop(10);
            }
         }
      }
   }
}


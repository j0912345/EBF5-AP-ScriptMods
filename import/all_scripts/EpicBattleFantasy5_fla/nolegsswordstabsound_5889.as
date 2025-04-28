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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol11155")]
   public dynamic class nolegsswordstabsound_5889 extends MovieClip
   {
      public function nolegsswordstabsound_5889()
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
            gotoAndStop(14);
         }
         else
         {
            if(Players.P5equips[0] == 1 || Players.P5equips[0] == 2)
            {
               gotoAndStop(2);
            }
            if(Players.P5equips[0] == 3 || Players.P5equips[0] == 7)
            {
               gotoAndStop(3);
            }
            if(Players.P5equips[0] == 4)
            {
               gotoAndStop(4);
            }
            if(Players.P5equips[0] == 5)
            {
               gotoAndStop(5);
            }
            if(Players.P5equips[0] == 6)
            {
               gotoAndStop(6);
            }
            if(Players.P5equips[0] == 9 || Players.P5equips[0] == 8 || Players.P5equips[0] == 18)
            {
               gotoAndStop(7);
            }
            if(Players.P5equips[0] == 10 || Players.P5equips[0] == 13)
            {
               gotoAndStop(8);
            }
            if(Players.P5equips[0] == 11 || Players.P5equips[0] == 14 || Players.P5equips[0] == 15)
            {
               gotoAndStop(9);
            }
            if(Players.P5equips[0] == 12)
            {
               gotoAndStop(10);
            }
            if(Players.P5equips[0] == 19)
            {
               gotoAndStop(11);
            }
            if(Players.P5equips[0] == 16)
            {
               gotoAndStop(12);
            }
            if(Players.P5equips[0] == 17)
            {
               gotoAndStop(11);
            }
            if(Players.P5equips[0] == 20)
            {
               gotoAndStop(14);
            }
            if(Players.P5equips[0] == 21)
            {
               gotoAndStop(15);
            }
         }
      }
   }
}


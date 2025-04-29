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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol11135")]
   public dynamic class malearmorsounds_5548 extends MovieClip
   {
      public function malearmorsounds_5548()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         Options.setVolume(this);
         visible = false;
         stop();
         if(!parent.zombieMode)
         {
            if(parent.playerNo == 1)
            {
               if(Players.P1equips[2] == 12)
               {
                  gotoAndStop(2);
               }
               if(Players.P1equips[2] == 7 || Players.P1equips[2] == 9)
               {
                  gotoAndStop(3);
               }
               if(Players.P1equips[2] == 3 || Players.P1equips[2] == 6)
               {
                  gotoAndStop(5);
               }
               if(Players.P1equips[2] == 16 || Players.P1equips[2] == 14 || Players.P1equips[2] == 17 || Players.P1equips[2] == 18)
               {
                  gotoAndStop(4);
               }
            }
            if(parent.playerNo == 3)
            {
               if(Players.P3equips[2] == 12)
               {
                  gotoAndStop(2);
               }
               if(Players.P3equips[2] == 7 || Players.P3equips[2] == 9)
               {
                  gotoAndStop(3);
               }
               if(Players.P3equips[2] == 3 || Players.P3equips[2] == 6)
               {
                  gotoAndStop(5);
               }
               if(Players.P3equips[2] == 16 || Players.P3equips[2] == 14 || Players.P3equips[2] == 17 || Players.P3equips[2] == 18)
               {
                  gotoAndStop(4);
               }
            }
            if(parent.playerNo == 5)
            {
               if(Players.P5equips[2] == 12)
               {
                  gotoAndStop(2);
               }
               if(Players.P5equips[2] == 7 || Players.P5equips[2] == 9)
               {
                  gotoAndStop(3);
               }
               if(Players.P5equips[2] == 3 || Players.P5equips[2] == 6)
               {
                  gotoAndStop(5);
               }
               if(Players.P5equips[2] == 16 || Players.P5equips[2] == 14 || Players.P5equips[2] == 17 || Players.P5equips[2] == 18)
               {
                  gotoAndStop(4);
               }
            }
         }
      }
   }
}


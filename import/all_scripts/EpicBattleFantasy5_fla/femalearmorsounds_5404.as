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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol11719")]
   public dynamic class femalearmorsounds_5404 extends MovieClip
   {
      public function femalearmorsounds_5404()
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
            if(parent.playerNo == 2)
            {
               if(Players.P2equips[2] == 9)
               {
                  gotoAndStop(2);
               }
               if(Players.P2equips[2] == 18)
               {
                  gotoAndStop(3);
               }
               if(Players.P2equips[2] == 3 || Players.P2equips[2] == 22 || Players.P2equips[2] == 11 || Players.P2equips[2] == 13)
               {
                  gotoAndStop(4);
               }
            }
            if(parent.playerNo == 4)
            {
               if(Players.P4equips[2] == 9)
               {
                  gotoAndStop(2);
               }
               if(Players.P4equips[2] == 18)
               {
                  gotoAndStop(3);
               }
               if(Players.P4equips[2] == 3 || Players.P4equips[2] == 22 || Players.P4equips[2] == 11 || Players.P4equips[2] == 13)
               {
                  gotoAndStop(4);
               }
            }
         }
      }
   }
}


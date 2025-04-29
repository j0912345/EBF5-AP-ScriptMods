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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol11793")]
   public dynamic class staffsounds_5784 extends MovieClip
   {
      public function staffsounds_5784()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         Options.setVolume(this);
         visible = false;
         stop();
         if(Players.P2equips[0] == 7 || Players.P2equips[0] == 8)
         {
            gotoAndStop(2);
         }
         else if(Players.P2equips[0] == 13)
         {
            gotoAndStop(3);
         }
         else if(Players.P2equips[0] == 15 || Players.P2equips[0] == 20)
         {
            gotoAndStop(4);
         }
         else if(parent.zombieMode || Players.P2equips[0] == 14 || Players.P2equips[0] == 18 || Players.P2equips[0] == 4 || Players.P2equips[0] == 1)
         {
            gotoAndStop(5);
         }
         else if(Players.P2equips[0] == 10)
         {
            gotoAndStop(6);
         }
         else if(Players.P2equips[0] == 21)
         {
            gotoAndStop(7);
         }
         else if(Players.P2equips[0] == 19 || Players.P2equips[0] == 3)
         {
            gotoAndStop(8);
         }
         else if(Players.P2equips[0] == 5 || Players.P2equips[0] == 17)
         {
            gotoAndStop(9);
         }
         else if(Players.P2equips[0] == 16 || Players.P2equips[0] == 9)
         {
            gotoAndStop(10);
         }
         else
         {
            gotoAndStop(12);
         }
      }
   }
}


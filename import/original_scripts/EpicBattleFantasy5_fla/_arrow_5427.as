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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8342")]
   public dynamic class _arrow_5427 extends MovieClip
   {
      public function _arrow_5427()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,15,this.frame16);
      }
      
      internal function frame1() : *
      {
         try
         {
            if(Flags.battleEvent == Flags.ANNA_BATTLE)
            {
               stop();
            }
            else if(parent.zombieMode)
            {
               gotoAndStop(15);
            }
            else if(Boolean(Battle.currentFoe) && Battle.currentFoe.zombieMode)
            {
               gotoAndStop(15);
            }
            else if(Boolean(Skills.user) && !Skills.user.isPlayer)
            {
               gotoAndStop(Global.arrow);
            }
            else
            {
               gotoAndStop(Players.equips[4][0]);
            }
         }
         catch(errObject:Error)
         {
         }
      }
      
      internal function frame3() : *
      {
         try
         {
            if(Players.equips[4][2] == 5 || Players.equips[4][2] == 15 || Players.equips[4][2] == 20)
            {
               gotoAndStop(15);
            }
         }
         catch(errObject:Error)
         {
         }
      }
      
      internal function frame16() : *
      {
         try
         {
            if(Players.equips[4][2] == 9 || Players.equips[4][2] == 8 || Players.equips[4][2] == 18)
            {
               gotoAndStop(27);
            }
         }
         catch(errObject:Error)
         {
         }
      }
   }
}


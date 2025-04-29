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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol12375")]
   public dynamic class _allbows_5286 extends MovieClip
   {
      public function _allbows_5286()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,8,this.frame9,15,this.frame16);
      }
      
      internal function frame1() : *
      {
         try
         {
            if(parent && parent.zombieMode || parent.parent && parent.parent.zombieMode)
            {
               gotoAndStop(24);
            }
            else
            {
               gotoAndStop(Players.equips[4][0]);
            }
         }
         catch(e:Error)
         {
            gotoAndStop(Players.equips[4][0]);
         }
         mouseEnabled = false;
         mouseChildren = false;
      }
      
      internal function frame3() : *
      {
         try
         {
            if(Players.equips[4][2] == 5 || Players.equips[4][2] == 15 || Players.equips[4][2] == 20)
            {
               gotoAndStop(25);
            }
         }
         catch(errObject:Error)
         {
         }
      }
      
      internal function frame9() : *
      {
         try
         {
            if(Players.equips[4][2] == 15)
            {
               gotoAndStop(26);
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


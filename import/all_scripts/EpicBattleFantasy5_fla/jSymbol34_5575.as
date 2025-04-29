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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9258")]
   public dynamic class jSymbol34_5575 extends MovieClip
   {
      public function jSymbol34_5575()
      {
         super();
         addFrameScript(0,this.frame1,7,this.frame8,16,this.frame17);
      }
      
      internal function frame1() : *
      {
         try
         {
            gotoAndStop(Players.equips[1][0]);
         }
         catch(errObject:Error)
         {
         }
         try
         {
            if(Boolean(parent.zombieMode) || Boolean(parent.parent.zombieMode))
            {
               gotoAndStop(10);
            }
            else
            {
               gotoAndStop(Players.equips[1][0]);
            }
         }
         catch(errObject:Error)
         {
         }
      }
      
      internal function frame8() : *
      {
         try
         {
            if(Players.P1equips[2] == 12)
            {
               gotoAndStop(25);
            }
            if(Players.P1equips[2] == 14)
            {
               gotoAndStop(25);
            }
            if(Players.P1equips[2] == 11)
            {
               gotoAndStop(25);
            }
         }
         catch(e:Error)
         {
         }
      }
      
      internal function frame17() : *
      {
         try
         {
            if(Players.P1equips[2] == 3)
            {
               gotoAndStop(24);
            }
            if(Players.P1equips[2] == 7)
            {
               gotoAndStop(24);
            }
         }
         catch(e:Error)
         {
         }
      }
   }
}


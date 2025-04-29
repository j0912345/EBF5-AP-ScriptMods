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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol12109")]
   public dynamic class gunblade_5526 extends MovieClip
   {
      public function gunblade_5526()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,7,this.frame8,11,this.frame12);
      }
      
      internal function frame1() : *
      {
         try
         {
            if(parent.parent.zombieMode)
            {
               gotoAndStop(1);
            }
            else
            {
               gotoAndStop(Players.equips[3][0]);
            }
         }
         catch(errObject:Error)
         {
         }
      }
      
      internal function frame2() : *
      {
         try
         {
            if(Options.blood)
            {
               if(Players.P3equips[2] == 4)
               {
                  gotoAndStop(25);
               }
               if(Players.P3equips[2] == 17)
               {
                  gotoAndStop(25);
               }
            }
         }
         catch(e:Error)
         {
         }
      }
      
      internal function frame8() : *
      {
         try
         {
            if(Players.P3equips[2] == 14)
            {
               gotoAndStop(23);
            }
            if(Players.P3equips[2] == 19)
            {
               gotoAndStop(23);
            }
         }
         catch(e:Error)
         {
         }
      }
      
      internal function frame12() : *
      {
      }
   }
}


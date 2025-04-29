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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol5088")]
   public dynamic class Symbol215_3133 extends MovieClip
   {
      public function Symbol215_3133()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         stop();
         try
         {
            if(parent.playerNo == 2 || parent.playerNo == 4)
            {
               if(Players.equips[parent.playerNo][2] == 20 || Players.equips[parent.playerNo][2] == 5)
               {
                  gotoAndStop(3);
               }
               if(Players.equips[parent.playerNo][2] == 12)
               {
                  gotoAndStop(2);
               }
               if(Players.equips[parent.playerNo][2] == 9)
               {
                  gotoAndStop(4);
               }
            }
            if(parent.playerNo == 1 || parent.playerNo == 3 || parent.playerNo == 5)
            {
               if(Players.equips[parent.playerNo][2] == 17 || Players.equips[parent.playerNo][2] == 10 || Players.equips[parent.playerNo][2] == 4)
               {
                  gotoAndStop(6);
               }
               if(Players.equips[parent.playerNo][2] == 8)
               {
                  gotoAndStop(5);
               }
            }
         }
         catch(e:Error)
         {
         }
      }
   }
}


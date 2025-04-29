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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol11799")]
   public dynamic class handopening_5451 extends MovieClip
   {
      public function handopening_5451()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         try
         {
            if(parent.zombieMode)
            {
               if(parent.zombieMatt)
               {
                  gotoAndStop(2);
               }
               if(parent.zombieLance)
               {
                  gotoAndStop(3);
               }
               if(parent.zombieAnna)
               {
                  gotoAndStop(4);
               }
               if(parent.zombieNatz)
               {
                  gotoAndStop(5);
               }
            }
            else
            {
               stop();
            }
         }
         catch(e:Error)
         {
            stop();
         }
      }
   }
}


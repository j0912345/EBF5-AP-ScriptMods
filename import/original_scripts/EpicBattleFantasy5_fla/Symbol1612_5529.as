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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol12112")]
   public dynamic class Symbol1612_5529 extends MovieClip
   {
      public function Symbol1612_5529()
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
               if(parent.zombieNatalie)
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


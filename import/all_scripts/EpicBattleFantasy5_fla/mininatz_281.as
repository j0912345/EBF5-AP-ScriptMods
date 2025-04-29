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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol2221")]
   public dynamic class mininatz_281 extends MovieClip
   {
      public function mininatz_281()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         try
         {
            if(!parent.face)
            {
               stop();
            }
            else
            {
               gotoAndStop(parent.face);
            }
            if(Flags.GLITCHINESS_2.quantity)
            {
               if(Math.random() < 0.12)
               {
                  gotoAndStop(5);
               }
               else
               {
                  gotoAndStop(4);
               }
            }
         }
         catch(e:Error)
         {
         }
      }
   }
}


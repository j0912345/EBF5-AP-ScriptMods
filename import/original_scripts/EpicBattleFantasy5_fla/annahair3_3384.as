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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol5829")]
   public dynamic class annahair3_3384 extends MovieClip
   {
      public function annahair3_3384()
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
               gotoAndStop(5);
            }
            else
            {
               gotoAndStop(Players.equips[4][1]);
            }
         }
         catch(e:Error)
         {
         }
      }
   }
}


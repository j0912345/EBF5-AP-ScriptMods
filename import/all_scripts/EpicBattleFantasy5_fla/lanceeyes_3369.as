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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol5780")]
   public dynamic class lanceeyes_3369 extends MovieClip
   {
      public function lanceeyes_3369()
      {
         super();
         addFrameScript(0,this.frame1,88,this.frame89);
      }
      
      internal function frame1() : *
      {
         try
         {
            if(parent.lowHP)
            {
               gotoAndStop("hurt");
            }
            if(Boolean(parent.zombieMode) && Boolean(parent.zombieLance))
            {
               stop();
               visible = false;
            }
            else if(!Options.idlePlayers)
            {
               stop();
            }
         }
         catch(e:Error)
         {
         }
      }
      
      internal function frame89() : *
      {
         gotoAndPlay(2);
      }
   }
}


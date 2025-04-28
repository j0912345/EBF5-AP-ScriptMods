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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol5097")]
   public dynamic class _4Symbol1_3137 extends MovieClip
   {
      public function _4Symbol1_3137()
      {
         super();
         addFrameScript(0,this.frame1,141,this.frame142);
      }
      
      internal function frame1() : *
      {
         try
         {
            if(parent.lowHP)
            {
               gotoAndStop("hurt");
            }
            if(parent.zombieMode)
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
      
      internal function frame142() : *
      {
         gotoAndPlay(2);
      }
   }
}


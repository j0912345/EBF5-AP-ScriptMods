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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol5608")]
   public dynamic class eyesineyes_3315 extends MovieClip
   {
      public function eyesineyes_3315()
      {
         super();
         addFrameScript(0,this.frame1,79,this.frame80);
      }
      
      internal function frame1() : *
      {
         try
         {
            if(parent.parent.lowHP)
            {
               gotoAndStop("hurt");
            }
            if(parent.parent.zombieMode)
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
      
      internal function frame80() : *
      {
         gotoAndPlay(2);
      }
   }
}


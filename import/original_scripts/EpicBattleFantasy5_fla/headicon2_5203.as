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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol12821")]
   public dynamic class headicon2_5203 extends MovieClip
   {
      public function headicon2_5203()
      {
         super();
         addFrameScript(0,this.frame1,3,this.frame4,4,this.frame5,71,this.frame72);
      }
      
      internal function frame1() : *
      {
         stop();
         visible = false;
      }
      
      internal function frame4() : *
      {
         visible = true;
      }
      
      internal function frame5() : *
      {
         SFX.playSound("startTurn");
      }
      
      internal function frame72() : *
      {
         gotoAndPlay("middle");
      }
   }
}


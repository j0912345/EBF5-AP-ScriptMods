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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol19234")]
   public dynamic class restcode_2736 extends MovieClip
   {
      public var timer:int;
      
      public function restcode_2736()
      {
         super();
         addFrameScript(0,this.frame1,14,this.frame15);
      }
      
      internal function frame1() : *
      {
         visible = false;
         this.timer = 0;
      }
      
      internal function frame15() : *
      {
         if(!MapPlayer.watered)
         {
            ++this.timer;
         }
         if(this.timer >= 240 && MapPlayer.watered)
         {
            MapData.dropChest(0);
            gotoAndStop(2);
         }
         else
         {
            gotoAndPlay(2);
         }
      }
   }
}


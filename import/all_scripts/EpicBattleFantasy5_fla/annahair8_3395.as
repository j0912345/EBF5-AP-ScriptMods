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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol5855")]
   public dynamic class annahair8_3395 extends MovieClip
   {
      public var brows:MovieClip;
      
      public var glasses:MovieClip;
      
      public var playerNo:int;
      
      public function annahair8_3395()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         this.playerNo = 4;
         this.brows.visible = false;
         if(Players.hasItem(34,4))
         {
            this.brows.visible = true;
         }
         this.glasses.visible = false;
         if(Players.hasItem(49,4))
         {
            this.glasses.visible = true;
         }
      }
   }
}


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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol18762")]
   public dynamic class groundicetile_1979 extends MovieClip
   {
      public var X:int;
      
      public var Y:int;
      
      public function groundicetile_1979()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2);
      }
      
      internal function frame1() : *
      {
         cacheAsBitmap = true;
      }
      
      internal function frame2() : *
      {
         (parent as Maps).addTile(41,x + 25,y + 20);
         stop();
         this.X = (x + 20) / 50;
         this.Y = (y + 20) / 40;
      }
   }
}


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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol15422")]
   public dynamic class Symbol1490_4418 extends MovieClip
   {
      public var skin:int;
      
      public var cat:int;
      
      public var sword:int;
      
      public function Symbol1490_4418()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         this.cat = Math.random() * 6 + 1;
         this.sword = Math.random() * 3 + 1;
         if(this.skin == 5)
         {
            this.sword = Math.random() * 2 + 10;
         }
      }
   }
}


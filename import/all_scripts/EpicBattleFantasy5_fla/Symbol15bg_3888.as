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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol16697")]
   public dynamic class Symbol15bg_3888 extends MovieClip
   {
      public var c1:MovieClip;
      
      public var c10:MovieClip;
      
      public var c11:MovieClip;
      
      public var c2:MovieClip;
      
      public var c3:MovieClip;
      
      public var c4:MovieClip;
      
      public var c5:MovieClip;
      
      public var c6:MovieClip;
      
      public var c7:MovieClip;
      
      public var c8:MovieClip;
      
      public var c9:MovieClip;
      
      public var i:int;
      
      public function Symbol15bg_3888()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         if(Options.idleBackgrounds)
         {
            this.i = 1;
            while(this.i <= 11)
            {
               this["c" + this.i].gotoAndPlay(this.i * 6 % 60);
               ++this.i;
            }
         }
      }
   }
}


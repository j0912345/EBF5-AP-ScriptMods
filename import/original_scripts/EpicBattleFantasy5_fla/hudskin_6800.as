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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol4163")]
   public dynamic class hudskin_6800 extends MovieClip
   {
      public var tx1:TextField;
      
      public var tx10:TextField;
      
      public var tx11:TextField;
      
      public var tx2:TextField;
      
      public var tx3:TextField;
      
      public var tx4:TextField;
      
      public var tx5:TextField;
      
      public var tx6:TextField;
      
      public var tx7:TextField;
      
      public var tx8:TextField;
      
      public var tx9:TextField;
      
      public var f:int;
      
      public function hudskin_6800()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         stop();
         this.f = 1;
         while(this.f <= 11)
         {
            Global.translate(this["tx" + this.f],"hud" + this.f,40);
            ++this.f;
         }
      }
   }
}


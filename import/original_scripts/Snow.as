package
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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol7984")]
   public dynamic class Snow extends SpellMC
   {
      public function Snow()
      {
         super();
         addFrameScript(0,this.frame1,44,this.frame45,55,this.frame56);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame45() : *
      {
         Skills.snow();
      }
      
      internal function frame56() : *
      {
         k();
      }
   }
}


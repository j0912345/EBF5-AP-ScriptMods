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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10084")]
   public dynamic class Whirlpool extends SpellMC
   {
      public function Whirlpool()
      {
         super();
         addFrameScript(0,this.frame1,8,this.frame9,31,this.frame32);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame9() : *
      {
         Skills.whirlpool();
      }
      
      internal function frame32() : *
      {
         k();
      }
   }
}


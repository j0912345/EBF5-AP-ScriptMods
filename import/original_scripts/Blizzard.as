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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10735")]
   public dynamic class Blizzard extends SpellMC
   {
      public function Blizzard()
      {
         super();
         addFrameScript(0,this.frame1,36,this.frame37,60,this.frame61);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame37() : *
      {
         Skills.deepfreeze();
      }
      
      internal function frame61() : *
      {
         k();
      }
   }
}


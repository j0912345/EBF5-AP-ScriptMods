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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10632")]
   public dynamic class DarkSwoop extends SpellMC
   {
      public function DarkSwoop()
      {
         super();
         addFrameScript(0,this.frame1,17,this.frame18,43,this.frame44);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame18() : *
      {
         Skills.darkswoop();
      }
      
      internal function frame44() : *
      {
         k();
      }
   }
}


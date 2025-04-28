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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol7309")]
   public dynamic class ClassicRockslide extends SpellMC
   {
      public function ClassicRockslide()
      {
         super();
         addFrameScript(0,this.frame1,17,this.frame18,20,this.frame21,25,this.frame26,26,this.frame27,31,this.frame32,54,this.frame55);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame18() : *
      {
         Battle.shake("small");
      }
      
      internal function frame21() : *
      {
         Skills.user.rockslide();
      }
      
      internal function frame26() : *
      {
         Battle.shake("small");
      }
      
      internal function frame27() : *
      {
         Skills.user.rockslide();
      }
      
      internal function frame32() : *
      {
         Skills.user.rockslide();
      }
      
      internal function frame55() : *
      {
         k();
      }
   }
}


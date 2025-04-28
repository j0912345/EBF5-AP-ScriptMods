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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol7336")]
   public dynamic class ClassicEruption extends SpellMC
   {
      public function ClassicEruption()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,5,this.frame6,43,this.frame44);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame3() : *
      {
         Battle.shake("small");
      }
      
      internal function frame6() : *
      {
         Skills.user.eruption();
      }
      
      internal function frame44() : *
      {
         k();
      }
   }
}


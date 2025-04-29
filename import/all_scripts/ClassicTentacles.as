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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol7303")]
   public dynamic class ClassicTentacles extends SpellMC
   {
      public function ClassicTentacles()
      {
         super();
         addFrameScript(0,this.frame1,5,this.frame6,9,this.frame10,59,this.frame60);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame6() : *
      {
      }
      
      internal function frame10() : *
      {
         Skills.user.tentacles();
      }
      
      internal function frame60() : *
      {
         k();
      }
   }
}


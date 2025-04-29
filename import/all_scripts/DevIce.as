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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10985")]
   public dynamic class DevIce extends SpellMC
   {
      public function DevIce()
      {
         super();
         addFrameScript(0,this.frame1,10,this.frame11,18,this.frame19,37,this.frame38);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame11() : *
      {
         Battle.selectedTarget = selectedTarget;
         Skills.devIce();
      }
      
      internal function frame19() : *
      {
         nextSpell();
      }
      
      internal function frame38() : *
      {
         k();
      }
   }
}


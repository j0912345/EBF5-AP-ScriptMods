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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10513")]
   public dynamic class Fume extends SpellMC
   {
      public function Fume()
      {
         super();
         addFrameScript(0,this.frame1,4,this.frame5,5,this.frame6,15,this.frame16,45,this.frame46);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame5() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame6() : *
      {
         Skills.fume();
      }
      
      internal function frame16() : *
      {
         nextSpell();
      }
      
      internal function frame46() : *
      {
         k();
      }
   }
}


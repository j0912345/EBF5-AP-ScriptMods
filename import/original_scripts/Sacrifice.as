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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10246")]
   public dynamic class Sacrifice extends SpellMC
   {
      public function Sacrifice()
      {
         super();
         addFrameScript(0,this.frame1,5,this.frame6,15,this.frame16,23,this.frame24);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame6() : *
      {
         Skills.sacrifice();
      }
      
      internal function frame16() : *
      {
         nextSpell();
      }
      
      internal function frame24() : *
      {
         k();
      }
   }
}


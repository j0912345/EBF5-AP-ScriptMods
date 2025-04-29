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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10830")]
   public dynamic class Acid extends SpellMC
   {
      public function Acid()
      {
         super();
         addFrameScript(0,this.frame1,4,this.frame5,17,this.frame18,36,this.frame37);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame5() : *
      {
         Skills.acid();
      }
      
      internal function frame18() : *
      {
         nextSpell();
      }
      
      internal function frame37() : *
      {
         k();
      }
   }
}


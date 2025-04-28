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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10724")]
   public dynamic class Bones extends SpellMC
   {
      public function Bones()
      {
         super();
         addFrameScript(0,this.frame1,3,this.frame4,7,this.frame8,17,this.frame18,46,this.frame47);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame4() : *
      {
         Battle.finalHit = false;
         Skills.bones();
      }
      
      internal function frame8() : *
      {
         Skills.bones();
      }
      
      internal function frame18() : *
      {
         nextSpell();
      }
      
      internal function frame47() : *
      {
         k();
      }
   }
}


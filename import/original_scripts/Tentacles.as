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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10117")]
   public dynamic class Tentacles extends SpellMC
   {
      public function Tentacles()
      {
         super();
         addFrameScript(0,this.frame1,4,this.frame5,7,this.frame8,10,this.frame11,18,this.frame19,28,this.frame29,59,this.frame60);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame5() : *
      {
         Battle.finalHit = false;
         Skills.tentacles();
      }
      
      internal function frame8() : *
      {
         Battle.finalHit = false;
         Skills.tentacles();
      }
      
      internal function frame11() : *
      {
         Skills.tentacles();
      }
      
      internal function frame19() : *
      {
         nextSpell();
      }
      
      internal function frame29() : *
      {
         Text.speech(Text.chompers[2]);
      }
      
      internal function frame60() : *
      {
         k();
      }
   }
}


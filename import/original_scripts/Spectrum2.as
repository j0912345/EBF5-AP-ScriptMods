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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9013")]
   public dynamic class Spectrum2 extends SpellMC
   {
      public function Spectrum2()
      {
         super();
         addFrameScript(0,this.frame1,5,this.frame6,7,this.frame8,12,this.frame13,18,this.frame19,23,this.frame24,41,this.frame42);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame6() : *
      {
         Text.speech(Text.natzSkills[27]);
      }
      
      internal function frame8() : *
      {
         Battle.finalHit = false;
         Skills.spectrum2();
      }
      
      internal function frame13() : *
      {
         Battle.finalHit = false;
         Skills.spectrum2();
      }
      
      internal function frame19() : *
      {
         Battle.finalHit = false;
         Skills.spectrum2();
      }
      
      internal function frame24() : *
      {
         Skills.spectrum2();
      }
      
      internal function frame42() : *
      {
         k();
      }
   }
}


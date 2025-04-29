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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9064")]
   public dynamic class Firestorm extends SpellMC
   {
      public function Firestorm()
      {
         super();
         addFrameScript(0,this.frame1,4,this.frame5,5,this.frame6,11,this.frame12,12,this.frame13,15,this.frame16,18,this.frame19,19,this.frame20,47,this.frame48);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame5() : *
      {
         Battle.shake("small");
      }
      
      internal function frame6() : *
      {
         Battle.finalHit = false;
         Skills.firestorm();
      }
      
      internal function frame12() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame13() : *
      {
         Battle.finalHit = false;
         Skills.firestorm();
      }
      
      internal function frame16() : *
      {
         Text.speech(Text.natzSkills[11]);
         Text.speech(Text.natzSkills[10]);
      }
      
      internal function frame19() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame20() : *
      {
         Skills.firestorm();
      }
      
      internal function frame48() : *
      {
         k();
      }
   }
}


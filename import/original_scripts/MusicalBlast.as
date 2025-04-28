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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10377")]
   public dynamic class MusicalBlast extends SpellMC
   {
      public function MusicalBlast()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,12,this.frame13,14,this.frame15,20,this.frame21,75,this.frame76,88,this.frame89,92,this.frame93,100,this.frame101);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL,3);
      }
      
      internal function frame2() : *
      {
         BGM.play(BGM.SILENCE);
      }
      
      internal function frame13() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame15() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame21() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame76() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame89() : *
      {
         Skills.musicalblast();
         BGM.play(BGM.currentTrack);
      }
      
      internal function frame93() : *
      {
         Text.speech(Text.miscSkills[38]);
      }
      
      internal function frame101() : *
      {
         k();
      }
   }
}


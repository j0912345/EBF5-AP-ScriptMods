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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9422")]
   public dynamic class PowerMetal extends SpellMC
   {
      public function PowerMetal()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,13,this.frame14,21,this.frame22,29,this.frame30,38,this.frame39,46,this.frame47,54,this.frame55,57,this.frame58,63,this.frame64,71,this.frame72,80,this.frame81,90,this.frame91,97,this.frame98,99,this.frame100,103,this.frame104,109,this.frame110);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame2() : *
      {
         BGM.play(BGM.SILENCE);
      }
      
      internal function frame14() : *
      {
         Battle.shake("big");
      }
      
      internal function frame22() : *
      {
         Battle.shake("small");
      }
      
      internal function frame30() : *
      {
         Battle.shake("small");
      }
      
      internal function frame39() : *
      {
         Battle.shake("small");
      }
      
      internal function frame47() : *
      {
         Battle.shake("small");
      }
      
      internal function frame55() : *
      {
         Battle.shake("small");
      }
      
      internal function frame58() : *
      {
         Text.speech(Text.miscSkills[3]);
      }
      
      internal function frame64() : *
      {
         Battle.shake("small");
      }
      
      internal function frame72() : *
      {
         Battle.shake("small");
      }
      
      internal function frame81() : *
      {
         Battle.shake("small");
      }
      
      internal function frame91() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame98() : *
      {
         BGM.play(BGM.currentTrack);
      }
      
      internal function frame100() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame104() : *
      {
         Skills.powermetal();
      }
      
      internal function frame110() : *
      {
         k();
      }
   }
}


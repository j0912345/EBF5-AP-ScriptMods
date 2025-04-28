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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9393")]
   public dynamic class Screamer extends SpellMC
   {
      public function Screamer()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,37,this.frame38,83,this.frame84,96,this.frame97,111,this.frame112,123,this.frame124,145,this.frame146);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame2() : *
      {
         BGM.play(BGM.SILENCE);
      }
      
      internal function frame38() : *
      {
         gotoAndPlay(currentFrame + int(Math.random() * 40));
      }
      
      internal function frame84() : *
      {
         if(!Options.showFlashes)
         {
            gotoAndPlay(120);
            BGM.play(BGM.currentTrack);
         }
      }
      
      internal function frame97() : *
      {
         Text.speech(Text.miscSkills[5]);
         Text.speech(Text.miscSkills[6]);
         Text.speech(Text.miscSkills[9]);
         Text.speech(Text.miscSkills[7]);
         Text.speech(Text.miscSkills[8]);
      }
      
      internal function frame112() : *
      {
         BGM.play(BGM.currentTrack);
      }
      
      internal function frame124() : *
      {
         Skills.screamer();
      }
      
      internal function frame146() : *
      {
         k();
      }
   }
}


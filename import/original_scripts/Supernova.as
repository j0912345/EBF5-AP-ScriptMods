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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9701")]
   public dynamic class Supernova extends SpellMC
   {
      public function Supernova()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,6,this.frame7,32,this.frame33,48,this.frame49,62,this.frame63,74,this.frame75,86,this.frame87,143,this.frame144,168,this.frame169,251,this.frame252,275,this.frame276,276,this.frame277,277,this.frame278,280,this.frame281,317,this.frame318);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame2() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame7() : *
      {
         Battle.shake("small");
      }
      
      internal function frame33() : *
      {
         Battle.shake("small");
      }
      
      internal function frame49() : *
      {
         Battle.shake("small");
      }
      
      internal function frame63() : *
      {
         Battle.shake("small");
      }
      
      internal function frame75() : *
      {
         Battle.shake("small");
      }
      
      internal function frame87() : *
      {
         Battle.invisiblePlayers();
         Battle.invisibleFoes();
      }
      
      internal function frame144() : *
      {
         BGM.play(BGM.SILENCE);
      }
      
      internal function frame169() : *
      {
         if(Flags.battleEvent >= 35 && Flags.battleEvent <= 46 || Flags.battleEvent == Flags.ARCADE_RUSH)
         {
            Text.speech(Text.arcade[16]);
         }
      }
      
      internal function frame252() : *
      {
         BGM.play(BGM.currentTrack);
      }
      
      internal function frame276() : *
      {
         Battle.visiblePlayers();
         Battle.visibleFoes();
      }
      
      internal function frame277() : *
      {
         Battle.shake("small");
      }
      
      internal function frame278() : *
      {
         Skills.supernova();
      }
      
      internal function frame281() : *
      {
         Battle.shake("small");
      }
      
      internal function frame318() : *
      {
         k();
      }
   }
}


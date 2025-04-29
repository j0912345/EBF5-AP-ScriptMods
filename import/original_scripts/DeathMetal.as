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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10042")]
   public dynamic class DeathMetal extends SpellMC
   {
      public function DeathMetal()
      {
         super();
         addFrameScript(0,this.frame1,10,this.frame11,17,this.frame18,31,this.frame32,44,this.frame45,53,this.frame54,58,this.frame59,67,this.frame68,73,this.frame74,81,this.frame82,87,this.frame88,94,this.frame95,102,this.frame103,109,this.frame110,118,this.frame119,125,this.frame126,134,this.frame135,141,this.frame142,150,this.frame151,155,this.frame156,161,this.frame162,164,this.frame165,165,this.frame166,167,this.frame168,175,this.frame176,177,this.frame178,185,this.frame186,229,this.frame230,255,this.frame256,256,this.frame257);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame11() : *
      {
         jumpBack();
      }
      
      internal function frame18() : *
      {
         BGM.play(BGM.SILENCE);
      }
      
      internal function frame32() : *
      {
         Battle.hidePlayers();
      }
      
      internal function frame45() : *
      {
         Battle.shake("small");
      }
      
      internal function frame54() : *
      {
         Battle.shake("small");
      }
      
      internal function frame59() : *
      {
         Battle.shake("small");
      }
      
      internal function frame68() : *
      {
         Battle.shake("small");
      }
      
      internal function frame74() : *
      {
         Battle.shake("small");
      }
      
      internal function frame82() : *
      {
         Battle.shake("small");
      }
      
      internal function frame88() : *
      {
         Battle.shake("small");
      }
      
      internal function frame95() : *
      {
         Battle.shake("small");
      }
      
      internal function frame103() : *
      {
         Battle.shake("small");
      }
      
      internal function frame110() : *
      {
         Battle.shake("small");
      }
      
      internal function frame119() : *
      {
         Battle.shake("small");
      }
      
      internal function frame126() : *
      {
         Battle.shake("small");
      }
      
      internal function frame135() : *
      {
         Battle.shake("small");
      }
      
      internal function frame142() : *
      {
         Battle.shake("small");
      }
      
      internal function frame151() : *
      {
         Battle.shake("small");
      }
      
      internal function frame156() : *
      {
         Battle.shake("small");
      }
      
      internal function frame162() : *
      {
         Battle.shake("big");
      }
      
      internal function frame165() : *
      {
         Battle.shake("big");
      }
      
      internal function frame166() : *
      {
         Skills.deathmetal();
      }
      
      internal function frame168() : *
      {
         Battle.shake("big");
      }
      
      internal function frame176() : *
      {
         Battle.shake("small");
      }
      
      internal function frame178() : *
      {
         BGM.play(BGM.currentTrack);
      }
      
      internal function frame186() : *
      {
         Text.speech(Text.miscSkills[4]);
      }
      
      internal function frame230() : *
      {
         Battle.showPlayers();
      }
      
      internal function frame256() : *
      {
         Skills.deathmetal2();
      }
      
      internal function frame257() : *
      {
         k();
      }
   }
}


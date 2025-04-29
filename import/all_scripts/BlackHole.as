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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10048")]
   public dynamic class BlackHole extends SpellMC
   {
      public function BlackHole()
      {
         super();
         addFrameScript(0,this.frame1,4,this.frame5,13,this.frame14,25,this.frame26,37,this.frame38,45,this.frame46,56,this.frame57,62,this.frame63,68,this.frame69,75,this.frame76,83,this.frame84,85,this.frame86,87,this.frame88,93,this.frame94,97,this.frame98,132,this.frame133,135,this.frame136,157,this.frame158,166,this.frame167,173,this.frame174,182,this.frame183,199,this.frame200,229,this.frame230);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame5() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame14() : *
      {
         Battle.shake("small");
      }
      
      internal function frame26() : *
      {
         if(Skills.user.isPlayer)
         {
            jumpBack();
         }
         Battle.shake("tiny");
      }
      
      internal function frame38() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame46() : *
      {
         Battle.shake("small");
      }
      
      internal function frame57() : *
      {
         Battle.shake("big");
      }
      
      internal function frame63() : *
      {
         Battle.shake("small");
      }
      
      internal function frame69() : *
      {
         Battle.shake("small");
      }
      
      internal function frame76() : *
      {
         Battle.shake("big");
      }
      
      internal function frame84() : *
      {
         BGM.play(BGM.SILENCE);
         Battle.shake("big");
      }
      
      internal function frame86() : *
      {
         Battle.invisibleFoes();
         Battle.invisiblePlayers();
         Battle.shake("big");
      }
      
      internal function frame88() : *
      {
         Battle.shake("big");
      }
      
      internal function frame94() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame98() : *
      {
         if(Flags.battleEvent >= 35 && Flags.battleEvent <= 46 || Flags.battleEvent == Flags.ARCADE_RUSH)
         {
            Text.speech(Text.arcade[16]);
         }
      }
      
      internal function frame133() : *
      {
         Skills.blackhole(1);
      }
      
      internal function frame136() : *
      {
         Skills.blackhole(2);
      }
      
      internal function frame158() : *
      {
         BGM.play(BGM.currentTrack);
      }
      
      internal function frame167() : *
      {
         Battle.shake("big");
      }
      
      internal function frame174() : *
      {
         Battle.shake("small");
      }
      
      internal function frame183() : *
      {
         Battle.visibleFoes();
         Battle.visiblePlayers();
      }
      
      internal function frame200() : *
      {
         Battle.shake("small");
      }
      
      internal function frame230() : *
      {
         k();
      }
   }
}


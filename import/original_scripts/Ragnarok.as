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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9737")]
   public dynamic class Ragnarok extends SpellMC
   {
      public function Ragnarok()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,6,this.frame7,15,this.frame16,33,this.frame34,47,this.frame48,91,this.frame92,111,this.frame112,125,this.frame126,126,this.frame127,129,this.frame130,135,this.frame136,136,this.frame137,139,this.frame140,151,this.frame152,152,this.frame153,164,this.frame165,203,this.frame204,222,this.frame223,227,this.frame228);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame3() : *
      {
         BGM.play(BGM.SILENCE);
      }
      
      internal function frame7() : *
      {
         Battle.invisiblePlayers();
         if(Skills.user.isPlayer)
         {
            Battle.hidePlayers();
         }
         Battle.invisibleFoes();
      }
      
      internal function frame16() : *
      {
         Text.speech(Text.mattSkills[39]);
         Text.speech(Text.mattSkills[40]);
      }
      
      internal function frame34() : *
      {
         Battle.shake("small");
      }
      
      internal function frame48() : *
      {
         Text.speech(Text.mattSkills[41]);
         Text.speech(Text.mattSkills[42]);
         Text.speech(Text.mattSkills[43]);
         Text.speech(Text.mattSkills[44]);
      }
      
      internal function frame92() : *
      {
         BGM.play(BGM.currentTrack);
      }
      
      internal function frame112() : *
      {
         Battle.visibleFoes();
         if(!Skills.user.isPlayer)
         {
            Battle.visiblePlayers();
         }
      }
      
      internal function frame126() : *
      {
         Battle.shake("small");
      }
      
      internal function frame127() : *
      {
         Battle.finalHit = false;
         Skills.ragnarok(1);
      }
      
      internal function frame130() : *
      {
         Battle.finalHit = false;
         Skills.ragnarok(1);
      }
      
      internal function frame136() : *
      {
         Battle.shake("small");
      }
      
      internal function frame137() : *
      {
         Battle.finalHit = false;
         Skills.ragnarok(1);
      }
      
      internal function frame140() : *
      {
         Battle.finalHit = false;
         Skills.ragnarok(1);
      }
      
      internal function frame152() : *
      {
         Battle.shake("big");
      }
      
      internal function frame153() : *
      {
         Skills.ragnarok(2);
      }
      
      internal function frame165() : *
      {
         if(Flags.battleEvent == Flags.ANNA_BATTLE)
         {
            Text.speech(Text.anna[12]);
         }
      }
      
      internal function frame204() : *
      {
         if(Skills.user.isPlayer)
         {
            Battle.visiblePlayers();
         }
         if(Skills.user.isPlayer)
         {
            Battle.showPlayers();
         }
      }
      
      internal function frame223() : *
      {
         Skills.ragnarok(3);
      }
      
      internal function frame228() : *
      {
         k();
      }
   }
}


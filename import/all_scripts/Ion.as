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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10011")]
   public dynamic class Ion extends SpellMC
   {
      public function Ion()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,6,this.frame7,10,this.frame11,73,this.frame74,87,this.frame88,247,this.frame248,256,this.frame257,280,this.frame281,303,this.frame304,316,this.frame317,318,this.frame319,320,this.frame321,322,this.frame323,328,this.frame329,337,this.frame338,341,this.frame342,346,this.frame347,354,this.frame355,362,this.frame363,371,this.frame372,377,this.frame378,379,this.frame380,398,this.frame399,421,this.frame422,440,this.frame441);
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
         Battle.invisibleFoes();
         Battle.invisiblePlayers();
      }
      
      internal function frame11() : *
      {
         if(Flags.battleEvent == Flags.LANCE_BATTLE_2)
         {
            Text.speech(Text.lance[1]);
         }
      }
      
      internal function frame74() : *
      {
         Battle.shake("small");
      }
      
      internal function frame88() : *
      {
         Battle.shake("small");
      }
      
      internal function frame248() : *
      {
         Battle.shake("big");
      }
      
      internal function frame257() : *
      {
         Battle.shake("small");
      }
      
      internal function frame281() : *
      {
         BGM.play(BGM.currentTrack);
      }
      
      internal function frame304() : *
      {
         if(Skills.user is Player)
         {
            Battle.visibleFoes();
         }
         else
         {
            Battle.visiblePlayers();
         }
      }
      
      internal function frame317() : *
      {
         Battle.shake("big");
      }
      
      internal function frame319() : *
      {
         if(Skills.user is Player)
         {
            Battle.invisibleFoes();
         }
         else
         {
            Battle.invisiblePlayers();
         }
      }
      
      internal function frame321() : *
      {
         Battle.finalHit = false;
         Skills.ion();
      }
      
      internal function frame323() : *
      {
         Battle.shake("big");
      }
      
      internal function frame329() : *
      {
         Battle.finalHit = false;
         Skills.ion();
      }
      
      internal function frame338() : *
      {
         Battle.finalHit = false;
         Skills.ion();
      }
      
      internal function frame342() : *
      {
         if(Flags.battleEvent >= 35 && Flags.battleEvent <= 46 || Flags.battleEvent == Flags.ARCADE_RUSH)
         {
            Text.speech(Text.arcade[16]);
         }
      }
      
      internal function frame347() : *
      {
         Battle.finalHit = false;
         Skills.ion();
      }
      
      internal function frame355() : *
      {
         Battle.finalHit = false;
         Skills.ion();
      }
      
      internal function frame363() : *
      {
         Battle.finalHit = false;
         Skills.ion();
      }
      
      internal function frame372() : *
      {
         Battle.finalHit = false;
         Skills.ion();
      }
      
      internal function frame378() : *
      {
         if(Skills.user is Player)
         {
            Battle.visibleFoes();
         }
         else
         {
            Battle.visiblePlayers();
         }
      }
      
      internal function frame380() : *
      {
         Skills.ion();
      }
      
      internal function frame399() : *
      {
         if(Skills.user is Player)
         {
            Battle.visiblePlayers();
            Battle.showPlayers();
         }
         else
         {
            Battle.visibleFoes();
            Battle.showFoes();
         }
      }
      
      internal function frame422() : *
      {
         if(Skills.user is Player)
         {
            Skills.ion2();
         }
      }
      
      internal function frame441() : *
      {
         k();
      }
   }
}


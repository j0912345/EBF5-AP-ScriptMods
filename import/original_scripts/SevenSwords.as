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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10934")]
   public dynamic class SevenSwords extends SpellMC
   {
      public function SevenSwords()
      {
         super();
         addFrameScript(0,this.frame1,19,this.frame20,49,this.frame50,105,this.frame106,106,this.frame107,121,this.frame122,122,this.frame123,132,this.frame133,133,this.frame134,142,this.frame143,143,this.frame144,154,this.frame155,155,this.frame156,164,this.frame165,165,this.frame166,169,this.frame170,187,this.frame188,195,this.frame196,199,this.frame200,206,this.frame207,207,this.frame208,208,this.frame209,217,this.frame218,227,this.frame228,236,this.frame237,245,this.frame246,250,this.frame251,255,this.frame256,292,this.frame293,310,this.frame311);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL,3);
      }
      
      internal function frame20() : *
      {
         jumpBack();
      }
      
      internal function frame50() : *
      {
         Battle.hidePlayers();
      }
      
      internal function frame106() : *
      {
         Battle.finalHit = false;
         Skills.sevenswords();
      }
      
      internal function frame107() : *
      {
         Battle.shake("small");
      }
      
      internal function frame122() : *
      {
         Battle.finalHit = false;
         Skills.sevenswords();
      }
      
      internal function frame123() : *
      {
         Battle.shake("small");
      }
      
      internal function frame133() : *
      {
         Battle.finalHit = false;
         Skills.sevenswords();
      }
      
      internal function frame134() : *
      {
         Battle.shake("small");
      }
      
      internal function frame143() : *
      {
         Battle.finalHit = false;
         Skills.sevenswords();
      }
      
      internal function frame144() : *
      {
         Battle.shake("small");
      }
      
      internal function frame155() : *
      {
         Battle.finalHit = false;
         Skills.sevenswords();
      }
      
      internal function frame156() : *
      {
         Battle.shake("small");
      }
      
      internal function frame165() : *
      {
         Battle.finalHit = false;
         Skills.sevenswords();
      }
      
      internal function frame166() : *
      {
         Battle.shake("small");
      }
      
      internal function frame170() : *
      {
         Battle.shake("small");
      }
      
      internal function frame188() : *
      {
         Battle.shake("small");
      }
      
      internal function frame196() : *
      {
         Battle.shake("small");
      }
      
      internal function frame200() : *
      {
         Battle.shake("big");
      }
      
      internal function frame207() : *
      {
         if(Flags.battleEvent >= 35 && Flags.battleEvent <= 46 || Flags.battleEvent == Flags.ARCADE_RUSH)
         {
            Text.speech(Text.arcade[11]);
         }
         Battle.invisibleFoes();
      }
      
      internal function frame208() : *
      {
         Text.speech(Text.miscSkills[36]);
         Text.speech(Text.miscSkills[37]);
      }
      
      internal function frame209() : *
      {
         Battle.finalHit = false;
         Skills.sevenswords();
      }
      
      internal function frame218() : *
      {
         Battle.finalHit = false;
         Skills.sevenswords();
      }
      
      internal function frame228() : *
      {
         Battle.finalHit = false;
         Skills.sevenswords();
      }
      
      internal function frame237() : *
      {
         Battle.finalHit = false;
         Skills.sevenswords();
      }
      
      internal function frame246() : *
      {
         Battle.finalHit = false;
         Skills.sevenswords();
      }
      
      internal function frame251() : *
      {
         Battle.visibleFoes();
      }
      
      internal function frame256() : *
      {
         Skills.sevenswords();
      }
      
      internal function frame293() : *
      {
         Battle.showPlayers();
      }
      
      internal function frame311() : *
      {
         k();
      }
   }
}


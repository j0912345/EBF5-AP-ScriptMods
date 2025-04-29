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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10027")]
   public dynamic class Genesis extends SpellMC
   {
      public function Genesis()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,39,this.frame40,47,this.frame48,48,this.frame49,100,this.frame101,104,this.frame105,121,this.frame122,138,this.frame139,152,this.frame153,197,this.frame198,228,this.frame229,233,this.frame234,234,this.frame235,239,this.frame240,257,this.frame258,262,this.frame263);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame3() : *
      {
         Text.speech(Text.natzSkills[31]);
         Text.speech(Text.natzSkills[40]);
      }
      
      internal function frame40() : *
      {
         Battle.shake("small");
      }
      
      internal function frame48() : *
      {
         Battle.shake("big");
      }
      
      internal function frame49() : *
      {
         Battle.invisiblePlayers();
         Battle.invisibleFoes();
      }
      
      internal function frame101() : *
      {
         BGM.play(BGM.SILENCE);
      }
      
      internal function frame105() : *
      {
         Battle.shake("small");
      }
      
      internal function frame122() : *
      {
         if(Flags.battleEvent >= 35 && Flags.battleEvent <= 46 || Flags.battleEvent == Flags.ARCADE_RUSH)
         {
            Text.speech(Text.arcade[16]);
         }
      }
      
      internal function frame139() : *
      {
         Battle.shake("small");
      }
      
      internal function frame153() : *
      {
         Battle.shake("small");
      }
      
      internal function frame198() : *
      {
         BGM.play(BGM.currentTrack);
      }
      
      internal function frame229() : *
      {
         Battle.visiblePlayers();
         Battle.visibleFoes();
      }
      
      internal function frame234() : *
      {
         Battle.shake("small");
      }
      
      internal function frame235() : *
      {
         Skills.genesis(1);
      }
      
      internal function frame240() : *
      {
         if(Skills.user.isPlayer)
         {
            jumpBack();
         }
      }
      
      internal function frame258() : *
      {
         if(Skills.user.isPlayer)
         {
            Skills.genesis(2);
         }
      }
      
      internal function frame263() : *
      {
         k();
      }
   }
}


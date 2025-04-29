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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9989")]
   public dynamic class Kyun extends SpellMC
   {
      public function Kyun()
      {
         super();
         addFrameScript(0,this.frame1,14,this.frame15,79,this.frame80,80,this.frame81,132,this.frame133,133,this.frame134,139,this.frame140,143,this.frame144,164,this.frame165);
      }
      
      internal function frame1() : *
      {
         if(!Options.titties)
         {
            SpellMC.extraFlip = true;
         }
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame15() : *
      {
         Battle.invisiblePlayers();
         Battle.invisibleFoes();
      }
      
      internal function frame80() : *
      {
         if(Flags.battleEvent == Flags.LANCE_BATTLE_3 && !Battle.foes[2].dead && Battle.foes[2].getHpPercent() < 30 && Battle.foes[0].getHpPercent() < 30)
         {
            Medals.unlock(Medals.baitAndSwitch);
            Text.speech(Text.lance[20]);
            Skills.giveStatus(Battle.foes[2],Status.SURRENDER,99);
            Skills.giveStatus(Battle.foes[0],Status.SURRENDER,99);
            Skills.giveStatus(Battle.foes[1],Status.SURRENDER,99);
         }
         if(Flags.battleEvent == Flags.LANCE_BATTLE_3)
         {
            Text.speech(Text.lance[19]);
         }
      }
      
      internal function frame81() : *
      {
         Text.speech(Text.natzSkills[32]);
         Text.speech(Text.natzSkills[35]);
         Text.speech(Text.natzSkills[36]);
         Text.speech(Text.natzSkills[37]);
         Text.speech(Text.natzSkills[38]);
         Text.speech(Text.natzSkills[39]);
      }
      
      internal function frame133() : *
      {
         Battle.visiblePlayers();
         Battle.visibleFoes();
      }
      
      internal function frame134() : *
      {
         jumpBack();
      }
      
      internal function frame140() : *
      {
         Text.speech(Text.natzSkills[32]);
         Text.speech(Text.natzSkills[33]);
         Text.speech(Text.natzSkills[34]);
      }
      
      internal function frame144() : *
      {
         Skills.kyun();
      }
      
      internal function frame165() : *
      {
         k();
      }
   }
}


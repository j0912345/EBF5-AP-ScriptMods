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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8856")]
   public dynamic class Oblivion extends SpellMC
   {
      public function Oblivion()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,18,this.frame19,19,this.frame20,54,this.frame55,65,this.frame66,76,this.frame77,111,this.frame112,119,this.frame120,122,this.frame123,135,this.frame136,142,this.frame143,149,this.frame150,157,this.frame158,159,this.frame160,162,this.frame163,183,this.frame184,233,this.frame234,240,this.frame241,293,this.frame294);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
         Battle.hidePlayers();
         playerNo = 3;
      }
      
      internal function frame3() : *
      {
         Text.speech(Text.lanceSkills[20]);
      }
      
      internal function frame19() : *
      {
         Battle.shake("big");
         Battle.invisibleFoes();
      }
      
      internal function frame20() : *
      {
         Battle.finalHit = false;
         Skills.oblivion(1);
      }
      
      internal function frame55() : *
      {
         Battle.finalHit = false;
         Skills.oblivion(2);
      }
      
      internal function frame66() : *
      {
         Battle.finalHit = false;
         Skills.oblivion(2);
      }
      
      internal function frame77() : *
      {
         Battle.finalHit = false;
         Skills.oblivion(2);
      }
      
      internal function frame112() : *
      {
         Battle.shake("big");
      }
      
      internal function frame120() : *
      {
         Battle.shake("big");
      }
      
      internal function frame123() : *
      {
         Battle.finalHit = false;
         Skills.oblivion(3);
      }
      
      internal function frame136() : *
      {
         Battle.finalHit = false;
         Skills.oblivion(3);
      }
      
      internal function frame143() : *
      {
         if(Flags.battleEvent >= 35 && Flags.battleEvent <= 46 || Flags.battleEvent == Flags.ARCADE_RUSH)
         {
            Text.speech(Text.arcade[11]);
         }
      }
      
      internal function frame150() : *
      {
         Battle.finalHit = false;
         Skills.oblivion(3);
      }
      
      internal function frame158() : *
      {
         Battle.visibleFoes();
      }
      
      internal function frame160() : *
      {
         Battle.shake("small");
      }
      
      internal function frame163() : *
      {
         Skills.oblivion(3);
      }
      
      internal function frame184() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame234() : *
      {
         Battle.showPlayers();
      }
      
      internal function frame241() : *
      {
         Text.speech(Text.lanceSkills[21]);
      }
      
      internal function frame294() : *
      {
         k();
      }
   }
}


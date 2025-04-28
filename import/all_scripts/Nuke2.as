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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8889")]
   public dynamic class Nuke2 extends SpellMC
   {
      public function Nuke2()
      {
         super();
         addFrameScript(0,this.frame1,3,this.frame4,12,this.frame13,32,this.frame33,34,this.frame35,39,this.frame40,44,this.frame45,49,this.frame50,56,this.frame57,64,this.frame65,67,this.frame68,72,this.frame73,73,this.frame74,79,this.frame80,85,this.frame86,92,this.frame93,98,this.frame99,103,this.frame104,109,this.frame110,118,this.frame119,122,this.frame123,128,this.frame129,143,this.frame144,150,this.frame151,175,this.frame176,185,this.frame186);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame4() : *
      {
         Text.speech(Text.lanceSkills[28]);
         Text.speech(Text.lanceSkills[41]);
      }
      
      internal function frame13() : *
      {
         Battle.shake("big");
      }
      
      internal function frame33() : *
      {
         Battle.invisibleFoes();
         Battle.invisiblePlayers();
      }
      
      internal function frame35() : *
      {
         Battle.shake("big");
      }
      
      internal function frame40() : *
      {
         Battle.shake("big");
      }
      
      internal function frame45() : *
      {
         Battle.shake("big");
      }
      
      internal function frame50() : *
      {
         Battle.shake("big");
      }
      
      internal function frame57() : *
      {
         Battle.shake("big");
      }
      
      internal function frame65() : *
      {
         Battle.shake("big");
      }
      
      internal function frame68() : *
      {
         Battle.shake("big");
      }
      
      internal function frame73() : *
      {
         if(Flags.battleEvent == Flags.LANCE_BATTLE_3)
         {
            Text.speech(Text.lance[31]);
         }
         Battle.shake("big");
      }
      
      internal function frame74() : *
      {
         Text.speech(Text.lanceSkills[25]);
         Text.speech(Text.lanceSkills[26]);
         Text.speech(Text.lanceSkills[27]);
      }
      
      internal function frame80() : *
      {
         Battle.shake("big");
      }
      
      internal function frame86() : *
      {
         Battle.shake("big");
      }
      
      internal function frame93() : *
      {
         Battle.shake("big");
      }
      
      internal function frame99() : *
      {
         Battle.shake("big");
      }
      
      internal function frame104() : *
      {
         Battle.shake("big");
      }
      
      internal function frame110() : *
      {
         Battle.shake("big");
      }
      
      internal function frame119() : *
      {
         Battle.shake("big");
      }
      
      internal function frame123() : *
      {
         Battle.shake("big");
      }
      
      internal function frame129() : *
      {
         Battle.shake("big");
      }
      
      internal function frame144() : *
      {
         Battle.visibleFoes();
         Battle.visiblePlayers();
      }
      
      internal function frame151() : *
      {
         Skills.nuke(1);
      }
      
      internal function frame176() : *
      {
         Skills.nuke(2);
      }
      
      internal function frame186() : *
      {
         k();
      }
   }
}


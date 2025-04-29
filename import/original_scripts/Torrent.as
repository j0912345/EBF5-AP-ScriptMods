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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9108")]
   public dynamic class Torrent extends SpellMC
   {
      public function Torrent()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,5,this.frame6,7,this.frame8,26,this.frame27,29,this.frame30,33,this.frame34,52,this.frame53);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame2() : *
      {
         Battle.shake("big");
      }
      
      internal function frame6() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect2();
         }
         else
         {
            Skills.surgingskewer();
         }
      }
      
      internal function frame8() : *
      {
         Text.speech(Text.mattSkills[25]);
         Text.speech(Text.mattSkills[24]);
         Text.speech(Text.mattSkills[19]);
      }
      
      internal function frame27() : *
      {
         nextSpell(isSummon,Spells.surgingskewer);
      }
      
      internal function frame30() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame34() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame53() : *
      {
         k();
      }
   }
}


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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9283")]
   public dynamic class Cataclysm extends SpellMC
   {
      public function Cataclysm()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,5,this.frame6,8,this.frame9,20,this.frame21,25,this.frame26,28,this.frame29,33,this.frame34,49,this.frame50);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame3() : *
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
            Skills.cataclysmiccut();
         }
      }
      
      internal function frame9() : *
      {
         Text.speech(Text.mattSkills[21]);
      }
      
      internal function frame21() : *
      {
         Text.speech(Text.mattSkills[18]);
         Text.speech(Text.mattSkills[19]);
      }
      
      internal function frame26() : *
      {
         nextSpell(isSummon,Spells.cataclysmiccut);
      }
      
      internal function frame29() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame34() : *
      {
         Battle.shake("small");
      }
      
      internal function frame50() : *
      {
         k();
      }
   }
}


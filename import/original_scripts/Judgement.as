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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9054")]
   public dynamic class Judgement extends SpellMC
   {
      public function Judgement()
      {
         super();
         addFrameScript(0,this.frame1,29,this.frame30,31,this.frame32,32,this.frame33,37,this.frame38,64,this.frame65,72,this.frame73);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame30() : *
      {
         Battle.shake("big");
      }
      
      internal function frame32() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect2();
         }
         else
         {
            Skills.judgement();
         }
      }
      
      internal function frame33() : *
      {
         nextSpell(isSummon);
      }
      
      internal function frame38() : *
      {
         Text.speech(Text.natzSkills[25]);
         Text.speech(Text.natzSkills[23]);
         Text.speech(Text.natzSkills[18]);
         Text.speech(Text.natzSkills[14]);
      }
      
      internal function frame65() : *
      {
         if(Skills.user.isPlayer && !isSummon)
         {
            drainage2();
         }
      }
      
      internal function frame73() : *
      {
         k();
      }
   }
}


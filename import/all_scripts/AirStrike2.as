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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8986")]
   public dynamic class AirStrike2 extends SpellMC
   {
      public function AirStrike2()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,6,this.frame7,26,this.frame27,27,this.frame28,55,this.frame56);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,2);
      }
      
      internal function frame2() : *
      {
         Text.speech(Text.lanceSkills[18]);
      }
      
      internal function frame7() : *
      {
         nextSpell(isSummon,Spells.airstrike2);
      }
      
      internal function frame27() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame28() : *
      {
         Battle.selectedTarget = selectedTarget;
         if(isSummon)
         {
            Summons.currentSummon.effect2();
         }
         else
         {
            Skills.airstrike2();
         }
      }
      
      internal function frame56() : *
      {
         k();
      }
   }
}


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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol7360")]
   public dynamic class ChairStool extends SpellMC
   {
      public function ChairStool()
      {
         super();
         addFrameScript(0,this.frame1,13,this.frame14,38,this.frame39,39,this.frame40,45,this.frame46);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame14() : *
      {
         nextSpell(isSummon,Spells.arcadeStool);
      }
      
      internal function frame39() : *
      {
         Battle.selectedTarget = selectedTarget;
         if(isSummon)
         {
            Summons.ArcadeChair.effect2();
         }
         else
         {
            Skills.arcadestool();
         }
      }
      
      internal function frame40() : *
      {
         Battle.shake("small");
      }
      
      internal function frame46() : *
      {
         k();
      }
   }
}


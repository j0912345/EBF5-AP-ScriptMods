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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10415")]
   public dynamic class LaserCrystals extends SpellMC
   {
      public function LaserCrystals()
      {
         super();
         addFrameScript(0,this.frame1,32,this.frame33,36,this.frame37,40,this.frame41,58,this.frame59);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame33() : *
      {
         Battle.finalHit = false;
         Battle.selectedTarget = selectedTarget;
         if(isSummon)
         {
            Summons.BitWind.effect2();
         }
         else
         {
            Skills.lasercrystals();
         }
      }
      
      internal function frame37() : *
      {
         Battle.finalHit = false;
         Battle.selectedTarget = selectedTarget;
         if(isSummon)
         {
            Summons.BitWind.effect2();
         }
         else
         {
            Skills.lasercrystals();
         }
      }
      
      internal function frame41() : *
      {
         Battle.selectedTarget = selectedTarget;
         if(isSummon)
         {
            Summons.BitWind.effect2();
         }
         else
         {
            Skills.lasercrystals();
         }
      }
      
      internal function frame59() : *
      {
         k();
      }
   }
}


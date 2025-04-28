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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10548")]
   public dynamic class FireCrystals extends SpellMC
   {
      public function FireCrystals()
      {
         super();
         addFrameScript(0,this.frame1,32,this.frame33,36,this.frame37,40,this.frame41,60,this.frame61);
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
            Summons.BitFire.effect2();
         }
         else
         {
            Skills.firecrystals();
         }
      }
      
      internal function frame37() : *
      {
         Battle.finalHit = false;
         Battle.selectedTarget = selectedTarget;
         if(isSummon)
         {
            Summons.BitFire.effect2();
         }
         else
         {
            Skills.firecrystals();
         }
      }
      
      internal function frame41() : *
      {
         Battle.selectedTarget = selectedTarget;
         if(isSummon)
         {
            Summons.BitFire.effect2();
         }
         else
         {
            Skills.firecrystals();
         }
      }
      
      internal function frame61() : *
      {
         k();
      }
   }
}


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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10856")]
   public dynamic class EffectStar extends SpellMC
   {
      public function EffectStar()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,5,this.frame6,26,this.frame27);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
         randomizeRotation();
      }
      
      internal function frame2() : *
      {
         Battle.shake("small");
         if(!isSummon)
         {
            Skills.starpow();
         }
      }
      
      internal function frame6() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect2();
         }
      }
      
      internal function frame27() : *
      {
         k();
      }
   }
}


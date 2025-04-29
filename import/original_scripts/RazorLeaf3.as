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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10304")]
   public dynamic class RazorLeaf3 extends SpellMC
   {
      public function RazorLeaf3()
      {
         super();
         addFrameScript(0,this.frame1,37,this.frame38,42,this.frame43,47,this.frame48,59,this.frame60);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame38() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.currentSummon.effect2();
         }
         else
         {
            Skills.razorleaf3();
         }
      }
      
      internal function frame43() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.currentSummon.effect2();
         }
         else
         {
            Skills.razorleaf3();
         }
      }
      
      internal function frame48() : *
      {
         if(isSummon)
         {
            Battle.finalHit = false;
            Summons.currentSummon.effect2();
         }
         else
         {
            Skills.razorleaf3();
         }
      }
      
      internal function frame60() : *
      {
         k();
      }
   }
}


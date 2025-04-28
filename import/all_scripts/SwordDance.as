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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10138")]
   public dynamic class SwordDance extends SpellMC
   {
      public function SwordDance()
      {
         super();
         addFrameScript(0,this.frame1,25,this.frame26,62,this.frame63);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame26() : *
      {
         if(isSummon)
         {
            Summons.FallenCrucified.effect2();
         }
         else
         {
            Skills.swordswirl();
         }
      }
      
      internal function frame63() : *
      {
         k();
      }
   }
}


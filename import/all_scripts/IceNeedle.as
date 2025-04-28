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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10422")]
   public dynamic class IceNeedle extends SpellMC
   {
      public function IceNeedle()
      {
         super();
         addFrameScript(0,this.frame1,29,this.frame30,60,this.frame61);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame30() : *
      {
         if(isSummon)
         {
            Summons.WraithIce.effect2();
         }
         else
         {
            Skills.iceneedle();
         }
      }
      
      internal function frame61() : *
      {
         k();
      }
   }
}


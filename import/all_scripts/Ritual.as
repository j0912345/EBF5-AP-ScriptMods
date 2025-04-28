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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10295")]
   public dynamic class Ritual extends SpellMC
   {
      public function Ritual()
      {
         super();
         addFrameScript(0,this.frame1,58,this.frame59,70,this.frame71);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame59() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect2();
         }
         else
         {
            Skills.ritual();
         }
      }
      
      internal function frame71() : *
      {
         k();
      }
   }
}


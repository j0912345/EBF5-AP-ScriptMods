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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9462")]
   public dynamic class HealMore extends SpellMC
   {
      public function HealMore()
      {
         super();
         addFrameScript(0,this.frame1,31,this.frame32,39,this.frame40,49,this.frame50);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame32() : *
      {
         if(isSummon)
         {
            Summons.BitHoly.effect2();
         }
         else
         {
            Skills.healmore();
         }
      }
      
      internal function frame40() : *
      {
         Text.speech(Text.miscSkills[27]);
      }
      
      internal function frame50() : *
      {
         k();
      }
   }
}


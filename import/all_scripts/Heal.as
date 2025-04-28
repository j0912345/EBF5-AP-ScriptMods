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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9463")]
   public dynamic class Heal extends SpellMC
   {
      public function Heal()
      {
         super();
         addFrameScript(0,this.frame1,8,this.frame9,22,this.frame23);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame9() : *
      {
         if(isSummon)
         {
            Summons.CatWizard.effect2();
         }
         else
         {
            Skills.heal();
         }
      }
      
      internal function frame23() : *
      {
         k();
      }
   }
}


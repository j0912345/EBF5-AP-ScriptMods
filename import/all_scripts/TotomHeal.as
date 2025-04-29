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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10103")]
   public dynamic class TotomHeal extends SpellMC
   {
      public function TotomHeal()
      {
         super();
         addFrameScript(0,this.frame1,24,this.frame25,30,this.frame31,39,this.frame40);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame25() : *
      {
         if(isSummon)
         {
            Summons.ArcadeTotom.effect2();
         }
         else
         {
            Skills.user.totomHeal();
         }
      }
      
      internal function frame31() : *
      {
         nextSpell(isSummon,Spells.arcadeHeal);
      }
      
      internal function frame40() : *
      {
         k();
      }
   }
}


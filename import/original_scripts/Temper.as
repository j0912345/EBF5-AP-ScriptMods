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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10781")]
   public dynamic class Temper extends SpellMC
   {
      public function Temper()
      {
         super();
         addFrameScript(0,this.frame1,8,this.frame9,10,this.frame11,32,this.frame33);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame9() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect2();
         }
         else
         {
            Skills.attackup();
         }
      }
      
      internal function frame11() : *
      {
         nextSpell();
      }
      
      internal function frame33() : *
      {
         k();
      }
   }
}


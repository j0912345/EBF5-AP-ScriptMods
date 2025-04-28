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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10666")]
   public dynamic class Chocolate extends SpellMC
   {
      public function Chocolate()
      {
         super();
         addFrameScript(0,this.frame1,4,this.frame5,8,this.frame9,36,this.frame37);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame5() : *
      {
         nextSpell(isSummon);
      }
      
      internal function frame9() : *
      {
         Battle.selectedTarget = selectedTarget;
         if(isSummon)
         {
            Summons.SlimeBigChocolate.effect2();
         }
         else
         {
            Skills.chocolate();
         }
      }
      
      internal function frame37() : *
      {
         k();
      }
   }
}


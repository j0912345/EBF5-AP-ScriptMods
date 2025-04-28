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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol13049")]
   public dynamic class ClassicPlantSpikes2 extends SpellMC
   {
      public function ClassicPlantSpikes2()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,5,this.frame6,8,this.frame9,9,this.frame10,13,this.frame14,60,this.frame61);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame3() : *
      {
         Battle.shake("small");
      }
      
      internal function frame6() : *
      {
         if(isSummon)
         {
            Battle.finalHit = false;
            Summons.ClassicRafflesia.effect3();
         }
         else
         {
            Skills.user.plantspikes2();
         }
      }
      
      internal function frame9() : *
      {
         Battle.shake("small");
      }
      
      internal function frame10() : *
      {
         if(isSummon)
         {
            Battle.finalHit = false;
            Summons.ClassicRafflesia.effect3();
         }
         else
         {
            Skills.user.plantspikes2();
         }
      }
      
      internal function frame14() : *
      {
         if(isSummon)
         {
            Summons.ClassicRafflesia.effect3();
         }
         else
         {
            Skills.user.plantspikes2();
         }
      }
      
      internal function frame61() : *
      {
         k();
      }
   }
}


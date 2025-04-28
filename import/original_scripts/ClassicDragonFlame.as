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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol13065")]
   public dynamic class ClassicDragonFlame extends SpellMC
   {
      public function ClassicDragonFlame()
      {
         super();
         addFrameScript(0,this.frame1,32,this.frame33,60,this.frame61);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,2);
      }
      
      internal function frame33() : *
      {
         if(isSummon)
         {
            Summons.ClassicCrystalRed.effect2();
         }
         else
         {
            Skills.user.dragonflame();
         }
      }
      
      internal function frame61() : *
      {
         k();
      }
   }
}


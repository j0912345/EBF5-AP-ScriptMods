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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10674")]
   public dynamic class Cactus extends SpellMC
   {
      public function Cactus()
      {
         super();
         addFrameScript(0,this.frame1,4,this.frame5,10,this.frame11,42,this.frame43);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame5() : *
      {
         if(isSummon)
         {
            Summons.SlimeSand.effect2();
         }
         else
         {
            Skills.cactus();
         }
      }
      
      internal function frame11() : *
      {
         nextSpell();
      }
      
      internal function frame43() : *
      {
         k();
      }
   }
}


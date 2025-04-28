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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10382")]
   public dynamic class Mushroom extends SpellMC
   {
      public function Mushroom()
      {
         super();
         addFrameScript(0,this.frame1,4,this.frame5,9,this.frame10,42,this.frame43);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,2);
      }
      
      internal function frame5() : *
      {
         if(isSummon)
         {
            Summons.SlimeBigMud.effect2();
         }
         else
         {
            Skills.mushroom();
         }
      }
      
      internal function frame10() : *
      {
         nextSpell(isSummon);
      }
      
      internal function frame43() : *
      {
         k();
      }
   }
}


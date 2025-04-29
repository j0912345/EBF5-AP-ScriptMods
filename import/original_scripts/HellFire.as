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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10454")]
   public dynamic class HellFire extends SpellMC
   {
      public function HellFire()
      {
         super();
         addFrameScript(0,this.frame1,26,this.frame27,52,this.frame53);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame27() : *
      {
         if(isSummon)
         {
            Summons.WraithFire.effect2();
         }
         else
         {
            Skills.hellfire();
         }
      }
      
      internal function frame53() : *
      {
         k();
      }
   }
}


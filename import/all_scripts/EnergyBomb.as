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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9505")]
   public dynamic class EnergyBomb extends SpellMC
   {
      public function EnergyBomb()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3,47,this.frame48);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame2() : *
      {
         Battle.shake("small");
      }
      
      internal function frame3() : *
      {
         Skills.energybomb();
      }
      
      internal function frame48() : *
      {
         k();
      }
   }
}


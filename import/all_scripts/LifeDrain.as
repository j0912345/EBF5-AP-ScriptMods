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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10404")]
   public dynamic class LifeDrain extends SpellMC
   {
      public function LifeDrain()
      {
         super();
         addFrameScript(0,this.frame1,21,this.frame22,42,this.frame43,43,this.frame44);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame22() : *
      {
         Skills.lifedrain(1);
      }
      
      internal function frame43() : *
      {
         Skills.lifedrain(2);
      }
      
      internal function frame44() : *
      {
         k();
      }
   }
}


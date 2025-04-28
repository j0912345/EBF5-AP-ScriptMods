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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10408")]
   public dynamic class LaserShot extends SpellMC
   {
      public function LaserShot()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,5,this.frame6,17,this.frame18);
      }
      
      internal function frame1() : *
      {
         skipPositioning = true;
         init(Target.ONE_ENEMY,3);
         setXY();
         move(0,6,null);
      }
      
      internal function frame3() : *
      {
         gotoTargetDepth();
      }
      
      internal function frame6() : *
      {
         Skills.lasershot();
      }
      
      internal function frame18() : *
      {
         k();
      }
   }
}


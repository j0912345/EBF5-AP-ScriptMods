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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10527")]
   public dynamic class FlyBomb2 extends SpellMC
   {
      public function FlyBomb2()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,13,this.frame14,50,this.frame51,52,this.frame53,74,this.frame75);
      }
      
      internal function frame1() : *
      {
         skipPositioning = true;
         init(Target.ONE_ENEMY,4);
      }
      
      internal function frame2() : *
      {
         setXY();
         move(0,24,null);
      }
      
      internal function frame14() : *
      {
         gotoTargetDepth();
      }
      
      internal function frame51() : *
      {
         randomizeRotation();
      }
      
      internal function frame53() : *
      {
         Battle.selectedTarget = selectedTarget;
         Skills.flybomb2();
         Battle.shake("tiny");
      }
      
      internal function frame75() : *
      {
         k();
      }
   }
}


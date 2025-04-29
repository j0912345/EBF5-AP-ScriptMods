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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10755")]
   public dynamic class BirdBall extends SpellMC
   {
      public function BirdBall()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,20,this.frame21,21,this.frame22,31,this.frame32);
      }
      
      internal function frame1() : *
      {
         skipPositioning = true;
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame2() : *
      {
         setXY();
         move(0,20,null);
      }
      
      internal function frame21() : *
      {
         this.rotation = Math.random() * 360;
      }
      
      internal function frame22() : *
      {
         Battle.selectedTarget = selectedTarget;
         Skills.user.fireball();
      }
      
      internal function frame32() : *
      {
         k();
      }
   }
}


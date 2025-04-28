package
{
   import fl.transitions.easing.*;
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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10642")]
   public dynamic class BlackBall extends SpellMC
   {
      public var gem:int;
      
      public function BlackBall()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,20,this.frame21,32,this.frame33,38,this.frame39);
      }
      
      internal function frame1() : *
      {
         skipPositioning = true;
         this.gem = Math.random() * 5 + 1;
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame2() : *
      {
         setXY();
         move(0,30,Regular.easeOut);
      }
      
      internal function frame21() : *
      {
         Battle.selectedTarget = selectedTarget;
         gotoTargetDepth();
      }
      
      internal function frame33() : *
      {
         Battle.selectedTarget = selectedTarget;
         Skills.user.ball();
      }
      
      internal function frame39() : *
      {
         k();
      }
   }
}


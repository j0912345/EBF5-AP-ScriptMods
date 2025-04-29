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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10681")]
   public dynamic class BubbleBall extends SpellMC
   {
      public function BubbleBall()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,20,this.frame21,43,this.frame44,53,this.frame54);
      }
      
      internal function frame1() : *
      {
         skipPositioning = true;
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame2() : *
      {
         setXY();
         move(0,40,Regular.easeOut);
      }
      
      internal function frame21() : *
      {
         Battle.selectedTarget = selectedTarget;
         gotoTargetDepth();
      }
      
      internal function frame44() : *
      {
         Battle.selectedTarget = selectedTarget;
         Skills.bubbleball();
      }
      
      internal function frame54() : *
      {
         k();
      }
   }
}


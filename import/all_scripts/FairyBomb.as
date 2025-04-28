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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10585")]
   public dynamic class FairyBomb extends SpellMC
   {
      public function FairyBomb()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,13,this.frame14,16,this.frame17,60,this.frame61,62,this.frame63,85,this.frame86);
      }
      
      internal function frame1() : *
      {
         skipPositioning = true;
         init(Target.ONE_ENEMY,4);
      }
      
      internal function frame2() : *
      {
         setXY();
         move(0,26,null);
      }
      
      internal function frame14() : *
      {
         nextSpell();
      }
      
      internal function frame17() : *
      {
         gotoTargetDepth();
      }
      
      internal function frame61() : *
      {
         Battle.selectedTarget = selectedTarget;
         Skills.fairybomb();
         randomizeRotation();
      }
      
      internal function frame63() : *
      {
         f2();
      }
      
      internal function frame86() : *
      {
         k();
      }
   }
}


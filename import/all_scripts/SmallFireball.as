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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10190")]
   public dynamic class SmallFireball extends SpellMC
   {
      public function SmallFireball()
      {
         super();
         addFrameScript(0,this.frame1,10,this.frame11,12,this.frame13,13,this.frame14,31,this.frame32);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,4);
      }
      
      internal function frame11() : *
      {
         nextSpell();
      }
      
      internal function frame13() : *
      {
         randomizeRotation();
      }
      
      internal function frame14() : *
      {
         Battle.selectedTarget = selectedTarget;
         Skills.smallfireball();
         Battle.shake("small");
      }
      
      internal function frame32() : *
      {
         k();
      }
   }
}


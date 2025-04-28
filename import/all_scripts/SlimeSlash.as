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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10220")]
   public dynamic class SlimeSlash extends SpellMC
   {
      public function SlimeSlash()
      {
         super();
         addFrameScript(0,this.frame1,13,this.frame14,23,this.frame24);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame14() : *
      {
         Battle.selectedTarget = selectedTarget;
         Skills.user.slash();
      }
      
      internal function frame24() : *
      {
         k();
      }
   }
}


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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10995")]
   public dynamic class DevDef extends SpellMC
   {
      public function DevDef()
      {
         super();
         addFrameScript(0,this.frame1,12,this.frame13,27,this.frame28);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame13() : *
      {
         Battle.selectedTarget = selectedTarget;
         Skills.user.devDef();
      }
      
      internal function frame28() : *
      {
         k();
      }
   }
}


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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10467")]
   public dynamic class GodBeam extends SpellMC
   {
      public function GodBeam()
      {
         super();
         addFrameScript(0,this.frame1,26,this.frame27,74,this.frame75,130,this.frame131);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,1);
      }
      
      internal function frame27() : *
      {
         Battle.invisibleFoes();
      }
      
      internal function frame75() : *
      {
         Battle.visibleFoes();
      }
      
      internal function frame131() : *
      {
         k();
      }
   }
}


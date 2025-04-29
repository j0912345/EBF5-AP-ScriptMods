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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10895")]
   public dynamic class BackupHit extends SpellMC
   {
      public function BackupHit()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,21,this.frame22);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_STANDBY,3);
      }
      
      internal function frame2() : *
      {
         Battle.shake("small");
      }
      
      internal function frame22() : *
      {
         k();
      }
   }
}


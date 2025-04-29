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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10991")]
   public dynamic class DevExplosion extends SpellMC
   {
      public function DevExplosion()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3,61,this.frame62);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame2() : *
      {
         Battle.invisibleFoes();
         Battle.invisiblePlayers();
      }
      
      internal function frame3() : *
      {
         Battle.shake("big");
      }
      
      internal function frame62() : *
      {
         k();
      }
   }
}


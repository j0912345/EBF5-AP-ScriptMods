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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8565")]
   public dynamic class TankCannon extends SpellMC
   {
      public function TankCannon()
      {
         super();
         addFrameScript(0,this.frame1,3,this.frame4,47,this.frame48,49,this.frame50,75,this.frame76);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame4() : *
      {
         Battle.invisibleFoes();
         Battle.invisiblePlayers();
      }
      
      internal function frame48() : *
      {
         Battle.visibleFoes();
         Battle.visiblePlayers();
      }
      
      internal function frame50() : *
      {
         makeMagic(BigBlast,0,0);
      }
      
      internal function frame76() : *
      {
         k();
      }
   }
}


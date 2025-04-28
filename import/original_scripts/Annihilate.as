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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10071")]
   public dynamic class Annihilate extends SpellMC
   {
      public function Annihilate()
      {
         super();
         addFrameScript(0,this.frame1,82,this.frame83,85,this.frame86,102,this.frame103,108,this.frame109,144,this.frame145);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame83() : *
      {
         Battle.invisiblePlayers();
         Battle.invisibleFoes();
      }
      
      internal function frame86() : *
      {
         resetBack();
      }
      
      internal function frame103() : *
      {
         Skills.annihilate();
      }
      
      internal function frame109() : *
      {
         Battle.visiblePlayers();
         Battle.visibleFoes();
      }
      
      internal function frame145() : *
      {
         k();
      }
   }
}


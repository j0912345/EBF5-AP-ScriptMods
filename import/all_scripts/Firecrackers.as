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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9495")]
   public dynamic class Firecrackers extends SpellMC
   {
      public function Firecrackers()
      {
         super();
         addFrameScript(0,this.frame1,24,this.frame25,32,this.frame33,42,this.frame43);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame25() : *
      {
         Skills.firecrackers();
      }
      
      internal function frame33() : *
      {
         Skills.firecrackers2();
      }
      
      internal function frame43() : *
      {
         k();
      }
   }
}


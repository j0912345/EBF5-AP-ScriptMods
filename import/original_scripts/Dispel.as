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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9523")]
   public dynamic class Dispel extends SpellMC
   {
      public function Dispel()
      {
         super();
         addFrameScript(0,this.frame1,19,this.frame20,34,this.frame35);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY_OR_ALL_ALLY,3);
      }
      
      internal function frame20() : *
      {
         Skills.dispel();
      }
      
      internal function frame35() : *
      {
         k();
      }
   }
}


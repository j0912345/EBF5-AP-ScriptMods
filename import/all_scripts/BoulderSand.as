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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10690")]
   public dynamic class BoulderSand extends SpellMC
   {
      public function BoulderSand()
      {
         super();
         addFrameScript(0,this.frame1,17,this.frame18,23,this.frame24,42,this.frame43);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
         setXY();
         move(0,15,null);
      }
      
      internal function frame18() : *
      {
         Skills.user.boulderSand();
      }
      
      internal function frame24() : *
      {
         Text.speech(Text.boulders[6]);
      }
      
      internal function frame43() : *
      {
         k();
      }
   }
}


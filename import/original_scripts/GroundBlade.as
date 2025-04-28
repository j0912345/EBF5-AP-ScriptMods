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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10466")]
   public dynamic class GroundBlade extends SpellMC
   {
      public function GroundBlade()
      {
         super();
         addFrameScript(0,this.frame1,3,this.frame4,9,this.frame10,14,this.frame15,42,this.frame43);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame4() : *
      {
         Battle.finalHit = false;
         Skills.groundblade();
      }
      
      internal function frame10() : *
      {
         Battle.finalHit = false;
         Skills.groundblade();
      }
      
      internal function frame15() : *
      {
         Skills.groundblade();
      }
      
      internal function frame43() : *
      {
         k();
      }
   }
}


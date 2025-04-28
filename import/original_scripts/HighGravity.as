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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8046")]
   public dynamic class HighGravity extends SpellMC
   {
      public function HighGravity()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,6,this.frame7,25,this.frame26,49,this.frame50);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL,1);
      }
      
      internal function frame2() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame7() : *
      {
         Battle.shake("small");
      }
      
      internal function frame26() : *
      {
         Skills.highgravity();
      }
      
      internal function frame50() : *
      {
         k();
      }
   }
}


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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10242")]
   public dynamic class Sand extends SpellMC
   {
      public function Sand()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,4,this.frame5,34,this.frame35);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame2() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame5() : *
      {
         Skills.sand();
      }
      
      internal function frame35() : *
      {
         k();
      }
   }
}


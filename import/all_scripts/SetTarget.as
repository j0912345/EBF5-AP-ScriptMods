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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10646")]
   public dynamic class SetTarget extends SpellMC
   {
      public function SetTarget()
      {
         super();
         addFrameScript(0,this.frame1,33,this.frame34,46,this.frame47);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame34() : *
      {
         Skills.settarget();
      }
      
      internal function frame47() : *
      {
         k();
      }
   }
}


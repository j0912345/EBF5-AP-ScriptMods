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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9467")]
   public dynamic class Guardian extends SpellMC
   {
      public function Guardian()
      {
         super();
         addFrameScript(0,this.frame1,20,this.frame21,37,this.frame38);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame21() : *
      {
         Skills.guardian();
      }
      
      internal function frame38() : *
      {
         k();
      }
   }
}


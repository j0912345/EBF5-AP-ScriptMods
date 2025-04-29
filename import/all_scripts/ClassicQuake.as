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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol7319")]
   public dynamic class ClassicQuake extends SpellMC
   {
      public function ClassicQuake()
      {
         super();
         addFrameScript(0,this.frame1,3,this.frame4,4,this.frame5,43,this.frame44);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame4() : *
      {
         Battle.shake("small");
      }
      
      internal function frame5() : *
      {
         Skills.user.quake();
      }
      
      internal function frame44() : *
      {
         k();
      }
   }
}


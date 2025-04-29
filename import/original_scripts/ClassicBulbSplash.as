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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol13071")]
   public dynamic class ClassicBulbSplash extends SpellMC
   {
      public function ClassicBulbSplash()
      {
         super();
         addFrameScript(0,this.frame1,33,this.frame34,35,this.frame36,54,this.frame55);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame34() : *
      {
         Battle.shake("small");
      }
      
      internal function frame36() : *
      {
         Skills.user.bulb();
      }
      
      internal function frame55() : *
      {
         k();
      }
   }
}


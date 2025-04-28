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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10324")]
   public dynamic class Present extends SpellMC
   {
      public function Present()
      {
         super();
         addFrameScript(0,this.frame1,38,this.frame39,39,this.frame40,73,this.frame74);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,2);
         skin = int(Math.random() * 3 + 1);
      }
      
      internal function frame39() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame40() : *
      {
         Skills.present();
      }
      
      internal function frame74() : *
      {
         k();
      }
   }
}


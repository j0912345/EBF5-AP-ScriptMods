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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10145")]
   public dynamic class StoneFist extends SpellMC
   {
      public function StoneFist()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,3,this.frame4,10,this.frame11,32,this.frame33,48,this.frame49);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame2() : *
      {
         Battle.shake("small");
      }
      
      internal function frame4() : *
      {
         Skills.stonefist();
      }
      
      internal function frame11() : *
      {
         nextSpell();
      }
      
      internal function frame33() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame49() : *
      {
         k();
      }
   }
}


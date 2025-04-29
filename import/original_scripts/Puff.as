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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10315")]
   public dynamic class Puff extends SpellMC
   {
      public function Puff()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,10,this.frame11,33,this.frame34);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame2() : *
      {
         Skills.puff();
      }
      
      internal function frame11() : *
      {
         nextSpell();
      }
      
      internal function frame34() : *
      {
         k();
      }
   }
}


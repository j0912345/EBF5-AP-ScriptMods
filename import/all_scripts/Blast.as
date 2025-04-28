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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10736")]
   public dynamic class Blast extends SpellMC
   {
      public function Blast()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3,7,this.frame8,31,this.frame32);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame2() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame3() : *
      {
         Skills.blast();
      }
      
      internal function frame8() : *
      {
         nextSpell();
      }
      
      internal function frame32() : *
      {
         k();
      }
   }
}


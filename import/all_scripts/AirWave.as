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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9578")]
   public dynamic class AirWave extends SpellMC
   {
      public function AirWave()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3,6,this.frame7,25,this.frame26);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame2() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame3() : *
      {
         Battle.finalHit = false;
         Skills.airwave();
      }
      
      internal function frame7() : *
      {
         Skills.airwave();
      }
      
      internal function frame26() : *
      {
         k();
      }
   }
}


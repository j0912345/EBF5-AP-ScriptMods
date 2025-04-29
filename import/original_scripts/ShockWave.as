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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9387")]
   public dynamic class ShockWave extends SpellMC
   {
      public function ShockWave()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,3,this.frame4,9,this.frame10,10,this.frame11,30,this.frame31);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,1);
      }
      
      internal function frame2() : *
      {
         Battle.shake("small");
      }
      
      internal function frame4() : *
      {
         Battle.finalHit = false;
         Skills.shockwave();
      }
      
      internal function frame10() : *
      {
         Skills.shockwave();
      }
      
      internal function frame11() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame31() : *
      {
         k();
      }
   }
}


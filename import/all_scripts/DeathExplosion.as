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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10625")]
   public dynamic class DeathExplosion extends SpellMC
   {
      public function DeathExplosion()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,10,this.frame11,20,this.frame21,32,this.frame33,44,this.frame45,55,this.frame56,66,this.frame67,198,this.frame199);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame3() : *
      {
         Battle.shake("big");
      }
      
      internal function frame11() : *
      {
         Battle.finalHit = false;
         Skills.user.deathExplode();
      }
      
      internal function frame21() : *
      {
         Battle.finalHit = false;
         Skills.user.deathExplode();
      }
      
      internal function frame33() : *
      {
         Battle.finalHit = false;
         Skills.user.deathExplode();
      }
      
      internal function frame45() : *
      {
         Battle.finalHit = false;
         Skills.user.deathExplode();
      }
      
      internal function frame56() : *
      {
         Battle.finalHit = false;
         Skills.user.deathExplode();
      }
      
      internal function frame67() : *
      {
         Skills.user.deathExplode();
      }
      
      internal function frame199() : *
      {
         k();
      }
   }
}


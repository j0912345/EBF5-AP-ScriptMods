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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9508")]
   public dynamic class EnergyBlast extends SpellMC
   {
      public function EnergyBlast()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,3,this.frame4,4,this.frame5,6,this.frame7,52,this.frame53);
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
         Skills.energybarrage();
      }
      
      internal function frame5() : *
      {
         Battle.shake("small");
      }
      
      internal function frame7() : *
      {
         Skills.energybarrage();
      }
      
      internal function frame53() : *
      {
         k();
      }
   }
}


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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10671")]
   public dynamic class CandyCane2 extends SpellMC
   {
      public function CandyCane2()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,5,this.frame6,8,this.frame9,12,this.frame13,15,this.frame16,52,this.frame53);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame3() : *
      {
         Battle.finalHit = false;
         Skills.candycanes2();
      }
      
      internal function frame6() : *
      {
         Battle.finalHit = false;
         Skills.candycanes2();
      }
      
      internal function frame9() : *
      {
         Battle.finalHit = false;
         Skills.candycanes2();
      }
      
      internal function frame13() : *
      {
         Battle.finalHit = false;
         Skills.candycanes2();
      }
      
      internal function frame16() : *
      {
         Skills.candycanes2();
      }
      
      internal function frame53() : *
      {
         k();
      }
   }
}


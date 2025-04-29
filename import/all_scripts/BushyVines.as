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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol7372")]
   public dynamic class BushyVines extends SpellMC
   {
      public function BushyVines()
      {
         super();
         addFrameScript(0,this.frame1,5,this.frame6,10,this.frame11,41,this.frame42);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame6() : *
      {
         nextSpell();
      }
      
      internal function frame11() : *
      {
         Battle.selectedTarget = selectedTarget;
         Skills.arcadevines();
      }
      
      internal function frame42() : *
      {
         k();
      }
   }
}


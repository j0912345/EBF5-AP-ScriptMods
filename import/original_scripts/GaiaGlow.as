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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9474")]
   public dynamic class GaiaGlow extends SpellMC
   {
      public function GaiaGlow()
      {
         super();
         addFrameScript(0,this.frame1,8,this.frame9,39,this.frame40);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame9() : *
      {
         Skills.gaiaglow();
      }
      
      internal function frame40() : *
      {
         k();
      }
   }
}


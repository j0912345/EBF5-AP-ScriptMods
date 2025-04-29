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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol7273")]
   public dynamic class GlobRoots extends SpellMC
   {
      public function GlobRoots()
      {
         super();
         addFrameScript(0,this.frame1,5,this.frame6,8,this.frame9,41,this.frame42);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame6() : *
      {
         Skills.arcaderoots();
      }
      
      internal function frame9() : *
      {
         nextSpell();
      }
      
      internal function frame42() : *
      {
         k();
      }
   }
}


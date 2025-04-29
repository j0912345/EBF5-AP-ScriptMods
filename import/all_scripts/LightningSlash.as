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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8267")]
   public dynamic class LightningSlash extends SpellMC
   {
      public function LightningSlash()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,7,this.frame8,18,this.frame19);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
         randomizeRotation();
      }
      
      internal function frame3() : *
      {
         Skills.lightningslash();
      }
      
      internal function frame8() : *
      {
         Text.speech(Text.nolegsSkills[22]);
      }
      
      internal function frame19() : *
      {
         k();
      }
   }
}


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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8266")]
   public dynamic class LightningSlash2 extends SpellMC
   {
      public function LightningSlash2()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,9,this.frame10,37,this.frame38);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
         randomizeRotation();
      }
      
      internal function frame3() : *
      {
         Skills.lightningslash2();
      }
      
      internal function frame10() : *
      {
         Text.speech(Text.nolegsSkills[22]);
         Text.speech(Text.nolegsSkills[23]);
      }
      
      internal function frame38() : *
      {
         k();
      }
   }
}


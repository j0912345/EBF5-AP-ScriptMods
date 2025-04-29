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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8232")]
   public dynamic class WaterSlash2 extends SpellMC
   {
      public function WaterSlash2()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,10,this.frame11,23,this.frame24);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
         randomizeRotation();
      }
      
      internal function frame3() : *
      {
         Skills.waterslash2();
      }
      
      internal function frame11() : *
      {
         Text.speech(Text.nolegsSkills[27]);
         Text.speech(Text.nolegsSkills[28]);
      }
      
      internal function frame24() : *
      {
         k();
      }
   }
}


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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8224")]
   public dynamic class WindSlash2 extends SpellMC
   {
      public function WindSlash2()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,7,this.frame8,16,this.frame17);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
         randomizeRotation();
      }
      
      internal function frame3() : *
      {
         Skills.windslash2();
      }
      
      internal function frame8() : *
      {
         Text.speech(Text.nolegsSkills[31]);
         Text.speech(Text.nolegsSkills[32]);
         Text.speech(Text.nolegsSkills[24]);
      }
      
      internal function frame17() : *
      {
         k();
      }
   }
}


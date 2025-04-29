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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8928")]
   public dynamic class FlameShot extends SpellMC
   {
      public function FlameShot()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,7,this.frame8,18,this.frame19);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame2() : *
      {
         Text.speech(Text.lanceSkills[31]);
         Skills.flameshot();
      }
      
      internal function frame8() : *
      {
         nextSpell();
      }
      
      internal function frame19() : *
      {
         k();
      }
   }
}


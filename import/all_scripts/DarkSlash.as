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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8282")]
   public dynamic class DarkSlash extends SpellMC
   {
      public function DarkSlash()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,5,this.frame6,6,this.frame7,11,this.frame12);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
         randomizeRotation();
      }
      
      internal function frame3() : *
      {
         Skills.darkslash();
      }
      
      internal function frame6() : *
      {
         nextSpell(isSummon,Spells.darkslash);
      }
      
      internal function frame7() : *
      {
         Text.speech(Text.nolegsSkills[29]);
      }
      
      internal function frame12() : *
      {
         k();
      }
   }
}


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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8272")]
   public dynamic class HolySlash extends SpellMC
   {
      public function HolySlash()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,6,this.frame7,7,this.frame8,18,this.frame19);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
         randomizeRotation();
      }
      
      internal function frame3() : *
      {
         Skills.holyslash();
      }
      
      internal function frame7() : *
      {
         Text.speech(Text.nolegsSkills[25]);
      }
      
      internal function frame8() : *
      {
         nextSpell(isSummon,Spells.holyslash);
      }
      
      internal function frame19() : *
      {
         k();
      }
   }
}


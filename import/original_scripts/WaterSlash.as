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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8233")]
   public dynamic class WaterSlash extends SpellMC
   {
      public function WaterSlash()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,6,this.frame7,12,this.frame13,23,this.frame24);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
         randomizeRotation();
      }
      
      internal function frame3() : *
      {
         Skills.waterslash();
      }
      
      internal function frame7() : *
      {
         nextSpell(isSummon,Spells.waterslash);
      }
      
      internal function frame13() : *
      {
         Text.speech(Text.nolegsSkills[27]);
      }
      
      internal function frame24() : *
      {
         k();
      }
   }
}


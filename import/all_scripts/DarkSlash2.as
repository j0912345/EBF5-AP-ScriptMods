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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8280")]
   public dynamic class DarkSlash2 extends SpellMC
   {
      public function DarkSlash2()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,6,this.frame7,7,this.frame8,17,this.frame18);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
         randomizeRotation();
      }
      
      internal function frame3() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect2();
         }
         else
         {
            Skills.darkslash2();
         }
      }
      
      internal function frame7() : *
      {
         Text.speech(Text.nolegsSkills[29]);
         Text.speech(Text.nolegsSkills[30]);
      }
      
      internal function frame8() : *
      {
         nextSpell(isSummon,Spells.darkslash2);
      }
      
      internal function frame18() : *
      {
         k();
      }
   }
}


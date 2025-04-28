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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8225")]
   public dynamic class WindSlash extends SpellMC
   {
      public function WindSlash()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,7,this.frame8,8,this.frame9,16,this.frame17);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
         randomizeRotation();
      }
      
      internal function frame3() : *
      {
         Skills.windslash();
      }
      
      internal function frame8() : *
      {
         Text.speech(Text.nolegsSkills[31]);
      }
      
      internal function frame9() : *
      {
         nextSpell(isSummon,Spells.windslash);
      }
      
      internal function frame17() : *
      {
         k();
      }
   }
}


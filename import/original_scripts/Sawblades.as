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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9398")]
   public dynamic class Sawblades extends SpellMC
   {
      public function Sawblades()
      {
         super();
         addFrameScript(0,this.frame1,10,this.frame11,19,this.frame20,37,this.frame38,70,this.frame71);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame11() : *
      {
         nextSpell(isSummon);
      }
      
      internal function frame20() : *
      {
         Text.speech(Text.miscSkills[16]);
      }
      
      internal function frame38() : *
      {
         Battle.selectedTarget = selectedTarget;
         Skills.sawblades();
      }
      
      internal function frame71() : *
      {
         k();
      }
   }
}


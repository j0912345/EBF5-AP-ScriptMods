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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8434")]
   public dynamic class Hurricane extends SpellMC
   {
      public function Hurricane()
      {
         super();
         addFrameScript(0,this.frame1,4,this.frame5,18,this.frame19,19,this.frame20,37,this.frame38);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,0);
      }
      
      internal function frame5() : *
      {
         Text.speech(Text.annaSkills[16]);
         Text.speech(Text.annaSkills[14]);
      }
      
      internal function frame19() : *
      {
         Skills.hurricane();
      }
      
      internal function frame20() : *
      {
         Text.speech(Text.annaSkills[15]);
      }
      
      internal function frame38() : *
      {
         k();
      }
   }
}


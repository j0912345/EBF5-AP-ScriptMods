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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8452")]
   public dynamic class AquaArrow2 extends SpellMC
   {
      public function AquaArrow2()
      {
         super();
         addFrameScript(0,this.frame1,7,this.frame8,27,this.frame28,28,this.frame29,50,this.frame51);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame8() : *
      {
         Text.speech(Text.annaSkills[17]);
         Text.speech(Text.annaSkills[18]);
      }
      
      internal function frame28() : *
      {
         Battle.shake("small");
      }
      
      internal function frame29() : *
      {
         Skills.aquaarrow2();
      }
      
      internal function frame51() : *
      {
         k();
      }
   }
}


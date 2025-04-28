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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8926")]
   public dynamic class Medipack extends SpellMC
   {
      public function Medipack()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,42,this.frame43,45,this.frame46,48,this.frame49,69,this.frame70);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame2() : *
      {
         Text.speech(Text.lanceSkills[15]);
      }
      
      internal function frame43() : *
      {
         nextSpell();
      }
      
      internal function frame46() : *
      {
         Text.speech(Text.lanceSkills[15]);
         Text.speech(Text.lanceSkills[10]);
      }
      
      internal function frame49() : *
      {
         Battle.selectedTarget = selectedTarget;
         Skills.medipack();
      }
      
      internal function frame70() : *
      {
         k();
      }
   }
}


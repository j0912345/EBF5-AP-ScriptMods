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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8595")]
   public dynamic class PlasmaCross extends SpellMC
   {
      public function PlasmaCross()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,15,this.frame16,48,this.frame49);
      }
      
      internal function frame1() : *
      {
         init(Target.CENTER_ENEMY,3);
      }
      
      internal function frame2() : *
      {
         Text.speech(Text.lanceSkills[36]);
         Text.speech(Text.lanceSkills[35]);
         Text.speech(Text.lanceSkills[33]);
         Text.speech(Text.lanceSkills[30]);
      }
      
      internal function frame16() : *
      {
         Skills.plasmacross();
      }
      
      internal function frame49() : *
      {
         k();
      }
   }
}


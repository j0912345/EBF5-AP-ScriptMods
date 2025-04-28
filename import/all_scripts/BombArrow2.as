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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8443")]
   public dynamic class BombArrow2 extends SpellMC
   {
      public function BombArrow2()
      {
         super();
         addFrameScript(0,this.frame1,3,this.frame4,6,this.frame7,9,this.frame10,11,this.frame12,37,this.frame38);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame4() : *
      {
         Text.speech(Text.annaSkills[26]);
      }
      
      internal function frame7() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame10() : *
      {
         Skills.nitroarrow2();
      }
      
      internal function frame12() : *
      {
         Text.speech(Text.annaSkills[27]);
      }
      
      internal function frame38() : *
      {
         k();
      }
   }
}


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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8949")]
   public dynamic class BulletHell extends SpellMC
   {
      public function BulletHell()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,7,this.frame8,10,this.frame11,11,this.frame12,13,this.frame14,37,this.frame38);
      }
      
      internal function frame1() : *
      {
         init(Target.CENTER_ENEMY,3);
      }
      
      internal function frame2() : *
      {
         Battle.shake("small");
      }
      
      internal function frame8() : *
      {
         Battle.finalHit = false;
         Skills.bullethell();
      }
      
      internal function frame11() : *
      {
         Battle.finalHit = false;
         Skills.bullethell();
      }
      
      internal function frame12() : *
      {
         Text.speech(Text.lanceSkills[29]);
         Text.speech(Text.lanceSkills[33]);
         Text.speech(Text.lanceSkills[30]);
      }
      
      internal function frame14() : *
      {
         Skills.bullethell();
      }
      
      internal function frame38() : *
      {
         k();
      }
   }
}


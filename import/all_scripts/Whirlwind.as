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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8292")]
   public dynamic class Whirlwind extends SpellMC
   {
      public function Whirlwind()
      {
         super();
         addFrameScript(0,this.frame1,7,this.frame8,9,this.frame10,10,this.frame11,13,this.frame14,20,this.frame21,26,this.frame27);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame8() : *
      {
         Battle.finalHit = false;
         Skills.whirlwind();
      }
      
      internal function frame10() : *
      {
         Text.speech(Text.annaSkills[16]);
         Text.speech(Text.annaSkills[14]);
      }
      
      internal function frame11() : *
      {
         Battle.finalHit = false;
         Skills.whirlwind();
      }
      
      internal function frame14() : *
      {
         Skills.whirlwind();
      }
      
      internal function frame21() : *
      {
         Text.speech(Text.annaSkills[15]);
      }
      
      internal function frame27() : *
      {
         k();
      }
   }
}


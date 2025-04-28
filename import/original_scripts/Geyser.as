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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9272")]
   public dynamic class Geyser extends SpellMC
   {
      public function Geyser()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,5,this.frame6,7,this.frame8,9,this.frame10,35,this.frame36);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame2() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame6() : *
      {
         Skills.geysergush();
      }
      
      internal function frame8() : *
      {
         Text.speech(Text.mattSkills[22]);
         Text.speech(Text.mattSkills[23]);
      }
      
      internal function frame10() : *
      {
         nextSpell(isSummon,Spells.geysergush);
      }
      
      internal function frame36() : *
      {
         k();
      }
   }
}


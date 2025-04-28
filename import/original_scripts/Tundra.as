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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9102")]
   public dynamic class Tundra extends SpellMC
   {
      public function Tundra()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3,3,this.frame4,7,this.frame8,41,this.frame42);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame2() : *
      {
         Text.speech(Text.mattSkills[29]);
      }
      
      internal function frame3() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame4() : *
      {
         Skills.frostfragment();
      }
      
      internal function frame8() : *
      {
         nextSpell(isSummon,Spells.frostfragment);
      }
      
      internal function frame42() : *
      {
         k();
      }
   }
}


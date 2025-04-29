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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9103")]
   public dynamic class Tremor extends SpellMC
   {
      public function Tremor()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,3,this.frame4,8,this.frame9,9,this.frame10,37,this.frame38);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame3() : *
      {
         Battle.shake("small");
      }
      
      internal function frame4() : *
      {
         Skills.earthedge();
      }
      
      internal function frame9() : *
      {
         nextSpell(isSummon,Spells.earthedge);
      }
      
      internal function frame10() : *
      {
         Text.speech(Text.mattSkills[20]);
      }
      
      internal function frame38() : *
      {
         k();
      }
   }
}


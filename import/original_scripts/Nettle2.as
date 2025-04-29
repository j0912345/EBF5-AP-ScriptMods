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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9126")]
   public dynamic class Nettle2 extends SpellMC
   {
      public function Nettle2()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,4,this.frame5,9,this.frame10,12,this.frame13,16,this.frame17,18,this.frame19,59,this.frame60);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame3() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame5() : *
      {
         Battle.finalHit = false;
         Skills.shreddingshrub();
      }
      
      internal function frame10() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame13() : *
      {
         Skills.shreddingshrub();
      }
      
      internal function frame17() : *
      {
         Text.speech(Text.mattSkills[35]);
         Text.speech(Text.mattSkills[36]);
      }
      
      internal function frame19() : *
      {
         nextSpell(isSummon,Spells.shreddingshrub);
      }
      
      internal function frame60() : *
      {
         k();
      }
   }
}


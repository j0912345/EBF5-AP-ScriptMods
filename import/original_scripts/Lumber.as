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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8431")]
   public dynamic class Lumber extends SpellMC
   {
      public function Lumber()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,3,this.frame4,4,this.frame5,5,this.frame6,7,this.frame8,9,this.frame10,11,this.frame12,17,this.frame18,20,this.frame21,43,this.frame44);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame2() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame4() : *
      {
         Battle.finalHit = false;
         Skills.lumber();
      }
      
      internal function frame5() : *
      {
         Text.speech(Text.annaSkills[9]);
      }
      
      internal function frame6() : *
      {
         Battle.shake("small");
      }
      
      internal function frame8() : *
      {
         Battle.finalHit = false;
         Skills.lumber();
      }
      
      internal function frame10() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame12() : *
      {
         Skills.lumber();
      }
      
      internal function frame18() : *
      {
         Text.speech(Text.annaSkills[10]);
         Text.speech(Text.annaSkills[8]);
      }
      
      internal function frame21() : *
      {
         nextSpell(isSummon,Spells.lumber);
      }
      
      internal function frame44() : *
      {
         k();
      }
   }
}


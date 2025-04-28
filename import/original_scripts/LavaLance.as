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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9268")]
   public dynamic class LavaLance extends SpellMC
   {
      public function LavaLance()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,3,this.frame4,17,this.frame18,22,this.frame23,33,this.frame34,37,this.frame38,56,this.frame57);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame2() : *
      {
         Battle.shake("small");
      }
      
      internal function frame4() : *
      {
         Skills.lavalance();
      }
      
      internal function frame18() : *
      {
         nextSpell(isSummon,Spells.lavalance);
      }
      
      internal function frame23() : *
      {
         Text.speech(Text.mattSkills[31]);
         Text.speech(Text.mattSkills[32]);
         Text.speech(Text.mattSkills[33]);
      }
      
      internal function frame34() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame38() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame57() : *
      {
         k();
      }
   }
}


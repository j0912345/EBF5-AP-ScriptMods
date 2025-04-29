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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9298")]
   public dynamic class TeraDrill extends SpellMC
   {
      public function TeraDrill()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,7,this.frame8,15,this.frame16,20,this.frame21,23,this.frame24,25,this.frame26,64,this.frame65);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame2() : *
      {
         Text.speech(Text.miscSkills[30]);
         Text.speech(Text.miscSkills[31]);
      }
      
      internal function frame8() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame16() : *
      {
         Battle.shake("small");
      }
      
      internal function frame21() : *
      {
         Battle.shake("big");
      }
      
      internal function frame24() : *
      {
         Skills.teradrill();
      }
      
      internal function frame26() : *
      {
         nextSpell(isSummon,Spells.teradrill);
      }
      
      internal function frame65() : *
      {
         k();
      }
   }
}


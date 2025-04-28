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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9279")]
   public dynamic class FireSpire extends SpellMC
   {
      public function FireSpire()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,3,this.frame4,13,this.frame14,15,this.frame16,45,this.frame46);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame3() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame4() : *
      {
         Skills.firespire();
      }
      
      internal function frame14() : *
      {
         nextSpell(isSummon,Spells.firespire);
      }
      
      internal function frame16() : *
      {
         Text.speech(Text.mattSkills[31]);
         Text.speech(Text.mattSkills[32]);
         Text.speech(Text.mattSkills[33]);
      }
      
      internal function frame46() : *
      {
         k();
      }
   }
}


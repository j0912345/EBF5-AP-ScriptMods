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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9275")]
   public dynamic class Flood extends SpellMC
   {
      public function Flood()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,5,this.frame6,10,this.frame11,13,this.frame14,40,this.frame41);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame2() : *
      {
         Battle.shake("small");
      }
      
      internal function frame6() : *
      {
         Skills.pouringpike();
      }
      
      internal function frame11() : *
      {
         Text.speech(Text.mattSkills[23]);
         Text.speech(Text.mattSkills[24]);
         Text.speech(Text.mattSkills[25]);
      }
      
      internal function frame14() : *
      {
         nextSpell(isSummon,Spells.pouringpike);
      }
      
      internal function frame41() : *
      {
         k();
      }
   }
}


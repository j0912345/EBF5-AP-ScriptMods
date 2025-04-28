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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9127")]
   public dynamic class Nettle extends SpellMC
   {
      public function Nettle()
      {
         super();
         addFrameScript(0,this.frame1,4,this.frame5,10,this.frame11,12,this.frame13,45,this.frame46);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame5() : *
      {
         Skills.nettleknife();
      }
      
      internal function frame11() : *
      {
         Text.speech(Text.mattSkills[34]);
         Text.speech(Text.mattSkills[36]);
      }
      
      internal function frame13() : *
      {
         nextSpell(isSummon,Spells.nettleknife);
      }
      
      internal function frame46() : *
      {
         k();
      }
   }
}


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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10174")]
   public dynamic class Spiders extends SpellMC
   {
      public function Spiders()
      {
         super();
         addFrameScript(0,this.frame1,21,this.frame22,29,this.frame30,44,this.frame45,72,this.frame73);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame22() : *
      {
         if(Skills.user is Foe)
         {
            (Skills.user as Foe).castMultiSpell(Spells.spiderweb);
         }
      }
      
      internal function frame30() : *
      {
         Text.speech(Text.evilAnna[13]);
      }
      
      internal function frame45() : *
      {
         if(Skills.user is Foe)
         {
            Skills.spiders();
         }
         else
         {
            Skills.spiders2();
         }
      }
      
      internal function frame73() : *
      {
         k();
      }
   }
}


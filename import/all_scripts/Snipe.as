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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8571")]
   public dynamic class Snipe extends SpellMC
   {
      public function Snipe()
      {
         super();
         addFrameScript(0,this.frame1,21,this.frame22,23,this.frame24,35,this.frame36);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame22() : *
      {
         if(isSummon)
         {
            Summons.CatSniper.effect2();
         }
         else
         {
            Skills.snipe();
         }
      }
      
      internal function frame24() : *
      {
         Text.speech(Text.lanceSkills[1]);
         Text.speech(Text.lanceSkills[2]);
         Text.speech(Text.lanceSkills[11]);
         Text.speech(Text.lanceSkills[42]);
      }
      
      internal function frame36() : *
      {
         k();
      }
   }
}


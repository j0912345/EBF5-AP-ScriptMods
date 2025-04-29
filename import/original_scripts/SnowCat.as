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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9349")]
   public dynamic class SnowCat extends SpellMC
   {
      public function SnowCat()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,9,this.frame10,16,this.frame17,50,this.frame51);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,2);
      }
      
      internal function frame3() : *
      {
         Skills.snowcat();
      }
      
      internal function frame10() : *
      {
         nextSpell(isSummon,Spells.snowcat);
      }
      
      internal function frame17() : *
      {
         Text.speech(Text.miscSkills[10]);
      }
      
      internal function frame51() : *
      {
         k();
      }
   }
}


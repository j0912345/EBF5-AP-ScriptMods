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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9580")]
   public dynamic class Air extends SpellMC
   {
      public function Air()
      {
         super();
         addFrameScript(0,this.frame1,6,this.frame7,7,this.frame8,23,this.frame24);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame7() : *
      {
         Skills.air();
      }
      
      internal function frame8() : *
      {
         nextSpell(isSummon,Spells.air);
      }
      
      internal function frame24() : *
      {
         k();
      }
   }
}


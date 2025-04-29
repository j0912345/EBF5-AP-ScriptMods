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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10241")]
   public dynamic class SandDune extends SpellMC
   {
      public function SandDune()
      {
         super();
         addFrameScript(0,this.frame1,4,this.frame5,15,this.frame16,35,this.frame36);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
         Battle.shake("big");
      }
      
      internal function frame5() : *
      {
         Skills.sanddune();
      }
      
      internal function frame16() : *
      {
         nextSpell(isSummon,Spells.sanddune);
      }
      
      internal function frame36() : *
      {
         k();
      }
   }
}


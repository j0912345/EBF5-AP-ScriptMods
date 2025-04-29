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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10341")]
   public dynamic class PixelSwords extends SpellMC
   {
      public function PixelSwords()
      {
         super();
         addFrameScript(0,this.frame1,17,this.frame18,18,this.frame19,22,this.frame23,23,this.frame24,28,this.frame29,29,this.frame30,33,this.frame34,34,this.frame35,44,this.frame45);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame18() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame19() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.Underlegs.effect4();
         }
         else
         {
            Skills.pixelswords();
         }
      }
      
      internal function frame23() : *
      {
         Battle.shake("small");
      }
      
      internal function frame24() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.Underlegs.effect4();
         }
         else
         {
            Skills.pixelswords();
         }
      }
      
      internal function frame29() : *
      {
         Battle.shake("small");
      }
      
      internal function frame30() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.Underlegs.effect4();
         }
         else
         {
            Skills.pixelswords();
         }
      }
      
      internal function frame34() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame35() : *
      {
         if(isSummon)
         {
            Summons.Underlegs.effect4();
         }
         else
         {
            Skills.pixelswords();
         }
      }
      
      internal function frame45() : *
      {
         k();
      }
   }
}


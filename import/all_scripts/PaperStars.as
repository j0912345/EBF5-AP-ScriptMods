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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10843")]
   public dynamic class PaperStars extends SpellMC
   {
      public function PaperStars()
      {
         super();
         addFrameScript(0,this.frame1,5,this.frame6,30,this.frame31,51,this.frame52);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
         randomizeRotation();
      }
      
      internal function frame6() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.library[0]);
         }
      }
      
      internal function frame31() : *
      {
         if(isSummon)
         {
            Summons.WraithOrigami.effect2();
         }
         else
         {
            Skills.paperstars();
         }
      }
      
      internal function frame52() : *
      {
         k();
      }
   }
}


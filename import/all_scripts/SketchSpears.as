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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10223")]
   public dynamic class SketchSpears extends SpellMC
   {
      public function SketchSpears()
      {
         super();
         addFrameScript(0,this.frame1,6,this.frame7,11,this.frame12,15,this.frame16,19,this.frame20,40,this.frame41);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame7() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.library[10]);
         }
      }
      
      internal function frame12() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.SketchPapalotl.effect2();
         }
         else
         {
            Skills.sketchspears();
         }
      }
      
      internal function frame16() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.SketchPapalotl.effect2();
         }
         else
         {
            Skills.sketchspears();
         }
      }
      
      internal function frame20() : *
      {
         if(isSummon)
         {
            Summons.SketchPapalotl.effect2();
         }
         else
         {
            Skills.sketchspears();
         }
      }
      
      internal function frame41() : *
      {
         k();
      }
   }
}


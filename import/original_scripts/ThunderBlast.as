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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10106")]
   public dynamic class ThunderBlast extends SpellMC
   {
      public function ThunderBlast()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3,20,this.frame21);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,1);
      }
      
      internal function frame2() : *
      {
         Battle.shake("big");
      }
      
      internal function frame3() : *
      {
         if(isSummon)
         {
            Summons.Defender1.effect2();
         }
         else
         {
            Skills.thunderblast();
         }
      }
      
      internal function frame21() : *
      {
         k();
      }
   }
}


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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol7327")]
   public dynamic class ClassicHaunt extends SpellMC
   {
      public function ClassicHaunt()
      {
         super();
         addFrameScript(0,this.frame1,11,this.frame12,18,this.frame19,25,this.frame26,31,this.frame32,38,this.frame39,72,this.frame73);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame12() : *
      {
         if(isSummon)
         {
            Summons.ClassicClayDark.effect2(1);
         }
         else if(Skills.user)
         {
            Skills.user.haunt(1);
         }
      }
      
      internal function frame19() : *
      {
         if(isSummon)
         {
            Summons.ClassicClayDark.effect2(2);
         }
         else if(Skills.user)
         {
            Skills.user.haunt(2);
         }
      }
      
      internal function frame26() : *
      {
         if(isSummon)
         {
            Summons.ClassicClayDark.effect2(3);
         }
         else if(Skills.user)
         {
            Skills.user.haunt(3);
         }
      }
      
      internal function frame32() : *
      {
         if(isSummon)
         {
            Summons.ClassicClayDark.effect2(4);
         }
         else if(Skills.user)
         {
            Skills.user.haunt(4);
         }
      }
      
      internal function frame39() : *
      {
         if(isSummon)
         {
            Summons.ClassicClayDark.effect2(5);
         }
         else if(Skills.user)
         {
            Skills.user.haunt(5);
         }
      }
      
      internal function frame73() : *
      {
         k();
      }
   }
}


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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10763")]
   public dynamic class BigBlast extends SpellMC
   {
      public function BigBlast()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,3,this.frame4,29,this.frame30);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame2() : *
      {
         Battle.shake("big");
      }
      
      internal function frame4() : *
      {
         if(isSummon)
         {
            Summons.MammothWar.effect3();
         }
         else
         {
            Skills.bigblast();
         }
      }
      
      internal function frame30() : *
      {
         k();
      }
   }
}


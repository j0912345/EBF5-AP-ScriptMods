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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10168")]
   public dynamic class SpiderWeb extends SpellMC
   {
      public function SpiderWeb()
      {
         super();
         addFrameScript(0,this.frame1,4,this.frame5,7,this.frame8,27,this.frame28);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
         randomizeRotation();
      }
      
      internal function frame5() : *
      {
         if(isSummon)
         {
            Summons.WormPutrid.effect2();
         }
         else
         {
            Skills.spiderweb();
         }
      }
      
      internal function frame8() : *
      {
         nextSpell();
      }
      
      internal function frame28() : *
      {
         k();
      }
   }
}


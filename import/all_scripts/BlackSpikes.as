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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10743")]
   public dynamic class BlackSpikes extends SpellMC
   {
      public function BlackSpikes()
      {
         super();
         addFrameScript(0,this.frame1,4,this.frame5,7,this.frame8,10,this.frame11,15,this.frame16,41,this.frame42);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame5() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.FallenBeheaded.effect3();
         }
         else
         {
            Skills.blackspikes();
         }
      }
      
      internal function frame8() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.FallenBeheaded.effect3();
         }
         else
         {
            Skills.blackspikes();
         }
      }
      
      internal function frame11() : *
      {
         if(isSummon)
         {
            Summons.FallenBeheaded.effect3();
         }
         else
         {
            Skills.blackspikes();
         }
      }
      
      internal function frame16() : *
      {
         nextSpell();
      }
      
      internal function frame42() : *
      {
         k();
      }
   }
}


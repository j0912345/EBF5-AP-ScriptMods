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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10629")]
   public dynamic class Death extends SpellMC
   {
      public function Death()
      {
         super();
         addFrameScript(0,this.frame1,23,this.frame24,39,this.frame40,53,this.frame54);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame24() : *
      {
         if(isSummon)
         {
            Summons.HydraZombie.effect2();
         }
         else
         {
            Skills.death();
         }
      }
      
      internal function frame40() : *
      {
         nextSpell(isSummon);
      }
      
      internal function frame54() : *
      {
         k();
      }
   }
}


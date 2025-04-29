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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9288")]
   public dynamic class BonePillar extends SpellMC
   {
      public function BonePillar()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,3,this.frame4,16,this.frame17,32,this.frame33,34,this.frame35,55,this.frame56);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame2() : *
      {
         Battle.shake("small");
      }
      
      internal function frame4() : *
      {
         if(isSummon)
         {
            Summons.GolemBone.effect2();
         }
         else
         {
            Skills.bonepillar();
         }
      }
      
      internal function frame17() : *
      {
         nextSpell(isSummon,Spells.bonepillar);
      }
      
      internal function frame33() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame35() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame56() : *
      {
         k();
      }
   }
}


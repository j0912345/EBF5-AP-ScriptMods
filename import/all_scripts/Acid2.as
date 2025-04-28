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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10829")]
   public dynamic class Acid2 extends SpellMC
   {
      public function Acid2()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,4,this.frame5,36,this.frame37);
      }
      
      internal function frame1() : *
      {
         if(isSummon || Skills.user.isPlayer)
         {
            spellcenter.x = 0;
            spellcenter.y = 0;
            init(Target.ALL_ENEMY,3);
         }
         else
         {
            init(Target.CENTER_ENEMY,3);
         }
      }
      
      internal function frame2() : *
      {
         Battle.shake("small");
      }
      
      internal function frame5() : *
      {
         if(isSummon)
         {
            Summons.BitPoison.effect2();
         }
         else
         {
            Skills.acid2();
         }
      }
      
      internal function frame37() : *
      {
         k();
      }
   }
}


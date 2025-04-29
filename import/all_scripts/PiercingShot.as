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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8401")]
   public dynamic class PiercingShot extends SpellMC
   {
      public function PiercingShot()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3,4,this.frame5,10,this.frame11,21,this.frame22);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame2() : *
      {
         if(isSummon)
         {
            Global.element = Element.BIO;
         }
      }
      
      internal function frame3() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect2();
         }
         else
         {
            Skills.piercingshot();
         }
      }
      
      internal function frame5() : *
      {
         if(!isSummon)
         {
            if(Skills.user.isPlayer)
            {
               Battle.bonusSpell();
            }
            else
            {
               Skills.user.bonusSpell();
            }
         }
      }
      
      internal function frame11() : *
      {
         if(!isSummon)
         {
            drainage();
         }
      }
      
      internal function frame22() : *
      {
         k();
      }
   }
}


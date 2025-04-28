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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9445")]
   public dynamic class PaperSword extends SpellMC
   {
      public function PaperSword()
      {
         super();
         addFrameScript(0,this.frame1,10,this.frame11,20,this.frame21,24,this.frame25,39,this.frame40);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame11() : *
      {
         nextSpell(isSummon,Spells.paperSword);
      }
      
      internal function frame21() : *
      {
         Battle.selectedTarget = selectedTarget;
         if(isSummon)
         {
            Summons.HydraOrigami.effect2();
         }
         else
         {
            Skills.papersword();
         }
      }
      
      internal function frame25() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.library[1]);
         }
      }
      
      internal function frame40() : *
      {
         k();
      }
   }
}


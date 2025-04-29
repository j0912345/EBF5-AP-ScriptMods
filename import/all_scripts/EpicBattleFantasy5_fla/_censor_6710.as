package EpicBattleFantasy5_fla
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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol7670")]
   public dynamic class _censor_6710 extends MovieClip
   {
      public function _censor_6710()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         stop();
         if(!Options.mature)
         {
            visible = false;
         }
         else if(Battle.selectedSkill && Battle.selectedSkill is Summon || Battle.bonusSpellFlag)
         {
            nextFrame();
         }
      }
   }
}


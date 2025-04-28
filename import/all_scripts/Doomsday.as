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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10624")]
   public dynamic class Doomsday extends SpellMC
   {
      public function Doomsday()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,3,this.frame4,4,this.frame5,8,this.frame9,16,this.frame17,24,this.frame25,31,this.frame32,49,this.frame50,101,this.frame102);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame2() : *
      {
         Battle.shake("small");
      }
      
      internal function frame4() : *
      {
         Battle.invisiblePlayers();
         Battle.invisibleFoes();
      }
      
      internal function frame5() : *
      {
         Battle.shake("big");
      }
      
      internal function frame9() : *
      {
         Battle.shake("big");
      }
      
      internal function frame17() : *
      {
         Battle.shake("big");
      }
      
      internal function frame25() : *
      {
         Battle.shake("big");
      }
      
      internal function frame32() : *
      {
         if(isSummon)
         {
            Summons.MonolithCosmic.effect2();
         }
         else
         {
            Skills.doomsday();
         }
      }
      
      internal function frame50() : *
      {
         Battle.visiblePlayers();
         Battle.visibleFoes();
      }
      
      internal function frame102() : *
      {
         k();
      }
   }
}


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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10908")]
   public dynamic class SliceEarth extends SpellMC
   {
      public function SliceEarth()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,6,this.frame7,64,this.frame65,101,this.frame102,173,this.frame174,195,this.frame196,196,this.frame197,197,this.frame198,202,this.frame203,207,this.frame208,220,this.frame221);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame3() : *
      {
         BGM.play(BGM.SILENCE);
      }
      
      internal function frame7() : *
      {
         Battle.invisibleFoes();
         Battle.invisiblePlayers();
      }
      
      internal function frame65() : *
      {
         Battle.shake();
      }
      
      internal function frame102() : *
      {
         Battle.shake();
      }
      
      internal function frame174() : *
      {
         if(!Global.oblivion)
         {
            BGM.play(BGM.currentTrack);
         }
      }
      
      internal function frame196() : *
      {
         Battle.visibleFoes();
         Battle.visiblePlayers();
      }
      
      internal function frame197() : *
      {
         if(isSummon)
         {
            Backgrounds.changeBackground(Backgrounds.GLITCH_BOSS);
         }
      }
      
      internal function frame198() : *
      {
         if(isSummon)
         {
            Summons.BossDevourer.effect3();
         }
         else
         {
            Skills.gigadoomsday();
         }
      }
      
      internal function frame203() : *
      {
         if(isSummon)
         {
            Summons.BossDevourer.effect3();
         }
      }
      
      internal function frame208() : *
      {
         if(isSummon)
         {
            Summons.BossDevourer.effect3();
         }
      }
      
      internal function frame221() : *
      {
         k();
      }
   }
}


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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol11008")]
   public dynamic class DeleteEarth extends SpellMC
   {
      public function DeleteEarth()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,6,this.frame7,205,this.frame206,234,this.frame235,235,this.frame236,254,this.frame255,280,this.frame281);
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
      
      internal function frame206() : *
      {
         Text.speech(Text.devourer[12]);
      }
      
      internal function frame235() : *
      {
         Skills.user.deleteEarth();
      }
      
      internal function frame236() : *
      {
         BGM.play(BGM.currentTrack);
      }
      
      internal function frame255() : *
      {
         Battle.visibleFoes();
         Battle.visiblePlayers();
      }
      
      internal function frame281() : *
      {
         k();
      }
   }
}


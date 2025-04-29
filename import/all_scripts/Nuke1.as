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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8921")]
   public dynamic class Nuke1 extends SpellMC
   {
      public function Nuke1()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,3,this.frame4,145,this.frame146,146,this.frame147,152,this.frame153,153,this.frame154);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame2() : *
      {
         Text.speech(Text.lanceSkills[23]);
         Text.speech(Text.lanceSkills[24]);
      }
      
      internal function frame4() : *
      {
         Battle.invisiblePlayers();
         Battle.invisibleFoes();
      }
      
      internal function frame146() : *
      {
         Battle.visiblePlayers();
         Battle.visibleFoes();
      }
      
      internal function frame147() : *
      {
         jumpBack();
      }
      
      internal function frame153() : *
      {
         makeMagic(Nuke2,0,0);
      }
      
      internal function frame154() : *
      {
         k();
      }
   }
}


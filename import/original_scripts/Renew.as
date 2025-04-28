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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8364")]
   public dynamic class Renew extends SpellMC
   {
      public function Renew()
      {
         super();
         addFrameScript(0,this.frame1,3,this.frame4,22,this.frame23,37,this.frame38);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ALLY,3);
      }
      
      internal function frame4() : *
      {
         if(Battle.selectedTarget != Players.player4)
         {
            Text.speech(Text.annaSkills[29]);
         }
      }
      
      internal function frame23() : *
      {
         Skills.renew();
      }
      
      internal function frame38() : *
      {
         k();
      }
   }
}


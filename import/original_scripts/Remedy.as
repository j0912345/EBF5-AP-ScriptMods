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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8366")]
   public dynamic class Remedy extends SpellMC
   {
      public function Remedy()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,21,this.frame22,34,this.frame35);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ALLY,3);
      }
      
      internal function frame2() : *
      {
         if(Battle.selectedTarget != Players.player4)
         {
            Text.speech(Text.annaSkills[29]);
         }
         if(Battle.selectedTarget != Players.player4)
         {
            Text.speech(Text.annaSkills[30]);
         }
      }
      
      internal function frame22() : *
      {
         Skills.remedy();
      }
      
      internal function frame35() : *
      {
         k();
      }
   }
}


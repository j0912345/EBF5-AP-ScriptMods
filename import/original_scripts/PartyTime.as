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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9442")]
   public dynamic class PartyTime extends SpellMC
   {
      public function PartyTime()
      {
         super();
         addFrameScript(0,this.frame1,36,this.frame37,41,this.frame42,52,this.frame53);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame37() : *
      {
         Skills.partytime();
      }
      
      internal function frame42() : *
      {
         if(Battle.selectedTarget == Players.player1)
         {
            Text.speech(Text.miscSkills[11]);
         }
         if(Battle.selectedTarget == Players.player3)
         {
            Text.speech(Text.miscSkills[12]);
         }
         if(Battle.selectedTarget == Players.player2)
         {
            Text.speech(Text.miscSkills[13]);
         }
         if(Battle.selectedTarget == Players.player4)
         {
            Text.speech(Text.miscSkills[14]);
         }
         if(Battle.selectedTarget == Players.player5)
         {
            Text.speech(Text.miscSkills[15]);
         }
      }
      
      internal function frame53() : *
      {
         k();
      }
   }
}


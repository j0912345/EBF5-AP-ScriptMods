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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10946")]
   public dynamic class ReturnEarth extends SpellMC
   {
      public function ReturnEarth()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,6,this.frame7,284,this.frame285,317,this.frame318,340,this.frame341,341,this.frame342,344,this.frame345,346,this.frame347,348,this.frame349,418,this.frame419,463,this.frame464);
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
      
      internal function frame285() : *
      {
         Medals.unlock(Medals.ultimateHero);
      }
      
      internal function frame318() : *
      {
         Medals.unlock(Medals.worldSaved);
         Flags.FINAL_BOSS_DEFEATED.quantity = 1;
      }
      
      internal function frame341() : *
      {
         if(Battle.stage.checkBusy() > 1)
         {
            gotoAndPlay("die3");
         }
      }
      
      internal function frame342() : *
      {
         Text.speech(Text.devourer[14]);
      }
      
      internal function frame345() : *
      {
         if(Battle.stage.checkBusy() > 1)
         {
            gotoAndPlay("die3");
         }
      }
      
      internal function frame347() : *
      {
         Text.speech(Text.devourer[32]);
      }
      
      internal function frame349() : *
      {
         if(Battle.stage.checkBusy() > 1)
         {
            gotoAndPlay("die3");
         }
      }
      
      internal function frame419() : *
      {
         SaveData.calculateEndingTheshold();
         Main.newGamePlusFlag = true;
         Battle.endGame();
      }
      
      internal function frame464() : *
      {
         k();
      }
   }
}


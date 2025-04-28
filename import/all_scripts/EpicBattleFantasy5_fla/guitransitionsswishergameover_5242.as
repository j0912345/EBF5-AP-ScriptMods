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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol13034")]
   public dynamic class guitransitionsswishergameover_5242 extends MovieClip
   {
      public function guitransitionsswishergameover_5242()
      {
         super();
         addFrameScript(1,this.frame2,59,this.frame60,152,this.frame153,153,this.frame154,163,this.frame164,277,this.frame278,278,this.frame279,323,this.frame324,420,this.frame421,444,this.frame445,477,this.frame478,500,this.frame501,542,this.frame543);
      }
      
      internal function frame2() : *
      {
         parent.playerBars.init();
         parent.updatePlayerBars();
         (parent as BattleMenu).commandMenu.gotoAndStop(2);
         (parent as BattleMenu).commandMenu.gotoAndStop(1);
      }
      
      internal function frame60() : *
      {
         stop();
      }
      
      internal function frame153() : *
      {
         BGM.play(BGM.SILENCE);
      }
      
      internal function frame154() : *
      {
         if(Game.foes == Battles.lance1 && Flags.battleEvent == Flags.LANCE_BATTLE_1)
         {
            Game.clearBattle(2);
            Game.clearBattle(3);
            Players.loseNatalie();
         }
      }
      
      internal function frame164() : *
      {
         stop();
         Game.endBattle();
      }
      
      internal function frame278() : *
      {
         stop();
      }
      
      internal function frame279() : *
      {
         BGM.play(BGM.SILENCE);
      }
      
      internal function frame324() : *
      {
         if(!Global.oblivion)
         {
            BGM.play(BGM.GAME_OVER);
         }
      }
      
      internal function frame421() : *
      {
         if(!Global.oblivion)
         {
            BGM.play(BGM.GAME_OVER);
         }
      }
      
      internal function frame445() : *
      {
         if(Global.oblivion)
         {
            stop();
            Options.exitGame();
         }
      }
      
      internal function frame478() : *
      {
         if(Debug.expoDemo)
         {
            gotoAndPlay(545);
         }
      }
      
      internal function frame501() : *
      {
      }
      
      internal function frame543() : *
      {
         stop();
         MapMenu.quitFromGameOver();
      }
   }
}


package EpicBattleFantasy5_fla
{
   import fl.transitions.*;
   import fl.transitions.easing.*;
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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol13012")]
   public dynamic class _fader_5237 extends MovieClip
   {
      public var ox:Number;
      
      public var oy:Number;
      
      public var tween:Tween;
      
      public function _fader_5237()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,3,this.frame4,25,this.frame26,27,this.frame28,28,this.frame29,29,this.frame30,30,this.frame31,31,this.frame32,32,this.frame33,33,this.frame34,34,this.frame35,35,this.frame36,36,this.frame37,37,this.frame38,38,this.frame39,39,this.frame40,40,this.frame41,41,this.frame42,42,this.frame43,43,this.frame44,44,this.frame45,45,this.frame46,46,this.frame47,47,this.frame48,48,this.frame49,49,this.frame50,50,this.frame51,51,this.frame52,52,this.frame53,53,this.frame54,54,this.frame55,55,this.frame56,56,this.frame57,57,this.frame58,58,this.frame59,59,this.frame60,60,this.frame61,61,this.frame62,62,this.frame63,63,this.frame64,64,this.frame65,65,this.frame66,66,this.frame67,67,this.frame68,68,this.frame69,69,this.frame70,70,this.frame71,71,this.frame72,72,this.frame73,73,this.frame74,74,this.frame75,75,this.frame76,76,this.frame77,77,this.frame78,78,this.frame79);
      }
      
      internal function frame1() : *
      {
         visible = false;
         parent.done.visible = false;
         parent.tf3.visible = false;
         stop();
         this.ox = parent.x;
         this.oy = parent.y;
      }
      
      internal function frame3() : *
      {
         parent.x = 1050;
         if(Flags.battleEvent == Flags.ARENA_BATTLE)
         {
            parent.visible = false;
         }
         else
         {
            parent.visible = true;
         }
         this.tween = new Tween(parent,"x",Regular.easeOut,1050,400,20);
      }
      
      internal function frame4() : *
      {
         BGM.play(BGM.VICTORY);
      }
      
      internal function frame26() : *
      {
      }
      
      internal function frame28() : *
      {
         if(Battle.goldPool != 0)
         {
            if(Battle.goldPool > 15000)
            {
               SFX.playSound("coins3");
            }
            else if(Battle.goldPool > 500)
            {
               SFX.playSound("coins2");
            }
            else
            {
               SFX.playSound("coins1");
            }
         }
         parent.inc();
      }
      
      internal function frame29() : *
      {
         if(Options.fastText)
         {
            gotoAndPlay(78);
         }
         parent.inc();
      }
      
      internal function frame30() : *
      {
         parent.inc();
      }
      
      internal function frame31() : *
      {
         parent.inc();
      }
      
      internal function frame32() : *
      {
         parent.inc();
      }
      
      internal function frame33() : *
      {
         parent.inc();
      }
      
      internal function frame34() : *
      {
         parent.inc();
      }
      
      internal function frame35() : *
      {
         parent.inc();
      }
      
      internal function frame36() : *
      {
         parent.inc();
      }
      
      internal function frame37() : *
      {
         parent.inc();
      }
      
      internal function frame38() : *
      {
         parent.inc();
      }
      
      internal function frame39() : *
      {
         parent.inc();
      }
      
      internal function frame40() : *
      {
         parent.inc();
      }
      
      internal function frame41() : *
      {
         parent.inc();
      }
      
      internal function frame42() : *
      {
         parent.inc();
      }
      
      internal function frame43() : *
      {
         parent.inc();
      }
      
      internal function frame44() : *
      {
         parent.inc();
      }
      
      internal function frame45() : *
      {
         parent.inc();
      }
      
      internal function frame46() : *
      {
         parent.inc();
      }
      
      internal function frame47() : *
      {
         parent.inc();
      }
      
      internal function frame48() : *
      {
         parent.inc();
      }
      
      internal function frame49() : *
      {
         parent.inc();
      }
      
      internal function frame50() : *
      {
         parent.inc();
      }
      
      internal function frame51() : *
      {
         parent.inc();
      }
      
      internal function frame52() : *
      {
         parent.inc();
      }
      
      internal function frame53() : *
      {
         parent.inc();
      }
      
      internal function frame54() : *
      {
         parent.inc();
      }
      
      internal function frame55() : *
      {
         parent.inc();
      }
      
      internal function frame56() : *
      {
         parent.inc();
      }
      
      internal function frame57() : *
      {
         parent.inc();
      }
      
      internal function frame58() : *
      {
         parent.inc();
      }
      
      internal function frame59() : *
      {
         parent.inc();
      }
      
      internal function frame60() : *
      {
         parent.inc();
      }
      
      internal function frame61() : *
      {
         parent.inc();
      }
      
      internal function frame62() : *
      {
         parent.inc();
      }
      
      internal function frame63() : *
      {
         parent.inc();
      }
      
      internal function frame64() : *
      {
         parent.inc();
      }
      
      internal function frame65() : *
      {
         parent.inc();
      }
      
      internal function frame66() : *
      {
         parent.inc();
      }
      
      internal function frame67() : *
      {
         parent.inc();
      }
      
      internal function frame68() : *
      {
         parent.inc();
      }
      
      internal function frame69() : *
      {
         parent.inc();
      }
      
      internal function frame70() : *
      {
         parent.inc();
      }
      
      internal function frame71() : *
      {
         parent.inc();
      }
      
      internal function frame72() : *
      {
         parent.inc();
      }
      
      internal function frame73() : *
      {
         parent.inc();
      }
      
      internal function frame74() : *
      {
         parent.inc();
      }
      
      internal function frame75() : *
      {
         parent.inc();
      }
      
      internal function frame76() : *
      {
         parent.inc();
      }
      
      internal function frame77() : *
      {
         parent.inc();
      }
      
      internal function frame78() : *
      {
         parent.done.visible = true;
         parent.tf3.visible = true;
         if(Flags.battleEvent == Flags.ARENA_BATTLE)
         {
            Battle.exit();
         }
      }
      
      internal function frame79() : *
      {
         stop();
      }
   }
}


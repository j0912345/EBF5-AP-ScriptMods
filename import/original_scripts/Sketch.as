package
{
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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol7511")]
   public dynamic class Sketch extends FoeMC
   {
      public var mouth:int;
      
      public function Sketch()
      {
         super();
         addFrameScript(0,this.frame1,59,this.frame60,87,this.frame88,102,this.frame103,133,this.frame134,138,this.frame139,140,this.frame141,146,this.frame147,149,this.frame150,164,this.frame165,200,this.frame201,221,this.frame222,242,this.frame243,268,this.frame269,269,this.frame270,378,this.frame379,379,this.frame380,383,this.frame384,393,this.frame394,394,this.frame395,413,this.frame414,442,this.frame443,444,this.frame445,466,this.frame467,493,this.frame494,502,this.frame503,503,this.frame504,511,this.frame512,524,this.frame525,535,this.frame536,570,this.frame571,585,this.frame586,612,this.frame613,613,this.frame614,619,this.frame620,621,this.frame622,622,this.frame623,628,this.frame629,630,this.frame631,631,this.frame632,633,this.frame634,637,this.frame638,641,this.frame642,642,this.frame643,644,this.frame645,650,this.frame651,668,this.frame669,677,this.frame678,686,this.frame687,690,this.frame691,696,this.frame697,704,this.frame705,705,this.frame706,740,this.frame741,755,this.frame756,775,this.frame776,782,this.frame783,794,this.frame795,803,this.frame804,809,this.frame810,815,this.frame816,825,this.frame826,852,this.frame853,872,this.frame873,877,this.frame878,890,this.frame891,892,this.frame893,899,this.frame900,911,this.frame912,932,this.frame933,938,this.frame939,947,this.frame948,973,this.frame974,1011,this.frame1012,1025,this.frame1026,1031,this.frame1032,1038,this.frame1039,1050,this.frame1051,1055,this.frame1056,1059,this.frame1060,1060,this.frame1061,1066,this.frame1067,1073,this.frame1074,1083,this.frame1084,1111,this.frame1112,1132,this.frame1133,1138,this.frame1139,1144,this.frame1145,1156,this.frame1157,1174,this.frame1175);
      }
      
      internal function frame1() : *
      {
         init();
         if(skin == 2 || skin == 3)
         {
            this.mouth = Math.random() * 3 + 6;
         }
         else if(skin == 5)
         {
            this.mouth = Math.random() * 3 + 9;
         }
         else
         {
            this.mouth = Math.random() * 5 + 1;
         }
      }
      
      internal function frame60() : *
      {
         if(isSummon)
         {
            Backgrounds.changeBackground(Backgrounds.PAPER);
            SFX.playSound("paper");
            Battle.hidePlayers();
            this.y += 50;
            summonOnTop();
         }
      }
      
      internal function frame88() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.library[3]);
         }
         if(!isSummon && skin == 1)
         {
            Text.speech(Text.library[8]);
         }
         if(!isSummon && skin == 2)
         {
            Text.speech(Text.library[11]);
         }
         if(isSummon)
         {
            Text.speech(Text.library[21]);
         }
         if(isSummon)
         {
            Text.speech(Text.library[22]);
         }
      }
      
      internal function frame103() : *
      {
         k();
      }
      
      internal function frame134() : *
      {
         if(isSummon)
         {
            Battle.showPlayers();
         }
      }
      
      internal function frame139() : *
      {
         if(isSummon)
         {
            if(skin != 2)
            {
               Backgrounds.resetBackground();
               SFX.playSound("paper");
            }
            else
            {
               Global.resetBG1 = true;
            }
         }
         flee();
      }
      
      internal function frame141() : *
      {
         stand();
      }
      
      internal function frame147() : *
      {
         ks();
      }
      
      internal function frame150() : *
      {
         freezeSound();
      }
      
      internal function frame165() : *
      {
         frozen();
      }
      
      internal function frame201() : *
      {
         k();
      }
      
      internal function frame222() : *
      {
         k();
      }
      
      internal function frame243() : *
      {
         k();
      }
      
      internal function frame269() : *
      {
         k();
      }
      
      internal function frame270() : *
      {
         Battle.shake();
      }
      
      internal function frame379() : *
      {
         Battle.shake("big");
      }
      
      internal function frame380() : *
      {
         dropItems();
      }
      
      internal function frame384() : *
      {
         if(skin == 3)
         {
            Medals.unlock(Medals.paperShredder);
         }
      }
      
      internal function frame394() : *
      {
         if(skin == 3)
         {
            Text.speech(Text.library[19]);
         }
      }
      
      internal function frame395() : *
      {
         if(skin == 2)
         {
            Text.speech(Text.library[14]);
         }
      }
      
      internal function frame414() : *
      {
         dead();
      }
      
      internal function frame443() : *
      {
         Battle.shake("big");
      }
      
      internal function frame445() : *
      {
         if(isSummon)
         {
            Summons.SketchGuncat.effect2();
         }
         else
         {
            self.special1();
         }
      }
      
      internal function frame467() : *
      {
         k();
      }
      
      internal function frame494() : *
      {
         if(skin == 3)
         {
            playSound("sandworm");
         }
         if(skin == 5)
         {
            playSound("mechacat");
         }
      }
      
      internal function frame503() : *
      {
         Battle.shake("small");
      }
      
      internal function frame504() : *
      {
         self.attack1();
      }
      
      internal function frame512() : *
      {
         if(skin == 3)
         {
            self.attack1b();
         }
      }
      
      internal function frame525() : *
      {
         gotoAndPlay("intro2");
      }
      
      internal function frame536() : *
      {
         k();
      }
      
      internal function frame571() : *
      {
         self.defend1();
      }
      
      internal function frame586() : *
      {
         k();
      }
      
      internal function frame613() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.SketchGuncat.effect();
         }
         else
         {
            self.special2(1);
         }
      }
      
      internal function frame614() : *
      {
         Battle.shake("small");
      }
      
      internal function frame620() : *
      {
         Battle.finalHit = false;
         if(!isSummon)
         {
            self.special2(2);
         }
      }
      
      internal function frame622() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.SketchGuncat.effect();
         }
         else
         {
            self.special2(1);
         }
      }
      
      internal function frame623() : *
      {
         Battle.shake("small");
      }
      
      internal function frame629() : *
      {
         Battle.finalHit = false;
         if(!isSummon)
         {
            self.special2(2);
         }
      }
      
      internal function frame631() : *
      {
         if(isSummon)
         {
            Summons.SketchGuncat.effect();
         }
         else
         {
            self.special2(1);
         }
      }
      
      internal function frame632() : *
      {
         Battle.shake("small");
      }
      
      internal function frame634() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.library[17]);
         }
      }
      
      internal function frame638() : *
      {
         if(!isSummon)
         {
            self.special2(2);
         }
      }
      
      internal function frame642() : *
      {
         k();
      }
      
      internal function frame643() : *
      {
         point2.y -= 60;
      }
      
      internal function frame645() : *
      {
         setXY();
         move(340,12,Regular.easeInOut);
      }
      
      internal function frame651() : *
      {
         swapLayer();
      }
      
      internal function frame669() : *
      {
         Battle.shake("small");
         Battle.finalHit = false;
         self.special3();
      }
      
      internal function frame678() : *
      {
         Battle.shake("small");
         Battle.finalHit = false;
         self.special3();
      }
      
      internal function frame687() : *
      {
         Battle.shake("small");
         self.special3();
      }
      
      internal function frame691() : *
      {
         resetXY();
         move(0,12,Regular.easeInOut);
      }
      
      internal function frame697() : *
      {
         resetLayer();
      }
      
      internal function frame705() : *
      {
         point2.y += 60;
      }
      
      internal function frame706() : *
      {
         k();
      }
      
      internal function frame741() : *
      {
         self.magic1();
      }
      
      internal function frame756() : *
      {
         k();
      }
      
      internal function frame776() : *
      {
         setXY();
         move(120,15,Regular.easeInOut);
      }
      
      internal function frame783() : *
      {
         swapLayer();
      }
      
      internal function frame795() : *
      {
         Battle.finalHit = false;
         self.attack2();
      }
      
      internal function frame804() : *
      {
         self.attack2();
      }
      
      internal function frame810() : *
      {
         resetXY();
         move(0,15,Regular.easeInOut);
      }
      
      internal function frame816() : *
      {
         resetLayer();
      }
      
      internal function frame826() : *
      {
         k();
      }
      
      internal function frame853() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.magic2();
         }
      }
      
      internal function frame873() : *
      {
         k();
      }
      
      internal function frame878() : *
      {
         if(skin == 3)
         {
            loops = 1;
         }
      }
      
      internal function frame891() : *
      {
      }
      
      internal function frame893() : *
      {
         setXY();
         move(215,15,Regular.easeInOut);
      }
      
      internal function frame900() : *
      {
         swapLayer();
      }
      
      internal function frame912() : *
      {
         self.attack3();
      }
      
      internal function frame933() : *
      {
         if(loops)
         {
            --loops;
            Battle.selectedTarget = Battle.randomPlayer();
            gotoAndPlay("attack3b");
         }
         else
         {
            resetXY();
            move(0,15,Regular.easeInOut);
         }
      }
      
      internal function frame939() : *
      {
         resetLayer();
      }
      
      internal function frame948() : *
      {
         k();
      }
      
      internal function frame974() : *
      {
         self.magic3();
      }
      
      internal function frame1012() : *
      {
         k();
      }
      
      internal function frame1026() : *
      {
         loops = 2;
      }
      
      internal function frame1032() : *
      {
         setXY();
         move(220,15,Regular.easeInOut);
      }
      
      internal function frame1039() : *
      {
         swapLayer();
      }
      
      internal function frame1051() : *
      {
         self.attack4(1);
      }
      
      internal function frame1056() : *
      {
         if(loops)
         {
            Battle.selectedTarget = Battle.randomPlayerButNot(Battle.selectedTarget);
            if(!Battle.selectedTarget || Battle.selectedTarget.dead)
            {
               Battle.selectedTarget = Battle.randomPlayer();
            }
            gotoAndPlay("attack4b");
            --loops;
         }
      }
      
      internal function frame1060() : *
      {
         self.attack4(2);
      }
      
      internal function frame1061() : *
      {
         Battle.shake("small");
      }
      
      internal function frame1067() : *
      {
         resetXY();
         move(0,15,Regular.easeInOut);
      }
      
      internal function frame1074() : *
      {
         resetLayer();
      }
      
      internal function frame1084() : *
      {
         k();
      }
      
      internal function frame1112() : *
      {
         Battle.shake("small");
      }
      
      internal function frame1133() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.SketchGlaurung.effect();
         }
         else
         {
            self.special4();
         }
      }
      
      internal function frame1139() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.library[18]);
         }
      }
      
      internal function frame1145() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.SketchGlaurung.effect();
         }
         else
         {
            self.special4();
         }
      }
      
      internal function frame1157() : *
      {
         if(isSummon)
         {
            Summons.SketchGlaurung.effect();
         }
         else
         {
            self.special4();
         }
      }
      
      internal function frame1175() : *
      {
         k();
      }
   }
}


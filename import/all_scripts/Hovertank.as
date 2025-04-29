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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol14212")]
   public dynamic class Hovertank extends FoeMC
   {
      public var moveTurret:Boolean;
      
      public function Hovertank()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,15,this.frame16,40,this.frame41,43,this.frame44,50,this.frame51,58,this.frame59,66,this.frame67,71,this.frame72,75,this.frame76,78,this.frame79,100,this.frame101,107,this.frame108,130,this.frame131,132,this.frame133,196,this.frame197,221,this.frame222,227,this.frame228,228,this.frame229,229,this.frame230,230,this.frame231,245,this.frame246,261,this.frame262,278,this.frame279,279,this.frame280,284,this.frame285,299,this.frame300,300,this.frame301,301,this.frame302,324,this.frame325,325,this.frame326,326,this.frame327,327,this.frame328,361,this.frame362,376,this.frame377,377,this.frame378,387,this.frame388,396,this.frame397,399,this.frame400,401,this.frame402,404,this.frame405,416,this.frame417,435,this.frame436,437,this.frame438,440,this.frame441,442,this.frame443,443,this.frame444,577,this.frame578,591,this.frame592,617,this.frame618,621,this.frame622,626,this.frame627,627,this.frame628,630,this.frame631,634,this.frame635,635,this.frame636,653,this.frame654,658,this.frame659,663,this.frame664,680,this.frame681,690,this.frame691,693,this.frame694,699,this.frame700,705,this.frame706,710,this.frame711,717,this.frame718,727,this.frame728,761,this.frame762,762,this.frame763,782,this.frame783,783,this.frame784,814,this.frame815,872,this.frame873,907,this.frame908,954,this.frame955,965,this.frame966,981,this.frame982,1001,this.frame1002,1002,this.frame1003,1003,this.frame1004,1004,this.frame1005,1005,this.frame1006,1006,this.frame1007,1007,this.frame1008,1009,this.frame1010,1010,this.frame1011,1011,this.frame1012,1013,this.frame1014,1014,this.frame1015,1015,this.frame1016,1016,this.frame1017,1017,this.frame1018,1018,this.frame1019,1019,this.frame1020,1021,this.frame1022,1022,this.frame1023,1023,this.frame1024,1025,this.frame1026,1026,this.frame1027,1027,this.frame1028,1028,this.frame1029,1029,this.frame1030,1030,this.frame1031,1048,this.frame1049,1081,this.frame1082,1085,this.frame1086,1089,this.frame1090,1093,this.frame1094,1097,this.frame1098,1101,this.frame1102,1105,this.frame1106,1109,this.frame1110,1113,this.frame1114,1132,this.frame1133,1138,this.frame1139,1140,this.frame1141,1147,this.frame1148,1159,this.frame1160,1174,this.frame1175,1178,this.frame1179,1183,this.frame1184,1192,this.frame1193,1219,this.frame1220,1225,this.frame1226,1245,this.frame1246,1246,this.frame1247,1248,this.frame1249,1250,this.frame1251,1251,this.frame1252,1254,this.frame1255,1257,this.frame1258,1258,this.frame1259,1260,this.frame1261,1262,this.frame1263,1263,this.frame1264,1266,this.frame1267,1269,this.frame1270,1270,this.frame1271,1272,this.frame1273,1274,this.frame1275,1292,this.frame1293);
      }
      
      public function moveTurrets(param1:Event = null) : *
      {
         var _loc2_:int = 0;
         if(!parent)
         {
            this.removeEventListener(Event.ENTER_FRAME,this.moveTurrets);
            return;
         }
         if(this.moveTurret)
         {
            _loc2_ = 1;
            if(skin >= 5)
            {
               _loc2_ = 2;
            }
            if(Battle.foes[_loc2_] && !Battle.foes[_loc2_].delayedSpellFlag && this.body && Boolean(this.body.parent))
            {
               Battle.foes[_loc2_].graphic.x = this.body.x + this.x + 221;
               Battle.foes[_loc2_].graphic.y = this.body.y + this.y + 34;
            }
            else if(Boolean(Battle.foes[_loc2_]) && !Battle.foes[_loc2_].delayedSpellFlag)
            {
               Battle.foes[_loc2_].graphic.x = 2000;
            }
            if(skin >= 5)
            {
               if(Battle.foes[3] && !Battle.foes[3].delayedSpellFlag && Boolean(this.side2) && Boolean(this.side2.parent))
               {
                  Battle.foes[3].graphic.x = this.side2.x + this.x + 180;
                  Battle.foes[3].graphic.y = this.side2.y + this.y + 52;
               }
               else if(Boolean(Battle.foes[3]) && !Battle.foes[3].delayedSpellFlag)
               {
                  Battle.foes[3].graphic.x = 2000;
               }
               if(Battle.foes[1] && !Battle.foes[1].delayedSpellFlag && Boolean(this.side1) && Boolean(this.side1.parent))
               {
                  Battle.foes[1].graphic.x = this.side1.x + this.x + 149;
                  Battle.foes[1].graphic.y = this.side1.y + this.y + 11;
               }
               else if(Boolean(Battle.foes[1]) && !Battle.foes[1].delayedSpellFlag)
               {
                  Battle.foes[1].graphic.x = 2000;
               }
            }
         }
      }
      
      internal function frame1() : *
      {
         init();
         this.moveTurret = true;
         this.addEventListener(Event.ENTER_FRAME,this.moveTurrets);
      }
      
      internal function frame3() : *
      {
      }
      
      internal function frame16() : *
      {
         if(Flags.battleEvent == Flags.LANCE_BATTLE_1)
         {
            Text.speech(Text.lance[29]);
         }
         if(Flags.battleEvent == Flags.LANCE_BATTLE_3)
         {
            Text.speech(Text.lance[13]);
         }
      }
      
      internal function frame41() : *
      {
         if(skin > 3)
         {
            Text.speech(Text.gigaFortress[1]);
         }
      }
      
      internal function frame44() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame51() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame59() : *
      {
         Battle.shake("small");
      }
      
      internal function frame67() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame72() : *
      {
         Battle.shake("small");
      }
      
      internal function frame76() : *
      {
         self.attack1();
      }
      
      internal function frame79() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame101() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame108() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame131() : *
      {
         k();
      }
      
      internal function frame133() : *
      {
         stand();
      }
      
      internal function frame197() : *
      {
         ks();
      }
      
      internal function frame222() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame228() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame229() : *
      {
         if(skin <= 4)
         {
            Medals.unlock(Medals.bashTheFash);
            Flags.TANK_DEFEATED.quantity = 1;
            Battle.bossDefeated();
         }
      }
      
      internal function frame230() : *
      {
         self.hideTurrets();
         flee();
      }
      
      internal function frame231() : *
      {
         playSound("heal2");
      }
      
      internal function frame246() : *
      {
         if(skin > 3)
         {
            Text.speech(Text.gigaFortress[7]);
         }
         if(skin > 3)
         {
            Text.speech(Text.gigaFortress[8]);
         }
      }
      
      internal function frame262() : *
      {
         k();
      }
      
      internal function frame279() : *
      {
         k();
      }
      
      internal function frame280() : *
      {
         self.skinDamage();
      }
      
      internal function frame285() : *
      {
         if(skin == 2)
         {
            Text.speech(Text.lance[18]);
         }
         if(skin <= 3)
         {
            Text.speech(Text.lance[26]);
         }
      }
      
      internal function frame300() : *
      {
         k();
      }
      
      internal function frame301() : *
      {
         self.skinDamage();
      }
      
      internal function frame302() : *
      {
         Battle.shake("small");
      }
      
      internal function frame325() : *
      {
         k();
      }
      
      internal function frame326() : *
      {
         Battle.whiteFlash();
      }
      
      internal function frame327() : *
      {
         self.hideTurrets();
      }
      
      internal function frame328() : *
      {
         Battle.shake("big");
      }
      
      internal function frame362() : *
      {
         Battle.shake("small");
      }
      
      internal function frame377() : *
      {
         body.gun1.gotoAndStop("die");
      }
      
      internal function frame378() : *
      {
         Battle.shake("small");
      }
      
      internal function frame388() : *
      {
         Battle.shake("small");
      }
      
      internal function frame397() : *
      {
         Battle.shake("small");
      }
      
      internal function frame400() : *
      {
         body.gun2.gotoAndStop("die");
      }
      
      internal function frame402() : *
      {
         Battle.shake("small");
      }
      
      internal function frame405() : *
      {
         Battle.shake("small");
      }
      
      internal function frame417() : *
      {
         if(Flags.battleEvent == Flags.LANCE_BATTLE_3)
         {
            Text.speech(Text.lance[23]);
         }
      }
      
      internal function frame436() : *
      {
         makeMagic(WhiteFlash,0,0);
      }
      
      internal function frame438() : *
      {
         Battle.shake("big");
      }
      
      internal function frame441() : *
      {
         makeMagic(WhiteFlash,0,0);
      }
      
      internal function frame443() : *
      {
         Battle.shake("big");
      }
      
      internal function frame444() : *
      {
         dropItems();
      }
      
      internal function frame578() : *
      {
         if(skin <= 4)
         {
            Medals.unlock(Medals.bashTheFash);
            Flags.TANK_DEFEATED.quantity = 1;
         }
         else
         {
            Medals.unlock(Medals.drillBreaker);
            Flags.SUPER_TANK_DEFEATED.quantity = 1;
         }
         Battle.bossDefeated();
      }
      
      internal function frame592() : *
      {
         dead();
      }
      
      internal function frame618() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame622() : *
      {
         Battle.shake("small");
      }
      
      internal function frame627() : *
      {
         self.attack1();
      }
      
      internal function frame628() : *
      {
         Battle.shake("big");
      }
      
      internal function frame631() : *
      {
         Battle.shake("small");
      }
      
      internal function frame635() : *
      {
         self.attack11();
      }
      
      internal function frame636() : *
      {
         Battle.shake("big");
      }
      
      internal function frame654() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame659() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame664() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame681() : *
      {
         k();
      }
      
      internal function frame691() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame694() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame700() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame706() : *
      {
         Battle.shake("small");
      }
      
      internal function frame711() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame718() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame728() : *
      {
         setXY();
         X = 180;
         Y = 290;
         move(0,1,null);
      }
      
      internal function frame762() : *
      {
         self.attack2();
      }
      
      internal function frame763() : *
      {
         Battle.shake("big");
      }
      
      internal function frame783() : *
      {
      }
      
      internal function frame784() : *
      {
         resetXY();
         move(0,30,Regular.easeInOut);
      }
      
      internal function frame815() : *
      {
         k();
      }
      
      internal function frame873() : *
      {
         self.special1();
      }
      
      internal function frame908() : *
      {
         k();
      }
      
      internal function frame955() : *
      {
         Battle.finalHit = false;
         self.special2();
      }
      
      internal function frame966() : *
      {
         self.special2();
      }
      
      internal function frame982() : *
      {
         k();
      }
      
      internal function frame1002() : *
      {
         Battle.finalHit = false;
         self.attack3();
         body.gun1.gotoAndPlay(2);
         body.gun2.gotoAndPlay(2);
      }
      
      internal function frame1003() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame1004() : *
      {
         Battle.finalHit = false;
         self.attack3();
      }
      
      internal function frame1005() : *
      {
         body.gun1.gotoAndPlay(2);
         body.gun2.gotoAndPlay(2);
      }
      
      internal function frame1006() : *
      {
         Battle.finalHit = false;
         self.attack3();
      }
      
      internal function frame1007() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame1008() : *
      {
         Battle.finalHit = false;
         self.attack3();
         body.gun1.gotoAndPlay(2);
         body.gun2.gotoAndPlay(2);
      }
      
      internal function frame1010() : *
      {
         Battle.finalHit = false;
         self.attack3();
      }
      
      internal function frame1011() : *
      {
         Battle.shake("tiny");
         body.gun1.gotoAndPlay(2);
         body.gun2.gotoAndPlay(2);
      }
      
      internal function frame1012() : *
      {
         Battle.finalHit = false;
         self.attack3();
      }
      
      internal function frame1014() : *
      {
         Battle.finalHit = false;
         self.attack3();
         body.gun1.gotoAndPlay(2);
         body.gun2.gotoAndPlay(2);
      }
      
      internal function frame1015() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame1016() : *
      {
         Battle.finalHit = false;
         self.attack3();
      }
      
      internal function frame1017() : *
      {
         body.gun1.gotoAndPlay(2);
         body.gun2.gotoAndPlay(2);
      }
      
      internal function frame1018() : *
      {
         Battle.finalHit = false;
         self.attack3();
      }
      
      internal function frame1019() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame1020() : *
      {
         Battle.finalHit = false;
         self.attack3();
         body.gun1.gotoAndPlay(2);
         body.gun2.gotoAndPlay(2);
      }
      
      internal function frame1022() : *
      {
         Battle.finalHit = false;
         self.attack3();
      }
      
      internal function frame1023() : *
      {
         Battle.shake("tiny");
         body.gun1.gotoAndPlay(2);
         body.gun2.gotoAndPlay(2);
      }
      
      internal function frame1024() : *
      {
         Battle.finalHit = false;
         self.attack3();
      }
      
      internal function frame1026() : *
      {
         Battle.finalHit = false;
         self.attack3();
         body.gun1.gotoAndPlay(2);
         body.gun2.gotoAndPlay(2);
      }
      
      internal function frame1027() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame1028() : *
      {
         Battle.finalHit = false;
         self.attack3();
      }
      
      internal function frame1029() : *
      {
         body.gun1.gotoAndPlay(2);
         body.gun2.gotoAndPlay(2);
      }
      
      internal function frame1030() : *
      {
         self.attack3();
      }
      
      internal function frame1031() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame1049() : *
      {
         k();
      }
      
      internal function frame1082() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame1086() : *
      {
         Battle.shake("tiny");
         Battle.finalHit = false;
         self.special3();
      }
      
      internal function frame1090() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame1094() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame1098() : *
      {
         Battle.shake("tiny");
         Battle.finalHit = false;
         self.special3();
      }
      
      internal function frame1102() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame1106() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame1110() : *
      {
         Battle.shake("tiny");
         self.special3();
      }
      
      internal function frame1114() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame1133() : *
      {
         k();
      }
      
      internal function frame1139() : *
      {
         self.special4A();
      }
      
      internal function frame1141() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame1148() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame1160() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame1175() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame1179() : *
      {
         self.special4();
      }
      
      internal function frame1184() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame1193() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame1220() : *
      {
         self.special4B();
      }
      
      internal function frame1226() : *
      {
         k();
      }
      
      internal function frame1246() : *
      {
         body.gun1.gotoAndPlay(2);
         body.gun2.gotoAndPlay(2);
      }
      
      internal function frame1247() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame1249() : *
      {
         body.gun1.gotoAndPlay(2);
         body.gun2.gotoAndPlay(2);
      }
      
      internal function frame1251() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame1252() : *
      {
         body.gun1.gotoAndPlay(2);
         body.gun2.gotoAndPlay(2);
      }
      
      internal function frame1255() : *
      {
         Battle.shake("tiny");
         body.gun1.gotoAndPlay(2);
         body.gun2.gotoAndPlay(2);
      }
      
      internal function frame1258() : *
      {
         body.gun1.gotoAndPlay(2);
         body.gun2.gotoAndPlay(2);
      }
      
      internal function frame1259() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame1261() : *
      {
         body.gun1.gotoAndPlay(2);
         body.gun2.gotoAndPlay(2);
      }
      
      internal function frame1263() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame1264() : *
      {
         body.gun1.gotoAndPlay(2);
         body.gun2.gotoAndPlay(2);
      }
      
      internal function frame1267() : *
      {
         Battle.shake("tiny");
         body.gun1.gotoAndPlay(2);
         body.gun2.gotoAndPlay(2);
      }
      
      internal function frame1270() : *
      {
         body.gun1.gotoAndPlay(2);
         body.gun2.gotoAndPlay(2);
      }
      
      internal function frame1271() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame1273() : *
      {
         body.gun1.gotoAndPlay(2);
         body.gun2.gotoAndPlay(2);
      }
      
      internal function frame1275() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame1293() : *
      {
         k();
      }
   }
}


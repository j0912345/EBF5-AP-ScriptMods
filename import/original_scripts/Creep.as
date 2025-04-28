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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol15298")]
   public dynamic class Creep extends FoeMC
   {
      public function Creep()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,71,this.frame72,73,this.frame74,109,this.frame110,119,this.frame120,158,this.frame159,160,this.frame161,175,this.frame176,176,this.frame177,205,this.frame206,222,this.frame223,224,this.frame225,225,this.frame226,245,this.frame246,246,this.frame247,247,this.frame248,258,this.frame259,270,this.frame271,271,this.frame272,272,this.frame273,284,this.frame285,314,this.frame315,339,this.frame340,345,this.frame346,362,this.frame363,371,this.frame372,380,this.frame381,390,this.frame391,396,this.frame397,409,this.frame410,417,this.frame418,433,this.frame434,457,this.frame458,471,this.frame472,480,this.frame481,500,this.frame501,508,this.frame509,539,this.frame540,549,this.frame550,550,this.frame551,559,this.frame560,560,this.frame561,561,this.frame562,591,this.frame592,592,this.frame593,630,this.frame631,656,this.frame657,686,this.frame687,695,this.frame696,704,this.frame705,705,this.frame706,723,this.frame724,725,this.frame726,735,this.frame736,743,this.frame744,761,this.frame762,773,this.frame774,784,this.frame785,793,this.frame794,794,this.frame795,797,this.frame798,801,this.frame802,802,this.frame803,806,this.frame807,811,this.frame812,812,this.frame813,816,this.frame817,821,this.frame822,822,this.frame823,827,this.frame828,830,this.frame831,833,this.frame834,834,this.frame835,839,this.frame840,858,this.frame859,870,this.frame871,880,this.frame881,890,this.frame891,891,this.frame892,899,this.frame900,906,this.frame907,907,this.frame908,915,this.frame916,922,this.frame923,923,this.frame924,928,this.frame929,931,this.frame932,947,this.frame948,984,this.frame985,989,this.frame990,994,this.frame995,996,this.frame997,997,this.frame998,1040,this.frame1041,1041,this.frame1042,1050,this.frame1051,1059,this.frame1060,1060,this.frame1061,1077,this.frame1078,1078,this.frame1079,1094,this.frame1095,1102,this.frame1103,1118,this.frame1119,1130,this.frame1131,1138,this.frame1139,1144,this.frame1145,1149,this.frame1150,1154,this.frame1155,1173,this.frame1174);
      }
      
      internal function frame1() : *
      {
         init();
      }
      
      internal function frame3() : *
      {
         randomDelay(25);
      }
      
      internal function frame72() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.creeps[1]);
         }
         if(skin == 4)
         {
            Text.speech(Text.creeps[6]);
         }
      }
      
      internal function frame74() : *
      {
         k();
      }
      
      internal function frame110() : *
      {
         flee();
      }
      
      internal function frame120() : *
      {
         stand();
      }
      
      internal function frame159() : *
      {
         ks();
      }
      
      internal function frame161() : *
      {
         freezeSound();
      }
      
      internal function frame176() : *
      {
         frozen();
      }
      
      internal function frame177() : *
      {
         head.gotoAndPlay("heal");
         playSound("heal");
      }
      
      internal function frame206() : *
      {
         k();
      }
      
      internal function frame223() : *
      {
         if(Battle.selectedTarget == self && Battle.menu.selectedSkill != Spells.capture)
         {
            Text.speech(Text.creeps[10]);
            Text.speech(Text.creeps[11]);
         }
      }
      
      internal function frame225() : *
      {
         k();
      }
      
      internal function frame226() : *
      {
         head.gotoAndPlay("hit");
         playSound("265");
      }
      
      internal function frame246() : *
      {
         k();
      }
      
      internal function frame247() : *
      {
         head.gotoAndPlay("hit");
         playSound("266");
      }
      
      internal function frame248() : *
      {
         playSound("267");
      }
      
      internal function frame259() : *
      {
         playSound("268");
      }
      
      internal function frame271() : *
      {
         k();
      }
      
      internal function frame272() : *
      {
         head.gotoAndPlay("die");
         playSound("269");
      }
      
      internal function frame273() : *
      {
         playSound("270");
      }
      
      internal function frame285() : *
      {
         playSound("271");
      }
      
      internal function frame315() : *
      {
         randomDelay(20);
      }
      
      internal function frame340() : *
      {
         dropItems();
      }
      
      internal function frame346() : *
      {
         Text.speech(Text.creeps[2]);
      }
      
      internal function frame363() : *
      {
         dead();
      }
      
      internal function frame372() : *
      {
         setXY();
         if(isSummon)
         {
            Y += 15;
         }
         move(0,18,Regular.easeInOut);
      }
      
      internal function frame381() : *
      {
         swapLayer();
      }
      
      internal function frame391() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.creeps[12]);
         }
         if(!isSummon)
         {
            Text.speech(Text.creeps[13]);
         }
      }
      
      internal function frame397() : *
      {
         if(isSummon)
         {
            Summons.CreepHermit.effect();
         }
         else
         {
            self.attack2();
         }
      }
      
      internal function frame410() : *
      {
         resetXY();
         if(isSummon)
         {
            X = 1000 + 200;
            Y = y;
         }
         move(0,18,Regular.easeInOut);
      }
      
      internal function frame418() : *
      {
         if(!isSummon)
         {
            resetLayer();
         }
      }
      
      internal function frame434() : *
      {
         k();
      }
      
      internal function frame458() : *
      {
         self.defend1();
      }
      
      internal function frame472() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.creeps[3]);
         }
      }
      
      internal function frame481() : *
      {
         k();
      }
      
      internal function frame501() : *
      {
         self.magic1();
      }
      
      internal function frame509() : *
      {
         k();
      }
      
      internal function frame540() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.creeps[8]);
         }
      }
      
      internal function frame550() : *
      {
         setXY();
         move(isSummon ? 60 : -60,1,null);
      }
      
      internal function frame551() : *
      {
         swapLayer(true);
      }
      
      internal function frame560() : *
      {
         if(skin == 1)
         {
            makeMagic(EffectThunder,0,0);
         }
         if(skin == 2)
         {
            makeMagic(EffectIce2,0,0);
         }
         if(skin == 6)
         {
            makeMagic(EffectWater2,0,0);
         }
      }
      
      internal function frame561() : *
      {
         Battle.shake("small");
      }
      
      internal function frame562() : *
      {
         if(isSummon)
         {
            Summons.CreepThorny.effect();
         }
         else
         {
            self.attack1();
         }
      }
      
      internal function frame592() : *
      {
         if(isSummon)
         {
            k();
         }
      }
      
      internal function frame593() : *
      {
         resetXY();
         move(0,1,null);
         resetLayer();
      }
      
      internal function frame631() : *
      {
         k();
      }
      
      internal function frame657() : *
      {
         self.magic2();
      }
      
      internal function frame687() : *
      {
         k();
      }
      
      internal function frame696() : *
      {
         setXY();
         if(isSummon)
         {
            Y += 15;
         }
         move(isSummon ? 30 : -30,18,Regular.easeInOut);
      }
      
      internal function frame705() : *
      {
         swapLayer();
      }
      
      internal function frame706() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.creeps[9]);
         }
      }
      
      internal function frame724() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.creeps[12]);
         }
         if(!isSummon)
         {
            Text.speech(Text.creeps[13]);
         }
      }
      
      internal function frame726() : *
      {
         if(isSummon)
         {
            Summons.CreepIcicle.effect();
         }
         else
         {
            self.attack3();
         }
      }
      
      internal function frame736() : *
      {
         resetXY();
         if(isSummon)
         {
            X = 1000 + 200;
            Y = y;
         }
         move(0,18,Regular.easeInOut);
      }
      
      internal function frame744() : *
      {
         if(!isSummon)
         {
            resetLayer();
         }
      }
      
      internal function frame762() : *
      {
         k();
      }
      
      internal function frame774() : *
      {
         setXY();
         move(-15,21,null);
      }
      
      internal function frame785() : *
      {
         swapLayer(true);
      }
      
      internal function frame794() : *
      {
         if(skin == 5)
         {
            makeMagic(EffectStab,0,0);
            playSound("stab");
         }
         if(skin == 4)
         {
            makeMagic(EffectFeathers,0,0);
         }
         Battle.finalHit = false;
         self.attack4();
      }
      
      internal function frame795() : *
      {
         setXY();
         move(-150,8,null);
      }
      
      internal function frame798() : *
      {
         resetLayer();
         swapLayer(true);
      }
      
      internal function frame802() : *
      {
         if(skin == 5)
         {
            makeMagic(EffectStab,0,0);
            playSound("stab");
         }
         if(skin == 4)
         {
            makeMagic(EffectFeathers,0,0);
         }
         self.attack42();
      }
      
      internal function frame803() : *
      {
         setXY();
         move(-15,10,null);
      }
      
      internal function frame807() : *
      {
         resetLayer();
         swapLayer(true);
      }
      
      internal function frame812() : *
      {
         if(skin == 5)
         {
            makeMagic(EffectStab,0,0);
            playSound("stab");
         }
         if(skin == 4)
         {
            makeMagic(EffectFeathers,0,0);
         }
         Battle.finalHit = false;
         self.attack4();
      }
      
      internal function frame813() : *
      {
         setXY();
         move(-150,10,null);
      }
      
      internal function frame817() : *
      {
         resetLayer();
         swapLayer(true);
      }
      
      internal function frame822() : *
      {
         if(skin == 5)
         {
            makeMagic(EffectStab,0,0);
            playSound("stab");
         }
         if(skin == 4)
         {
            makeMagic(EffectFeathers,0,0);
         }
         self.attack42();
      }
      
      internal function frame823() : *
      {
         setXY();
         move(-15,12,null);
      }
      
      internal function frame828() : *
      {
         resetLayer();
         swapLayer(true);
      }
      
      internal function frame831() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.creeps[5]);
         }
         if(!isSummon)
         {
            Text.speech(Text.creeps[4]);
         }
      }
      
      internal function frame834() : *
      {
         if(skin == 5)
         {
            makeMagic(EffectStab,0,0);
            playSound("stab");
         }
         if(skin == 4)
         {
            makeMagic(EffectFeathers,0,0);
         }
         self.attack4();
      }
      
      internal function frame835() : *
      {
         resetXY();
         move(0,20,Regular.easeOut);
      }
      
      internal function frame840() : *
      {
         resetLayer();
      }
      
      internal function frame859() : *
      {
         k();
      }
      
      internal function frame871() : *
      {
         setXY();
         move(isSummon ? 15 : -15,21,null);
      }
      
      internal function frame881() : *
      {
         swapLayer(true);
      }
      
      internal function frame891() : *
      {
         if(skin == 5)
         {
            makeMagic(EffectStab,0,0);
            playSound("stab");
         }
         if(skin == 4)
         {
            makeMagic(EffectFeathers,0,0);
         }
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.CreepGreen.effect();
         }
         else
         {
            self.attack5();
         }
      }
      
      internal function frame892() : *
      {
         setXY();
         move(isSummon ? -150 : 150,8,Regular.easeOut);
      }
      
      internal function frame900() : *
      {
         resetLayer();
         swapLayer(true);
         move(isSummon ? 15 : -15,8,Regular.easeIn);
      }
      
      internal function frame907() : *
      {
         if(skin == 5)
         {
            makeMagic(EffectStab,0,0);
            playSound("stab");
         }
         if(skin == 4)
         {
            makeMagic(EffectFeathers,0,0);
         }
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.CreepGreen.effect();
         }
         else
         {
            self.attack5();
         }
      }
      
      internal function frame908() : *
      {
         setXY();
         move(isSummon ? -150 : 150,8,Regular.easeOut);
      }
      
      internal function frame916() : *
      {
         resetLayer();
         swapLayer(true);
         move(isSummon ? 15 : -15,8,Regular.easeIn);
      }
      
      internal function frame923() : *
      {
         if(skin == 5)
         {
            makeMagic(EffectStab,0,0);
            playSound("stab");
         }
         if(skin == 4)
         {
            makeMagic(EffectFeathers,0,0);
         }
         if(isSummon)
         {
            Summons.CreepGreen.effect();
         }
         else
         {
            self.attack5();
         }
      }
      
      internal function frame924() : *
      {
         resetXY();
         move(0,20,Regular.easeOut);
      }
      
      internal function frame929() : *
      {
         resetLayer();
      }
      
      internal function frame932() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.creeps[4]);
         }
      }
      
      internal function frame948() : *
      {
         k();
      }
      
      internal function frame985() : *
      {
         setXY();
         Y += 10;
         move(-15,10,null);
      }
      
      internal function frame990() : *
      {
         swapLayer(true);
      }
      
      internal function frame995() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.creeps[7]);
         }
      }
      
      internal function frame997() : *
      {
         Battle.shake("big");
         makeMagic(WhiteFlash,0,0);
      }
      
      internal function frame998() : *
      {
         if(isSummon)
         {
            Summons.CreepBlue.effect();
         }
         else
         {
            self.special1();
         }
      }
      
      internal function frame1041() : *
      {
         if(isSummon)
         {
            k();
         }
         else
         {
            resetXY();
            move(0,1,null);
         }
      }
      
      internal function frame1042() : *
      {
         dead();
      }
      
      internal function frame1051() : *
      {
         setXY();
         move(0,18,Regular.easeInOut);
      }
      
      internal function frame1060() : *
      {
         swapLayer(true);
      }
      
      internal function frame1061() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.creeps[9]);
         }
      }
      
      internal function frame1078() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.creeps[12]);
         }
         if(!isSummon)
         {
            Text.speech(Text.creeps[13]);
         }
      }
      
      internal function frame1079() : *
      {
         self.attack6();
      }
      
      internal function frame1095() : *
      {
         resetXY();
         move(0,18,Regular.easeInOut);
      }
      
      internal function frame1103() : *
      {
         resetLayer();
      }
      
      internal function frame1119() : *
      {
         k();
      }
      
      internal function frame1131() : *
      {
         body.wing1.gotoAndPlay("flap");
         body.wing2.gotoAndPlay("flap");
      }
      
      internal function frame1139() : *
      {
         setXY();
         move(isSummon ? 15 : -15,10,Regular.easeIn);
      }
      
      internal function frame1145() : *
      {
         swapLayer(true);
      }
      
      internal function frame1150() : *
      {
         resetXY();
         move(0,20,Regular.easeOut);
         makeMagic(EffectSmash,0,0);
         if(isSummon)
         {
            Summons.CreepRed.effect();
         }
         else
         {
            self.attack7();
         }
      }
      
      internal function frame1155() : *
      {
         resetLayer();
      }
      
      internal function frame1174() : *
      {
         k();
      }
   }
}


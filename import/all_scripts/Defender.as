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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol15171")]
   public dynamic class Defender extends FoeMC
   {
      public function Defender()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,37,this.frame38,76,this.frame77,77,this.frame78,81,this.frame82,83,this.frame84,119,this.frame120,152,this.frame153,163,this.frame164,177,this.frame178,191,this.frame192,193,this.frame194,194,this.frame195,195,this.frame196,216,this.frame217,217,this.frame218,226,this.frame227,227,this.frame228,229,this.frame230,231,this.frame232,232,this.frame233,234,this.frame235,241,this.frame242,262,this.frame263,277,this.frame278,278,this.frame279,328,this.frame329,329,this.frame330,339,this.frame340,351,this.frame352,368,this.frame369,379,this.frame380,391,this.frame392,392,this.frame393,413,this.frame414,415,this.frame416,417,this.frame418,419,this.frame420,421,this.frame422,423,this.frame424,425,this.frame426,427,this.frame428,429,this.frame430,431,this.frame432,433,this.frame434,435,this.frame436,437,this.frame438,439,this.frame440,441,this.frame442,443,this.frame444,445,this.frame446,447,this.frame448,448,this.frame449,458,this.frame459,506,this.frame507,507,this.frame508,508,this.frame509,509,this.frame510,510,this.frame511,511,this.frame512,512,this.frame513,513,this.frame514,514,this.frame515,515,this.frame516,516,this.frame517,517,this.frame518,527,this.frame528,528,this.frame529,549,this.frame550,563,this.frame564,565,this.frame566,585,this.frame586,586,this.frame587,618,this.frame619,634,this.frame635,641,this.frame642,653,this.frame654,656,this.frame657,670,this.frame671,671,this.frame672,681,this.frame682,696,this.frame697,713,this.frame714,721,this.frame722,724,this.frame725,736,this.frame737,737,this.frame738,747,this.frame748,758,this.frame759,762,this.frame763,779,this.frame780,790,this.frame791,802,this.frame803,836,this.frame837,848,this.frame849,855,this.frame856,856,this.frame857,859,this.frame860,863,this.frame864,872,this.frame873,873,this.frame874,875,this.frame876,901,this.frame902,910,this.frame911,918,this.frame919,926,this.frame927,938,this.frame939,960,this.frame961);
      }
      
      internal function frame1() : *
      {
         init();
      }
      
      internal function frame3() : *
      {
         randomDelay(20);
      }
      
      internal function frame38() : *
      {
         if(isSummon)
         {
            this.y += 50;
            Battle.hidePlayers();
         }
      }
      
      internal function frame77() : *
      {
         if(skin == 4 && !isSummon)
         {
            Text.speech(Text.arena[12]);
         }
      }
      
      internal function frame78() : *
      {
         if(!isSummon && !Options.altFoes)
         {
            Text.speech(Text.defenders[1]);
         }
         if(!isSummon)
         {
            Text.speech(Text.defenders[9]);
         }
         if(!isSummon)
         {
            Text.speech(Text.defenders[11]);
         }
      }
      
      internal function frame82() : *
      {
         k();
      }
      
      internal function frame84() : *
      {
         stand();
      }
      
      internal function frame120() : *
      {
         ks();
      }
      
      internal function frame153() : *
      {
         if(isSummon)
         {
            Battle.showPlayers();
         }
      }
      
      internal function frame164() : *
      {
         flee();
      }
      
      internal function frame178() : *
      {
         playSound("279");
      }
      
      internal function frame192() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.defenders[6]);
         }
      }
      
      internal function frame194() : *
      {
         k();
      }
      
      internal function frame195() : *
      {
         playSound("280");
      }
      
      internal function frame196() : *
      {
         playSound("281");
      }
      
      internal function frame217() : *
      {
         k();
      }
      
      internal function frame218() : *
      {
         Battle.shake("big");
         playSound("282");
      }
      
      internal function frame227() : *
      {
         playSound("283");
      }
      
      internal function frame228() : *
      {
         playSound("284");
      }
      
      internal function frame230() : *
      {
         playSound("285");
      }
      
      internal function frame232() : *
      {
         playSound("286");
      }
      
      internal function frame233() : *
      {
         playSound("287");
      }
      
      internal function frame235() : *
      {
         playSound("288");
      }
      
      internal function frame242() : *
      {
         Text.speech(Text.defenders[4]);
         Text.speech(Text.defenders[7]);
         Text.speech(Text.defenders[10]);
      }
      
      internal function frame263() : *
      {
         randomDelay(10);
      }
      
      internal function frame278() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame279() : *
      {
         dropItems();
      }
      
      internal function frame329() : *
      {
         dead();
      }
      
      internal function frame330() : *
      {
         setXY();
         move(40,18,Regular.easeInOut);
      }
      
      internal function frame340() : *
      {
         swapLayer(true);
      }
      
      internal function frame352() : *
      {
         self.attack1();
      }
      
      internal function frame369() : *
      {
         resetXY();
         move(0,22,Regular.easeInOut);
      }
      
      internal function frame380() : *
      {
         resetLayer();
      }
      
      internal function frame392() : *
      {
         k();
      }
      
      internal function frame393() : *
      {
         setXY();
      }
      
      internal function frame414() : *
      {
         Battle.finalHit = false;
         self.attack3();
         makeMagic(EffectSmash2,0,0);
      }
      
      internal function frame416() : *
      {
         Battle.finalHit = false;
         self.attack3();
         makeMagic(EffectSmash2,0,0);
      }
      
      internal function frame418() : *
      {
         Battle.finalHit = false;
         self.attack3();
         makeMagic(EffectSmash2,0,0);
      }
      
      internal function frame420() : *
      {
         Battle.finalHit = false;
         self.attack3();
         makeMagic(EffectSmash2,0,0);
      }
      
      internal function frame422() : *
      {
         Battle.finalHit = false;
         self.attack3();
         makeMagic(EffectSmash2,0,0);
      }
      
      internal function frame424() : *
      {
         Battle.finalHit = false;
         self.attack3();
         makeMagic(EffectSmash2,0,0);
      }
      
      internal function frame426() : *
      {
         Battle.finalHit = false;
         self.attack3();
         makeMagic(EffectSmash2,0,0);
      }
      
      internal function frame428() : *
      {
         Battle.finalHit = false;
         self.attack3();
         makeMagic(EffectSmash2,0,0);
      }
      
      internal function frame430() : *
      {
         Battle.finalHit = false;
         self.attack3();
         makeMagic(EffectSmash2,0,0);
      }
      
      internal function frame432() : *
      {
         Battle.finalHit = false;
         self.attack3();
         makeMagic(EffectSmash2,0,0);
      }
      
      internal function frame434() : *
      {
         Battle.finalHit = false;
         self.attack3();
         makeMagic(EffectSmash2,0,0);
      }
      
      internal function frame436() : *
      {
         Battle.finalHit = false;
         self.attack3();
         makeMagic(EffectSmash2,0,0);
      }
      
      internal function frame438() : *
      {
         Battle.finalHit = false;
         self.attack3();
         makeMagic(EffectSmash2,0,0);
      }
      
      internal function frame440() : *
      {
         Battle.finalHit = false;
         self.attack3();
         makeMagic(EffectSmash2,0,0);
      }
      
      internal function frame442() : *
      {
         Battle.finalHit = false;
         self.attack3();
         makeMagic(EffectSmash2,0,0);
      }
      
      internal function frame444() : *
      {
         Battle.finalHit = false;
         self.attack3();
         makeMagic(EffectSmash2,0,0);
      }
      
      internal function frame446() : *
      {
         Battle.finalHit = false;
         self.attack3();
         makeMagic(EffectSmash2,0,0);
      }
      
      internal function frame448() : *
      {
         self.attack3();
         makeMagic(EffectSmash2,0,0);
      }
      
      internal function frame449() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.defenders[5]);
         }
      }
      
      internal function frame459() : *
      {
         k();
      }
      
      internal function frame507() : *
      {
         setXY();
      }
      
      internal function frame508() : *
      {
         Battle.finalHit = false;
         self.special1();
         makeMagic(EffectThunder2,0,0);
      }
      
      internal function frame509() : *
      {
         setXY();
      }
      
      internal function frame510() : *
      {
         Battle.finalHit = false;
         self.special1();
         makeMagic(EffectThunder2,0,0);
      }
      
      internal function frame511() : *
      {
         setXY();
      }
      
      internal function frame512() : *
      {
         Battle.finalHit = false;
         self.special1();
         makeMagic(EffectThunder2,0,0);
      }
      
      internal function frame513() : *
      {
         setXY();
      }
      
      internal function frame514() : *
      {
         Battle.finalHit = false;
         self.special1();
         makeMagic(EffectThunder2,0,0);
      }
      
      internal function frame515() : *
      {
         setXY();
      }
      
      internal function frame516() : *
      {
         Battle.finalHit = false;
         self.special1();
         makeMagic(EffectThunder2,0,0);
      }
      
      internal function frame517() : *
      {
         setXY();
      }
      
      internal function frame518() : *
      {
         self.special1();
         makeMagic(EffectThunder2,0,0);
      }
      
      internal function frame528() : *
      {
         k();
      }
      
      internal function frame529() : *
      {
         setXY();
      }
      
      internal function frame550() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.defenders[3]);
         }
      }
      
      internal function frame564() : *
      {
         if(isSummon)
         {
            Summons.Defender1.effect();
         }
         else
         {
            self.magic1();
         }
      }
      
      internal function frame566() : *
      {
         k();
      }
      
      internal function frame586() : *
      {
         k();
      }
      
      internal function frame587() : *
      {
         playSound("heal2");
      }
      
      internal function frame619() : *
      {
         k();
      }
      
      internal function frame635() : *
      {
         loops = 4;
      }
      
      internal function frame642() : *
      {
         self.special2();
      }
      
      internal function frame654() : *
      {
         if(loops)
         {
            gotoAndPlay("loop1");
            --loops;
         }
      }
      
      internal function frame657() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.defenders[8]);
         }
      }
      
      internal function frame671() : *
      {
         k();
      }
      
      internal function frame672() : *
      {
         setXY();
         move(isSummon ? -40 : 40,18,Regular.easeInOut);
      }
      
      internal function frame682() : *
      {
         swapLayer(true);
      }
      
      internal function frame697() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.defenders[2]);
         }
         if(isSummon)
         {
            Summons.Defender2.effect();
         }
         else
         {
            self.attack2();
         }
      }
      
      internal function frame714() : *
      {
         resetXY();
         move(0,22,Regular.easeInOut);
      }
      
      internal function frame722() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.defenders[8]);
         }
      }
      
      internal function frame725() : *
      {
         resetLayer();
      }
      
      internal function frame737() : *
      {
         k();
      }
      
      internal function frame738() : *
      {
         setXY();
         move(80,18,Regular.easeInOut);
      }
      
      internal function frame748() : *
      {
         swapLayer(true);
      }
      
      internal function frame759() : *
      {
         Battle.shake();
      }
      
      internal function frame763() : *
      {
         self.attack4();
      }
      
      internal function frame780() : *
      {
         resetXY();
         move(0,22,Regular.easeInOut);
      }
      
      internal function frame791() : *
      {
         resetLayer();
      }
      
      internal function frame803() : *
      {
         k();
      }
      
      internal function frame837() : *
      {
         summonOnTop();
      }
      
      internal function frame849() : *
      {
         Battle.shake();
      }
      
      internal function frame856() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.Defender3.effect();
         }
         else
         {
            self.special3();
            makeMagic(EffectSmash2Red,0,0);
         }
      }
      
      internal function frame857() : *
      {
         Battle.shake();
      }
      
      internal function frame860() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.Defender3.effect();
         }
         else
         {
            self.special3();
            makeMagic(EffectSmash2Red,0,0);
         }
      }
      
      internal function frame864() : *
      {
         if(isSummon)
         {
            Summons.Defender3.effect();
         }
         else
         {
            self.special3();
            makeMagic(EffectSmash2Red,0,0);
         }
      }
      
      internal function frame873() : *
      {
         if(isSummon)
         {
            resetLayer();
         }
      }
      
      internal function frame874() : *
      {
         k();
      }
      
      internal function frame876() : *
      {
         setXY();
         X = 420;
         Y = 400;
         move(0,20,Regular.easeInOut);
      }
      
      internal function frame902() : *
      {
         setXY();
         X = 490;
         Y = 220;
         move(0,35,Regular.easeInOut);
      }
      
      internal function frame911() : *
      {
         self.special4(3);
      }
      
      internal function frame919() : *
      {
         self.special4(2);
      }
      
      internal function frame927() : *
      {
         self.special4(1);
      }
      
      internal function frame939() : *
      {
         resetXY();
         move(0,22,Regular.easeInOut);
      }
      
      internal function frame961() : *
      {
         k();
      }
   }
}


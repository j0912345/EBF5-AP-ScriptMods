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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol15103")]
   public dynamic class Dog extends FoeMC
   {
      public function Dog()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,55,this.frame56,56,this.frame57,57,this.frame58,71,this.frame72,73,this.frame74,113,this.frame114,115,this.frame116,135,this.frame136,136,this.frame137,163,this.frame164,164,this.frame165,179,this.frame180,180,this.frame181,186,this.frame187,209,this.frame210,229,this.frame230,248,this.frame249,249,this.frame250,277,this.frame278,285,this.frame286,290,this.frame291,303,this.frame304,316,this.frame317,322,this.frame323,332,this.frame333,340,this.frame341,347,this.frame348,356,this.frame357,357,this.frame358,380,this.frame381,381,this.frame382,382,this.frame383,415,this.frame416,430,this.frame431,435,this.frame436,460,this.frame461,473,this.frame474,501,this.frame502,516,this.frame517,544,this.frame545,568,this.frame569,569,this.frame570,601,this.frame602,606,this.frame607,614,this.frame615,631,this.frame632,646,this.frame647,654,this.frame655,661,this.frame662,670,this.frame671,671,this.frame672,707,this.frame708,708,this.frame709,709,this.frame710,717,this.frame718,722,this.frame723,738,this.frame739,750,this.frame751,756,this.frame757,766,this.frame767,796,this.frame797,802,this.frame803,809,this.frame810,837,this.frame838,845,this.frame846,846,this.frame847,854,this.frame855,859,this.frame860,872,this.frame873,885,this.frame886,891,this.frame892,901,this.frame902,936,this.frame937,947,this.frame948,970,this.frame971,990,this.frame991);
      }
      
      internal function frame1() : *
      {
         init();
      }
      
      internal function frame3() : *
      {
         randomDelay(40);
      }
      
      internal function frame56() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.dogs[1]);
         }
         if(!isSummon)
         {
            if(skin == 3)
            {
               Text.speech(Text.dogs[6]);
            }
         }
         if(skin != 3)
         {
            Text.speech(Text.dogs[9]);
         }
      }
      
      internal function frame57() : *
      {
         k();
      }
      
      internal function frame58() : *
      {
         freezeSound();
      }
      
      internal function frame72() : *
      {
         frozen();
      }
      
      internal function frame74() : *
      {
         stand();
      }
      
      internal function frame114() : *
      {
         ks();
      }
      
      internal function frame116() : *
      {
         playSound("289");
      }
      
      internal function frame136() : *
      {
         k();
      }
      
      internal function frame137() : *
      {
         playSound("290");
      }
      
      internal function frame164() : *
      {
         k();
      }
      
      internal function frame165() : *
      {
         playSound("291");
      }
      
      internal function frame180() : *
      {
         playSound("292");
      }
      
      internal function frame181() : *
      {
         Text.speech(Text.dogs[2]);
         Text.speech(Text.dogs[4]);
         if(Flags.battleEvent == Flags.DOG_BATTLE)
         {
            Flags.DOG_GET.quantity = 2;
         }
      }
      
      internal function frame187() : *
      {
         gotoAndPlay(currentFrame + int(Math.random() * 20));
      }
      
      internal function frame210() : *
      {
         dropItems();
      }
      
      internal function frame230() : *
      {
         dead();
      }
      
      internal function frame249() : *
      {
         k();
      }
      
      internal function frame250() : *
      {
         playSound("heal");
      }
      
      internal function frame278() : *
      {
         k();
      }
      
      internal function frame286() : *
      {
         setXY();
         move(25,12,null);
      }
      
      internal function frame291() : *
      {
         swapLayer();
      }
      
      internal function frame304() : *
      {
         self.attack1();
      }
      
      internal function frame317() : *
      {
         resetXY();
         move(0,12,null);
      }
      
      internal function frame323() : *
      {
         resetLayer();
      }
      
      internal function frame333() : *
      {
         k();
      }
      
      internal function frame341() : *
      {
         setXY();
         move(isSummon ? 35 : -35,15,null);
      }
      
      internal function frame348() : *
      {
         swapLayer(true);
      }
      
      internal function frame357() : *
      {
         Battle.shake("small");
      }
      
      internal function frame358() : *
      {
         if(isSummon)
         {
            Summons.DogTanuki.effect();
         }
         else
         {
            self.special1();
         }
      }
      
      internal function frame381() : *
      {
         if(isSummon)
         {
            k();
         }
      }
      
      internal function frame382() : *
      {
         resetLayer();
         resetPosition();
         self.specialEffect();
      }
      
      internal function frame383() : *
      {
         gotoAndPlay("intro2");
      }
      
      internal function frame416() : *
      {
         self.magic1();
      }
      
      internal function frame431() : *
      {
         k();
      }
      
      internal function frame436() : *
      {
         Global.circle = 1;
      }
      
      internal function frame461() : *
      {
         self.magic2();
      }
      
      internal function frame474() : *
      {
         k();
      }
      
      internal function frame502() : *
      {
         self.special3();
      }
      
      internal function frame517() : *
      {
         k();
      }
      
      internal function frame545() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.dogs[7]);
         }
      }
      
      internal function frame569() : *
      {
         self.special4();
      }
      
      internal function frame570() : *
      {
         k();
      }
      
      internal function frame602() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.dogs[5]);
         }
      }
      
      internal function frame607() : *
      {
         if(isSummon)
         {
            Summons.DogFriend.effect();
         }
         else
         {
            self.special5();
         }
      }
      
      internal function frame615() : *
      {
         k();
      }
      
      internal function frame632() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.dogs[3]);
         }
      }
      
      internal function frame647() : *
      {
         flee();
      }
      
      internal function frame655() : *
      {
         setXY();
         move(isSummon ? 35 : -35,15,null);
      }
      
      internal function frame662() : *
      {
         swapLayer(true);
      }
      
      internal function frame671() : *
      {
         Battle.shake("small");
      }
      
      internal function frame672() : *
      {
         if(isSummon)
         {
            Summons.DogWolf.effect();
         }
         else
         {
            self.special2();
         }
      }
      
      internal function frame708() : *
      {
         if(isSummon)
         {
            k();
         }
      }
      
      internal function frame709() : *
      {
         resetLayer();
         resetPosition();
         self.specialEffect();
      }
      
      internal function frame710() : *
      {
         gotoAndPlay("intro2");
      }
      
      internal function frame718() : *
      {
         setXY();
         move(25,12,null);
      }
      
      internal function frame723() : *
      {
         swapLayer();
      }
      
      internal function frame739() : *
      {
         self.attack2();
      }
      
      internal function frame751() : *
      {
         resetXY();
         move(0,12,null);
      }
      
      internal function frame757() : *
      {
         resetLayer();
      }
      
      internal function frame767() : *
      {
         k();
      }
      
      internal function frame797() : *
      {
         self.magic3();
      }
      
      internal function frame803() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.dogs[8]);
         }
      }
      
      internal function frame810() : *
      {
         k();
      }
      
      internal function frame838() : *
      {
         if(isSummon)
         {
            makeMagic(EffectThunder,0,0,true);
            Summons.DogZap.effect();
         }
         else
         {
            self.special6();
         }
      }
      
      internal function frame846() : *
      {
         if(isSummon)
         {
            k();
         }
         else
         {
            self.specialEffect();
         }
      }
      
      internal function frame847() : *
      {
         gotoAndPlay("intro2");
      }
      
      internal function frame855() : *
      {
         setXY();
         move(25,12,null);
      }
      
      internal function frame860() : *
      {
         swapLayer();
      }
      
      internal function frame873() : *
      {
         self.attack3();
      }
      
      internal function frame886() : *
      {
         resetXY();
         move(0,12,null);
      }
      
      internal function frame892() : *
      {
         resetLayer();
      }
      
      internal function frame902() : *
      {
         k();
      }
      
      internal function frame937() : *
      {
         if(isSummon)
         {
            Summons.DogMage.effect();
         }
         else
         {
            self.magic4();
         }
      }
      
      internal function frame948() : *
      {
         k();
      }
      
      internal function frame971() : *
      {
         self.special7();
      }
      
      internal function frame991() : *
      {
         k();
      }
   }
}


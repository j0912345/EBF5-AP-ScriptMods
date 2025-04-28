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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol15522")]
   public dynamic class ClassicPraetorianMC extends FoeMC
   {
      public function ClassicPraetorianMC()
      {
         super();
         addFrameScript(0,this.frame1,60,this.frame61,81,this.frame82,108,this.frame109,109,this.frame110,111,this.frame112,153,this.frame154,173,this.frame174,198,this.frame199,199,this.frame200,200,this.frame201,222,this.frame223,291,this.frame292,294,this.frame295,298,this.frame299,322,this.frame323,327,this.frame328,352,this.frame353,392,this.frame393,397,this.frame398,412,this.frame413,414,this.frame415,416,this.frame417,418,this.frame419,420,this.frame421,422,this.frame423,424,this.frame425,426,this.frame427,428,this.frame429,430,this.frame431,432,this.frame433,434,this.frame435,436,this.frame437,438,this.frame439,440,this.frame441,442,this.frame443,444,this.frame445,446,this.frame447,472,this.frame473,513,this.frame514,517,this.frame518,544,this.frame545,555,this.frame556,564,this.frame565,571,this.frame572,578,this.frame579,590,this.frame591,597,this.frame598,603,this.frame604,612,this.frame613,619,this.frame620,626,this.frame627,635,this.frame636,644,this.frame645,655,this.frame656,660,this.frame661,668,this.frame669,686,this.frame687,690,this.frame691,691,this.frame692,694,this.frame695,710,this.frame711,719,this.frame720,749,this.frame750);
      }
      
      internal function frame1() : *
      {
         init();
      }
      
      internal function frame61() : *
      {
         if(isSummon)
         {
            Battle.hidePlayers();
            this.y += 50;
         }
      }
      
      internal function frame82() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf4[17]);
         }
         if(isSummon)
         {
            Text.speech(Text.ebf4[26]);
         }
      }
      
      internal function frame109() : *
      {
         if(isSummon && !Flags.isVideoGameBattle())
         {
            Text.speech(Text.ebf1[19]);
         }
      }
      
      internal function frame110() : *
      {
         k();
      }
      
      internal function frame112() : *
      {
         stand();
      }
      
      internal function frame154() : *
      {
         ks();
      }
      
      internal function frame174() : *
      {
         k();
      }
      
      internal function frame199() : *
      {
         k();
      }
      
      internal function frame200() : *
      {
         Battle.shake("small");
      }
      
      internal function frame201() : *
      {
         dropItems();
      }
      
      internal function frame223() : *
      {
         Battle.shake("small");
      }
      
      internal function frame292() : *
      {
         Battle.extremeMedal();
      }
      
      internal function frame295() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf4[25]);
         }
      }
      
      internal function frame299() : *
      {
         dead();
      }
      
      internal function frame323() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf4[24]);
         }
      }
      
      internal function frame328() : *
      {
         k();
      }
      
      internal function frame353() : *
      {
         k();
      }
      
      internal function frame393() : *
      {
         if(isSummon)
         {
            Summons.ClassicPraetorian.effect();
         }
         else
         {
            self.special1();
         }
      }
      
      internal function frame398() : *
      {
         k();
      }
      
      internal function frame413() : *
      {
         self.attack4();
      }
      
      internal function frame415() : *
      {
         self.attack4();
      }
      
      internal function frame417() : *
      {
         self.attack4();
      }
      
      internal function frame419() : *
      {
         self.attack4();
      }
      
      internal function frame421() : *
      {
         self.attack4();
      }
      
      internal function frame423() : *
      {
         self.attack4();
      }
      
      internal function frame425() : *
      {
         self.attack4();
      }
      
      internal function frame427() : *
      {
         self.attack4();
      }
      
      internal function frame429() : *
      {
         self.attack4();
      }
      
      internal function frame431() : *
      {
         self.attack4();
      }
      
      internal function frame433() : *
      {
         self.attack4();
      }
      
      internal function frame435() : *
      {
         self.attack4();
      }
      
      internal function frame437() : *
      {
         self.attack4();
      }
      
      internal function frame439() : *
      {
         self.attack4();
      }
      
      internal function frame441() : *
      {
         self.attack4();
      }
      
      internal function frame443() : *
      {
         self.attack4();
      }
      
      internal function frame445() : *
      {
         self.attack4();
      }
      
      internal function frame447() : *
      {
         self.attack4();
      }
      
      internal function frame473() : *
      {
         k();
      }
      
      internal function frame514() : *
      {
         self.special2();
      }
      
      internal function frame518() : *
      {
         k();
      }
      
      internal function frame545() : *
      {
         self.magic1();
      }
      
      internal function frame556() : *
      {
         k();
      }
      
      internal function frame565() : *
      {
         setXY();
         move(60,12,null);
      }
      
      internal function frame572() : *
      {
         swapLayer();
      }
      
      internal function frame579() : *
      {
         self.attack1();
      }
      
      internal function frame591() : *
      {
         resetXY();
         move(0,12,null);
      }
      
      internal function frame598() : *
      {
         resetLayer();
      }
      
      internal function frame604() : *
      {
         k();
      }
      
      internal function frame613() : *
      {
         setXY();
         summonOnTop();
         if(isSummon)
         {
            X = 680;
            Y = 400;
            move(0,12,null);
         }
         else
         {
            move(60,12,null);
         }
      }
      
      internal function frame620() : *
      {
         if(!isSummon)
         {
            swapLayer();
         }
      }
      
      internal function frame627() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.ClassicPraetorian.effect2();
         }
         else
         {
            self.attack2();
         }
      }
      
      internal function frame636() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.ClassicPraetorian.effect2();
         }
         else
         {
            self.attack2();
         }
      }
      
      internal function frame645() : *
      {
         if(isSummon)
         {
            Summons.ClassicPraetorian.effect2();
         }
         else
         {
            self.attack2();
         }
      }
      
      internal function frame656() : *
      {
         resetXY();
         if(isSummon)
         {
            X = this.x - 100;
            Y = 0;
         }
         move(0,12,null);
      }
      
      internal function frame661() : *
      {
         resetLayer();
      }
      
      internal function frame669() : *
      {
         k();
      }
      
      internal function frame687() : *
      {
         Battle.shake("small");
      }
      
      internal function frame691() : *
      {
         Battle.shake("small");
      }
      
      internal function frame692() : *
      {
         if(isSummon)
         {
            Summons.ClassicPraetorian.effect3();
         }
         else
         {
            self.attack3();
         }
      }
      
      internal function frame695() : *
      {
         Battle.shake("small");
      }
      
      internal function frame711() : *
      {
         if(isSummon)
         {
            Battle.showPlayers();
         }
      }
      
      internal function frame720() : *
      {
         if(isSummon)
         {
            flee();
         }
         else
         {
            gotoAndPlay("intro2");
         }
      }
      
      internal function frame750() : *
      {
         flee();
      }
   }
}


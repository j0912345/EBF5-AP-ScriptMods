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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol17621")]
   public dynamic class ClassicJackMC extends FoeMC
   {
      public function ClassicJackMC()
      {
         super();
         addFrameScript(0,this.frame1,50,this.frame51,62,this.frame63,67,this.frame68,68,this.frame69,69,this.frame70,71,this.frame72,103,this.frame104,113,this.frame114,121,this.frame122,128,this.frame129,143,this.frame144,144,this.frame145,145,this.frame146,157,this.frame158,192,this.frame193,202,this.frame203,208,this.frame209,221,this.frame222,228,this.frame229,237,this.frame238,239,this.frame240,250,this.frame251,263,this.frame264,270,this.frame271,277,this.frame278,284,this.frame285,290,this.frame291,296,this.frame297,300,this.frame301,311,this.frame312,324,this.frame325,331,this.frame332,338,this.frame339,348,this.frame349,354,this.frame355,365,this.frame366,378,this.frame379,405,this.frame406,407,this.frame408,409,this.frame410,413,this.frame414,417,this.frame418,421,this.frame422,425,this.frame426,461,this.frame462,516,this.frame517,521,this.frame522,526,this.frame527,528,this.frame529,547,this.frame548,563,this.frame564,569,this.frame570,587,this.frame588,612,this.frame613,636,this.frame637,639,this.frame640);
      }
      
      internal function frame1() : *
      {
         init();
      }
      
      internal function frame51() : *
      {
         if(isSummon)
         {
            Battle.hidePlayers();
            this.y += 30;
         }
      }
      
      internal function frame63() : *
      {
         Battle.shake("small");
      }
      
      internal function frame68() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf3[5]);
         }
      }
      
      internal function frame69() : *
      {
         if(isSummon && !Flags.isVideoGameBattle())
         {
            Text.speech(Text.ebf1[19]);
         }
         if(isSummon && !Flags.HALLOWEEN.quantity)
         {
            Text.speech(Text.ebf3[25]);
         }
      }
      
      internal function frame70() : *
      {
         k();
      }
      
      internal function frame72() : *
      {
         stand();
      }
      
      internal function frame104() : *
      {
         ks();
      }
      
      internal function frame114() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf3[6]);
         }
      }
      
      internal function frame122() : *
      {
         k();
      }
      
      internal function frame129() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf3[6]);
         }
      }
      
      internal function frame144() : *
      {
         k();
      }
      
      internal function frame145() : *
      {
         Battle.shake("small");
      }
      
      internal function frame146() : *
      {
         dropItems();
      }
      
      internal function frame158() : *
      {
         Battle.shake("small");
      }
      
      internal function frame193() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf3[10]);
         }
      }
      
      internal function frame203() : *
      {
         Battle.extremeMedal();
      }
      
      internal function frame209() : *
      {
         dead();
      }
      
      internal function frame222() : *
      {
         setXY();
         move(10,12,null);
      }
      
      internal function frame229() : *
      {
         swapLayer();
      }
      
      internal function frame238() : *
      {
         self.attack1();
      }
      
      internal function frame240() : *
      {
         resetXY();
         move(0,24,null);
      }
      
      internal function frame251() : *
      {
         resetLayer();
      }
      
      internal function frame264() : *
      {
         k();
      }
      
      internal function frame271() : *
      {
         setXY();
         move(10,12,null);
      }
      
      internal function frame278() : *
      {
         swapLayer();
      }
      
      internal function frame285() : *
      {
         self.attack2();
      }
      
      internal function frame291() : *
      {
         self.attack2();
      }
      
      internal function frame297() : *
      {
         self.attack2();
      }
      
      internal function frame301() : *
      {
         resetXY();
         move(0,24,null);
      }
      
      internal function frame312() : *
      {
         resetLayer();
      }
      
      internal function frame325() : *
      {
         k();
      }
      
      internal function frame332() : *
      {
         setXY();
         move(10,12,null);
      }
      
      internal function frame339() : *
      {
         swapLayer();
      }
      
      internal function frame349() : *
      {
         self.attack3();
         Battle.shake("big");
      }
      
      internal function frame355() : *
      {
         resetXY();
         move(0,24,null);
      }
      
      internal function frame366() : *
      {
         resetLayer();
      }
      
      internal function frame379() : *
      {
         k();
      }
      
      internal function frame406() : *
      {
         self.special1();
      }
      
      internal function frame408() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf3[8]);
         }
         if(!isSummon)
         {
            Text.speech(Text.ebf3[7]);
         }
      }
      
      internal function frame410() : *
      {
         self.special1();
      }
      
      internal function frame414() : *
      {
         self.special1();
      }
      
      internal function frame418() : *
      {
         self.special1();
      }
      
      internal function frame422() : *
      {
         self.special1();
      }
      
      internal function frame426() : *
      {
         self.special1();
      }
      
      internal function frame462() : *
      {
         k();
      }
      
      internal function frame517() : *
      {
         self.special2();
      }
      
      internal function frame522() : *
      {
         self.special2();
      }
      
      internal function frame527() : *
      {
         self.special2();
      }
      
      internal function frame529() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf3[9]);
         }
         if(!isSummon)
         {
            Text.speech(Text.ebf3[7]);
         }
      }
      
      internal function frame548() : *
      {
         k();
      }
      
      internal function frame564() : *
      {
         if(isSummon)
         {
            Summons.ClassicJack.effect();
         }
         else
         {
            self.special3();
         }
      }
      
      internal function frame570() : *
      {
         k();
      }
      
      internal function frame588() : *
      {
         k();
      }
      
      internal function frame613() : *
      {
         k();
      }
      
      internal function frame637() : *
      {
         Battle.showPlayers();
      }
      
      internal function frame640() : *
      {
         flee();
      }
   }
}


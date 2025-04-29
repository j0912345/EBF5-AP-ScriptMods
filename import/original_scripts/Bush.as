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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol15720")]
   public dynamic class Bush extends FoeMC
   {
      public function Bush()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,79,this.frame80,82,this.frame83,115,this.frame116,116,this.frame117,129,this.frame130,131,this.frame132,169,this.frame170,171,this.frame172,188,this.frame189,189,this.frame190,209,this.frame210,210,this.frame211,230,this.frame231,255,this.frame256,260,this.frame261,277,this.frame278,298,this.frame299,304,this.frame305,310,this.frame311,317,this.frame318,324,this.frame325,334,this.frame335,342,this.frame343,356,this.frame357,368,this.frame369,369,this.frame370,386,this.frame387,393,this.frame394,400,this.frame401,410,this.frame411,418,this.frame419,430,this.frame431,440,this.frame441,463,this.frame464,466,this.frame467,473,this.frame474,474,this.frame475,485,this.frame486,497,this.frame498,504,this.frame505,511,this.frame512,524,this.frame525,527,this.frame528,531,this.frame532,535,this.frame536,539,this.frame540,543,this.frame544,548,this.frame549,562,this.frame563,574,this.frame575,610,this.frame611,641,this.frame642,648,this.frame649,655,this.frame656,665,this.frame666,682,this.frame683,696,this.frame697,708,this.frame709);
      }
      
      internal function frame1() : *
      {
         init();
      }
      
      internal function frame3() : *
      {
         randomDelay(45);
      }
      
      internal function frame80() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.bushes[3]);
         }
      }
      
      internal function frame83() : *
      {
         k();
      }
      
      internal function frame116() : *
      {
         flee();
      }
      
      internal function frame117() : *
      {
         freezeSound();
      }
      
      internal function frame130() : *
      {
         frozen();
      }
      
      internal function frame132() : *
      {
         stand();
      }
      
      internal function frame170() : *
      {
         ks();
      }
      
      internal function frame172() : *
      {
         head.eyes.visible = false;
         playSound("250");
      }
      
      internal function frame189() : *
      {
         k();
      }
      
      internal function frame190() : *
      {
         playSound("251");
      }
      
      internal function frame210() : *
      {
         k();
      }
      
      internal function frame211() : *
      {
         playSound("252");
      }
      
      internal function frame231() : *
      {
         gotoAndPlay(currentFrame + int(Math.random() * 20));
      }
      
      internal function frame256() : *
      {
         dropItems();
      }
      
      internal function frame261() : *
      {
         Text.speech(Text.bushes[4]);
      }
      
      internal function frame278() : *
      {
         dead();
      }
      
      internal function frame299() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.special1();
         }
      }
      
      internal function frame305() : *
      {
         Text.speech(Text.bushes[1]);
      }
      
      internal function frame311() : *
      {
         k();
      }
      
      internal function frame318() : *
      {
         setXY();
         move(10,16,Regular.easeInOut);
      }
      
      internal function frame325() : *
      {
         swapLayer();
      }
      
      internal function frame335() : *
      {
         self.attack1();
      }
      
      internal function frame343() : *
      {
         resetXY();
         move(0,24,Regular.easeInOut);
      }
      
      internal function frame357() : *
      {
         resetLayer();
      }
      
      internal function frame369() : *
      {
         k();
      }
      
      internal function frame370() : *
      {
         head.eyes.visible = false;
      }
      
      internal function frame387() : *
      {
         k();
      }
      
      internal function frame394() : *
      {
         setXY();
         move(-15,16,Regular.easeInOut);
      }
      
      internal function frame401() : *
      {
         swapLayer();
      }
      
      internal function frame411() : *
      {
         self.attack2();
      }
      
      internal function frame419() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.bushes[2]);
         }
         resetXY();
         move(0,24,Regular.easeInOut);
      }
      
      internal function frame431() : *
      {
         resetLayer();
      }
      
      internal function frame441() : *
      {
         k();
      }
      
      internal function frame464() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.special2();
         }
      }
      
      internal function frame467() : *
      {
         Text.speech(Text.bushes[1]);
      }
      
      internal function frame474() : *
      {
         k();
      }
      
      internal function frame475() : *
      {
         playSound("heal");
      }
      
      internal function frame486() : *
      {
         head.eyes.visible = false;
      }
      
      internal function frame498() : *
      {
         k();
      }
      
      internal function frame505() : *
      {
         setXY();
         move(10,16,Regular.easeInOut);
      }
      
      internal function frame512() : *
      {
         swapLayer();
      }
      
      internal function frame525() : *
      {
         Battle.finalHit = false;
         self.attack3();
      }
      
      internal function frame528() : *
      {
         Battle.finalHit = false;
         self.attack3();
      }
      
      internal function frame532() : *
      {
         Battle.finalHit = false;
         self.attack3();
      }
      
      internal function frame536() : *
      {
         Battle.finalHit = false;
         self.attack3();
      }
      
      internal function frame540() : *
      {
         Battle.finalHit = false;
         self.attack3();
      }
      
      internal function frame544() : *
      {
         self.attack3();
      }
      
      internal function frame549() : *
      {
         resetXY();
         move(0,24,Regular.easeInOut);
      }
      
      internal function frame563() : *
      {
         resetLayer();
      }
      
      internal function frame575() : *
      {
         k();
      }
      
      internal function frame611() : *
      {
         self.magic1();
      }
      
      internal function frame642() : *
      {
         k();
      }
      
      internal function frame649() : *
      {
         setXY();
         move(40,16,Regular.easeInOut);
      }
      
      internal function frame656() : *
      {
         swapLayer();
      }
      
      internal function frame666() : *
      {
         self.attack4();
      }
      
      internal function frame683() : *
      {
         resetXY();
         move(0,24,Regular.easeInOut);
      }
      
      internal function frame697() : *
      {
         resetLayer();
      }
      
      internal function frame709() : *
      {
         k();
      }
   }
}


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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol15812")]
   public dynamic class Tentacle extends FoeMC
   {
      public function Tentacle()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,151,this.frame152,153,this.frame154,217,this.frame218,219,this.frame220,234,this.frame235,235,this.frame236,249,this.frame250,255,this.frame256,256,this.frame257,270,this.frame271,279,this.frame280,280,this.frame281,306,this.frame307,308,this.frame309,334,this.frame335,375,this.frame376,388,this.frame389,391,this.frame392,396,this.frame397,405,this.frame406,423,this.frame424,438,this.frame439,440,this.frame441,442,this.frame443,444,this.frame445,446,this.frame447,451,this.frame452,473,this.frame474,488,this.frame489,492,this.frame493,493,this.frame494,521,this.frame522,538,this.frame539,558,this.frame559,559,this.frame560,592,this.frame593,628,this.frame629,646,this.frame647,647,this.frame648,673,this.frame674,677,this.frame678,680,this.frame681,681,this.frame682,703,this.frame704,737,this.frame738);
      }
      
      internal function frame1() : *
      {
         init();
      }
      
      internal function frame3() : *
      {
         randomDelay(30);
      }
      
      internal function frame152() : *
      {
         k();
      }
      
      internal function frame154() : *
      {
         stand();
      }
      
      internal function frame218() : *
      {
         ks();
      }
      
      internal function frame220() : *
      {
         playSound("freeze");
      }
      
      internal function frame235() : *
      {
         frozen();
      }
      
      internal function frame236() : *
      {
         SFX.playSound("tentaclehit");
      }
      
      internal function frame250() : *
      {
         if(self.getHpPercent() < 50)
         {
            Text.speech(Text.devourer[17]);
         }
      }
      
      internal function frame256() : *
      {
         k();
      }
      
      internal function frame257() : *
      {
         SFX.playSound("tentaclehit2");
      }
      
      internal function frame271() : *
      {
         if(self.getHpPercent() < 50)
         {
            Text.speech(Text.devourer[17]);
         }
      }
      
      internal function frame280() : *
      {
         k();
      }
      
      internal function frame281() : *
      {
         SFX.playSound("tentaclehit3");
         self.loseHead();
      }
      
      internal function frame307() : *
      {
         k();
      }
      
      internal function frame309() : *
      {
         SFX.playSound("tentaclehit3");
      }
      
      internal function frame335() : *
      {
         gotoAndPlay(currentFrame + int(Math.random() * 10));
      }
      
      internal function frame376() : *
      {
         dead();
      }
      
      internal function frame389() : *
      {
         setXY();
         X = x - 90;
         Y += 70;
         move(100,4,Regular.easeInOut);
      }
      
      internal function frame392() : *
      {
         self.attack1();
      }
      
      internal function frame397() : *
      {
         resetXY();
         move(0,22,Regular.easeInOut);
      }
      
      internal function frame406() : *
      {
         Text.speech(Text.devourer[23]);
      }
      
      internal function frame424() : *
      {
         k();
      }
      
      internal function frame439() : *
      {
         setXY();
         X = x - 40;
         Y = 380;
         move(100,4,Regular.easeInOut);
      }
      
      internal function frame441() : *
      {
         Battle.shake("small");
         self.attack2(1);
      }
      
      internal function frame443() : *
      {
         self.attack2(2);
      }
      
      internal function frame445() : *
      {
         self.attack2(3);
      }
      
      internal function frame447() : *
      {
         resetXY();
         move(0,22,Regular.easeInOut);
      }
      
      internal function frame452() : *
      {
         Text.speech(Text.devourer[23]);
      }
      
      internal function frame474() : *
      {
         k();
      }
      
      internal function frame489() : *
      {
         setXY();
         X += 550;
         Y += 60;
         move(100,4,Regular.easeInOut);
      }
      
      internal function frame493() : *
      {
         self.attack3();
      }
      
      internal function frame494() : *
      {
         Battle.shake("big");
      }
      
      internal function frame522() : *
      {
         resetXY();
         move(0,16,Regular.easeInOut);
      }
      
      internal function frame539() : *
      {
         k();
      }
      
      internal function frame559() : *
      {
         k();
      }
      
      internal function frame560() : *
      {
         playSound("heal");
      }
      
      internal function frame593() : *
      {
         k();
      }
      
      internal function frame629() : *
      {
         self.magic1();
      }
      
      internal function frame647() : *
      {
         k();
      }
      
      internal function frame648() : *
      {
         setXY();
         X = x - 80;
         Y = 380;
         move(0,20,Regular.easeInOut);
      }
      
      internal function frame674() : *
      {
         self.special1(1);
      }
      
      internal function frame678() : *
      {
         self.special1(2);
      }
      
      internal function frame681() : *
      {
         resetXY();
         move(0,22,Regular.easeInOut);
      }
      
      internal function frame682() : *
      {
         self.special1(3);
      }
      
      internal function frame704() : *
      {
         k();
      }
      
      internal function frame738() : *
      {
         flee();
      }
   }
}


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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol14271")]
   public dynamic class Hand extends FoeMC
   {
      public var weapon:int;
      
      public function Hand()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,29,this.frame30,34,this.frame35,49,this.frame50,50,this.frame51,52,this.frame53,133,this.frame134,135,this.frame136,150,this.frame151,151,this.frame152,169,this.frame170,170,this.frame171,191,this.frame192,192,this.frame193,193,this.frame194,206,this.frame207,208,this.frame209,218,this.frame219,219,this.frame220,221,this.frame222,228,this.frame229,235,this.frame236,258,this.frame259,290,this.frame291,324,this.frame325,343,this.frame344,344,this.frame345,372,this.frame373,407,this.frame408,408,this.frame409,413,this.frame414,418,this.frame419,423,this.frame424,433,this.frame434,444,this.frame445,468,this.frame469,469,this.frame470,470,this.frame471,506,this.frame507,507,this.frame508,510,this.frame511,512,this.frame513,513,this.frame514,525,this.frame526,553,this.frame554,554,this.frame555,555,this.frame556,592,this.frame593,593,this.frame594,598,this.frame599,621,this.frame622,649,this.frame650,650,this.frame651,651,this.frame652,652,this.frame653,676,this.frame677,678,this.frame679,690,this.frame691,716,this.frame717,717,this.frame718,729,this.frame730);
      }
      
      public function weaponEffect() : *
      {
         if(this.weapon == 1)
         {
            makeMagic(EffectStab,0,0);
         }
         if(this.weapon == 2)
         {
            makeMagic(EffectWind,0,0);
         }
         if(this.weapon == 3)
         {
            makeMagic(EffectSlap,0,0);
         }
         if(this.weapon == 4)
         {
            makeMagic(EffectDark,0,0);
         }
         if(this.weapon == 5)
         {
            makeMagic(EffectFire,0,0);
         }
         if(this.weapon == 6)
         {
            makeMagic(EffectIce2,0,0);
         }
      }
      
      internal function frame1() : *
      {
         init();
      }
      
      internal function frame3() : *
      {
         randomDelay(25);
      }
      
      internal function frame30() : *
      {
         if(!isSummon)
         {
            self.changeWeapon();
         }
         else
         {
            if(skin == 1)
            {
               this.weapon = 1;
            }
            if(skin == 2)
            {
               this.weapon = 5;
            }
            if(skin == 3)
            {
               this.weapon = 4;
            }
         }
      }
      
      internal function frame35() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame50() : *
      {
         Text.speech(Text.hands[1]);
      }
      
      internal function frame51() : *
      {
         k();
      }
      
      internal function frame53() : *
      {
         stand();
      }
      
      internal function frame134() : *
      {
         ks();
      }
      
      internal function frame136() : *
      {
         freezeSound();
      }
      
      internal function frame151() : *
      {
         frozen();
      }
      
      internal function frame152() : *
      {
         if(head.eye)
         {
            head.eye.gotoAndStop("hit");
         }
         playSound("" + (366 + skin));
         playSound("360");
      }
      
      internal function frame170() : *
      {
         k();
      }
      
      internal function frame171() : *
      {
         if(head.eye)
         {
            head.eye.gotoAndStop("hit");
         }
         playSound("" + (366 + skin));
         playSound("361");
      }
      
      internal function frame192() : *
      {
         k();
      }
      
      internal function frame193() : *
      {
         if(head.eye)
         {
            head.eye.gotoAndStop("hit");
         }
         playSound("" + (369 + skin));
         playSound("362");
      }
      
      internal function frame194() : *
      {
         playSound("363");
      }
      
      internal function frame207() : *
      {
         playSound("364");
      }
      
      internal function frame209() : *
      {
         if(head.eye)
         {
            head.eye.gotoAndStop("hit");
         }
      }
      
      internal function frame219() : *
      {
         playSound("365");
      }
      
      internal function frame220() : *
      {
         playSound("" + (372 + this.weapon));
      }
      
      internal function frame222() : *
      {
         playSound("366");
      }
      
      internal function frame229() : *
      {
         Text.speech(Text.hands[3]);
      }
      
      internal function frame236() : *
      {
         randomDelay(20);
      }
      
      internal function frame259() : *
      {
         dropItems();
      }
      
      internal function frame291() : *
      {
         done();
      }
      
      internal function frame325() : *
      {
         flee();
      }
      
      internal function frame344() : *
      {
         k();
      }
      
      internal function frame345() : *
      {
         if(head.eye)
         {
            head.eye.gotoAndStop("heal");
         }
         playSound("heal");
      }
      
      internal function frame373() : *
      {
         k();
      }
      
      internal function frame408() : *
      {
         setXY();
         move(100,1,null);
      }
      
      internal function frame409() : *
      {
         swapLayer();
      }
      
      internal function frame414() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame419() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.hands[5]);
         }
      }
      
      internal function frame424() : *
      {
         Battle.finalHit = false;
         self.attack1();
         this.weaponEffect();
      }
      
      internal function frame434() : *
      {
         Battle.finalHit = false;
         self.attack1();
         this.weaponEffect();
      }
      
      internal function frame445() : *
      {
         self.attack1();
         this.weaponEffect();
      }
      
      internal function frame469() : *
      {
         resetXY();
         move(0,1,null);
      }
      
      internal function frame470() : *
      {
         resetLayer();
      }
      
      internal function frame471() : *
      {
         gotoAndPlay("intro2");
      }
      
      internal function frame507() : *
      {
         setXY();
         move(-20,1,null);
      }
      
      internal function frame508() : *
      {
         swapLayer();
      }
      
      internal function frame511() : *
      {
         if(head.eyes)
         {
            head.eyes.gotoAndStop("hit");
         }
      }
      
      internal function frame513() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame514() : *
      {
         self.attack2();
         this.weaponEffect();
      }
      
      internal function frame526() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.hands[5]);
         }
      }
      
      internal function frame554() : *
      {
         resetXY();
         move(0,1,null);
      }
      
      internal function frame555() : *
      {
         resetLayer();
      }
      
      internal function frame556() : *
      {
         gotoAndPlay("intro2");
      }
      
      internal function frame593() : *
      {
         setXY();
         move(60,1,null);
      }
      
      internal function frame594() : *
      {
         swapLayer();
      }
      
      internal function frame599() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame622() : *
      {
         self.attack3();
         this.weaponEffect();
      }
      
      internal function frame650() : *
      {
         resetXY();
         move(0,1,null);
      }
      
      internal function frame651() : *
      {
         resetLayer();
      }
      
      internal function frame652() : *
      {
         gotoAndPlay("intro2");
      }
      
      internal function frame653() : *
      {
         if(isSummon && Math.random() < 0.5)
         {
            gotoAndPlay("special2");
         }
      }
      
      internal function frame677() : *
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
      
      internal function frame679() : *
      {
         Text.speech(Text.hands[4]);
      }
      
      internal function frame691() : *
      {
         k();
      }
      
      internal function frame717() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.hands[2]);
         }
      }
      
      internal function frame718() : *
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
      
      internal function frame730() : *
      {
         k();
      }
   }
}


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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol14663")]
   public dynamic class Flybot extends FoeMC
   {
      public function Flybot()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,73,this.frame74,76,this.frame77,77,this.frame78,90,this.frame91,92,this.frame93,137,this.frame138,139,this.frame140,159,this.frame160,160,this.frame161,161,this.frame162,171,this.frame172,190,this.frame191,191,this.frame192,226,this.frame227,264,this.frame265,265,this.frame266,290,this.frame291,291,this.frame292,292,this.frame293,295,this.frame296,296,this.frame297,301,this.frame302,304,this.frame305,312,this.frame313,314,this.frame315,357,this.frame358,385,this.frame386,415,this.frame416,421,this.frame422,441,this.frame442,459,this.frame460,477,this.frame478,497,this.frame498,499,this.frame500,500,this.frame501,521,this.frame522,522,this.frame523,532,this.frame533,547,this.frame548,560,this.frame561,572,this.frame573,586,this.frame587,587,this.frame588,597,this.frame598,612,this.frame613,625,this.frame626,637,this.frame638,651,this.frame652,671,this.frame672,688,this.frame689,703,this.frame704,724,this.frame725,725,this.frame726,739,this.frame740,740,this.frame741,761,this.frame762,762,this.frame763,772,this.frame773,784,this.frame785,787,this.frame788,800,this.frame801,812,this.frame813,826,this.frame827,827,this.frame828,837,this.frame838,849,this.frame850,852,this.frame853,869,this.frame870,881,this.frame882,895,this.frame896,896,this.frame897,906,this.frame907,918,this.frame919,921,this.frame922,940,this.frame941,952,this.frame953,966,this.frame967);
      }
      
      internal function frame1() : *
      {
         init();
      }
      
      internal function frame3() : *
      {
         randomDelay(30);
      }
      
      internal function frame74() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.flybots[1]);
         }
         if(skin == 3)
         {
            Text.speech(Text.flybots[2]);
         }
         if(!isSummon)
         {
            Text.speech(Text.flybots[3]);
         }
      }
      
      internal function frame77() : *
      {
         k();
      }
      
      internal function frame78() : *
      {
         freezeSound();
      }
      
      internal function frame91() : *
      {
         frozen();
      }
      
      internal function frame93() : *
      {
         stand();
      }
      
      internal function frame138() : *
      {
         ks();
      }
      
      internal function frame140() : *
      {
         head.eye.gotoAndPlay("hit");
         playSound("327");
      }
      
      internal function frame160() : *
      {
         k();
      }
      
      internal function frame161() : *
      {
         head.eye.gotoAndPlay("hit");
         playSound("328");
      }
      
      internal function frame162() : *
      {
         playSound("329");
      }
      
      internal function frame172() : *
      {
         playSound("330");
      }
      
      internal function frame191() : *
      {
         k();
      }
      
      internal function frame192() : *
      {
         head.eye.gotoAndPlay("heal");
         playSound("heal");
      }
      
      internal function frame227() : *
      {
         k();
      }
      
      internal function frame265() : *
      {
         flee();
      }
      
      internal function frame266() : *
      {
         head.eye.gotoAndPlay("evade");
         playSound("331");
      }
      
      internal function frame291() : *
      {
         k();
      }
      
      internal function frame292() : *
      {
         head.eye.gotoAndPlay("die");
         playSound("332");
      }
      
      internal function frame293() : *
      {
         playSound("33");
      }
      
      internal function frame296() : *
      {
         playSound("34");
      }
      
      internal function frame297() : *
      {
         playSound("335");
      }
      
      internal function frame302() : *
      {
         playSound("336");
      }
      
      internal function frame305() : *
      {
         if(Flags.battleEvent == Flags.LANCE_BATTLE_2)
         {
            Text.speech(Text.lance[8]);
         }
         playSound("337");
      }
      
      internal function frame313() : *
      {
         Text.speech(Text.flybots[5]);
         Text.speech(Text.flybots[6]);
      }
      
      internal function frame315() : *
      {
         randomDelay(20);
      }
      
      internal function frame358() : *
      {
         dropItems();
      }
      
      internal function frame386() : *
      {
         dead();
      }
      
      internal function frame416() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.magic1();
         }
      }
      
      internal function frame422() : *
      {
         k();
      }
      
      internal function frame442() : *
      {
         head.eye.gotoAndPlay("hit");
      }
      
      internal function frame460() : *
      {
         if(isSummon)
         {
            Summons.FlybotRed.effect();
         }
         else
         {
            self.special1();
         }
      }
      
      internal function frame478() : *
      {
         k();
      }
      
      internal function frame498() : *
      {
         head.eye.gotoAndPlay("evade");
      }
      
      internal function frame500() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame501() : *
      {
         setXY();
         self.special4();
         makeMagic(EffectSmash3,0,0);
      }
      
      internal function frame522() : *
      {
         k();
      }
      
      internal function frame523() : *
      {
         setXY();
         move(10,22,Regular.easeInOut);
      }
      
      internal function frame533() : *
      {
         swapLayer(true);
      }
      
      internal function frame548() : *
      {
         self.attack1();
      }
      
      internal function frame561() : *
      {
         resetXY();
         move(0,24,Regular.easeInOut);
      }
      
      internal function frame573() : *
      {
         resetLayer();
      }
      
      internal function frame587() : *
      {
         k();
      }
      
      internal function frame588() : *
      {
         setXY();
         move(10,22,Regular.easeInOut);
      }
      
      internal function frame598() : *
      {
         swapLayer(true);
      }
      
      internal function frame613() : *
      {
         self.attack2();
         makeMagic(EffectThunder2,0,0);
      }
      
      internal function frame626() : *
      {
         resetXY();
         move(0,24,Regular.easeInOut);
      }
      
      internal function frame638() : *
      {
         resetLayer();
      }
      
      internal function frame652() : *
      {
         k();
      }
      
      internal function frame672() : *
      {
         head.eye.gotoAndPlay("hit");
      }
      
      internal function frame689() : *
      {
         self.special2();
      }
      
      internal function frame704() : *
      {
         k();
      }
      
      internal function frame725() : *
      {
         head.eye.gotoAndPlay("hit");
      }
      
      internal function frame726() : *
      {
         self.special5();
      }
      
      internal function frame740() : *
      {
         head.eye.gotoAndPlay("hit");
      }
      
      internal function frame741() : *
      {
         self.special5();
      }
      
      internal function frame762() : *
      {
         k();
      }
      
      internal function frame763() : *
      {
         setXY();
         move(50,22,Regular.easeInOut);
      }
      
      internal function frame773() : *
      {
         swapLayer(true);
      }
      
      internal function frame785() : *
      {
         head.eye.gotoAndPlay("hit");
      }
      
      internal function frame788() : *
      {
         self.attack3();
         makeMagic(EffectWind,0,0);
      }
      
      internal function frame801() : *
      {
         resetXY();
         move(0,24,Regular.easeInOut);
      }
      
      internal function frame813() : *
      {
         resetLayer();
      }
      
      internal function frame827() : *
      {
         k();
      }
      
      internal function frame828() : *
      {
         setXY();
         move(20,22,Regular.easeInOut);
      }
      
      internal function frame838() : *
      {
         swapLayer(true);
      }
      
      internal function frame850() : *
      {
         head.eye.gotoAndPlay("hit");
      }
      
      internal function frame853() : *
      {
         self.attack4();
      }
      
      internal function frame870() : *
      {
         resetXY();
         move(0,24,Regular.easeInOut);
      }
      
      internal function frame882() : *
      {
         resetLayer();
      }
      
      internal function frame896() : *
      {
         k();
      }
      
      internal function frame897() : *
      {
         setXY();
         move(30,22,Regular.easeInOut);
      }
      
      internal function frame907() : *
      {
         swapLayer(true);
      }
      
      internal function frame919() : *
      {
         head.eye.gotoAndPlay("hit");
      }
      
      internal function frame922() : *
      {
         self.attack5();
      }
      
      internal function frame941() : *
      {
         resetXY();
         move(0,24,Regular.easeInOut);
      }
      
      internal function frame953() : *
      {
         resetLayer();
      }
      
      internal function frame967() : *
      {
         k();
      }
   }
}


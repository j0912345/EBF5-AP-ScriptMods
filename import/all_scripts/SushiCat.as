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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8257")]
   public dynamic class SushiCat extends SpellMC
   {
      public var point:int;
      
      public function SushiCat()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,40,this.frame41,51,this.frame52,57,this.frame58,58,this.frame59,62,this.frame63,68,this.frame69,69,this.frame70,73,this.frame74,79,this.frame80,80,this.frame81,87,this.frame88,99,this.frame100,100,this.frame101,104,this.frame105,110,this.frame111,111,this.frame112,121,this.frame122);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
         this.point = 4;
         this.y = 0;
      }
      
      internal function frame3() : *
      {
         pointNumber = 4;
      }
      
      internal function frame41() : *
      {
         Text.speech(Text.nolegsSkills[11]);
         Text.speech(Text.nolegsSkills[12]);
         Text.speech(Text.nolegsSkills[13]);
      }
      
      internal function frame52() : *
      {
         setXY();
         move(0,4,Regular.easeIn);
      }
      
      internal function frame58() : *
      {
         Skills.sushicat(1);
         makeMagic(EffectCircle,0,0);
      }
      
      internal function frame59() : *
      {
         Battle.selectedTarget = Battle.randomFoe();
         setXY();
         move(0,9,null);
      }
      
      internal function frame63() : *
      {
         resetLayer();
         swapLayer();
      }
      
      internal function frame69() : *
      {
         Skills.sushicat(1);
         makeMagic(EffectCircle,0,0);
      }
      
      internal function frame70() : *
      {
         Battle.selectedTarget = Battle.randomFoe();
         setXY();
         move(0,9,null);
      }
      
      internal function frame74() : *
      {
         resetLayer();
         swapLayer();
      }
      
      internal function frame80() : *
      {
         Skills.sushicat(1);
         makeMagic(EffectCircle,0,0);
      }
      
      internal function frame81() : *
      {
         Battle.selectedTarget = Battle.mostDamagedPlayer(true);
         setXY();
         move(0,20,Regular.easeOut);
      }
      
      internal function frame88() : *
      {
         resetLayer();
         swapLayer();
      }
      
      internal function frame100() : *
      {
         Skills.sushicat(2);
         makeMagic(EffectCircle,0,0);
      }
      
      internal function frame101() : *
      {
         Battle.selectedTarget = Battle.mostDamagedPlayer(true);
         setXY();
         move(0,9,null);
      }
      
      internal function frame105() : *
      {
         resetLayer();
         swapLayer();
      }
      
      internal function frame111() : *
      {
         Skills.sushicat(2);
         makeMagic(EffectCircle,0,0);
      }
      
      internal function frame112() : *
      {
         X = -200;
         move(0,8,null);
      }
      
      internal function frame122() : *
      {
         k();
      }
   }
}


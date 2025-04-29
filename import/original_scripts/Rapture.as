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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9710")]
   public dynamic class Rapture extends SpellMC
   {
      public function Rapture()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,3,this.frame4,24,this.frame25,40,this.frame41,42,this.frame43,48,this.frame49,49,this.frame50,51,this.frame52,59,this.frame60,70,this.frame71,80,this.frame81,84,this.frame85,91,this.frame92,101,this.frame102,112,this.frame113,122,this.frame123,131,this.frame132,182,this.frame183,183,this.frame184);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame3() : *
      {
         Battle.shake("small");
      }
      
      internal function frame4() : *
      {
         Battle.finalHit = false;
         Skills.rapture(1);
      }
      
      internal function frame25() : *
      {
         jumpBack();
      }
      
      internal function frame41() : *
      {
         makeMagic(WhiteFlash,0,0);
      }
      
      internal function frame43() : *
      {
         Battle.shake("big");
      }
      
      internal function frame49() : *
      {
         makeMagic(WhiteFlash,0,0);
      }
      
      internal function frame50() : *
      {
         Battle.finalHit = false;
         Skills.rapture(2);
      }
      
      internal function frame52() : *
      {
         Battle.shake("big");
      }
      
      internal function frame60() : *
      {
         Battle.finalHit = false;
         Skills.rapture(2);
      }
      
      internal function frame71() : *
      {
         Battle.finalHit = false;
         Skills.rapture(2);
      }
      
      internal function frame81() : *
      {
         Battle.finalHit = false;
         Skills.rapture(2);
      }
      
      internal function frame85() : *
      {
         if(Flags.battleEvent >= 35 && Flags.battleEvent <= 46 || Flags.battleEvent == Flags.ARCADE_RUSH)
         {
            Text.speech(Text.arcade[11]);
         }
      }
      
      internal function frame92() : *
      {
         Battle.finalHit = false;
         Skills.rapture(2);
      }
      
      internal function frame102() : *
      {
         Battle.finalHit = false;
         Skills.rapture(2);
      }
      
      internal function frame113() : *
      {
         Battle.finalHit = false;
         Skills.rapture(2);
      }
      
      internal function frame123() : *
      {
         Battle.finalHit = false;
         Skills.rapture(2);
      }
      
      internal function frame132() : *
      {
         Skills.rapture(2);
      }
      
      internal function frame183() : *
      {
         drainage();
      }
      
      internal function frame184() : *
      {
         k();
      }
   }
}


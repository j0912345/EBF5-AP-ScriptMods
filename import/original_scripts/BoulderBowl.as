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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10706")]
   public dynamic class BoulderBowl extends SpellMC
   {
      public function BoulderBowl()
      {
         super();
         addFrameScript(0,this.frame1,6,this.frame7,18,this.frame19,20,this.frame21,23,this.frame24,29,this.frame30,41,this.frame42);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
         setXY();
         move(0,6,null);
      }
      
      internal function frame7() : *
      {
         if(skin == 2 || skin == 5)
         {
            makeMagic(EffectEarth,0,0);
         }
         Skills.user.boulderBowl1();
         X = -150;
         Y = 300;
         move(0,11,null);
      }
      
      internal function frame19() : *
      {
         Battle.shake("small");
      }
      
      internal function frame21() : *
      {
         makeMagic(BackupHit,0,0);
      }
      
      internal function frame24() : *
      {
         Skills.user.boulderBowl2();
      }
      
      internal function frame30() : *
      {
         if(Game.party.length > 3)
         {
            Text.speech(Text.boulders[5]);
         }
      }
      
      internal function frame42() : *
      {
         k();
      }
   }
}


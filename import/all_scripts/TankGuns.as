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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8559")]
   public dynamic class TankGuns extends SpellMC
   {
      public function TankGuns()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,3,this.frame4,47,this.frame48,49,this.frame50,51,this.frame52,53,this.frame54,55,this.frame56,57,this.frame58,59,this.frame60,61,this.frame62,63,this.frame64,65,this.frame66,67,this.frame68,69,this.frame70,71,this.frame72,73,this.frame74,75,this.frame76);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame3() : *
      {
         Text.speech(Text.lanceSkills[22]);
         Text.speech(Text.lanceSkills[6]);
      }
      
      internal function frame4() : *
      {
         Battle.invisiblePlayers();
         Battle.invisibleFoes();
      }
      
      internal function frame48() : *
      {
         Battle.finalHit = false;
         Skills.tankgun();
         Battle.visiblePlayers();
         Battle.visibleFoes();
      }
      
      internal function frame50() : *
      {
         Battle.finalHit = false;
         Skills.tankgun();
      }
      
      internal function frame52() : *
      {
         Battle.finalHit = false;
         Skills.tankgun();
      }
      
      internal function frame54() : *
      {
         Battle.finalHit = false;
         Skills.tankgun();
      }
      
      internal function frame56() : *
      {
         Battle.finalHit = false;
         Skills.tankgun();
      }
      
      internal function frame58() : *
      {
         Battle.finalHit = false;
         Skills.tankgun();
      }
      
      internal function frame60() : *
      {
         Battle.finalHit = false;
         Skills.tankgun();
      }
      
      internal function frame62() : *
      {
         Battle.finalHit = false;
         Skills.tankgun();
      }
      
      internal function frame64() : *
      {
         Battle.finalHit = false;
         Skills.tankgun();
      }
      
      internal function frame66() : *
      {
         Battle.finalHit = false;
         Skills.tankgun();
      }
      
      internal function frame68() : *
      {
         Battle.finalHit = false;
         Skills.tankgun();
      }
      
      internal function frame70() : *
      {
         Battle.finalHit = false;
         Skills.tankgun();
      }
      
      internal function frame72() : *
      {
         Battle.finalHit = false;
         Skills.tankgun();
      }
      
      internal function frame74() : *
      {
         Skills.tankgun();
      }
      
      internal function frame76() : *
      {
         k();
      }
   }
}


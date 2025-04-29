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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8442")]
   public dynamic class ComboShot extends SpellMC
   {
      public function ComboShot()
      {
         super();
         addFrameScript(0,this.frame1,3,this.frame4,5,this.frame6,7,this.frame8,9,this.frame10,23,this.frame24,26,this.frame27);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame4() : *
      {
         Battle.finalHit = false;
         Skills.comboshot();
      }
      
      internal function frame6() : *
      {
         Battle.finalHit = false;
         Skills.comboshot();
      }
      
      internal function frame8() : *
      {
         if(!Skills.user.isPlayer && Skills.user.graphic.zombieMode)
         {
            Battle.finalHit = false;
         }
         Skills.comboshot();
      }
      
      internal function frame10() : *
      {
         if(Skills.user.isPlayer)
         {
            Battle.bonusSpell();
         }
         else
         {
            Skills.user.bonusSpell();
         }
      }
      
      internal function frame24() : *
      {
         drainage();
      }
      
      internal function frame27() : *
      {
         k();
      }
   }
}


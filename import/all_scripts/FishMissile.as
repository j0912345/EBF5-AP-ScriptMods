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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10542")]
   public dynamic class FishMissile extends SpellMC
   {
      public function FishMissile()
      {
         super();
         addFrameScript(0,this.frame1,25,this.frame26,36,this.frame37,57,this.frame58);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame26() : *
      {
         Text.speech(Text.fish[1]);
         Text.speech(Text.fish[2]);
      }
      
      internal function frame37() : *
      {
         Battle.multiSpell = -1;
         if(skin == 1 || skin == 2)
         {
            Skills.user.castSpell("Blast");
         }
         if(skin == 3 || skin == 4)
         {
            Skills.user.castSpell("EnergyBomb");
         }
         if(skin == 5 || skin == 6)
         {
            Skills.user.castSpell("Blast");
         }
      }
      
      internal function frame58() : *
      {
         k();
      }
   }
}


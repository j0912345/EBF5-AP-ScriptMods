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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10605")]
   public dynamic class ElectronGun extends SpellMC
   {
      public function ElectronGun()
      {
         super();
         addFrameScript(0,this.frame1,29,this.frame30,34,this.frame35,39,this.frame40,44,this.frame45,49,this.frame50,55,this.frame56,68,this.frame69);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame30() : *
      {
         Battle.finalHit = false;
         Skills.electrongun();
      }
      
      internal function frame35() : *
      {
         Battle.finalHit = false;
         Skills.electrongun();
      }
      
      internal function frame40() : *
      {
         Battle.finalHit = false;
         Skills.electrongun();
      }
      
      internal function frame45() : *
      {
         Battle.finalHit = false;
         Skills.electrongun();
      }
      
      internal function frame50() : *
      {
         Skills.electrongun();
      }
      
      internal function frame56() : *
      {
         if(Skills.user.isPlayer)
         {
            Text.speech(Text.miscSkills[39]);
         }
      }
      
      internal function frame69() : *
      {
         k();
      }
   }
}


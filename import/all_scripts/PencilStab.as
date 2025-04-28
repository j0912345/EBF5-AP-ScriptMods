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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9423")]
   public dynamic class PencilStab extends SpellMC
   {
      public function PencilStab()
      {
         super();
         addFrameScript(0,this.frame1,8,this.frame9,9,this.frame10,39,this.frame40,40,this.frame41,46,this.frame47);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame9() : *
      {
         Battle.finalHit = false;
         Skills.pencilstab(1);
      }
      
      internal function frame10() : *
      {
         Battle.shake("small");
      }
      
      internal function frame40() : *
      {
         Skills.pencilstab(2);
      }
      
      internal function frame41() : *
      {
         Battle.shake("small");
      }
      
      internal function frame47() : *
      {
         k();
      }
   }
}


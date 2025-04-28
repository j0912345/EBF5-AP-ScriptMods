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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol13050")]
   public dynamic class ClassicPlantSpikes extends SpellMC
   {
      public function ClassicPlantSpikes()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3,4,this.frame5,7,this.frame8,8,this.frame9,53,this.frame54);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,2);
      }
      
      internal function frame2() : *
      {
         Battle.shake("small");
      }
      
      internal function frame3() : *
      {
         Skills.user.plantspikes();
      }
      
      internal function frame5() : *
      {
         Skills.user.plantspikes();
      }
      
      internal function frame8() : *
      {
         Skills.user.plantspikes();
      }
      
      internal function frame9() : *
      {
         Battle.shake("small");
      }
      
      internal function frame54() : *
      {
         k();
      }
   }
}


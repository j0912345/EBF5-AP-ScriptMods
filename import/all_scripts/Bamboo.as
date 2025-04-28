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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10778")]
   public dynamic class Bamboo extends SpellMC
   {
      public function Bamboo()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,6,this.frame7,10,this.frame11,40,this.frame41);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame3() : *
      {
         Battle.finalHit = false;
         Skills.bamboo();
      }
      
      internal function frame7() : *
      {
         Skills.bamboo();
      }
      
      internal function frame11() : *
      {
         nextSpell();
      }
      
      internal function frame41() : *
      {
         k();
      }
   }
}


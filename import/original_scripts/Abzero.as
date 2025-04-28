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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10083")]
   public dynamic class Abzero extends SpellMC
   {
      public function Abzero()
      {
         super();
         addFrameScript(0,this.frame1,42,this.frame43,94,this.frame95,95,this.frame96,97,this.frame98,147,this.frame148,148,this.frame149,149,this.frame150,172,this.frame173);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame43() : *
      {
         jumpBack();
      }
      
      internal function frame95() : *
      {
      }
      
      internal function frame96() : *
      {
         Battle.shake("small");
      }
      
      internal function frame98() : *
      {
         Battle.finalHit = false;
         Skills.abzero();
      }
      
      internal function frame148() : *
      {
         Battle.shake("small");
      }
      
      internal function frame149() : *
      {
      }
      
      internal function frame150() : *
      {
         Skills.abzero();
      }
      
      internal function frame173() : *
      {
         k();
      }
   }
}


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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol7262")]
   public dynamic class MermaidPoison extends SpellMC
   {
      public function MermaidPoison()
      {
         super();
         addFrameScript(0,this.frame1,19,this.frame20,26,this.frame27,38,this.frame39);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame20() : *
      {
         nextSpell();
      }
      
      internal function frame27() : *
      {
         Battle.selectedTarget = selectedTarget;
         Skills.arcadepoison();
      }
      
      internal function frame39() : *
      {
         k();
      }
   }
}


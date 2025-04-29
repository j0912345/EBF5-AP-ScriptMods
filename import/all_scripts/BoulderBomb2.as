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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10712")]
   public dynamic class BoulderBomb2 extends SpellMC
   {
      public function BoulderBomb2()
      {
         super();
         addFrameScript(0,this.frame1,25,this.frame26,28,this.frame29,47,this.frame48,48,this.frame49,78,this.frame79);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,2);
      }
      
      internal function frame26() : *
      {
         Battle.shake("small");
      }
      
      internal function frame29() : *
      {
      }
      
      internal function frame48() : *
      {
         Skills.seabomb();
      }
      
      internal function frame49() : *
      {
         Battle.shake("big");
      }
      
      internal function frame79() : *
      {
         k();
      }
   }
}


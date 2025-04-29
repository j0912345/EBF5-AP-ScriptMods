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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8407")]
   public dynamic class Nitro extends SpellMC
   {
      public function Nitro()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,4,this.frame5,9,this.frame10,32,this.frame33);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame2() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame5() : *
      {
         Skills.nitroarrow2();
      }
      
      internal function frame10() : *
      {
         nextSpell(isSummon,Spells.nitro);
      }
      
      internal function frame33() : *
      {
         k();
      }
   }
}


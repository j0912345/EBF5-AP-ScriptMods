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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8024")]
   public dynamic class LuckyStar2 extends SpellMC
   {
      public function LuckyStar2()
      {
         super();
         addFrameScript(0,this.frame1,9,this.frame10,15,this.frame16,16,this.frame17,40,this.frame41);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,2);
      }
      
      internal function frame10() : *
      {
         nextSpell();
      }
      
      internal function frame16() : *
      {
         Battle.selectedTarget = selectedTarget;
         Skills.luckystar2();
      }
      
      internal function frame17() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame41() : *
      {
         k();
      }
   }
}


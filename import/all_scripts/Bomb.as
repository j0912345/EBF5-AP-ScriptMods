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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8221")]
   public dynamic class Bomb extends SpellMC
   {
      public function Bomb()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3,29,this.frame30);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame2() : *
      {
         Battle.shake("small");
      }
      
      internal function frame3() : *
      {
         if(isSummon)
         {
            Summons.CatBomber.effect2();
         }
         else
         {
            Skills.bomb();
         }
      }
      
      internal function frame30() : *
      {
         k();
      }
   }
}


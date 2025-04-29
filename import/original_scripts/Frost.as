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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10515")]
   public dynamic class Frost extends SpellMC
   {
      public function Frost()
      {
         super();
         addFrameScript(0,this.frame1,9,this.frame10,10,this.frame11,40,this.frame41);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame10() : *
      {
         if(isSummon)
         {
            Summons.SlimeIcecream.effect2();
         }
         else
         {
            Skills.frost();
         }
      }
      
      internal function frame11() : *
      {
         nextSpell(isSummon);
      }
      
      internal function frame41() : *
      {
         k();
      }
   }
}


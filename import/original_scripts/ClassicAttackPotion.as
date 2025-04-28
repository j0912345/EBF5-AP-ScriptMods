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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9552")]
   public dynamic class ClassicAttackPotion extends SpellMC
   {
      public function ClassicAttackPotion()
      {
         super();
         addFrameScript(0,this.frame1,4,this.frame5,20,this.frame21);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,3);
      }
      
      internal function frame5() : *
      {
         Skills.user.attackPotion();
      }
      
      internal function frame21() : *
      {
         k();
      }
   }
}


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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10761")]
   public dynamic class BigRoot2 extends SpellMC
   {
      public function BigRoot2()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,4,this.frame5,8,this.frame9,37,this.frame38);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
         skin = 2;
      }
      
      internal function frame3() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame5() : *
      {
         Skills.bigroot();
      }
      
      internal function frame9() : *
      {
         nextSpell();
      }
      
      internal function frame38() : *
      {
         k();
      }
   }
}


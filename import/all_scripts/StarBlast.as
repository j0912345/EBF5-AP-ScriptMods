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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8261")]
   public dynamic class StarBlast extends SpellMC
   {
      public function StarBlast()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,4,this.frame5,6,this.frame7,7,this.frame8,10,this.frame11,11,this.frame12,14,this.frame15,42,this.frame43);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame2() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame5() : *
      {
         Battle.shake("small");
      }
      
      internal function frame7() : *
      {
         Battle.finalHit = false;
         Skills.starblast();
      }
      
      internal function frame8() : *
      {
         Battle.shake("small");
      }
      
      internal function frame11() : *
      {
         Battle.finalHit = false;
         Skills.starblast();
      }
      
      internal function frame12() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame15() : *
      {
         Skills.starblast();
      }
      
      internal function frame43() : *
      {
         k();
      }
   }
}


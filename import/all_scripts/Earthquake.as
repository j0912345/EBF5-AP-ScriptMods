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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8084")]
   public dynamic class Earthquake extends SpellMC
   {
      public function Earthquake()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,7,this.frame8,14,this.frame15,22,this.frame23,28,this.frame29,33,this.frame34,43,this.frame44,46,this.frame47,53,this.frame54,57,this.frame58,64,this.frame65,66,this.frame67);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame3() : *
      {
         Battle.shake("tiny",true);
      }
      
      internal function frame8() : *
      {
         Battle.shake("tiny",true);
      }
      
      internal function frame15() : *
      {
         Battle.shake("small",true);
      }
      
      internal function frame23() : *
      {
         Battle.shake("tiny",true);
      }
      
      internal function frame29() : *
      {
         Battle.shake("small",true);
      }
      
      internal function frame34() : *
      {
         Battle.shake("big",true);
      }
      
      internal function frame44() : *
      {
         Battle.shake("small",true);
      }
      
      internal function frame47() : *
      {
         Skills.earthquake();
      }
      
      internal function frame54() : *
      {
         Battle.shake("tiny",true);
      }
      
      internal function frame58() : *
      {
         Battle.shake("tiny",true);
      }
      
      internal function frame65() : *
      {
         Battle.shake("tiny",true);
      }
      
      internal function frame67() : *
      {
         k();
      }
   }
}


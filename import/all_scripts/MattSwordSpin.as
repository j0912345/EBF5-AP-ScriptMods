package
{
   import fl.transitions.easing.*;
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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9263")]
   public dynamic class MattSwordSpin extends SpellMC
   {
      public function MattSwordSpin()
      {
         super();
         addFrameScript(0,this.frame1,6,this.frame7,9,this.frame10,13,this.frame14,17,this.frame18,21,this.frame22,25,this.frame26,29,this.frame30,40,this.frame41);
      }
      
      internal function frame1() : *
      {
         X = 650;
         Y = 180;
         move(60,5,Regular.easeOut);
      }
      
      internal function frame7() : *
      {
         Battle.finalHit = false;
         Skills.slicingcyclone();
      }
      
      internal function frame10() : *
      {
         Battle.finalHit = false;
         Skills.slicingcyclone();
      }
      
      internal function frame14() : *
      {
         Battle.finalHit = false;
         Skills.slicingcyclone();
      }
      
      internal function frame18() : *
      {
         Battle.finalHit = false;
         Skills.slicingcyclone();
      }
      
      internal function frame22() : *
      {
         Battle.finalHit = false;
         Skills.slicingcyclone();
      }
      
      internal function frame26() : *
      {
         Battle.finalHit = false;
         Skills.slicingcyclone();
      }
      
      internal function frame30() : *
      {
         Skills.slicingcyclone();
      }
      
      internal function frame41() : *
      {
         k();
      }
   }
}


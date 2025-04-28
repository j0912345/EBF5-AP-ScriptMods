package EpicBattleFantasy5_fla
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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol11358")]
   public dynamic class nolegsdeadanddry_5918 extends MovieClip
   {
      public var head:MovieClip;
      
      public var zombieMode:Boolean;
      
      public var zombieNoLegs:Boolean;
      
      public var deathFace:int;
      
      public function nolegsdeadanddry_5918()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         this.zombieMode = true;
         this.zombieNoLegs = false;
         this.deathFace = parent.deathFace;
         this.head.mouth.visible = false;
      }
   }
}


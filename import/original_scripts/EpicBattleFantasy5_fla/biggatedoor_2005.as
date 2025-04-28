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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol19069")]
   public dynamic class biggatedoor_2005 extends MovieClip
   {
      public var X:int;
      
      public var Y:int;
      
      public var state:int;
      
      public var into:int;
      
      public function biggatedoor_2005()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3,13,this.frame14,14,this.frame15,24,this.frame25);
      }
      
      internal function frame1() : *
      {
      }
      
      internal function frame2() : *
      {
         stop();
         (parent as Maps).addTile(1,x + 50,y + 100);
      }
      
      internal function frame3() : *
      {
         ++parent.busy;
      }
      
      internal function frame14() : *
      {
         stop();
         this.state = 1;
         if(!this.into)
         {
            (parent as Maps).addTile(0,x + 50,y + 100);
         }
         else
         {
            (parent as Maps).addTile(18,x + 50,y + 100);
         }
         --parent.busy;
      }
      
      internal function frame15() : *
      {
         ++parent.busy;
      }
      
      internal function frame25() : *
      {
         stop();
         this.state = 0;
         (parent as Maps).addTile(1,x + 50,y + 100);
         --parent.busy;
      }
   }
}


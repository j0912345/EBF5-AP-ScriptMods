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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol12813")]
   public dynamic class attackflash_5199 extends MovieClip
   {
      public var tf:TextField;
      
      public function attackflash_5199()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3,3,this.frame4);
      }
      
      internal function frame1() : *
      {
         Global.translate(this.tf,"commands7",30);
      }
      
      internal function frame2() : *
      {
         Global.translate(this.tf,"commands7",30);
      }
      
      internal function frame3() : *
      {
         Global.translate(this.tf,"commands7",30);
      }
      
      internal function frame4() : *
      {
         Global.translate(this.tf,"commands7",30);
         if(Game.mode != Game.BATTLE || !parent)
         {
            stop();
         }
      }
   }
}


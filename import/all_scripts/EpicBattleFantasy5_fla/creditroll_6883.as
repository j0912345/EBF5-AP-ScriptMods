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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol2755")]
   public dynamic class creditroll_6883 extends MovieClip
   {
      public var t1:TextField;
      
      public var t10:TextField;
      
      public var t11:TextField;
      
      public var t12:TextField;
      
      public var t13:TextField;
      
      public var t14:TextField;
      
      public var t15:TextField;
      
      public var t16:TextField;
      
      public var t17:TextField;
      
      public var t18:TextField;
      
      public var t19:TextField;
      
      public var t2:TextField;
      
      public var t20:TextField;
      
      public var t3:TextField;
      
      public var t4:TextField;
      
      public var t5:TextField;
      
      public var t6:TextField;
      
      public var t7:TextField;
      
      public var t8:TextField;
      
      public var t9:TextField;
      
      public var i:int;
      
      public function creditroll_6883()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         this.i = 1;
         while(this.i <= 20)
         {
            Global.translate(this["t" + this.i],"credits" + this.i);
            ++this.i;
         }
      }
   }
}


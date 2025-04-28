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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol7626")]
   public dynamic class ClassicKingSlimeMC extends FoeMC
   {
      public function ClassicKingSlimeMC()
      {
         super();
         addFrameScript(0,this.frame1,47,this.frame48,82,this.frame83,84,this.frame85,86,this.frame87,87,this.frame88,114,this.frame115,141,this.frame142,143,this.frame144,191,this.frame192,193,this.frame194,197,this.frame198,211,this.frame212,233,this.frame234,256,this.frame257,277,this.frame278,291,this.frame292,297,this.frame298,304,this.frame305,315,this.frame316,328,this.frame329,347,this.frame348,415,this.frame416,416,this.frame417,451,this.frame452,483,this.frame484,519,this.frame520,549,this.frame550,560,this.frame561);
      }
      
      internal function frame1() : *
      {
         init();
      }
      
      internal function frame48() : *
      {
         if(isSummon)
         {
            this.y += 25;
            this.x += 40;
         }
      }
      
      internal function frame83() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf1[2]);
         }
      }
      
      internal function frame85() : *
      {
         if(isSummon && !Flags.isVideoGameBattle())
         {
            Text.speech(Text.ebf1[19]);
         }
         if(isSummon)
         {
            Text.speech(Text.ebf1[21]);
         }
         if(isSummon)
         {
            Text.speech(Text.ebf1[22]);
         }
      }
      
      internal function frame87() : *
      {
         k();
      }
      
      internal function frame88() : *
      {
         stop();
         stand();
      }
      
      internal function frame115() : *
      {
         k();
      }
      
      internal function frame142() : *
      {
         k();
      }
      
      internal function frame144() : *
      {
         dropItems();
      }
      
      internal function frame192() : *
      {
         Text.speech(Text.ebf1[7]);
      }
      
      internal function frame194() : *
      {
         Battle.extremeMedal();
      }
      
      internal function frame198() : *
      {
         dead();
      }
      
      internal function frame212() : *
      {
         self.attack3();
      }
      
      internal function frame234() : *
      {
         k();
      }
      
      internal function frame257() : *
      {
         self.attack2();
         Battle.shake("small");
      }
      
      internal function frame278() : *
      {
         k();
      }
      
      internal function frame292() : *
      {
         setXY();
         move(-70,12,null);
      }
      
      internal function frame298() : *
      {
         swapLayer();
      }
      
      internal function frame305() : *
      {
         self.attack1();
      }
      
      internal function frame316() : *
      {
         resetXY();
         move(0,25,null);
      }
      
      internal function frame329() : *
      {
         resetLayer();
      }
      
      internal function frame348() : *
      {
         k();
      }
      
      internal function frame416() : *
      {
         Battle.shake("small");
      }
      
      internal function frame417() : *
      {
         self.special1();
      }
      
      internal function frame452() : *
      {
         k();
      }
      
      internal function frame484() : *
      {
         if(isSummon)
         {
            Summons.ClassicSlimeKing.effect();
         }
         else
         {
            self.special2();
         }
      }
      
      internal function frame520() : *
      {
         k();
      }
      
      internal function frame550() : *
      {
      }
      
      internal function frame561() : *
      {
         flee();
      }
   }
}


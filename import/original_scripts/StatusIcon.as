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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol12641")]
   public dynamic class StatusIcon extends MovieClip
   {
      public var b2:MovieClip;
      
      public var box:TextField;
      
      public var st:MovieClip;
      
      public var tip:MovieClip;
      
      public var data:Object;
      
      public var val:int;
      
      public function StatusIcon()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3,3,this.frame4,4,this.frame5,5,this.frame6,6,this.frame7,7,this.frame8,8,this.frame9,9,this.frame10,10,this.frame11,11,this.frame12,12,this.frame13,13,this.frame14,14,this.frame15,15,this.frame16,16,this.frame17,17,this.frame18,18,this.frame19,19,this.frame20,20,this.frame21,21,this.frame22,22,this.frame23,23,this.frame24,24,this.frame25,25,this.frame26,26,this.frame27,27,this.frame28,28,this.frame29,29,this.frame30,30,this.frame31,31,this.frame32,32,this.frame33,33,this.frame34,34,this.frame35,35,this.frame36,36,this.frame37,37,this.frame38,38,this.frame39,39,this.frame40,40,this.frame41,41,this.frame42,42,this.frame43,43,this.frame44,44,this.frame45,45,this.frame46,46,this.frame47,47,this.frame48,48,this.frame49,49,this.frame50,50,this.frame51,51,this.frame52,52,this.frame53,53,this.frame54,54,this.frame55,55,this.frame56,56,this.frame57,58,this.frame59);
      }
      
      public function onRollOverHandler(param1:MouseEvent) : *
      {
         var _loc2_:int = 4;
         if(x * parent.scaleX + parent.x < 320)
         {
            _loc2_ = 5;
         }
         GUI.showTooltip(root,x * parent.scaleX + parent.x,y * parent.scaleY + parent.y,this.data,_loc2_);
      }
      
      public function onRollOutHandler(param1:MouseEvent) : *
      {
         GUI.removeTooltip();
      }
      
      public function init() : *
      {
         this.box.mouseEnabled = false;
         this.box.text = "" + this.val;
      }
      
      internal function frame1() : *
      {
         this.tip.buttonMode = true;
         this.tip.useHandCursor = true;
         this.tip.addEventListener(MouseEvent.ROLL_OVER,this.onRollOverHandler,false,0,true);
         this.tip.addEventListener(MouseEvent.ROLL_OUT,this.onRollOutHandler,false,0,true);
         mouseEnabled = false;
      }
      
      internal function frame2() : *
      {
         this.data = Status.descriptions[3];
      }
      
      internal function frame3() : *
      {
         this.data = Status.descriptions[2];
      }
      
      internal function frame4() : *
      {
         this.data = Status.descriptions[1];
      }
      
      internal function frame5() : *
      {
         this.data = Status.descriptions[0];
      }
      
      internal function frame6() : *
      {
         this.data = Status.descriptions[6];
      }
      
      internal function frame7() : *
      {
         this.data = Status.descriptions[7];
      }
      
      internal function frame8() : *
      {
         this.data = Status.descriptions[4];
      }
      
      internal function frame9() : *
      {
         this.data = Status.descriptions[27];
      }
      
      internal function frame10() : *
      {
         this.data = Status.descriptions[28];
      }
      
      internal function frame11() : *
      {
         this.data = Status.descriptions[30];
      }
      
      internal function frame12() : *
      {
         this.data = Status.descriptions[25];
      }
      
      internal function frame13() : *
      {
         this.data = Status.descriptions[24];
      }
      
      internal function frame14() : *
      {
         this.data = Status.descriptions[5];
      }
      
      internal function frame15() : *
      {
         this.data = Status.descriptions[12];
      }
      
      internal function frame16() : *
      {
         this.data = Status.descriptions[10];
      }
      
      internal function frame17() : *
      {
         this.data = Status.descriptions[15];
      }
      
      internal function frame18() : *
      {
         this.data = Status.descriptions[16];
      }
      
      internal function frame19() : *
      {
         this.data = Status.descriptions[22];
      }
      
      internal function frame20() : *
      {
         this.data = Status.descriptions[21];
      }
      
      internal function frame21() : *
      {
         this.data = Status.descriptions[23];
      }
      
      internal function frame22() : *
      {
         this.data = Status.descriptions[8];
      }
      
      internal function frame23() : *
      {
         this.data = Status.descriptions[9];
      }
      
      internal function frame24() : *
      {
         this.data = Status.descriptions[31];
      }
      
      internal function frame25() : *
      {
         this.data = Status.descriptions[40];
      }
      
      internal function frame26() : *
      {
         this.data = Status.descriptions[11];
      }
      
      internal function frame27() : *
      {
         this.data = Status.descriptions[32];
      }
      
      internal function frame28() : *
      {
         this.data = Status.descriptions[14];
      }
      
      internal function frame29() : *
      {
         this.data = Status.descriptions[20];
      }
      
      internal function frame30() : *
      {
         this.data = Status.descriptions[29];
      }
      
      internal function frame31() : *
      {
         this.data = Status.descriptions[17];
      }
      
      internal function frame32() : *
      {
         this.data = Status.descriptions[13];
      }
      
      internal function frame33() : *
      {
         this.data = Status.descriptions[18];
      }
      
      internal function frame34() : *
      {
         this.data = Status.descriptions[19];
      }
      
      internal function frame35() : *
      {
         this.data = Status.descriptions[34];
      }
      
      internal function frame36() : *
      {
         this.data = Status.descriptions[33];
      }
      
      internal function frame37() : *
      {
         this.data = Status.descriptions[35];
      }
      
      internal function frame38() : *
      {
         this.data = Status.descriptions[36];
      }
      
      internal function frame39() : *
      {
         this.data = Status.descriptions[38];
      }
      
      internal function frame40() : *
      {
         this.data = Status.descriptions[39];
      }
      
      internal function frame41() : *
      {
         this.data = Status.descriptions[43];
      }
      
      internal function frame42() : *
      {
         this.data = Status.descriptions[42];
      }
      
      internal function frame43() : *
      {
         this.data = Status.descriptions[41];
      }
      
      internal function frame44() : *
      {
         this.data = Buff.descriptions[0];
         this.init();
      }
      
      internal function frame45() : *
      {
         this.data = Buff.descriptions[1];
         this.init();
      }
      
      internal function frame46() : *
      {
         this.data = Buff.descriptions[2];
         this.init();
      }
      
      internal function frame47() : *
      {
         this.data = Buff.descriptions[3];
         this.init();
      }
      
      internal function frame48() : *
      {
         this.data = Buff.descriptions[4];
         this.init();
      }
      
      internal function frame49() : *
      {
         this.data = Buff.descriptions[5];
         this.init();
      }
      
      internal function frame50() : *
      {
         this.data = Buff.descriptions[6];
         this.init();
      }
      
      internal function frame51() : *
      {
         this.data = Buff.descriptions[7];
         this.init();
      }
      
      internal function frame52() : *
      {
         this.data = Buff.descriptions[8];
         this.init();
      }
      
      internal function frame53() : *
      {
         this.data = Buff.descriptions[9];
         this.init();
      }
      
      internal function frame54() : *
      {
         this.data = Buff.descriptions[10];
         this.init();
      }
      
      internal function frame55() : *
      {
         this.data = Buff.descriptions[11];
         this.init();
      }
      
      internal function frame56() : *
      {
         this.data = Buff.descriptions[12];
         this.init();
      }
      
      internal function frame57() : *
      {
         this.data = Buff.descriptions[13];
         this.init();
      }
      
      internal function frame59() : *
      {
         this.data = Status.descriptions[37];
      }
   }
}


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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol12726")]
   public dynamic class damageno_5261 extends MovieClip
   {
      public var box:TextField;
      
      public var box2:TextField;
      
      public var deathi:MovieClip;
      
      public var tf:TextField;
      
      public var amp:int;
      
      public function damageno_5261()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3,3,this.frame4,4,this.frame5,5,this.frame6,6,this.frame7,7,this.frame8,8,this.frame9,9,this.frame10,10,this.frame11,11,this.frame12,12,this.frame13,13,this.frame14,14,this.frame15,15,this.frame16,16,this.frame17,17,this.frame18,18,this.frame19,19,this.frame20,20,this.frame21,21,this.frame22,22,this.frame23,23,this.frame24,24,this.frame25,25,this.frame26,26,this.frame27,27,this.frame28,28,this.frame29,29,this.frame30,30,this.frame31,31,this.frame32,32,this.frame33,33,this.frame34,34,this.frame35,35,this.frame36,36,this.frame37,37,this.frame38,38,this.frame39,39,this.frame40,40,this.frame41,41,this.frame42,42,this.frame43,43,this.frame44,44,this.frame45,45,this.frame46,46,this.frame47,47,this.frame48,48,this.frame49,49,this.frame50,50,this.frame51,51,this.frame52,52,this.frame53,57,this.frame58,58,this.frame59,59,this.frame60,60,this.frame61,61,this.frame62,62,this.frame63,63,this.frame64,64,this.frame65,65,this.frame66,66,this.frame67,67,this.frame68,68,this.frame69,69,this.frame70,70,this.frame71,71,this.frame72,72,this.frame73,74,this.frame75);
      }
      
      internal function frame1() : *
      {
         if(parent)
         {
            gotoAndStop(parent.style);
         }
         if(parent)
         {
            this.box.text = parent.number;
         }
         if(parent)
         {
            Global.translate(this.box2,"",50,parent.number2,true);
         }
         this.amp = 40;
         if(Options.language == Options.KOREAN)
         {
            this.amp = 20;
         }
      }
      
      internal function frame2() : *
      {
         this.box.text = parent.number;
      }
      
      internal function frame3() : *
      {
         this.box.text = parent.number;
      }
      
      internal function frame4() : *
      {
         Global.translate(this.tf,"miss");
      }
      
      internal function frame5() : *
      {
         this.box.text = parent.number;
      }
      
      internal function frame6() : *
      {
         this.box.text = parent.number;
      }
      
      internal function frame7() : *
      {
         this.box.text = parent.number;
      }
      
      internal function frame8() : *
      {
         this.box.text = parent.number;
      }
      
      internal function frame9() : *
      {
         Global.translate(this.tf,"death",this.amp,"",true,"",true);
      }
      
      internal function frame10() : *
      {
         Global.translate(this.tf,"limitBreak",this.amp,"",true,"",true);
      }
      
      internal function frame11() : *
      {
         Global.translate(this.tf,"defend",this.amp,"",true,"",true);
      }
      
      internal function frame12() : *
      {
         Global.translate(this.tf,"charge",this.amp,"",true,"",true);
      }
      
      internal function frame13() : *
      {
         Global.translate(this.tf,"regenerate",this.amp,"",true,"",true);
      }
      
      internal function frame14() : *
      {
         Global.translate(this.tf,"haste",this.amp,"",true,"",true);
      }
      
      internal function frame15() : *
      {
         Global.translate(this.tf,"lovable",this.amp,"",true,"",true);
      }
      
      internal function frame16() : *
      {
         Global.translate(this.tf,"goodluck",this.amp,"",true,"",true);
      }
      
      internal function frame17() : *
      {
         Global.translate(this.tf,"autorevive",this.amp,"",true,"",true);
      }
      
      internal function frame18() : *
      {
         Global.translate(this.tf,"bless",this.amp,"",true,"",true);
      }
      
      internal function frame19() : *
      {
         Global.translate(this.tf,"berserk",this.amp,"",true,"",true);
      }
      
      internal function frame20() : *
      {
         Global.translate(this.tf,"morale",this.amp,"",true,"",true);
      }
      
      internal function frame21() : *
      {
         Global.translate(this.tf,"brave",this.amp,"",true,"",true);
      }
      
      internal function frame22() : *
      {
         Global.translate(this.tf,"poison",this.amp,"",true,"",true);
      }
      
      internal function frame23() : *
      {
         Global.translate(this.tf,"burn",this.amp,"",true,"",true);
      }
      
      internal function frame24() : *
      {
         Global.translate(this.tf,"syphon",this.amp,"",true,"",true);
      }
      
      internal function frame25() : *
      {
         Global.translate(this.tf,"doom",this.amp,"",true,"",true);
      }
      
      internal function frame26() : *
      {
         Global.translate(this.tf,"freeze",this.amp,"",true,"",true);
      }
      
      internal function frame27() : *
      {
         Global.translate(this.tf,"chill",this.amp,"",true,"",true);
      }
      
      internal function frame28() : *
      {
         Global.translate(this.tf,"dry",this.amp,"",true,"",true);
      }
      
      internal function frame29() : *
      {
         Global.translate(this.tf,"shroud",this.amp,"",true,"",true);
      }
      
      internal function frame30() : *
      {
         Global.translate(this.tf,"target2",this.amp,"",true,"",true);
      }
      
      internal function frame31() : *
      {
         Global.translate(this.tf,"confuse",this.amp,"",true,"",true);
      }
      
      internal function frame32() : *
      {
         Global.translate(this.tf,"virus",this.amp,"",true,"",true);
      }
      
      internal function frame33() : *
      {
         Global.translate(this.tf,"scorch",this.amp,"",true,"",true);
      }
      
      internal function frame34() : *
      {
         Global.translate(this.tf,"light",this.amp,"",true,"",true);
      }
      
      internal function frame35() : *
      {
         Global.translate(this.tf,"heavy",this.amp,"",true,"",true);
      }
      
      internal function frame36() : *
      {
         Global.translate(this.tf,"stuffed",this.amp,"",true,"",true);
      }
      
      internal function frame37() : *
      {
         Global.translate(this.tf,"hungry",this.amp,"",true,"",true);
      }
      
      internal function frame38() : *
      {
         Global.translate(this.tf,"invisible",this.amp,"",true,"",true);
      }
      
      internal function frame39() : *
      {
         Global.translate(this.tf,"enchanted",this.amp,"",true,"",true);
      }
      
      internal function frame40() : *
      {
         Global.translate(this.tf,"undead",this.amp,"",true,"",true);
      }
      
      internal function frame41() : *
      {
         Global.translate(this.tf,"badluck",this.amp,"",true,"",true);
      }
      
      internal function frame42() : *
      {
         Global.translate(this.tf,"disable",this.amp,"",true,"",true);
      }
      
      internal function frame43() : *
      {
         Global.translate(this.tf,"stagger",this.amp,"",true,"",true);
      }
      
      internal function frame44() : *
      {
         Global.translate(this.tf,"wet",this.amp,"",true,"",true);
      }
      
      internal function frame45() : *
      {
         Global.translate(this.tf,"curse",this.amp,"",true,"",true);
      }
      
      internal function frame46() : *
      {
         Global.translate(this.tf,"weaken",this.amp,"",true,"",true);
      }
      
      internal function frame47() : *
      {
         Global.translate(this.tf,"tired",this.amp,"",true,"",true);
      }
      
      internal function frame48() : *
      {
         Global.translate(this.tf,"stun",this.amp,"",true,"",true);
      }
      
      internal function frame49() : *
      {
         Global.translate(this.tf,"dispel",this.amp,"",true,"",true);
      }
      
      internal function frame50() : *
      {
         Global.translate(this.tf,"surrender",this.amp,"",true,"",true);
      }
      
      internal function frame51() : *
      {
         Global.translate(this.tf,"critical",this.amp);
      }
      
      internal function frame52() : *
      {
         Global.translate(this.tf,"critical2",this.amp);
      }
      
      internal function frame53() : *
      {
         Global.translate(this.tf,"critical3",this.amp);
      }
      
      internal function frame58() : *
      {
         Global.translate(this.tf,"hp_up",this.amp,"",true);
      }
      
      internal function frame59() : *
      {
         Global.translate(this.tf,"atk_up",this.amp,"",true);
      }
      
      internal function frame60() : *
      {
         Global.translate(this.tf,"matk_up",this.amp,"",true);
      }
      
      internal function frame61() : *
      {
         Global.translate(this.tf,"acc_up",this.amp,"",true);
      }
      
      internal function frame62() : *
      {
         Global.translate(this.tf,"def_up",this.amp,"",true);
      }
      
      internal function frame63() : *
      {
         Global.translate(this.tf,"mdef_up",this.amp,"",true);
      }
      
      internal function frame64() : *
      {
         Global.translate(this.tf,"eva_up",this.amp,"",true);
      }
      
      internal function frame65() : *
      {
         Global.translate(this.tf,"hp_down",this.amp,"",true);
      }
      
      internal function frame66() : *
      {
         Global.translate(this.tf,"atk_down",this.amp,"",true);
      }
      
      internal function frame67() : *
      {
         Global.translate(this.tf,"matk_down",this.amp,"",true);
      }
      
      internal function frame68() : *
      {
         Global.translate(this.tf,"acc_down",this.amp,"",true);
      }
      
      internal function frame69() : *
      {
         Global.translate(this.tf,"def_down",this.amp,"",true);
      }
      
      internal function frame70() : *
      {
         Global.translate(this.tf,"mdef_down",this.amp,"",true);
      }
      
      internal function frame71() : *
      {
         Global.translate(this.tf,"eva_down",this.amp,"",true);
      }
      
      internal function frame72() : *
      {
         this.box.text = "+" + parent.number;
         Global.translate(this.box2,"SP");
      }
      
      internal function frame73() : *
      {
         Global.translate(this.tf,"newdata",this.amp,"",true);
      }
      
      internal function frame75() : *
      {
         Global.translate(this.tf,"yoink",this.amp,"",true);
      }
   }
}


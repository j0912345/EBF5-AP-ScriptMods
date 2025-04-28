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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol9690")]
   public dynamic class Creator extends SpellMC
   {
      public function Creator()
      {
         super();
         addFrameScript(0,this.frame1,5,this.frame6,9,this.frame10,12,this.frame13,19,this.frame20,23,this.frame24,29,this.frame30,31,this.frame32,40,this.frame41,48,this.frame49,55,this.frame56,60,this.frame61,70,this.frame71,80,this.frame81,89,this.frame90,113,this.frame114,195,this.frame196,196,this.frame197,215,this.frame216,218,this.frame219,251,this.frame252,252,this.frame253,258,this.frame259,262,this.frame263,267,this.frame268,276,this.frame277,277,this.frame278,284,this.frame285,286,this.frame287,293,this.frame294,302,this.frame303,311,this.frame312,321,this.frame322,329,this.frame330,331,this.frame332,335,this.frame336,342,this.frame343,343,this.frame344,347,this.frame348,355,this.frame356,360,this.frame361,361,this.frame362,368,this.frame369,371,this.frame372,377,this.frame378,385,this.frame386,393,this.frame394,395,this.frame396,397,this.frame398);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame6() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame10() : *
      {
         jumpBack();
      }
      
      internal function frame13() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame20() : *
      {
         Battle.shake("small");
      }
      
      internal function frame24() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame30() : *
      {
         Battle.hidePlayers();
      }
      
      internal function frame32() : *
      {
         Battle.shake("small");
      }
      
      internal function frame41() : *
      {
         Battle.shake("small");
      }
      
      internal function frame49() : *
      {
         Battle.shake("small");
      }
      
      internal function frame56() : *
      {
         Battle.shake("small");
      }
      
      internal function frame61() : *
      {
         Battle.shake("small");
      }
      
      internal function frame71() : *
      {
         Battle.shake("small");
      }
      
      internal function frame81() : *
      {
         Battle.shake("small");
      }
      
      internal function frame90() : *
      {
         Battle.shake("small");
      }
      
      internal function frame114() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame196() : *
      {
         makeMagic(WhiteFlash,0,0);
      }
      
      internal function frame197() : *
      {
         Battle.shake("small");
      }
      
      internal function frame216() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame219() : *
      {
         Battle.shake("small");
      }
      
      internal function frame252() : *
      {
         makeMagic(WhiteFlash,0,0);
      }
      
      internal function frame253() : *
      {
         Battle.shake("big");
      }
      
      internal function frame259() : *
      {
         makeMagic(GodBeam,0,0);
      }
      
      internal function frame263() : *
      {
         Battle.shake("big");
      }
      
      internal function frame268() : *
      {
         Battle.finalHit = false;
         Skills.thecreator(1);
      }
      
      internal function frame277() : *
      {
         Battle.finalHit = false;
         Skills.thecreator(1);
      }
      
      internal function frame278() : *
      {
         Battle.shake("small");
      }
      
      internal function frame285() : *
      {
         Battle.finalHit = false;
         Skills.thecreator(1);
      }
      
      internal function frame287() : *
      {
         Battle.shake("small");
      }
      
      internal function frame294() : *
      {
         Battle.finalHit = false;
         Skills.thecreator(1);
      }
      
      internal function frame303() : *
      {
         Battle.finalHit = false;
         Skills.thecreator(1);
      }
      
      internal function frame312() : *
      {
         Battle.finalHit = false;
         Skills.thecreator(1);
      }
      
      internal function frame322() : *
      {
         Battle.finalHit = false;
         Skills.thecreator(1);
      }
      
      internal function frame330() : *
      {
         Battle.shake("small");
      }
      
      internal function frame332() : *
      {
         Battle.finalHit = false;
         Skills.thecreator(1);
      }
      
      internal function frame336() : *
      {
         Battle.shake("small");
      }
      
      internal function frame343() : *
      {
         Skills.thecreator(1);
      }
      
      internal function frame344() : *
      {
         Battle.shake("small");
      }
      
      internal function frame348() : *
      {
         Battle.shake("small");
      }
      
      internal function frame356() : *
      {
         if(Flags.battleEvent >= 35 && Flags.battleEvent <= 46 || Flags.battleEvent == Flags.ARCADE_RUSH)
         {
            Text.speech(Text.arcade[17]);
         }
      }
      
      internal function frame361() : *
      {
         Battle.shake("small");
      }
      
      internal function frame362() : *
      {
         if(Flags.battleEvent == Flags.ANNA_BATTLE)
         {
            Text.speech(Text.anna[12]);
         }
      }
      
      internal function frame369() : *
      {
         Battle.showPlayers();
      }
      
      internal function frame372() : *
      {
         Battle.shake("small");
      }
      
      internal function frame378() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame386() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame394() : *
      {
         Skills.thecreator(2);
      }
      
      internal function frame396() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame398() : *
      {
         k();
      }
   }
}


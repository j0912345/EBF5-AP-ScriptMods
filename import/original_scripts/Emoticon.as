package
{
   import flash.display.MovieClip;
   import flash.text.*;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol6928")]
   public class Emoticon extends MovieClip
   {
      public var playerNo:int = 1;
      
      public var npc:MovieClip;
      
      public var window:MovieClip;
      
      public var namebox:TextField;
      
      public var hideMouth:Boolean = false;
      
      public var skin:int = 1;
      
      public var skinDamage:int = 1;
      
      public var head:MovieClip;
      
      public var derp:MovieClip;
      
      public var mouth:MovieClip;
      
      public var zombieMatt:Boolean = false;
      
      public var zombieNatz:Boolean = false;
      
      public var zombieLance:Boolean = false;
      
      public var zombieAnna:Boolean = false;
      
      public var zombieNoLegs:Boolean = false;
      
      public var zombieMode:Boolean = false;
      
      public var lowHP:Boolean = false;
      
      public function Emoticon()
      {
         super();
         addFrameScript(0,this.frame1,150,this.frame151,151,this.frame152,156,this.frame157,159,this.frame160,162,this.frame163,165,this.frame166,168,this.frame169,169,this.frame170,170,this.frame171,171,this.frame172,172,this.frame173,173,this.frame174,174,this.frame175,175,this.frame176,176,this.frame177,177,this.frame178,178,this.frame179,179,this.frame180,180,this.frame181,181,this.frame182,182,this.frame183,183,this.frame184,190,this.frame191);
      }
      
      public function skinNPC() : *
      {
         this.npc.skin((parent.NpcData as NPC).skin,2);
         this.namebox.setTextFormat(GUI.boldText);
         Global.translate(this.namebox,"",0,(parent.NpcData as NPC).name);
         if(Options.isCJ())
         {
            this.resize(this.namebox,18);
         }
         else
         {
            this.resize(this.namebox,15);
         }
         Global.smartShrink(this.namebox);
      }
      
      public function resize(param1:TextField, param2:Number) : *
      {
         var _loc3_:TextFormat = new TextFormat();
         _loc3_.size = param2;
         param1.setTextFormat(_loc3_);
      }
      
      public function show(param1:int) : *
      {
         var _loc2_:Boolean = Options.idlePlayers;
         Options.idlePlayers = false;
         gotoAndStop("blank");
         gotoAndStop(param1 + 1);
         Options.idlePlayers = _loc2_;
      }
      
      public function checkMouth() : *
      {
         this.zombieMatt = false;
         this.zombieNatz = false;
         this.zombieLance = false;
         this.zombieAnna = false;
         this.zombieNoLegs = false;
         this.zombieMode = false;
         if(this.playerNo == 1)
         {
            if(Players.hasItem(19,1) || Players.hasItem(33,1))
            {
               this.hideMouth = true;
            }
            else
            {
               this.hideMouth = false;
            }
         }
         if(this.playerNo == 2)
         {
            if(Players.hasItem(19,2) || Players.hasItem(33,2))
            {
               this.hideMouth = true;
            }
            else
            {
               this.hideMouth = false;
            }
         }
         if(this.playerNo == 3)
         {
            if(Players.hasItem(19,3) || Players.hasItem(33,3))
            {
               this.hideMouth = true;
            }
            else if(Players.P3equips[1] == 5 || Players.P3equips[1] == 6 || Players.P3equips[1] == 8 || Players.P3equips[1] == 11 || Players.P3equips[1] == 15)
            {
               this.hideMouth = true;
            }
            else
            {
               this.hideMouth = false;
            }
         }
         if(this.playerNo == 4)
         {
            if(Players.hasItem(19,4) || Players.hasItem(33,4))
            {
               this.hideMouth = true;
            }
            else
            {
               this.hideMouth = false;
            }
         }
         if(this.playerNo == 5)
         {
            if(Players.hasItem(19,5) || Players.hasItem(33,5))
            {
               this.hideMouth = true;
            }
            else
            {
               this.hideMouth = false;
            }
         }
      }
      
      internal function frame1() : *
      {
         stop();
      }
      
      internal function frame151() : *
      {
         this.skinNPC();
      }
      
      internal function frame152() : *
      {
         this.skinNPC();
      }
      
      internal function frame157() : *
      {
         this.checkMouth();
      }
      
      internal function frame160() : *
      {
      }
      
      internal function frame163() : *
      {
         if(this.skin == 5)
         {
            nextFrame();
         }
         if(this.skin == 6)
         {
            gotoAndStop(165);
         }
      }
      
      internal function frame166() : *
      {
         if(this.skin == 2)
         {
            nextFrame();
         }
         if(this.skin == 3)
         {
            gotoAndStop(168);
         }
      }
      
      internal function frame169() : *
      {
         this.zombieMatt = true;
         this.zombieMode = true;
      }
      
      internal function frame170() : *
      {
         this.zombieMatt = true;
         this.zombieMode = true;
      }
      
      internal function frame171() : *
      {
         this.zombieMatt = true;
         this.zombieMode = true;
      }
      
      internal function frame172() : *
      {
         this.zombieNatz = true;
         this.zombieMode = true;
      }
      
      internal function frame173() : *
      {
         this.zombieNatz = true;
         this.zombieMode = true;
      }
      
      internal function frame174() : *
      {
         this.zombieNatz = true;
         this.zombieMode = true;
      }
      
      internal function frame175() : *
      {
         this.zombieLance = true;
         this.zombieMode = true;
      }
      
      internal function frame176() : *
      {
         this.zombieLance = true;
         this.zombieMode = true;
      }
      
      internal function frame177() : *
      {
         this.zombieLance = true;
         this.zombieMode = true;
      }
      
      internal function frame178() : *
      {
         this.zombieAnna = true;
         this.zombieMode = true;
      }
      
      internal function frame179() : *
      {
         this.zombieAnna = true;
         this.zombieMode = true;
      }
      
      internal function frame180() : *
      {
         this.zombieAnna = true;
         this.zombieMode = true;
      }
      
      internal function frame181() : *
      {
         this.zombieMode = true;
         this.zombieNoLegs = true;
      }
      
      internal function frame182() : *
      {
         this.zombieMode = true;
      }
      
      internal function frame183() : *
      {
         this.zombieMode = true;
         this.zombieNoLegs = true;
      }
      
      internal function frame184() : *
      {
         gotoAndStop(currentFrame - 1 + (Battle.foes[0] as Foe).graphic.skin);
      }
      
      internal function frame191() : *
      {
         if(Flags.battleEvent == Flags.MAW)
         {
            gotoAndStop(197);
         }
         if(Flags.battleEvent == Flags.BOSH)
         {
            gotoAndStop(194);
         }
         if(Flags.battleEvent == Flags.SNEK)
         {
            gotoAndStop(193);
         }
         if(Flags.battleEvent == Flags.ROBO)
         {
            gotoAndStop(192);
         }
         if(Flags.battleEvent == Flags.GLOB)
         {
            gotoAndStop(193);
         }
         if(Flags.battleEvent == Flags.TOTOM)
         {
            gotoAndStop(194);
         }
         if(Flags.battleEvent == Flags.GUOYE)
         {
            gotoAndStop(195);
         }
         if(Flags.battleEvent == Flags.PHOENIX)
         {
            gotoAndStop(196);
         }
         if(Flags.battleEvent == Flags.TREAGURE)
         {
            gotoAndStop(196);
         }
         if(Flags.battleEvent == Flags.CHAIR)
         {
            gotoAndStop(194);
         }
      }
   }
}


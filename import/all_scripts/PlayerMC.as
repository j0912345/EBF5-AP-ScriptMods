package
{
   import flash.display.MovieClip;
   import flash.geom.*;
   
   public class PlayerMC extends TargetMC
   {
      public var grave:int = 1;
      
      public var foodBubble:int;
      
      public var deathFace:int = 1;
      
      public var hideMouth:Boolean = false;
      
      public var idle:MovieClip;
      
      public function PlayerMC()
      {
         super();
      }
      
      public function getJumpXY() : *
      {
         X = Battle.stage.localToGlobal(new Point(390,350)).x - point1.x * scaleX;
         Y = Battle.stage.localToGlobal(new Point(390,350)).y - point1.y * scaleY;
         if(playerNo == 2)
         {
            X += 80;
            Y -= 50;
         }
         if(playerNo == 4)
         {
            X += 80;
            Y -= 50;
         }
         if(playerNo == 5)
         {
            X += 0;
            Y -= 40;
         }
      }
      
      public function getElementEffect() : Class
      {
         var _loc1_:String = Players.player5.equips[0].element;
         var _loc2_:int = int(Players.player5.equips[0].skin);
         if(_loc2_ == 20)
         {
            return EffectSmash;
         }
         if(_loc2_ == 13)
         {
            return EffectIce;
         }
         if(_loc2_ == 4)
         {
            return EffectPixels;
         }
         if(_loc2_ == 5)
         {
            return EffectFeathers;
         }
         if(_loc2_ == 10)
         {
            return EffectLeaves;
         }
         if(_loc2_ == 18)
         {
            return EffectStab;
         }
         if(_loc2_ == 17)
         {
            return EffectSlap2;
         }
         if(_loc1_ == "none")
         {
            return EffectStab;
         }
         if(_loc1_ == "fire")
         {
            return EffectFire;
         }
         if(_loc1_ == "ice")
         {
            return EffectIce2;
         }
         if(_loc1_ == "thunder")
         {
            return EffectThunder2;
         }
         if(_loc1_ == "wind")
         {
            return EffectWind;
         }
         if(_loc1_ == "earth")
         {
            return EffectEarth;
         }
         if(_loc1_ == "water")
         {
            return EffectWater2;
         }
         if(_loc1_ == "bio")
         {
            playSound("poison");
            return EffectPoison;
         }
         if(_loc1_ == "bomb")
         {
            return EffectSmash2;
         }
         if(_loc1_ == "dark")
         {
            return EffectDark;
         }
         if(_loc1_ == "holy")
         {
            playSound("holy");
            return EffectCircle;
         }
      }
      
      public function getHit2() : *
      {
         if(!self.status[Status.PUSH_OUT] || Battle.playerCountPlusBackup(true) <= 3 || Battle.playerCountPlusBackup(false) <= 1)
         {
            gotoAndPlay("intro");
         }
         else
         {
            Battle.selectedTarget = self;
            Battle.standbySwitch = 1;
            if(Battle.playerCountPlusBackup(true) >= 5)
            {
               Battle.standbySwitch = 1 + Math.random() * 2;
            }
            (Battle.standbyPlayers[Battle.standbySwitch - 1] as Player).turnTaken = true;
            Battle.standby();
            Battle.counterStack = [];
         }
         self.status[Status.PUSH_OUT] = 0;
      }
      
      override public function stand() : *
      {
         pauseNestedAnimations = false;
         resetXY();
         stop();
         if(this.idle)
         {
            this.idle.playerNo = playerNo;
         }
         if(this.x >= ox + 50)
         {
            return;
         }
         if(Battle.stage && self && Boolean(self.statusDisplay))
         {
            self.statusDisplay.visible = true;
         }
         if(Battle.stage && self && Boolean(self.statusDisplay))
         {
            self.statusDisplay.update(self);
         }
      }
      
      public function changeEquips() : *
      {
         if(!(self is Player))
         {
            return;
         }
         if(Flags.battleEvent >= 35 && Flags.battleEvent <= 46 || Flags.battleEvent == Flags.ARCADE_RUSH)
         {
            Text.speech(Text.arcade[12]);
         }
         Battle.calculateSP();
         self.setEquipGraphics();
         gotoAndPlay("null");
         if(Players.hasItem(19,(self as Player).playerNo) || Players.hasItem(33,(self as Player).playerNo))
         {
            this.hideMouth = true;
         }
         else
         {
            this.hideMouth = false;
         }
      }
   }
}


package
{
   import flash.display.MovieClip;
   import flash.events.*;
   import text.*;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol13036")]
   public class BattleMenu extends MovieClip
   {
      public static var hasAlternative:Boolean = false;
      
      public static var adCount:int = 2;
      
      public var playerBars:MovieClip;
      
      public var awardDisplay:MovieClip;
      
      public var commandMenu:MovieClip;
      
      public var skillMenuSmall:MovieClip;
      
      public var skillMenuBig:MovieClip;
      
      public var skillMenuHuge:MovieClip;
      
      public var equipMenu:MovieClip;
      
      public var equipMenu2:MovieClip;
      
      public var equipMenu3:MovieClip;
      
      public var setsMenu:MovieClip;
      
      public var transitions:MovieClip;
      
      public var speechBox:MovieClip;
      
      public var stats:MovieClip;
      
      public var foeStats:MovieClip;
      
      public var pointer:MovieClip;
      
      public var pointer2:MovieClip;
      
      public var foeBars:MovieClip;
      
      public var playerArrow:MovieClip;
      
      public var naming:MovieClip;
      
      public var debug:MovieClip;
      
      public var turnTimer:MovieClip;
      
      public var yAdjust:Number = 60;
      
      public var adScreen:MovieClip;
      
      public var crosshairs:Array = [];
      
      public var bubbles:Array = [];
      
      public var selectedSkill:Object;
      
      public var currentMenu:String = "";
      
      public var turnStarted:Boolean = false;
      
      public var timesUp:Boolean = false;
      
      public var cursor:Icon;
      
      public var newEquips:Array = [];
      
      public var equipPos:int;
      
      public var equipFlag:Boolean = false;
      
      public function BattleMenu()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      public function showMochiAd() : *
      {
         if(!Debug.enableMochi)
         {
            return;
         }
         --adCount;
         if(adCount <= 0)
         {
            adCount = 6;
            this.adScreen.visible = true;
            this.adScreen.play();
         }
      }
      
      public function init() : *
      {
         Game.root.addEventListener(MouseEvent.RIGHT_MOUSE_DOWN,this.onRightClick);
         Game.root.mouseFunction = this.moveCursor;
         Game.mode = Game.BATTLE;
         this.timesUp = false;
         this.commandMenu.visible = false;
         this.playerArrow.mouseEnabled = false;
         this.awardDisplay.visible = false;
         this.updatePlayerBars();
         this.hideSkillMenus();
         this.pointer2.y = 1000;
      }
      
      public function timeUp() : *
      {
         SFX.playSound("timesup");
         this.timesUp = true;
         this.forceTurnSkip();
      }
      
      public function forceTurnSkip() : *
      {
         this.hideSkillMenus();
         if(Battle.players[0])
         {
            (Battle.players[0] as Player).turnTaken = true;
         }
         if(Battle.players[1])
         {
            (Battle.players[1] as Player).turnTaken = true;
         }
         if(Battle.players[2])
         {
            (Battle.players[2] as Player).turnTaken = true;
         }
         this.selectedSkill = Spells.skip;
         this.selectTarget(null);
      }
      
      public function tearDown() : *
      {
         Game.root.removeEventListener(MouseEvent.RIGHT_MOUSE_DOWN,this.onRightClick);
         if(Options.turnTimeLimit)
         {
            this.turnTimer.teardown();
         }
      }
      
      public function onRightClick(param1:MouseEvent = null) : *
      {
         if(this.stats.visible)
         {
            this.stats.visible = false;
         }
         if(this.naming.visible)
         {
            this.naming.close();
         }
         if(this.equipMenu3.visible || this.equipMenu2.visible)
         {
            this.cancelEquipSelection();
         }
         else if(this.currentMenu && this.commandMenu.visible && this.commandMenu.currentFrame == 1)
         {
            this.hideSkillMenus();
            this.currentMenu = "";
            this.openRecentMenu();
         }
         if(this.commandMenu.currentFrame == 2)
         {
            this.cancelSelection();
         }
         if(this.speechBox.visible)
         {
            this.speechBox.nextText();
         }
      }
      
      public function moveCursor() : *
      {
         if(!this.cursor)
         {
            return;
         }
         this.cursor.x = mouseX;
         this.cursor.y = mouseY;
      }
      
      public function startTurn() : *
      {
         if(Debug.trailerMode)
         {
            this.visible = true;
         }
         this.showSwapCrosshairs();
         Battle.multiSpell = -1;
         this.selectedSkill = null;
         this.newEquips = [null,null,null,null,null,null];
         this.equipFlag = false;
         this.showInfoBubbles();
         this.commandMenu.visible = true;
         this.commandMenu.fader.gotoAndPlay(1);
         this.commandMenu.gotoAndStop(3);
         this.commandMenu.gotoAndStop(1);
         if(Battle.currentPlayer.limit != 100 || !Battle.currentPlayer.hasLimitSkill() || Flags.battleEvent == Flags.EVIL_MATT)
         {
            this.commandMenu.limit.visible = false;
         }
         else
         {
            this.commandMenu.limit.visible = true;
         }
         Skills.user = Battle.currentPlayer;
         Battle.currentPlayer.startTurn();
         this.openRecentMenu();
         if(!Battle.currentPlayer.slime)
         {
            this.setPlayerArrow();
         }
         if(Battle.currentPlayer == Battle.players[0])
         {
            this.pointer2.y = 368 + this.yAdjust;
         }
         if(Battle.currentPlayer == Battle.players[1])
         {
            this.pointer2.y = 398 + this.yAdjust;
         }
         if(Battle.currentPlayer == Battle.players[2])
         {
            this.pointer2.y = 428 + this.yAdjust;
         }
         if(Options.turnTimeLimit)
         {
            if(this.timesUp)
            {
               this.forceTurnSkip();
            }
            else
            {
               this.turnTimer.unpause();
            }
         }
      }
      
      public function showInfoBubbles() : *
      {
         var _loc1_:Target = null;
         var _loc2_:MovieClip = null;
         for each(_loc1_ in Battle.foes)
         {
            if(_loc1_ && _loc1_.status[Status.SHROUD] == 0 && !_loc1_.dead && !Weather.isGlitchy() && (Foes.isScanned(_loc1_) || Debug.bestiary || Options.autoScan))
            {
               _loc2_ = new Bubble(_loc1_,this.showFoeStats);
               addChild(_loc2_);
               _loc2_.x = _loc1_.graphic.getX(4) + 35;
               _loc2_.y = _loc1_.graphic.getY(4) + 25;
               this.bubbles.push(_loc2_);
               this.setChildIndex(_loc2_,0);
            }
         }
      }
      
      public function hideInfoBubbles() : *
      {
         var _loc1_:MovieClip = null;
         for each(_loc1_ in this.bubbles)
         {
            if(Boolean(_loc1_) && Boolean(_loc1_.parent))
            {
               _loc1_.parent.removeChild(_loc1_);
            }
         }
      }
      
      public function setPlayerArrow() : *
      {
         this.playerArrow.gotoAndPlay("intro");
         this.playerArrow.x = Battle.currentPlayer.graphic.getX(4) - 5;
         this.playerArrow.y = Battle.currentPlayer.graphic.getY(4) - 40;
      }
      
      public function selectSkill(param1:Object) : *
      {
         this.removeCrosshairs();
         this.cursor = GUI.createIcon(this,param1,null,true,Icon.CURSOR);
         this.hideSkillMenus();
         this.commandMenu.gotoAndStop(2);
         this.selectedSkill = param1;
         hasAlternative = false;
         Global.healmore = false;
         if(this.selectedSkill == Spells.healmore && (Options.onePlayerMode || Flags.battleEvent == Flags.ARENA_BATTLE))
         {
            this.selectedSkill = Spells.heal;
            param1 = Spells.heal;
            Global.healmore = true;
         }
         if(Battle.foeCount() == 1 && (param1.target == Target.ONE_ENEMY || param1.target == Target.ALL_ENEMY || param1.target == Target.CENTER_ENEMY || param1.target == Target.RANDOM_ENEMY))
         {
            if(Boolean(param1.alternative) && param1.alternative.target != Target.ALL_ENEMY)
            {
               hasAlternative = true;
               this.showCrosshairs(param1.alternative.target,true);
            }
            else
            {
               this.showCrosshairs(param1.target);
            }
         }
         else
         {
            if(Boolean(param1.alternative) && param1.alternative.target == Target.ALL_ENEMY)
            {
               hasAlternative = true;
               this.showCrosshairs(param1.alternative.target,true);
            }
            this.showCrosshairs(param1.target);
            if(Boolean(param1.alternative) && param1.alternative.target != Target.ALL_ENEMY)
            {
               hasAlternative = true;
               this.showCrosshairs(param1.alternative.target,true);
            }
         }
         if(this.cursor)
         {
            setChildIndex(this.cursor,numChildren - 1);
         }
      }
      
      public function selectTarget(param1:Target, param2:Boolean = false, param3:int = 0) : *
      {
         if(this.cursor)
         {
            removeChild(this.cursor);
         }
         this.cursor = null;
         if(Debug.trailerMode)
         {
            this.visible = false;
         }
         Global.element = Battle.currentPlayer.weapon.element;
         this.hideInfoBubbles();
         Battle.selectedTarget = param1;
         if(this.selectedSkill != Spells.swap && this.selectedSkill != Spells.standby1 && this.selectedSkill != Spells.standby2)
         {
            if(Battle.currentPlayer.status[Status.HASTE])
            {
               --Battle.currentPlayer.status[Status.HASTE];
            }
            else
            {
               Battle.currentPlayer.turnTaken = true;
            }
         }
         if(this.selectedSkill == Spells.defend)
         {
            Battle.currentPlayer.graphic.animate("defend");
            this.addToRecent(Spells.defend);
         }
         else if(this.selectedSkill == Spells.skip)
         {
            if(!Options.turnTimeLimit)
            {
               this.addToRecent(Spells.skip);
            }
            if(Battle.currentPlayer.statusDisplay)
            {
               Battle.currentPlayer.statusDisplay.update(Battle.currentPlayer);
            }
            Battle.currentPlayer.viridianEffect();
            if(Flags.battleEvent >= 35 && Flags.battleEvent <= 46 || Flags.battleEvent == Flags.ARCADE_RUSH)
            {
               Text.speech(Text.arcade[13]);
            }
         }
         else if(this.selectedSkill == Spells.swap)
         {
            Battle.swapPlayer = Battle.selectedTarget;
         }
         else if(this.selectedSkill == Spells.standby1)
         {
            Battle.standbySwitch = 1;
            if(!Battle.selectedTarget.dead)
            {
               Battle.selectedTarget.graphic.animate("hide");
            }
            else
            {
               Battle.selectedTarget.graphic.animate("dragout");
               Medals.unlock(Medals.ripInPeace);
            }
         }
         else if(this.selectedSkill == Spells.standby2)
         {
            Battle.standbySwitch = 2;
            if(!Battle.selectedTarget.dead)
            {
               Battle.selectedTarget.graphic.animate("hide");
            }
            else
            {
               Battle.selectedTarget.graphic.animate("dragout");
               Medals.unlock(Medals.ripInPeace);
            }
         }
         else if(this.selectedSkill == Spells.flee)
         {
            Battle.standbySwitch = 0;
            Battle.flee();
         }
         else if(this.currentMenu == "item")
         {
            Battle.currentPlayer.useItem(this.selectedSkill);
            --(this.selectedSkill as Item).quantity;
         }
         else if(this.currentMenu == "equip")
         {
            Battle.currentPlayer.graphic.animate("equip");
         }
         else if(this.currentMenu == "summon")
         {
            Battle.standbySwitch = 0;
            Battle.summonFlag = true;
            Spell.SUMMON = true;
            Summons.currentSummon = this.selectedSkill;
            Battle.currentPlayer.useSkill(this.selectedSkill);
            if(!Debug.infiniteSP)
            {
               Battle.SP -= this.selectedSkill.SP;
            }
         }
         else
         {
            Battle.standbySwitch = 0;
            if(this.selectedSkill.target == Target.ALL_ENEMY_OR_ALL_ALLY && param3 == 1)
            {
               this.selectedSkill.target = Target.ALL_ENEMY;
            }
            else if(this.selectedSkill.target == Target.ALL_ENEMY_OR_ALL_ALLY && param3 == 2)
            {
               this.selectedSkill.target = Target.ALL_ALLY;
            }
            if(this.selectedSkill.cooldownTime)
            {
               if(Battle.currentPlayer.hasFlair(Equips.nanomachines))
               {
                  this.selectedSkill.cooldown = 1 + Math.ceil((this.selectedSkill.cooldownTime - 1) / 2);
                  if(this.selectedSkill.alternative)
                  {
                     this.selectedSkill.alternative.cooldown = 1 + Math.ceil((this.selectedSkill.cooldownTime - 2) / 2);
                  }
               }
               else
               {
                  this.selectedSkill.cooldown = this.selectedSkill.cooldownTime;
                  if(this.selectedSkill.alternative)
                  {
                     this.selectedSkill.alternative.cooldown = this.selectedSkill.cooldownTime;
                  }
               }
            }
            if(Boolean(this.selectedSkill.alternative) && param2)
            {
               Battle.currentPlayer.useSkill(this.selectedSkill.alternative);
            }
            else
            {
               Battle.currentPlayer.useSkill(this.selectedSkill);
            }
            if(this.selectedSkill == Spells.heal && Global.healmore)
            {
               this.addToRecent(Spells.healmore);
               Spells.healmore.cooldown = Spells.healmore.cooldownTime;
               Global.healmore = false;
            }
            else
            {
               this.addToRecent(this.selectedSkill);
            }
         }
         if(Options.turnTimeLimit)
         {
            this.turnTimer.pause();
         }
         this.removeCrosshairs();
         this.commandMenu.visible = false;
         this.turnStarted = false;
         this.playerArrow.gotoAndPlay("outro");
         this.pointer2.y = 1000;
         this.updatePlayerBars();
      }
      
      public function addToRecent(param1:Object) : *
      {
         var _loc3_:Object = null;
         if(param1.limit)
         {
            return;
         }
         var _loc2_:Array = Battle.currentPlayer.recentSkills;
         for each(_loc3_ in _loc2_)
         {
            if(_loc3_ == param1)
            {
               _loc2_.splice(_loc2_.indexOf(_loc3_),1);
            }
         }
         _loc2_.unshift(param1);
         if(Battle.currentPlayer.recentSkills.length > 6)
         {
            Battle.currentPlayer.recentSkills.pop();
         }
      }
      
      public function showCrosshairs(param1:String, param2:Boolean = false) : *
      {
         var _loc3_:MovieClip = null;
         var _loc4_:Target = null;
         if(param1 == Target.AUTO)
         {
            this.selectTarget(Battle.currentPlayer);
         }
         if(param1 == Target.ONE_ENEMY || param1 == Target.CENTER_ENEMY || param1 == Target.ONE_ANY)
         {
            for each(_loc4_ in Battle.foes)
            {
               if(!_loc4_.status[Status.LOVED])
               {
                  this.showCrosshair(_loc4_,param2);
               }
            }
         }
         if(param1 == Target.CAPTURABLE_ENEMY)
         {
            for each(_loc4_ in Battle.foes)
            {
               if(!_loc4_.status[Status.LOVED] && (_loc4_ as Foe).catchRate != 0)
               {
                  this.showCrosshair(_loc4_,param2);
               }
            }
         }
         if(param1 == Target.ALL_ENEMY || param1 == Target.RANDOM_ENEMY || param1 == Target.ALL_ENEMY_OR_ALL_ALLY)
         {
            _loc3_ = new Crosshair2();
            addChild(_loc3_);
            _loc3_.type = 1;
            _loc3_.alternative = param2;
            _loc3_.x = 780;
            _loc3_.y = 230;
            _loc3_.scaleX = 4.5;
            _loc3_.scaleY = 4.5;
            this.crosshairs.push(_loc3_);
            this.setChildIndex(_loc3_,0);
         }
         if(param1 == Target.ONE_ALLY || param1 == Target.ONE_ANY || param1 == Target.ANY_ALLY || param1 == Target.ONE_ANY_OR_STANDBY || param1 == Target.ONE_ALLY_OR_STANDBY)
         {
            if(this.selectedSkill.cost)
            {
               for each(_loc4_ in Battle.players)
               {
                  if(!_loc4_.dead && _loc4_.status[Status.STUFFED] == 0)
                  {
                     this.showCrosshair(_loc4_,param2);
                  }
               }
            }
            else
            {
               for each(_loc4_ in Battle.players)
               {
                  if(!_loc4_.dead)
                  {
                     this.showCrosshair(_loc4_,param2);
                  }
               }
            }
         }
         if(param1 == Target.ONE_ANY_OR_STANDBY || param1 == Target.ONE_ALLY_OR_STANDBY)
         {
            if(this.selectedSkill.cost)
            {
               for each(_loc4_ in Battle.standbyPlayers)
               {
                  if(!_loc4_.dead && _loc4_.status[Status.STUFFED] == 0)
                  {
                     this.showCrosshair(_loc4_,param2);
                  }
               }
            }
            else
            {
               for each(_loc4_ in Battle.standbyPlayers)
               {
                  if(_loc4_ && !_loc4_.dead)
                  {
                     this.showCrosshair(_loc4_,param2);
                  }
               }
            }
         }
         if(param1 == Target.READY_ALLY)
         {
            for each(_loc4_ in Battle.players)
            {
               if(_loc4_.canTakeTurn())
               {
                  this.showCrosshair(_loc4_,param2);
               }
            }
         }
         if(param1 == Target.SWAPABLE_ALLY)
         {
            for each(_loc4_ in Battle.players)
            {
               if(!_loc4_.turnTaken && !_loc4_.status[Status.FREEZE] && !_loc4_.status[Status.SLIME])
               {
                  this.showCrosshair(_loc4_,param2,true);
               }
            }
         }
         if(param1 == Target.DEAD_ALLY || param1 == Target.ANY_ALLY)
         {
            for each(_loc4_ in Battle.players)
            {
               if(_loc4_.dead)
               {
                  this.showCrosshair(_loc4_,param2,true);
               }
            }
            for each(_loc4_ in Battle.standbyPlayers)
            {
               if(_loc4_ && _loc4_.dead)
               {
                  this.showCrosshair(_loc4_,param2);
               }
            }
         }
         if(param1 == Target.ALL_ALLY || param1 == Target.ALL_ENEMY_OR_ALL_ALLY)
         {
            if(Boolean(this.selectedSkill.cost) && Boolean(Battle.players[0].status[Status.STUFFED]) && (Boolean(Battle.players[1]) && Boolean(Battle.players[1].status[Status.STUFFED])) && (Boolean(Battle.players[2]) && Boolean(Battle.players[2].status[Status.STUFFED])))
            {
               return;
            }
            _loc3_ = new Crosshair2();
            addChild(_loc3_);
            _loc3_.type = 2;
            _loc3_.alternative = param2;
            _loc3_.x = 200;
            _loc3_.y = 200;
            _loc3_.scaleX = 4.5;
            _loc3_.scaleY = 4.5;
            this.crosshairs.push(_loc3_);
            this.setChildIndex(_loc3_,0);
         }
         if(param1 == Target.ALL)
         {
            _loc3_ = new Crosshair2();
            addChild(_loc3_);
            _loc3_.type = 3;
            _loc3_.alternative = param2;
            _loc3_.x = 500;
            _loc3_.y = 240;
            _loc3_.scaleX = 5.5;
            _loc3_.scaleY = 5.5;
            this.crosshairs.push(_loc3_);
            this.setChildIndex(_loc3_,0);
         }
      }
      
      public function showSwapCrosshairs() : *
      {
         var _loc1_:Player = null;
         var _loc2_:MovieClip = null;
         for each(_loc1_ in Battle.players)
         {
            if(_loc1_.canTakeTurn() && Battle.currentPlayer != _loc1_)
            {
               _loc2_ = new Crosshair3();
               addChild(_loc2_);
               _loc2_.x += _loc1_.graphic.getX(3) - 5;
               _loc2_.y += _loc1_.graphic.getY(3) + 15;
               this.crosshairs.push(_loc2_);
               _loc2_.scaleX = 1.2;
               _loc2_.scaleY = 1.2;
               _loc2_.target = _loc1_;
               this.setChildIndex(_loc2_,0);
            }
         }
      }
      
      public function showCrosshair(param1:Target, param2:Boolean, param3:Boolean = false) : *
      {
         var _loc4_:MovieClip = null;
         if(!param1.dead || param3)
         {
            if(hasAlternative && (!param1.isPlayer && Battle.foeCount() != 1 && this.selectedSkill != Spells.berserk2 || param1.isPlayer))
            {
               _loc4_ = new Crosshair4();
            }
            else
            {
               _loc4_ = new Crosshair();
            }
            addChild(_loc4_);
            if(param1 == Battle.standbyPlayers[0])
            {
               _loc4_.x += 50;
               _loc4_.y += 100;
            }
            else if(param1 == Battle.standbyPlayers[1])
            {
               _loc4_.x += 50;
               _loc4_.y += 180;
            }
            else
            {
               _loc4_.x += param1.graphic.getX(3);
               _loc4_.y += param1.graphic.getY(3);
            }
            _loc4_.alternative = param2;
            this.crosshairs.push(_loc4_);
            _loc4_.scaleX = 1.2;
            _loc4_.scaleY = 1.2;
            if(param1.isPlayer && hasAlternative)
            {
               _loc4_.scaleX *= -1;
            }
            _loc4_.target = param1;
            this.setChildIndex(_loc4_,0);
         }
      }
      
      public function removeCrosshairs() : *
      {
         var _loc1_:MovieClip = null;
         hasAlternative = false;
         this.commandMenu.gotoAndStop(1);
         for each(_loc1_ in this.crosshairs)
         {
            if(Boolean(_loc1_) && Boolean(_loc1_.parent))
            {
               _loc1_.parent.removeChild(_loc1_);
            }
         }
      }
      
      public function hideSkillMenus() : *
      {
         if(this.currentMenu != "equip" && this.currentMenu != "equip2" && this.currentMenu != "sets")
         {
            this.newEquips = [null,null,null,null,null,null];
            this.equipFlag = false;
         }
         this.skillMenuSmall.visible = false;
         this.skillMenuBig.visible = false;
         this.skillMenuHuge.visible = false;
         this.equipMenu.visible = false;
         this.equipMenu2.visible = false;
         this.equipMenu3.visible = false;
         this.setsMenu.visible = false;
         GUI.removeIcons();
         this.pointer.y = 1000;
      }
      
      public function cancelSelection() : *
      {
         removeChild(this.cursor);
         this.cursor = null;
         this.commandMenu.gotoAndStop(1);
         Spell.SUMMON = false;
         this.removeCrosshairs();
         this.showSwapCrosshairs();
         this.openRecentMenu();
      }
      
      public function stretchSkillMenu(param1:MovieClip, param2:int) : *
      {
         param1.visible = true;
         param1.fader.gotoAndPlay(1);
         param1.window.height = GUI.activeIcons[GUI.activeIcons.length - 1].y + 50 + 15;
         if(this.currentMenu == "tactics")
         {
            param1.window.height += 50;
         }
         param1.window.y = GUI.activeIcons[0].y + param1.window.height / 2 - 11;
         var _loc3_:int = Math.floor((GUI.activeIcons.length - 1) / param2) * 1 + 1;
         if(this.currentMenu == "tactics")
         {
            param1.window.y += 2;
         }
         if(this.currentMenu == "recent")
         {
            param1.window.y += 3;
         }
         if(this.currentMenu == "summon")
         {
            param1.y = 445 - _loc3_ * 42.7;
         }
         else
         {
            param1.y = 445 - _loc3_ * 44;
         }
         if(Boolean(param1.recent) && this.currentMenu != "recent")
         {
            param1.recent.visible = false;
         }
         if(Boolean(param1.recent) && this.currentMenu == "recent")
         {
            param1.recent.visible = true;
         }
         if(this.currentMenu == "attack")
         {
            param1.y = 310 - _loc3_ * 25;
            param1.window.y += 3;
         }
         if(_loc3_ <= 2)
         {
            if(this.currentMenu == "tactics")
            {
               param1.y = 400 - _loc3_ * 25;
            }
            if(this.currentMenu == "skill")
            {
               param1.y = 420 - _loc3_ * 22 - 60;
            }
            if(this.currentMenu == "special")
            {
               param1.y = 440 - _loc3_ * 22 - 50;
            }
            if(this.currentMenu == "summon")
            {
               param1.y = 430 - _loc3_ * 25;
            }
         }
         param1.y += this.yAdjust - 7;
      }
      
      public function openRecentMenu() : *
      {
         var _loc3_:String = null;
         var _loc4_:Spell = null;
         this.hideSkillMenus();
         this.currentMenu = "recent";
         var _loc1_:Array = [];
         var _loc2_:int = 0;
         while(_loc2_ < Battle.currentPlayer.recentSkills.length)
         {
            _loc3_ = Icon.SKILL;
            for each(_loc4_ in Spells.ALL_TACTICS)
            {
               if(Battle.currentPlayer.recentSkills[_loc2_] == _loc4_)
               {
                  _loc3_ = Icon.TACTIC;
                  break;
               }
            }
            Battle.currentPlayer.recentSkills[_loc2_] = Spell.getUpgrades(Battle.currentPlayer.recentSkills[_loc2_]);
            _loc1_.push(GUI.createIcon(this.skillMenuBig,Battle.currentPlayer.recentSkills[_loc2_],this.selectSkill,Battle.currentPlayer.recentSkills[_loc2_].cooldown == 0 && !Battle.currentPlayer.status[Status.SYPHON] || Boolean(Battle.currentPlayer.recentSkills[_loc2_].unsyphonable),_loc3_));
            _loc2_++;
         }
         if(_loc1_.length != 0)
         {
            GUI.createIconMatrix(_loc1_,3,0,0,1);
            this.stretchSkillMenu(this.skillMenuBig,3);
            this.pointer.y = 900;
         }
      }
      
      public function openAttackMenu() : *
      {
         var _loc1_:Array = null;
         var _loc2_:int = 0;
         this.hideSkillMenus();
         if(this.currentMenu == "attack")
         {
            this.openRecentMenu();
            return;
         }
         this.currentMenu = "attack";
         this.pointer.y = 365 - 74 + this.yAdjust;
         if(Battle.currentPlayer.limit == 100 && Battle.currentPlayer.hasLimitSkill() && Flags.battleEvent != Flags.EVIL_MATT)
         {
            _loc1_ = [];
            _loc2_ = 0;
            while(_loc2_ < Battle.currentPlayer.skillsLimit.length)
            {
               if(Battle.currentPlayer.skillsLimit[_loc2_] && Battle.currentPlayer.skillsLimit[_loc2_].level != 0 && Boolean(Battle.currentPlayer.skillsLimit[_loc2_].owned))
               {
                  _loc1_.push(GUI.createIcon(this.skillMenuSmall,Battle.currentPlayer.skillsLimit[_loc2_],this.selectSkill,true,Icon.SKILL));
               }
               _loc2_++;
            }
            GUI.createIconMatrix(_loc1_,2,0,0,1);
            this.stretchSkillMenu(this.skillMenuSmall,2);
         }
         else
         {
            this.selectSkill(Battle.currentPlayer.skillsLimit[0]);
         }
      }
      
      public function openTacticsMenu() : *
      {
         this.hideSkillMenus();
         Spells.setStandybyText();
         if(this.currentMenu == "tactics")
         {
            this.openRecentMenu();
            return;
         }
         this.currentMenu = "tactics";
         this.pointer.y = 384 - 62 + this.yAdjust;
         var _loc1_:Array = [];
         var _loc2_:Array = [Spells.defend,Spells.swap,Spells.standby1,Spells.standby2,Spells.scan,Spells.capture,Spells.skip,Spells.flee];
         var _loc3_:Array = [true,true,true,true,true,true,true,true];
         if(!Battle.standbyPlayers[1])
         {
            _loc3_.pop();
            _loc2_.splice(3,1);
         }
         if(!Battle.standbyPlayers[0])
         {
            _loc3_.pop();
            _loc2_.splice(2,1);
         }
         if(Battle.players.length == 1)
         {
            _loc3_.pop();
            _loc2_.splice(1,1);
         }
         if(!Game.fleeable)
         {
            _loc3_[_loc3_.length - 1] = false;
         }
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.length)
         {
            _loc1_.push(GUI.createIcon(this.skillMenuSmall,_loc2_[_loc4_],this.selectSkill,_loc3_[_loc4_],Icon.TACTIC));
            _loc4_++;
         }
         GUI.createIconMatrix(_loc1_,2,0,-50,1);
         this.stretchSkillMenu(this.skillMenuSmall,2);
      }
      
      public function openSkillMenu() : *
      {
         this.hideSkillMenus();
         if(this.currentMenu == "skill")
         {
            this.openRecentMenu();
            return;
         }
         this.currentMenu = "skill";
         this.pointer.y = 403 - 50 + this.yAdjust;
         var _loc1_:Array = [];
         var _loc2_:int = 0;
         while(_loc2_ < Battle.currentPlayer.skillsMain.length)
         {
            if(Battle.currentPlayer.skillsMain[_loc2_])
            {
               if(Battle.currentPlayer.skillsMain[_loc2_].level != 0)
               {
                  _loc1_.push(GUI.createIcon(this.skillMenuBig,Spell.getUpgrades(Battle.currentPlayer.skillsMain[_loc2_]),this.selectSkill,Spell.getUpgrades(Battle.currentPlayer.skillsMain[_loc2_]).cooldown == 0 && !Battle.currentPlayer.status[Status.SYPHON],Icon.SKILL));
               }
            }
            _loc2_++;
         }
         GUI.createIconMatrix(_loc1_,3,0,0,1);
         this.stretchSkillMenu(this.skillMenuBig,3);
      }
      
      public function openSpecialMenu() : *
      {
         this.hideSkillMenus();
         if(this.currentMenu == "special")
         {
            this.openRecentMenu();
            return;
         }
         this.currentMenu = "special";
         var _loc1_:Array = [];
         var _loc2_:int = 0;
         while(_loc2_ < Battle.currentPlayer.skillsSub.length)
         {
            if(Boolean(Battle.currentPlayer.skillsSub[_loc2_]) && Battle.currentPlayer.skillsSub[_loc2_].level != 0)
            {
               _loc1_.push(GUI.createIcon(this.skillMenuBig,Battle.currentPlayer.skillsSub[_loc2_],this.selectSkill,Battle.currentPlayer.realMP >= Battle.currentPlayer.skillsSub[_loc2_].getStats().MP && !Battle.currentPlayer.status[Status.SYPHON],Icon.SKILL));
            }
            _loc2_++;
         }
         if(_loc1_.length != 0)
         {
            GUI.createIconMatrix(_loc1_,3,0,0,1);
            this.stretchSkillMenu(this.skillMenuBig,3);
            this.pointer.y = 422 - 39 + this.yAdjust;
         }
      }
      
      public function openSummonMenu() : *
      {
         this.hideSkillMenus();
         if(this.currentMenu == "summon")
         {
            this.openRecentMenu();
            return;
         }
         this.currentMenu = "summon";
         this.skillMenuBig.visible = true;
         this.pointer.y = 441 - 26 + this.yAdjust;
         var _loc1_:Array = [];
         var _loc2_:int = 0;
         while(_loc2_ < Summons.PARTY_SUMMONS.length)
         {
            if(Summons.PARTY_SUMMONS[_loc2_] != Equips.empty && !(!Main.hasPremium && Summons.PARTY_SUMMONS[_loc2_].premium))
            {
               _loc1_.push(GUI.createIcon(this.skillMenuBig,Summons.PARTY_SUMMONS[_loc2_],this.selectSkill,Battle.SP >= Summons.PARTY_SUMMONS[_loc2_].SP && Flags.battleEvent != Flags.EVIL_LANCE && Flags.battleEvent != Flags.ARENA_BATTLE,Icon.SUMMON));
            }
            _loc2_++;
         }
         GUI.createIconMatrix(_loc1_,3,2,3,1,-1);
         this.stretchSkillMenu(this.skillMenuBig,3);
      }
      
      public function openEquipMenu() : *
      {
         this.hideSkillMenus();
         if(this.currentMenu == "equip")
         {
            this.openRecentMenu();
            return;
         }
         this.currentMenu = "equip";
         this.equipMenu.visible = true;
         this.equipMenu.fader.gotoAndPlay(1);
         this.pointer.y = 460 - 16 + this.yAdjust;
         var _loc1_:Array = [];
         var _loc2_:Player = Battle.currentPlayer;
         if(this.newEquips[0])
         {
            _loc1_.push(GUI.createIcon(this.equipMenu,this.newEquips[0],this.selectEquip,true,Icon.EQUIP,0,0,0,0));
         }
         else
         {
            _loc1_.push(GUI.createIcon(this.equipMenu,_loc2_.weapon,this.selectEquip,true,Icon.EQUIP,0,0,0,0));
         }
         if(this.newEquips[1])
         {
            _loc1_.push(GUI.createIcon(this.equipMenu,this.newEquips[1],this.selectEquip,true,Icon.EQUIP,0,0,0,1));
         }
         else
         {
            _loc1_.push(GUI.createIcon(this.equipMenu,_loc2_.flair1,this.selectEquip,true,Icon.EQUIP,0,0,0,1));
         }
         if(this.newEquips[2])
         {
            _loc1_.push(GUI.createIcon(this.equipMenu,this.newEquips[2],this.selectEquip,true,Icon.EQUIP,0,0,0,2));
         }
         else
         {
            _loc1_.push(GUI.createIcon(this.equipMenu,_loc2_.hat,this.selectEquip,true,Icon.EQUIP,0,0,0,2));
         }
         if(this.newEquips[3])
         {
            _loc1_.push(GUI.createIcon(this.equipMenu,this.newEquips[3],this.selectEquip,true,Icon.EQUIP,0,0,0,3));
         }
         else
         {
            _loc1_.push(GUI.createIcon(this.equipMenu,_loc2_.flair2,this.selectEquip,true,Icon.EQUIP,0,0,0,3));
         }
         if(this.newEquips[4])
         {
            _loc1_.push(GUI.createIcon(this.equipMenu,this.newEquips[4],this.selectEquip,true,Icon.EQUIP,0,0,0,4));
         }
         else
         {
            _loc1_.push(GUI.createIcon(this.equipMenu,_loc2_.armor,this.selectEquip,true,Icon.EQUIP,0,0,0,4));
         }
         if(this.newEquips[5])
         {
            _loc1_.push(GUI.createIcon(this.equipMenu,this.newEquips[5],this.selectEquip,true,Icon.EQUIP,0,0,0,5));
         }
         else
         {
            _loc1_.push(GUI.createIcon(this.equipMenu,_loc2_.flair3,this.selectEquip,true,Icon.EQUIP,0,0,0,5));
         }
         GUI.createIconMatrix(_loc1_,2,2,0,1);
      }
      
      public function openSetsMenu() : *
      {
         this.hideSkillMenus();
         this.setsMenu.gotoAndStop(3);
         this.setsMenu.gotoAndStop(2);
         this.setsMenu.visible = true;
         this.setsMenu.init("load",Battle.currentPlayer.playerNo);
      }
      
      public function selectEquip(param1:Object) : *
      {
         var _loc4_:int = 0;
         var _loc5_:Icon = null;
         this.hideSkillMenus();
         this.currentMenu = "equip2";
         var _loc2_:Array = [];
         if(param1.type == Equip.FLAIR)
         {
            _loc2_ = Equips.FLAIRS_DISPLAY;
         }
         if(param1.type == Equip.SWORD)
         {
            _loc2_ = Equips.SWORDS;
         }
         if(param1.type == Equip.STAFF)
         {
            _loc2_ = Equips.STALVES;
         }
         if(param1.type == Equip.GUN)
         {
            _loc2_ = Equips.GUNS;
         }
         if(param1.type == Equip.BOW)
         {
            _loc2_ = Equips.BOWS;
         }
         if(param1.type == Equip.TOYS)
         {
            _loc2_ = Equips.TOYS;
         }
         if(param1.type == Equip.HAT_MALE)
         {
            _loc2_ = Equips.MALE_HATS;
         }
         if(param1.type == Equip.ARMOR_MALE)
         {
            _loc2_ = Equips.MALE_ARMOR;
         }
         if(param1.type == Equip.HAT_FEMALE)
         {
            _loc2_ = Equips.FEMALE_HATS;
         }
         if(param1.type == Equip.ARMOR_FEMALE)
         {
            _loc2_ = Equips.FEMALE_ARMOR;
         }
         var _loc3_:Array = [];
         if(param1.type != Equip.FLAIR)
         {
            this.equipMenu2.visible = true;
            _loc4_ = 0;
            while(_loc4_ < _loc2_.length)
            {
               if(!(!Main.hasPremium && _loc2_[_loc4_] && Boolean(_loc2_[_loc4_].premium)))
               {
                  if(Boolean(_loc2_[_loc4_]) && (_loc2_[_loc4_] as Equip).owned)
                  {
                     _loc5_ = GUI.createIcon(this.equipMenu2,_loc2_[_loc4_],this.selectEquip2,!_loc2_[_loc4_].equipped2(this.newEquips,Battle.currentPlayer),Icon.EQUIP);
                     _loc3_.push(_loc5_);
                  }
                  else
                  {
                     _loc3_.push(null);
                  }
               }
               _loc4_++;
            }
            GUI.createIconMatrix(_loc3_,7,0,0,1);
         }
         else
         {
            this.equipMenu3.visible = true;
            _loc4_ = 0;
            while(_loc4_ < _loc2_.length)
            {
               if(!(!Main.hasPremium && _loc2_[_loc4_] && Boolean(_loc2_[_loc4_].premium)))
               {
                  if(Boolean(_loc2_[_loc4_]) && (_loc2_[_loc4_] as Equip).owned)
                  {
                     _loc5_ = GUI.createIcon(this.equipMenu3,_loc2_[_loc4_],this.selectEquip2,!_loc2_[_loc4_].equipped2(this.newEquips,Battle.currentPlayer),Icon.EQUIP);
                     _loc3_.push(_loc5_);
                  }
                  else
                  {
                     _loc3_.push(null);
                  }
               }
               _loc4_++;
            }
            GUI.createIconMatrix(_loc3_,11,0 - 27,0 - 40,1);
         }
      }
      
      public function selectEquip2(param1:Object) : *
      {
         this.equipFlag = true;
         this.newEquips[this.equipPos] = param1;
         this.openEquipMenu();
      }
      
      public function cancelEquipSelection() : *
      {
         this.openEquipMenu();
      }
      
      public function removeFlair() : *
      {
         this.equipFlag = true;
         this.newEquips[this.equipPos] = Equips.empty;
         this.openEquipMenu();
      }
      
      public function acceptEquips() : *
      {
         this.selectedSkill = null;
         if(this.equipFlag)
         {
            this.hideSkillMenus();
            this.commandMenu.gotoAndStop(2);
            this.selectTarget(Battle.currentPlayer);
            if(this.newEquips[0])
            {
               Battle.currentPlayer.weapon = this.newEquips[0];
            }
            if(this.newEquips[2])
            {
               Battle.currentPlayer.hat = this.newEquips[2];
            }
            if(this.newEquips[4])
            {
               Battle.currentPlayer.armor = this.newEquips[4];
            }
            if(this.newEquips[1])
            {
               Battle.currentPlayer.flair1 = this.newEquips[1];
            }
            if(this.newEquips[3])
            {
               Battle.currentPlayer.flair2 = this.newEquips[3];
            }
            if(this.newEquips[5])
            {
               Battle.currentPlayer.flair3 = this.newEquips[5];
            }
            Battle.currentPlayer.buffHP();
            Battle.currentPlayer.buffMP();
         }
      }
      
      public function openItemMenu() : *
      {
         this.hideSkillMenus();
         if(this.currentMenu == "item")
         {
            this.openRecentMenu();
            return;
         }
         this.currentMenu = "item";
         var _loc1_:Boolean = true;
         var _loc2_:Array = [];
         var _loc3_:int = 0;
         while(_loc3_ < Items.FOOD_LIST.length)
         {
            if(Items.FOOD_LIST[_loc3_].quantity)
            {
               if(Options.noRareFood && (Items.FOOD_LIST[_loc3_] == Items.pizza || Items.FOOD_LIST[_loc3_] == Items.chili || Items.FOOD_LIST[_loc3_] == Items.espresso || Items.FOOD_LIST[_loc3_] == Items.orangejuice))
               {
                  _loc1_ = false;
               }
               else
               {
                  _loc1_ = true;
               }
               _loc2_.push(GUI.createIcon(this.skillMenuHuge,Items.FOOD_LIST[_loc3_],this.selectSkill,_loc1_,Icon.ITEM));
            }
            else
            {
               _loc2_.push(null);
            }
            _loc3_++;
         }
         if(_loc2_.length != 0)
         {
            GUI.createIconMatrix(_loc2_,4,0,0,1);
         }
         this.skillMenuHuge.visible = true;
         this.skillMenuHuge.fader.gotoAndPlay(1);
         this.pointer.y = 479 - 3 + this.yAdjust;
         var _loc4_:int = 0;
         while(_loc4_ < Game.root.numChildren)
         {
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < parent.numChildren)
         {
            _loc4_++;
         }
      }
      
      public function showStats(param1:int) : *
      {
         if(param1 <= 3 && Boolean((Battle.players[param1 - 1] as Player).status[Status.SHROUD]))
         {
            return;
         }
         if(param1 == 4 && Boolean((Battle.standbyPlayers[0] as Player).status[Status.SHROUD]))
         {
            return;
         }
         if(param1 == 5 && Boolean((Battle.standbyPlayers[1] as Player).status[Status.SHROUD]))
         {
            return;
         }
         this.stats.visible = true;
         this.stats.fader.gotoAndPlay(1);
         if(param1 == 4)
         {
            this.stats.display(Battle.standbyPlayers[0]);
         }
         else if(param1 == 5)
         {
            this.stats.display(Battle.standbyPlayers[1]);
         }
         else
         {
            this.stats.display(Battle.players[param1 - 1]);
         }
      }
      
      public function showFoeStats(param1:Foe) : *
      {
         this.foeStats.visible = true;
         this.foeStats.fader.gotoAndPlay(1);
         this.foeStats.display(param1);
      }
      
      public function hideFoeStats() : *
      {
         this.foeStats.visible = false;
         this.foeStats.gotoAndStop(2);
         this.foeStats.gotoAndStop(1);
      }
      
      public function updateFoeBars() : *
      {
         this.foeBars.gotoAndStop(2);
         this.foeBars.gotoAndStop(1);
         var _loc1_:int = 0;
         while(_loc1_ < 5)
         {
            this.foeBars["c" + _loc1_].visible = false;
            if(Battle.foes[_loc1_])
            {
               if(Boolean(Battle.foes[_loc1_].status[Status.SHROUD]) || Weather.isGlitchy() && Math.random() < 0.33)
               {
                  this.foeBars["hpBox" + _loc1_].text = SetStrings.getString("menus","unknown");
                  this.foeBars["nameBox" + _loc1_].text = SetStrings.getString("menus","unknown");
                  this.foeBars["foeBar" + _loc1_].gotoAndStop(105);
                  this.foeBars["foeBar" + _loc1_].visible = true;
                  this.foeBars["section" + _loc1_].visible = true;
                  if(Foes.isCaught(Battle.foes[_loc1_]))
                  {
                     this.foeBars["c" + _loc1_].visible = true;
                     this.foeBars["c" + _loc1_].gotoAndStop(1);
                  }
                  if((Battle.foes[_loc1_] as Foe).catchRate == Catching.UNCATCHABLE)
                  {
                     this.foeBars["c" + _loc1_].visible = true;
                     this.foeBars["c" + _loc1_].gotoAndStop(2);
                  }
               }
               else if(Battle.foes[_loc1_].dead)
               {
                  this.foeBars["hpBox" + _loc1_].text = "";
                  this.foeBars["nameBox" + _loc1_].text = "";
                  this.foeBars["foeBar" + _loc1_].visible = false;
                  this.foeBars["section" + _loc1_].visible = false;
               }
               else
               {
                  this.foeBars["hpBox" + _loc1_].text = Battle.foes[_loc1_].realHP;
                  if(Foes.isScanned(Battle.foes[_loc1_]) || Debug.bestiary || Options.autoScan)
                  {
                     Global.translate(this.foeBars["nameBox" + _loc1_],"",15,Battle.foes[_loc1_].fname,false,"",false,true);
                  }
                  else
                  {
                     Global.translate(this.foeBars["nameBox" + _loc1_],"",15,SetStrings.getString("menus","unknown"));
                  }
                  this.foeBars["foeBar" + _loc1_].gotoAndStop(Battle.foes[_loc1_].getHpPercent());
                  this.foeBars["foeBar" + _loc1_].visible = true;
                  this.foeBars["section" + _loc1_].visible = true;
                  if(Foes.isCaught(Battle.foes[_loc1_]))
                  {
                     this.foeBars["c" + _loc1_].visible = true;
                     this.foeBars["c" + _loc1_].gotoAndStop(1);
                     Global.catchTip = true;
                  }
                  if((Battle.foes[_loc1_] as Foe).catchRate == Catching.UNCATCHABLE)
                  {
                     this.foeBars["c" + _loc1_].visible = true;
                     this.foeBars["c" + _loc1_].gotoAndStop(2);
                  }
               }
               if(Options.noFoeHPbars)
               {
                  this.foeBars["c" + _loc1_].x = 188;
                  this.foeBars["hpBox" + _loc1_].text = "";
                  this.foeBars["foeBar" + _loc1_].gotoAndStop(106);
                  this.foeBars["section" + _loc1_].visible = false;
               }
            }
            else
            {
               this.foeBars["hpBox" + _loc1_].text = "";
               this.foeBars["nameBox" + _loc1_].text = "";
               this.foeBars["foeBar" + _loc1_].visible = false;
               this.foeBars["section" + _loc1_].visible = false;
            }
            _loc1_++;
         }
      }
      
      public function quickSwapPlayer(param1:Player) : *
      {
         Battle.currentPlayer.turnTaken = false;
         Battle.selectedTarget = param1;
         Battle.swapPlayer = Battle.selectedTarget;
         this.removeCrosshairs();
         this.hideSkillMenus();
         this.hideInfoBubbles();
         this.commandMenu.visible = false;
         this.commandMenu.gotoAndStop(3);
         this.turnStarted = false;
         this.playerArrow.gotoAndPlay("outro");
         this.pointer2.y = 1000;
         this.updatePlayerBars();
      }
      
      public function updateWave() : *
      {
         try
         {
            if(Weather.tempWeather != Weather.NONE)
            {
               Global.translate(this.foeBars.weatherBox,"",20,Weather.tempWeather.name,false,"",false,true);
            }
            else
            {
               Global.translate(this.foeBars.weatherBox,"",20,Weather.currentWeather.name,false,"",false,true);
            }
            GUI.setTextColor(this.foeBars.weatherBox);
            this.updateFoeBars();
            if(Global.endlessBattle && !Debug.expoDemo)
            {
               this.foeBars.waveBox.text = "" + Global.endlessBattleWave;
            }
            else if(Debug.expoDemo)
            {
               this.foeBars.waveBox.text = "" + Battle.wave + "/" + Debug.limitedWaves;
            }
            else
            {
               this.foeBars.waveBox.text = "" + Battle.wave + "/" + Battle.foeWaves.length;
            }
            this.foeBars.waveBox.setTextFormat(GUI.boldText);
            GUI.setTextColor(this.foeBars.waveBox);
            GUI.setTextColor(this.foeBars.weatherBox);
         }
         catch(e:Error)
         {
         }
      }
      
      public function updatePlayerBars() : *
      {
         var p:int;
         var players:Array = null;
         try
         {
            players = [Battle.players[0],Battle.players[1],Battle.players[2],Battle.standbyPlayers[0],Battle.standbyPlayers[1]];
         }
         catch(e:Error)
         {
            return;
         }
         p = 0;
         while(p < 5)
         {
            if(players[p])
            {
               this.playerBars["hpBar" + p].visible = true;
               this.playerBars["limitBar" + p].visible = true;
               if(Boolean(players[p].status[Status.SHROUD]) || Weather.isGlitchy() && Math.random() < 0.33)
               {
                  this.playerBars["hpBar" + p].gotoAndStop(105);
                  this.playerBars["limitBar" + p].gotoAndStop(1);
                  this.playerBars["hpBox" + p].text = "???";
               }
               else
               {
                  this.playerBars["hpBar" + p].gotoAndStop(players[p].getHpPercent());
                  this.playerBars["limitBar" + p].gotoAndStop(players[p].getLimitPercent());
                  this.playerBars["hpBox" + p].text = players[p].getHp();
               }
               this.playerBars["icon" + p].update(players[p].playerNo);
               this.playerBars["section" + p].visible = true;
            }
            else
            {
               this.playerBars["hpBar" + p].visible = false;
               this.playerBars["limitBar" + p].visible = false;
               this.playerBars["hpBox" + p].text = "";
               this.playerBars["icon" + p].gotoAndStop(8);
               this.playerBars["section" + p].visible = false;
            }
            p++;
         }
         this.playerBars.spBox.text = "" + Battle.SP + "/" + Battle.maxSP;
         this.playerBars.spBar.gotoAndStop(int(Math.floor(Battle.SP / Battle.maxSP * 100)));
      }
      
      internal function frame1() : *
      {
         this.init();
      }
   }
}


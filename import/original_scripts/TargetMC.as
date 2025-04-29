package
{
   import fl.motion.*;
   import fl.transitions.*;
   import fl.transitions.easing.*;
   import flash.display.*;
   import flash.filters.*;
   import flash.geom.*;
   
   public class TargetMC extends MovieClip
   {
      public static var PLAYER:String = "player";
      
      public static var FOE:String = "player";
      
      public static var FOE_PLAYER:String = "foe player";
      
      public static var PLAYER_FOE:String = "player foe";
      
      public var self:Target;
      
      public var busy:Boolean = true;
      
      public var lowHP:Boolean = false;
      
      public var dirtyStatus:Boolean = true;
      
      public var stopped:Boolean = false;
      
      public var ox:Number;
      
      public var oy:Number;
      
      public var loops:int;
      
      public var X:Number;
      
      public var Y:Number;
      
      public var pauseNestedAnimations:Boolean = true;
      
      public var type:String;
      
      public var isSummon:Boolean = false;
      
      public var point1:MovieClip;
      
      public var point2:MovieClip;
      
      public var point3:MovieClip;
      
      public var point4:MovieClip;
      
      public var point5:MovieClip;
      
      public var playerNo:int = 1;
      
      public var skin:int = 1;
      
      public var freeze:Boolean = false;
      
      public var ice:MovieClip;
      
      public var lastAnim:String = "";
      
      public var zombieMatt:Boolean = false;
      
      public var zombieNatz:Boolean = false;
      
      public var zombieLance:Boolean = false;
      
      public var zombieAnna:Boolean = false;
      
      public var zombieNoLegs:Boolean = false;
      
      public var zombieMode:Boolean = false;
      
      public var skinDamage:int = 1;
      
      public var bestiaryMode:Boolean = false;
      
      public var originalDepth:int;
      
      public function TargetMC()
      {
         super();
      }
      
      public function f(param1:int = 1) : *
      {
      }
      
      public function f2(param1:int = 1) : *
      {
      }
      
      public function f3(param1:int = 1) : *
      {
         if(parent.targetAll)
         {
            parent.targetAll = false;
            parent.f1.pauseNestedAnimations = true;
            parent.f2.pauseNestedAnimations = true;
            parent.f3.pauseNestedAnimations = true;
            parent.f1.gotoAndPlay("hit1");
            parent.f2.gotoAndPlay("hit1");
            parent.f3.gotoAndPlay("hit1");
         }
         else
         {
            parent.selectedTarget.pauseNestedAnimations = true;
            parent.selectedTarget.gotoAndPlay("hit1");
         }
      }
      
      public function dropItems(param1:Boolean = false) : *
      {
         var _loc3_:MovieClip = null;
         if(Global.oblivion)
         {
            return;
         }
         if(!this.self || this.self.isPlayer)
         {
            return;
         }
         if(!(this.self as Foe).finalDrops)
         {
            (this.self as Foe).giveLoot();
         }
         var _loc2_:int = 0;
         while(_loc2_ < (this.self as Foe).finalDrops.length)
         {
            _loc3_ = new ItemBubble();
            _loc3_.itemIcon = (this.self as Foe).finalDrops[_loc2_];
            Battle.menu.addChild(_loc3_);
            if(param1)
            {
               _loc3_.x = 1050;
               _loc3_.y = localToGlobal(new Point(this.point5.x,this.point5.y)).y;
            }
            else
            {
               _loc3_.x = localToGlobal(new Point(this.point5.x,this.point5.y)).x;
               _loc3_.y = localToGlobal(new Point(this.point5.x,this.point5.y)).y;
            }
            _loc2_++;
         }
      }
      
      public function init(param1:String = null, param2:int = 0) : *
      {
         var t:String = param1;
         var a:int = param2;
         Options.setVolume(this,2);
         if(Battle.summonFlag)
         {
            try
            {
               this.part1();
            }
            catch(e:Error)
            {
               try
               {
               }
               catch(e:Error)
               {
               }
               Battle.summonFlag = false;
               Battle.summonAnimation = 1;
               Summons.effectMC = null;
               busy = false;
               stop();
               try
               {
                  Battle.stage.spellMCs.splice(Battle.stage.targetMCs.indexOf(this),1);
               }
               catch(e:Error)
               {
               }
               if(parent)
               {
                  parent.removeChild(this);
               }
               return;
            }
            this.part2();
         }
         else
         {
            this.skin = this.self.skin;
         }
         if(Battle.stage)
         {
            Battle.stage.targetMCs.push(this);
            if(this.isSummon)
            {
               this.animate(Battle.selectedSkill.animations[0]);
            }
            else if(!this.self.dead)
            {
               this.animate("intro");
            }
            else
            {
               this.animate("dragin");
            }
            visible = true;
            if(!this.isSummon && this.self.getHpPercent() < 33)
            {
               this.lowHP = true;
            }
            mouseEnabled = false;
         }
         else
         {
            this.k();
         }
         this.ox = x;
         this.oy = y;
      }
      
      public function part1() : *
      {
         Text.speech(Text.tips[1]);
         Text.summoning(Battle.currentPlayer.playerNo,(Battle.selectedSkill as Summon).SP);
         if(!(this is PlayerMC))
         {
            scaleX *= -1;
         }
         this.skin = Battle.selectedSkill.skin;
         scaleX *= Battle.selectedSkill.graphicScale / 100;
         scaleY *= Battle.selectedSkill.graphicScale / 100;
      }
      
      public function part2() : *
      {
         x = 300 - this.getX(1);
         y = 330 - this.getY(1);
         if(Battle.players.length == 2)
         {
            y += Constants.twoPlayerNudge - 5;
         }
         if(Battle.players[1])
         {
            parent.setChildIndex(this,parent.getChildIndex(Battle.players[1].graphic) + 1);
         }
         else
         {
            parent.setChildIndex(this,parent.getChildIndex(Battle.players[0].graphic) + 1);
         }
         if(Battle.selectedSkill.hidePlayers)
         {
            Battle.hidePlayers();
         }
         this.zombieMode = true;
         this.isSummon = true;
         Battle.summonFlag = false;
      }
      
      public function playSound(param1:String) : *
      {
         SFX.playSound(param1);
      }
      
      public function freezeSound(param1:int = 1) : *
      {
         if(Battle.finalHit)
         {
            if(param1 == 1)
            {
               this.playSound("freeze");
            }
            if(param1 == 2)
            {
               this.playSound("bigfreeze");
            }
         }
         else
         {
            this.playSound("freezehit");
         }
      }
      
      public function frozen() : *
      {
         this.stopped = true;
         this.freeze = true;
         this.done();
         this.stand();
      }
      
      public function animate(param1:String) : *
      {
         if(this.lastAnim == "revive" && param1 == "heal" && this.busy)
         {
            return;
         }
         if(param1 == "hide")
         {
            param1 = "flee";
         }
         if(param1 == "intro")
         {
            this.colorEffects();
         }
         this.stopped = false;
         if(param1 != "hit1" && param1 != "hit2" && param1 != "defhit" && param1 != "die")
         {
            if(this.self is Player1)
            {
               Global.getSwordElement();
            }
            else if(this.self is Player2)
            {
               Global.getStaffElement();
            }
            else if(this.self is Player3)
            {
               Global.getGunElement();
            }
            else if(this.self is Player4)
            {
               Global.getBowElement();
            }
            else if(this.self is Player5)
            {
               Global.getCatElement();
            }
            else
            {
               Global.element = "none";
            }
         }
         gotoAndStop("null");
         this.pauseNestedAnimations = true;
         this.busy = true;
         if(this.self)
         {
            this.self.statusDisplay.visible = false;
         }
         gotoAndPlay(param1);
         this.lastAnim = param1;
      }
      
      public function makeMagic(param1:Class, param2:Number = 0, param3:Number = 0, param4:Boolean = false, param5:int = 1, param6:Boolean = false) : *
      {
         Battle.makeEffect(param1,param2,param3,param4,param5,param6);
      }
      
      public function randomDelay(param1:int = 20) : *
      {
         gotoAndPlay(currentFrame + int(Math.random() * param1));
      }
      
      public function k() : *
      {
         if((this is FoeMC || this.zombieMode) && this.isSummon)
         {
            if(Battle.selectedSkill.animations.length > Battle.summonAnimation)
            {
               gotoAndPlay(Battle.selectedSkill.animations[Battle.summonAnimation]);
               ++Battle.summonAnimation;
            }
            else
            {
               Battle.summonAnimation = 1;
               Summons.effectMC = null;
               if(Battle.selectedSkill.hidePlayers)
               {
                  Battle.showPlayers();
               }
               this.busy = false;
               stop();
               Battle.stage.spellMCs.splice(Battle.stage.targetMCs.indexOf(this),1);
               parent.removeChild(this);
            }
         }
         else
         {
            gotoAndPlay("stand");
            this.busy = false;
         }
         if(Boolean(Battle.stage) && !this.bestiaryMode)
         {
            Battle.stage.checkBusy();
         }
      }
      
      public function colorEffects() : *
      {
         var _loc1_:Color = null;
         var _loc2_:Array = null;
         var _loc3_:ColorMatrixFilter = null;
         if(!this.self)
         {
            return;
         }
         if(this.self.status[Status.INVISIBLE])
         {
            _loc1_ = new Color();
            _loc1_.brightness = -0.9;
            this.transform.colorTransform = _loc1_;
         }
         else
         {
            this.transform.colorTransform = new Color();
         }
         if(this.self.status[Status.ENCHANTED])
         {
            _loc2_ = new Array();
            _loc2_ = _loc2_.concat([0,1,0,0,0]);
            _loc2_ = _loc2_.concat([0,0,1,0,0]);
            _loc2_ = _loc2_.concat([1,0,0,0,0]);
            _loc2_ = _loc2_.concat([0,0,0,1,0]);
            _loc3_ = new ColorMatrixFilter(_loc2_);
            this.filters = [_loc3_];
         }
         else
         {
            this.filters = [];
         }
      }
      
      public function drainage() : Boolean
      {
         var _loc2_:int = 0;
         var _loc1_:int = int(false);
         if(!this.self)
         {
            return;
         }
         if((Global.drainFlag || (this.self as Player).weapon.specials.length) && this.self.drainableDamage > 0)
         {
            if(this.self is Player)
            {
               _loc2_ = 0;
               while(_loc2_ < (this.self as Player).weapon.level)
               {
                  if(Boolean((this.self as Player).weapon.specials[_loc2_]) && (this.self as Player).weapon.specials[_loc2_][0] == Equip.DRAIN_HP)
                  {
                     _loc1_ = int(true);
                  }
                  _loc2_++;
               }
            }
            if(Global.drainFlag)
            {
               _loc1_ = int(true);
            }
            if(_loc1_)
            {
               (this.self as Player).drainHP();
               Global.drainFlag = false;
               return true;
            }
         }
         Global.drainFlag = false;
         return false;
      }
      
      public function stealItem() : *
      {
         var _loc1_:Equip = null;
         var _loc2_:int = 0;
         if(!Battle.selectedTarget || Battle.selectedTarget is Player)
         {
            return;
         }
         if(this.self is Player && this.self.drainableDamage > 0 && Battle.targetType == Target.ONE_ENEMY && !(Battle.selectedTarget as Foe).stolenFrom)
         {
            for each(_loc1_ in (this.self as Player).equips)
            {
               _loc2_ = 0;
               while(_loc2_ < _loc1_.level)
               {
                  if(Boolean(_loc1_.specials[_loc2_]) && _loc1_.specials[_loc2_][0] == Equip.STEAL)
                  {
                     Player1.stealItem(_loc1_.level - 1);
                     if(this.self is Player5)
                     {
                        this.makeMagic(EffectItem,this.x + 120,this.y + 80);
                     }
                     else
                     {
                        this.makeMagic(EffectItem,this.x + 120,this.y + 80);
                     }
                  }
                  _loc2_++;
               }
            }
         }
      }
      
      public function ks() : *
      {
         gotoAndPlay("stand");
      }
      
      public function done() : *
      {
         this.stopped = true;
         this.busy = false;
         Battle.stage.checkBusy();
         stop();
      }
      
      public function dead() : *
      {
         this.stopped = true;
         this.self.dead = true;
         this.self.realHP = 0;
         this.self.statusDisplay.visible = false;
         Battle.menu.updateFoeBars();
         if(!this.self.isPlayer)
         {
            (this.self as Foe).die();
            this.done();
         }
         else if(this.self.status[Status.AUTOLIFE])
         {
            if(Flags.battleEvent == Flags.EVIL_NATALIE)
            {
               (this.self as Player).revive(0);
            }
            else
            {
               (this.self as Player).revive();
            }
            Medals.unlock(Medals.secondChance);
         }
         else
         {
            this.done();
         }
      }
      
      public function stand() : *
      {
         this.stopped = true;
         this.pauseNestedAnimations = false;
         this.resetXY();
         if(this.type == PLAYER)
         {
            stop();
            idle.playerNo = this.playerNo;
         }
         else if(!Options.idleFoes)
         {
            stop();
            cacheAsBitmap = true;
         }
         if(this.dirtyStatus)
         {
            this.dirtyStatus = false;
            if(Boolean(this.self) && Boolean(this.self.statusDisplay))
            {
               this.self.statusDisplay.visible = true;
            }
            if(Boolean(this.self) && Boolean(this.self.statusDisplay))
            {
               this.self.statusDisplay.update(this.self);
            }
         }
      }
      
      public function updateStatus() : *
      {
      }
      
      public function hit() : *
      {
      }
      
      public function cast() : *
      {
      }
      
      public function resetXY() : *
      {
         moveOut = false;
         this.X = this.ox;
         this.Y = this.oy;
      }
      
      public function resetPosition() : *
      {
         x = this.ox;
         y = this.oy;
      }
      
      public function summonOnTop(param1:Boolean = true) : *
      {
         if(!this.isSummon)
         {
            return;
         }
         if(param1)
         {
            this.originalDepth = parent.getChildIndex(this);
            parent.setChildIndex(this,parent.numChildren - 1);
         }
         else
         {
            parent.setChildIndex(this,this.originalDepth);
         }
      }
      
      public function putOnTop(param1:Boolean = true) : *
      {
         if(param1)
         {
            this.originalDepth = parent.getChildIndex(this);
            parent.setChildIndex(this,parent.numChildren - 1);
         }
         else
         {
            parent.setChildIndex(this,this.originalDepth);
         }
      }
      
      public function swapLayer(param1:Boolean = false) : *
      {
         this.originalDepth = parent.getChildIndex(this);
         var _loc2_:int = 0;
         if(param1 && !this.isSummon)
         {
            _loc2_ = 1;
         }
         parent.setChildIndex(this,parent.getChildIndex(Battle.selectedTarget.graphic) + _loc2_);
      }
      
      public function resetLayer() : *
      {
         if(this.isSummon || this.self && this.self.isPlayer || this is SpellMC && Skills.user.isPlayer)
         {
            parent.setChildIndex(this,this.originalDepth);
         }
         else
         {
            parent.setChildIndex(this,parent.getChildIndex(this.self.statusDisplay) - 1);
         }
      }
      
      public function setXY() : *
      {
         moveOut = true;
         if(!Battle.selectedTarget)
         {
            Battle.selectedTarget = Battle.players[0];
         }
         var _loc1_:TargetMC = Battle.selectedTarget.graphic;
         this.X = (_loc1_ as MovieClip).localToGlobal(new Point(_loc1_.point2.x,_loc1_.point2.y)).x;
         this.Y = (_loc1_ as MovieClip).localToGlobal(new Point(_loc1_.point2.x,_loc1_.point2.y)).y;
      }
      
      public function move(param1:Number, param2:int, param3:Function) : *
      {
         if(param2 < 1)
         {
            param2 = 1;
         }
         if(moveOut)
         {
            tween1 = new Tween(this,"x",param3,this.x,this.X + param1 - this.localToGlobal(new Point(this.point2.x,this.point2.y)).x + this.x,param2);
            tween2 = new Tween(this,"y",param3,this.y,this.Y - this.localToGlobal(new Point(this.point2.x,this.point2.y)).y + this.y,param2);
         }
         else
         {
            tween1 = new Tween(this,"x",param3,this.x,this.X + param1,param2);
            tween2 = new Tween(this,"y",param3,this.y,this.Y,param2);
         }
      }
      
      public function flee() : *
      {
         this.stopped = true;
         stop();
         if(this.self)
         {
            this.self.statusDisplay.visible = false;
            this.self.flee();
            this.dropItems(true);
            this.done();
         }
         else
         {
            this.k();
         }
      }
      
      public function getX(param1:int) : *
      {
         return this["point" + param1].x * scaleX + x;
      }
      
      public function getY(param1:int) : *
      {
         return this["point" + param1].y * scaleY + y;
      }
   }
}


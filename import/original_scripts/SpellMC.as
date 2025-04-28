package
{
   import fl.transitions.*;
   import fl.transitions.easing.*;
   import flash.display.MovieClip;
   import flash.geom.*;
   import flash.utils.*;
   
   public class SpellMC extends TargetMC
   {
      public static var extraFlip:Boolean = false;
      
      public var spellcenter:MovieClip;
      
      public var OX:Number;
      
      public var OY:Number;
      
      public var pointNumber:int = 1;
      
      public var selectedTarget:Target;
      
      public var skipPositioning:Boolean = false;
      
      internal var targets:String;
      
      internal var aim:int;
      
      internal var flip:int;
      
      internal var moveOut:Boolean = true;
      
      public var tween1:Tween;
      
      public var tween2:Tween;
      
      public function SpellMC()
      {
         super();
         busy = true;
         Battle.stage.spellMCs.push(this);
         Options.setVolume(this,2);
      }
      
      public function nextSpell(param1:Boolean = false, param2:Spell = null) : *
      {
         var _loc3_:Class = null;
         if(Battle.multiSpell >= 0 && param2 && !param1 && Skills.user is Foe)
         {
            Battle.selectedSkill = param2;
         }
         if(Battle.multiSpell >= 0 && Skills.user is Player)
         {
            if(Battle.selectedSkill.target == Target.ALL_ALLY)
            {
               if(Battle.multiSpell >= Battle.players.length - 1)
               {
                  return;
               }
               do
               {
                  ++Battle.multiSpell;
                  if(Battle.multiSpell == Battle.players.length)
                  {
                     return;
                  }
                  Battle.selectedTarget = Battle.players[Battle.multiSpell];
               }
               while(Battle.players[Battle.multiSpell].dead);
               
            }
            if(Battle.selectedSkill.target == Target.ALL_ENEMY || Battle.selectedSkill.target == Target.ONE_ENEMY)
            {
               if(Battle.multiSpell >= Battle.foes.length - 1)
               {
                  return;
               }
               do
               {
                  ++Battle.multiSpell;
                  if(Battle.multiSpell == Battle.foes.length)
                  {
                     return;
                  }
                  Battle.selectedTarget = Battle.foes[Battle.multiSpell];
               }
               while(Battle.foes[Battle.multiSpell].dead);
               
            }
            if(Battle.selectedSkill.target == Target.RANDOM_ENEMY)
            {
               if(Battle.multiSpell >= Battle.arrows)
               {
                  return;
               }
               if(Battle.foeCount() == 0)
               {
                  return;
               }
               Battle.selectedTarget = Battle.randomFoe();
               ++Battle.multiSpell;
            }
            if(param1)
            {
               _loc3_ = getDefinitionByName(Battle.selectedSkill.SpMC);
            }
            else
            {
               _loc3_ = getDefinitionByName(Battle.selectedSkill.MC);
            }
            makeMagic(_loc3_,0,0,false,1,param1);
         }
         else if(Battle.multiSpell >= 0)
         {
            if((Battle.selectedSkill.target == Target.ALL_ENEMY || Battle.selectedSkill.target == Target.ONE_ANY && Battle.selectedTarget is Player || Battle.selectedSkill.target == Target.ONE_ENEMY || Battle.selectedSkill.target == Target.CENTER_ENEMY) && !Battle.arrows)
            {
               if(Battle.multiSpell >= Battle.players.length - 1)
               {
                  return;
               }
               do
               {
                  ++Battle.multiSpell;
                  if(Battle.multiSpell == Battle.players.length)
                  {
                     return;
                  }
                  Battle.selectedTarget = Battle.players[Battle.multiSpell];
               }
               while(Battle.players[Battle.multiSpell].dead);
               
            }
            if(Battle.selectedSkill.target == Target.RANDOM_ENEMY || Boolean(Battle.arrows))
            {
               if(Battle.multiSpell >= Battle.arrows)
               {
                  return;
               }
               if(Battle.playerCount() == 0)
               {
                  return;
               }
               if(Battle.playerCount() > 1)
               {
                  Battle.selectedTarget = Battle.randomPlayerButNot(Battle.selectedTarget);
               }
               else
               {
                  Battle.selectedTarget = Battle.randomPlayer();
               }
               ++Battle.multiSpell;
            }
            if(Battle.selectedSkill.target == Target.ONE_ALLY || Battle.selectedSkill.target == Target.ALL_ALLY || Battle.selectedSkill.target == Target.ONE_ANY && Battle.selectedTarget is Foe)
            {
               if(Battle.multiSpell >= Battle.foes.length - 1)
               {
                  return;
               }
               do
               {
                  ++Battle.multiSpell;
                  if(Battle.multiSpell == Battle.foes.length)
                  {
                     return;
                  }
                  Battle.selectedTarget = Battle.foes[Battle.multiSpell];
               }
               while(Battle.foes[Battle.multiSpell].dead);
               
            }
            _loc3_ = getDefinitionByName(Battle.selectedSkill.MC);
            makeMagic(_loc3_,0,0);
         }
      }
      
      public function jumpBack() : *
      {
         if(Skills.user is Player)
         {
            Battle.currentPlayer.graphic.animate("jump2");
         }
      }
      
      public function resetBack() : *
      {
         if(Skills.user is Player)
         {
            Battle.currentPlayer.graphic.resetPosition();
         }
      }
      
      override public function init(param1:String = null, param2:int = 0) : *
      {
         var t:String = param1;
         var a:int = param2;
         this.pointNumber = a;
         busy = true;
         this.targets = t;
         this.selectedTarget = Battle.selectedTarget;
         if(!Skills.user.isPlayer && Battle.targetType != Target.ALL_ALLY || Skills.user.isPlayer)
         {
            Battle.targetType = this.targets;
         }
         this.aim = a;
         if(!Skills.user.isPlayer || extraFlip || this.targets == Target.ALL_STANDBY || this.targets == Target.ALL_ENEMY_OR_ALL_ALLY && Battle.selectedSkill.target == Target.ALL_ENEMY)
         {
            this.flip = -1;
            scaleX *= -1;
         }
         else
         {
            this.flip = 1;
         }
         if(this.targets == Target.ONE_ALLY || this.targets == Target.ONE_ENEMY || this.targets == Target.CENTER_ENEMY)
         {
            if(!Battle.selectedTarget)
            {
               Battle.selectedTarget = Battle.players[0];
            }
            if(!this.skipPositioning)
            {
               x = Battle.selectedTarget.graphic.getX(this.aim) - this.spellcenter.x * this.flip;
               y = Battle.selectedTarget.graphic.getY(this.aim) - this.spellcenter.y;
               this.gotoTargetDepth();
            }
            else
            {
               this.gotoUserDepth();
            }
         }
         if(this.targets == Target.ALL_ALLY || this.targets == Target.ALL_ENEMY || this.targets == Target.ALL_STANDBY || this.targets == Target.ALL || this.targets == Target.ALL_ENEMY_OR_ALL_ALLY)
         {
            x = -this.spellcenter.x * this.flip;
            if(!Skills.user.isPlayer || this.targets == Target.ALL_STANDBY || this.targets == Target.ALL_ENEMY_OR_ALL_ALLY && Battle.selectedSkill.target == Target.ALL_ENEMY || extraFlip)
            {
               x += 1000;
            }
            y = -this.spellcenter.y;
         }
         extraFlip = false;
         try
         {
            if(Boolean(Battle.currentFoe) && Boolean(Battle.currentFoe.graphic.swapped))
            {
               ++Battle.currentFoe.graphic.originalDepth;
            }
         }
         catch(e:Error)
         {
            Battle.currentFoe = null;
         }
      }
      
      public function gotoTargetDepth() : *
      {
         if(Skills.user.isPlayer && (Flags.battleEvent == Flags.GIGA_TANK_BATTLE || Flags.battleEvent == Flags.SUPER_BOSS_RUSH && Battle.wave == 2))
         {
            return;
         }
         if(Boolean(this.selectedTarget) && Boolean(this.selectedTarget.graphic))
         {
            parent.setChildIndex(this,parent.getChildIndex(this.selectedTarget.graphic) + 1);
         }
         else if(Battle.selectedTarget.graphic)
         {
            parent.setChildIndex(this,parent.getChildIndex(Battle.selectedTarget.graphic) + 1);
         }
      }
      
      public function gotoUserDepth() : *
      {
         if(Skills.user.graphic)
         {
            parent.setChildIndex(this,parent.getChildIndex(Skills.user.graphic) + 1);
         }
      }
      
      override public function hit() : *
      {
         Battle.currentUser.castSpell(true);
      }
      
      override public function drainage() : Boolean
      {
         var _loc2_:int = 0;
         if(!Skills.user.isPlayer)
         {
            return;
         }
         var _loc1_:Player = Battle.currentPlayer;
         if(_loc1_.drainableDamage < 1)
         {
            return false;
         }
         if(Boolean(_loc1_) && Boolean(_loc1_.weapon.specials.length))
         {
            _loc2_ = 0;
            while(_loc2_ < _loc1_.weapon.level)
            {
               if(Boolean(_loc1_.weapon.specials[_loc2_]) && _loc1_.weapon.specials[_loc2_][0] == Equip.DRAIN_HP)
               {
                  _loc1_.drainHP();
                  return true;
               }
               _loc2_++;
            }
         }
         return false;
      }
      
      public function drainage2() : *
      {
         var _loc1_:Player = Battle.currentPlayer;
         if(_loc1_.drainableDamage < 1)
         {
            return false;
         }
         _loc1_.drainHP();
         return true;
      }
      
      override public function k() : *
      {
         stop();
         busy = false;
         Battle.stage.spellMCs.splice(Battle.stage.spellMCs.indexOf(this),1);
         if(Boolean(Battle.currentFoe) && Boolean(Battle.currentFoe.graphic.swapped))
         {
            --Battle.currentFoe.graphic.originalDepth;
         }
         if(parent)
         {
            parent.removeChild(this);
         }
      }
      
      override public function resetXY() : *
      {
         this.moveOut = false;
         X = this.OX;
         Y = this.OY;
      }
      
      public function gotoBackLayer() : *
      {
         parent.setChildIndex(this,parent.getChildIndex(Battle.stage.background) + 1);
      }
      
      override public function setXY() : *
      {
         this.moveOut = true;
         var _loc1_:Target = Battle.selectedTarget;
         if(!_loc1_)
         {
            _loc1_ = Battle.players[0];
         }
         X = _loc1_.graphic.localToGlobal(new Point(_loc1_.graphic["point" + this.pointNumber].x,_loc1_.graphic["point" + this.pointNumber].y)).x;
         Y = _loc1_.graphic.localToGlobal(new Point(_loc1_.graphic["point" + this.pointNumber].x,_loc1_.graphic["point" + this.pointNumber].y)).y;
      }
      
      public function positionOnTarget(param1:Number = 0) : *
      {
         if(x == 0 && y == 0)
         {
            this.setXY();
            x = X + param1 - this.localToGlobal(new Point(this.spellcenter.x,this.spellcenter.y)).x + this.x;
            y = Y - this.localToGlobal(new Point(this.spellcenter.x,this.spellcenter.y)).y + this.y;
         }
      }
      
      public function randomizeRotation() : *
      {
         this.rotation = 360 * Math.random();
      }
      
      public function randomizeXY() : *
      {
         this.x += Math.random() * 60 - 30;
         this.y += Math.random() * 40 - 20;
      }
      
      override public function move(param1:Number, param2:int, param3:Function) : *
      {
         if(this.moveOut)
         {
            this.tween1 = new Tween(this,"x",param3,this.x,X + param1 - this.localToGlobal(new Point(this.spellcenter.x,this.spellcenter.y)).x + this.x,param2);
            this.tween2 = new Tween(this,"y",param3,this.y,Y - this.localToGlobal(new Point(this.spellcenter.x,this.spellcenter.y)).y + this.y,param2);
         }
         else
         {
            this.tween1 = new Tween(this,"x",param3,this.x,X + param1,param2);
            this.tween2 = new Tween(this,"y",param3,this.y,Y,param2);
         }
      }
   }
}


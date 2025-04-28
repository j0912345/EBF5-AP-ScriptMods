package
{
   public class FoeAI
   {
      public static var resistanceScore:int = 0;
      
      public function FoeAI()
      {
         super();
      }
      
      public static function targetRandomPlayerWeakTo(param1:String) : *
      {
         var _loc2_:Array = null;
         if(Battle.existsTarget())
         {
            _loc2_ = [Battle.existsTarget()];
         }
         else
         {
            _loc2_ = getPlayersWeakTo(param1);
         }
         Battle.selectedTarget = _loc2_[int(Math.random() * _loc2_.length)];
      }
      
      public static function getBestElement(param1:Array) : String
      {
         var _loc4_:String = null;
         var _loc5_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:String = param1[0];
         for each(_loc4_ in param1)
         {
            _loc5_ = int(getPlayersWeakTo(_loc4_,false,true).length);
            if(_loc5_ > _loc2_)
            {
               _loc2_ = _loc5_;
               _loc3_ = _loc4_;
            }
         }
         return _loc3_;
      }
      
      public static function getBestElementVsSingle(param1:Array) : String
      {
         var _loc4_:String = null;
         var _loc5_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:String = param1[0];
         for each(_loc4_ in param1)
         {
            _loc5_ = int(getPlayersWeakTo(_loc4_,false,true,true).length);
            if(_loc5_ > _loc2_)
            {
               _loc2_ = _loc5_;
               _loc3_ = _loc4_;
            }
         }
         return _loc3_;
      }
      
      public static function getStatusScore(param1:Foe) : Number
      {
         var _loc2_:Number = 0;
         if(param1.status[Status.STUN])
         {
            _loc2_ += 3;
         }
         if(param1.status[Status.DOOM])
         {
            _loc2_ += 3;
         }
         if(param1.status[Status.BURN])
         {
            _loc2_ += 1;
         }
         if(param1.status[Status.SCORCHED])
         {
            _loc2_ += 3;
         }
         if(param1.status[Status.POISON])
         {
            _loc2_ += 1;
         }
         if(param1.status[Status.VIRUS])
         {
            _loc2_ += 1.5;
         }
         if(param1.status[Status.FREEZE])
         {
            _loc2_ += 3;
         }
         if(param1.status[Status.WEAKEN])
         {
            _loc2_ += 1;
         }
         if(param1.status[Status.CURSE])
         {
            _loc2_ += 1;
         }
         if(param1.status[Status.TIRED])
         {
            _loc2_ += 1;
         }
         if(param1.status[Status.BAD_LUCK])
         {
            _loc2_ += 1;
         }
         if(param1.status[Status.STAGGER])
         {
            _loc2_ += 1.2;
         }
         return _loc2_;
      }
      
      public static function targetPlayerWeakestTo(param1:String) : *
      {
         if(Battle.existsTarget())
         {
            Battle.selectedTarget = Battle.existsTarget();
            return;
         }
         Battle.selectedTarget = getPlayersWeakTo(param1,true)[0];
         if(!Battle.selectedTarget)
         {
            Battle.selectedTarget = Battle.randomPlayer();
         }
      }
      
      public static function getBestRecycleTarget(param1:int = 800) : Target
      {
         var _loc4_:int = 0;
         var _loc5_:Player = null;
         var _loc6_:Foe = null;
         var _loc7_:String = null;
         var _loc2_:int = param1;
         var _loc3_:Target = null;
         for each(_loc5_ in Battle.players)
         {
            _loc4_ = 0;
            for each(_loc7_ in Stats.STATS)
            {
               _loc4_ += _loc5_.buffs[_loc7_];
            }
            if(_loc4_ > _loc2_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
         }
         for each(_loc6_ in Battle.foes)
         {
            _loc4_ = 0;
            for each(_loc7_ in Stats.STATS)
            {
               _loc4_ += 200 - _loc6_.buffs[_loc7_];
            }
            if(_loc4_ > _loc2_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc6_;
            }
         }
         return _loc3_;
      }
      
      public static function getBestDispelPlayer(param1:int = 800) : Target
      {
         var _loc4_:int = 0;
         var _loc5_:Player = null;
         var _loc6_:String = null;
         var _loc2_:int = param1;
         var _loc3_:Target = null;
         for each(_loc5_ in Battle.players)
         {
            _loc4_ = 0;
            for each(_loc6_ in Stats.STATS)
            {
               _loc4_ += _loc5_.buffs[_loc6_];
            }
            if(_loc4_ > _loc2_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
         }
         return _loc3_;
      }
      
      public static function arePlayersBuffed(param1:int = 2400) : Boolean
      {
         var _loc3_:Player = null;
         var _loc4_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in Battle.players)
         {
            for each(_loc4_ in Stats.STATS)
            {
               _loc2_ += _loc3_.buffs[_loc4_];
            }
         }
         return _loc2_ >= param1;
      }
      
      public static function isFoeDebuffed(param1:Foe, param2:int = 600) : Boolean
      {
         var _loc4_:String = null;
         var _loc3_:int = 0;
         for each(_loc4_ in Stats.STATS)
         {
            _loc3_ += param1.buffs[_loc4_];
         }
         return _loc3_ <= param2;
      }
      
      public static function targetLastAttackerOf(param1:Target) : *
      {
         if(Battle.existsTarget())
         {
            Battle.selectedTarget = Battle.existsTarget();
            return;
         }
         if(param1.lastAttacker && param1.lastAttacker.isPlayer && param1.lastAttacker != Weather.weatherPlayer && !param1.lastAttacker.dead && !param1.lastAttacker.status[Status.LOVED] && param1.lastAttacker != Battle.standbyPlayers[0] && param1.lastAttacker != Battle.standbyPlayers[1])
         {
            Battle.selectedTarget = param1.lastAttacker;
         }
      }
      
      public static function targetWeakPlayer(param1:int) : Boolean
      {
         var HPpercent:int = param1;
         try
         {
            if(Battle.mostDamagedPlayer().getHpPercent() < HPpercent)
            {
               Battle.selectedTarget = Battle.mostDamagedPlayer();
            }
         }
         catch(e:Error)
         {
            Battle.selectedTarget = Battle.randomPlayer();
         }
      }
      
      public static function targetStrongestPlayer() : *
      {
         Battle.selectedTarget = Battle.leastDamagedPlayer();
      }
      
      public static function getPlayersWeakTo(param1:String, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : Array
      {
         var _loc6_:Target = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc10_:Player = null;
         var _loc5_:Array = [];
         resistanceScore = 3;
         var _loc9_:Array = Battle.players;
         if(param4)
         {
            _loc9_ = [Battle.selectedTarget];
         }
         for each(_loc10_ in _loc9_)
         {
            if(!(Boolean(_loc10_.dead) || _loc10_.status[Status.LOVED] && !param3))
            {
               _loc8_ = _loc10_.getResistance("elemental",param1);
               if(param1 == Element.ICE && Boolean(_loc10_.status[Status.WET]))
               {
                  _loc8_ *= 1.5;
               }
               if(param1 == Element.THUNDER && Boolean(_loc10_.status[Status.WET]))
               {
                  _loc8_ *= 1.5;
               }
               if(param1 == Element.ICE && Boolean(_loc10_.status[Status.CHILL]))
               {
                  _loc8_ *= 1.5;
               }
               if(param1 == Element.WATER && Boolean(_loc10_.status[Status.CHILL]))
               {
                  _loc8_ *= 1.5;
               }
               if(param1 == Element.FIRE && Boolean(_loc10_.status[Status.DRY]))
               {
                  _loc8_ *= 1.5;
               }
               if(param1 == Element.BOMB && Boolean(_loc10_.status[Status.DRY]))
               {
                  _loc8_ *= 1.5;
               }
               if(param1 == Element.WIND && Boolean(_loc10_.status[Status.LIGHT]))
               {
                  _loc8_ *= 1.5;
               }
               if(param1 == Element.EARTH && Boolean(_loc10_.status[Status.HEAVY]))
               {
                  _loc8_ *= 1.5;
               }
               if(param1 == Element.BIO && Boolean(_loc10_.status[Status.TIRED]))
               {
                  _loc8_ *= 1.5;
               }
               if(param1 == Element.DARK && Boolean(_loc10_.status[Status.WEAKEN]))
               {
                  _loc8_ *= 1.5;
               }
               if(param1 == Element.HOLY && Boolean(_loc10_.status[Status.CURSE]))
               {
                  _loc8_ *= 1.5;
               }
               if(param1 == Element.THUNDER && Boolean(_loc10_.status[Status.DRY]))
               {
                  _loc8_ *= 0.5;
               }
               if(param1 == Element.ICE && Boolean(_loc10_.status[Status.DRY]))
               {
                  _loc8_ *= 0.5;
               }
               if(param1 == Element.BIO && Boolean(_loc10_.status[Status.CHILL]))
               {
                  _loc8_ *= 0.5;
               }
               if(param1 == Element.WIND && Boolean(_loc10_.status[Status.HEAVY]))
               {
                  _loc8_ *= 0.5;
               }
               if(param1 == Element.EARTH && Boolean(_loc10_.status[Status.LIGHT]))
               {
                  _loc8_ *= 0.5;
               }
               if(param1 == Element.FIRE && Boolean(_loc10_.status[Status.WET]))
               {
                  _loc8_ *= 0.5;
               }
               if(_loc8_ >= 0.7)
               {
                  _loc5_.push(_loc10_);
               }
               if(_loc8_ >= 1)
               {
                  _loc5_.push(_loc10_);
               }
               if(_loc8_ >= 1.3)
               {
                  _loc5_.push(_loc10_);
                  _loc5_.push(_loc10_);
               }
               if(_loc8_ >= 1.6)
               {
                  _loc5_.push(_loc10_);
                  _loc5_.push(_loc10_);
                  _loc5_.push(_loc10_);
                  _loc5_.push(_loc10_);
               }
               if(!_loc6_)
               {
                  _loc6_ = _loc10_;
                  _loc7_ = _loc8_;
               }
               else if(_loc8_ > _loc7_)
               {
                  _loc6_ = _loc10_;
                  _loc7_ = _loc8_;
               }
            }
         }
         if(Battle.playersDeadOrLoved() && !param3)
         {
            return [Battle.randomPlayer()];
         }
         if(param2 && Boolean(_loc6_))
         {
            return [_loc6_];
         }
         if(param2)
         {
            return [Battle.randomPlayer(false)];
         }
         if(_loc5_.length)
         {
            return _loc5_;
         }
         if(param3)
         {
            return _loc5_;
         }
         return [Battle.randomPlayer(false)];
      }
      
      public static function getWeakestPlayer() : Target
      {
         return Battle.mostDamagedPlayer(false);
      }
      
      public static function makeEffectOfElement(param1:String, param2:FoeMC) : *
      {
         if(param1 == Element.NONE)
         {
            param2.makeMagic(EffectSmash);
         }
         if(param1 == Element.FIRE)
         {
            param2.makeMagic(EffectFire);
         }
         if(param1 == Element.ICE)
         {
            param2.makeMagic(EffectIce2);
         }
         if(param1 == Element.THUNDER)
         {
            param2.makeMagic(EffectThunder);
         }
         if(param1 == Element.WATER)
         {
            param2.makeMagic(EffectWater2);
         }
         if(param1 == Element.EARTH)
         {
            param2.makeMagic(EffectEarth);
         }
         if(param1 == Element.WIND)
         {
            param2.makeMagic(EffectWind3);
         }
         if(param1 == Element.BIO)
         {
            param2.makeMagic(EffectPoison3);
         }
         if(param1 == Element.BOMB)
         {
            param2.makeMagic(EffectBomb);
         }
         if(param1 == Element.HOLY)
         {
            param2.makeMagic(EffectFeathers);
         }
         if(param1 == Element.DARK)
         {
            param2.makeMagic(EffectDark2);
         }
         param2.makeMagic(EffectElement2);
      }
   }
}


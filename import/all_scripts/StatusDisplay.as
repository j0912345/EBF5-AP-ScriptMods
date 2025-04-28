package
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol12642")]
   public class StatusDisplay extends MovieClip
   {
      internal static var order:Array = ["autolife","HP","attack","magicAttack","defence","magicDefence","accuracy","evade","surrender","energized","haste","charge","regen","bless","morale","defend","good_luck","loved","brave","berserk","stun","syphon","wet","chill","freeze","dry","burn","scorch","poison","virus","light","heavy","stagger","confuse","stuffed","hungry","tired","weaken","curse","bad_luck","doom","invisible","enchanted","target","stoned","undead","repulsion","brimstone","delete1"];
      
      internal static var layer:int = 0;
      
      private var p:int = 0;
      
      private var pp:int = 0;
      
      public var defend:MovieClip;
      
      public var charge:MovieClip;
      
      public var regen:MovieClip;
      
      public var autolife:MovieClip;
      
      public var bless:MovieClip;
      
      public var berserk:MovieClip;
      
      public var morale:MovieClip;
      
      public var brave:MovieClip;
      
      public var haste:MovieClip;
      
      public var loved:MovieClip;
      
      public var good_luck:MovieClip;
      
      public var syphon:MovieClip;
      
      public var poison:MovieClip;
      
      public var burn:MovieClip;
      
      public var stun:MovieClip;
      
      public var freeze:MovieClip;
      
      public var wet:MovieClip;
      
      public var weaken:MovieClip;
      
      public var curse:MovieClip;
      
      public var tired:MovieClip;
      
      public var doom:MovieClip;
      
      public var stagger:MovieClip;
      
      public var bad_luck:MovieClip;
      
      public var virus:MovieClip;
      
      public var confuse:MovieClip;
      
      public var chill:MovieClip;
      
      public var shroud:MovieClip;
      
      public var target:MovieClip;
      
      public var dry:MovieClip;
      
      public var scorch:MovieClip;
      
      public var light:MovieClip;
      
      public var heavy:MovieClip;
      
      public var hungry:MovieClip;
      
      public var stuffed:MovieClip;
      
      public var invisible:MovieClip;
      
      public var enchanted:MovieClip;
      
      public var surrender:MovieClip;
      
      public var stoned:MovieClip;
      
      public var undead:MovieClip;
      
      public var repulsion:MovieClip;
      
      public var brimstone:MovieClip;
      
      public var energized:MovieClip;
      
      public var delete1:MovieClip;
      
      public var HP:MovieClip;
      
      public var attack:MovieClip;
      
      public var magicAttack:MovieClip;
      
      public var defence:MovieClip;
      
      public var magicDefence:MovieClip;
      
      public var accuracy:MovieClip;
      
      public var evade:MovieClip;
      
      public var topRow:Array;
      
      public var bottomRow:Array;
      
      public function StatusDisplay()
      {
         super();
      }
      
      public function position(param1:MovieClip, param2:int) : *
      {
         if(!param1)
         {
            return;
         }
         param1.x = 20 + this.pp * 32 - this.p * 16;
         param1.y = param2;
         ++this.pp;
      }
      
      public function display(param1:String, param2:int, param3:Boolean = false) : *
      {
         if(this[param1] && !param2 && !Debug.showStatus && !param3)
         {
            removeChild(this[param1]);
            this[param1] = null;
         }
         else if(!this[param1] && (param2 || param3 || Debug.showStatus))
         {
            this[param1] = new StatusIcon();
            addChild(this[param1]);
            this[param1].gotoAndStop(70);
            this[param1].gotoAndStop(1);
            this[param1].gotoAndStop(param1);
         }
         if(this[param1])
         {
            try
            {
               this[param1].box.text = "" + param2;
            }
            catch(e:Error)
            {
            }
            if(param1 == "autolife")
            {
               this.autolife.x = -9;
               this.autolife.y = -65;
            }
            else
            {
               this.position(this[param1],-12);
            }
         }
      }
      
      public function displayBuff(param1:String, param2:int) : *
      {
         if(this[param1] && param2 == 100 && !Debug.showStatus)
         {
            removeChild(this[param1]);
            this[param1] = null;
         }
         else if(!this[param1] && (param2 != 100 || Debug.showStatus))
         {
            this[param1] = new StatusIcon();
            addChild(this[param1]);
            this[param1].gotoAndStop(70);
            this[param1].gotoAndStop(1);
         }
         if(this[param1])
         {
            if(param2 > 100)
            {
               this[param1].val = param2 - 100;
               this[param1].gotoAndStop(param1);
            }
            else
            {
               this[param1].val = 100 - param2;
               this[param1].gotoAndStop(param1 + 2);
            }
            try
            {
               this[param1].box.text = "" + this[param1].val;
            }
            catch(e:Error)
            {
            }
            this.position(this[param1],-47);
         }
      }
      
      public function removeAll() : *
      {
         var _loc1_:String = null;
         for each(_loc1_ in order)
         {
            if(this[_loc1_])
            {
               removeChild(this[_loc1_]);
               this[_loc1_] = null;
            }
         }
      }
      
      public function sortLayers() : *
      {
         layer = 0;
         var _loc1_:int = order.length - 1;
         while(_loc1_ >= 0)
         {
            if(this[order[_loc1_]])
            {
               setChildIndex(this[order[_loc1_]],layer);
               ++layer;
            }
            _loc1_--;
         }
      }
      
      public function update(param1:Target) : *
      {
         var _loc2_:String = null;
         try
         {
            if(param1.graphic.busy || !this.visible)
            {
               return;
            }
            this.p = 0;
            this.pp = 0;
            if(param1.status[Status.SHROUD])
            {
               this.display("shroud",param1.status[Status.SHROUD]);
               this.removeAll();
            }
            else if(Weather.isGlitchy())
            {
               this.removeAll();
            }
            else
            {
               for each(_loc2_ in Status.POSITIVES)
               {
                  if(Debug.showStatus || param1.status[_loc2_] && _loc2_ != Status.AUTOLIFE)
                  {
                     ++this.p;
                  }
               }
               for each(_loc2_ in Status.NEUTRALS)
               {
                  if(Debug.showStatus || Boolean(param1.status[_loc2_]))
                  {
                     ++this.p;
                  }
               }
               for each(_loc2_ in Status.NEGATIVES)
               {
                  if(Debug.showStatus || Boolean(param1.status[_loc2_]))
                  {
                     ++this.p;
                  }
               }
               this.display("shroud",param1.status[Status.SHROUD]);
               this.display("surrender",param1.status[Status.SURRENDER]);
               if(param1.isPlayer || Debug.showStatus)
               {
                  if(Flags.battleEvent == Flags.EVIL_NOLEGS || Debug.showStatus)
                  {
                     this.display("energized",0,true);
                  }
               }
               this.display("haste",param1.status[Status.HASTE]);
               this.display("charge",param1.status[Status.CHARGE]);
               this.display("regen",param1.status[Status.REGEN]);
               this.display("bless",param1.status[Status.BLESS]);
               this.display("morale",param1.status[Status.MORALE]);
               this.display("defend",param1.status[Status.DEFEND]);
               this.display("good_luck",param1.status[Status.GOOD_LUCK]);
               this.display("loved",param1.status[Status.LOVED]);
               this.display("brave",param1.status[Status.BRAVE]);
               this.display("autolife",param1.status[Status.AUTOLIFE]);
               this.display("berserk",param1.status[Status.BERSERK]);
               this.display("stun",param1.status[Status.STUN]);
               this.display("syphon",param1.status[Status.SYPHON]);
               this.display("wet",param1.status[Status.WET]);
               this.display("chill",param1.status[Status.CHILL]);
               this.display("freeze",param1.status[Status.FREEZE]);
               this.display("dry",param1.status[Status.DRY]);
               this.display("burn",param1.status[Status.BURN]);
               this.display("scorch",param1.status[Status.SCORCHED]);
               this.display("poison",param1.status[Status.POISON]);
               this.display("virus",param1.status[Status.VIRUS]);
               this.display("light",param1.status[Status.LIGHT]);
               this.display("heavy",param1.status[Status.HEAVY]);
               this.display("stagger",param1.status[Status.STAGGER]);
               this.display("confuse",param1.status[Status.CONFUSE]);
               this.display("stuffed",param1.status[Status.STUFFED]);
               this.display("hungry",param1.status[Status.HUNGRY]);
               this.display("tired",param1.status[Status.TIRED]);
               this.display("weaken",param1.status[Status.WEAKEN]);
               this.display("curse",param1.status[Status.CURSE]);
               this.display("bad_luck",param1.status[Status.BAD_LUCK]);
               this.display("doom",param1.status[Status.DOOM]);
               this.display("invisible",param1.status[Status.INVISIBLE]);
               this.display("enchanted",param1.status[Status.ENCHANTED]);
               this.display("target",param1.status[Status.TARGET]);
               if(param1.isPlayer || Debug.showStatus)
               {
                  if(Flags.battleEvent == Flags.EVIL_MATT || Debug.showStatus)
                  {
                     this.display("stoned",Flags.stonedTimer,true);
                  }
                  if(Flags.battleEvent == Flags.EVIL_NATALIE || Debug.showStatus)
                  {
                     this.display("undead",0,true);
                  }
                  if(Flags.battleEvent == Flags.EVIL_LANCE || Debug.showStatus)
                  {
                     this.display("repulsion",0,true);
                  }
                  if(Flags.battleEvent == Flags.EVIL_ANNA || Debug.showStatus)
                  {
                     this.display("brimstone",0,true);
                  }
                  if(Boolean(Flags.deleting) || Debug.showStatus)
                  {
                     this.display("delete1",0,true);
                  }
               }
               this.p = 0;
               this.pp = 0;
               for each(_loc2_ in Stats.STATS)
               {
                  if(Debug.showStatus || param1.buffs[_loc2_] != 100)
                  {
                     ++this.p;
                  }
               }
               this.displayBuff("HP",param1.buffs[Stats.HP]);
               this.displayBuff("attack",param1.buffs[Stats.ATTACK]);
               this.displayBuff("magicAttack",param1.buffs[Stats.MAGIC_ATTACK]);
               this.displayBuff("defence",param1.buffs[Stats.DEFENCE]);
               this.displayBuff("magicDefence",param1.buffs[Stats.MAGIC_DEFENCE]);
               this.displayBuff("accuracy",param1.buffs[Stats.ACCURACY]);
               this.displayBuff("evade",param1.buffs[Stats.EVADE]);
               this.sortLayers();
            }
         }
         catch(e:Error)
         {
         }
      }
   }
}


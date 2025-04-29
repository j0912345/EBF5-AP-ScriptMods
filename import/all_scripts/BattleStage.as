package
{
   import flash.display.MovieClip;
   
   public class BattleStage extends MovieClip
   {
      public var background:MovieClip;
      
      public var monster:int = 0;
      
      public var targetMCs:Array = [];
      
      public var spellMCs:Array = [];
      
      public var busyDelay:int = 0;
      
      public function BattleStage()
      {
         super();
      }
      
      public function init() : *
      {
      }
      
      public function checkBusy() : int
      {
         var _loc2_:TargetMC = null;
         var _loc3_:SpellMC = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.targetMCs)
         {
            if(Boolean(_loc2_) && _loc2_.busy)
            {
               _loc1_++;
            }
         }
         for each(_loc3_ in this.spellMCs)
         {
            if(Boolean(_loc3_) && _loc3_.busy)
            {
               _loc1_++;
            }
         }
         if(Battle.menu.speechBox.busy)
         {
            _loc1_++;
         }
         if(!_loc1_)
         {
            if(Global.resetBG1)
            {
               Backgrounds.resetBackground();
               SFX.playSound("paper");
               Global.resetBG1 = false;
            }
            if(Global.resetBG2)
            {
               Backgrounds.resetBackground();
               Battle.shake("small");
               SFX.playSound("rbg");
               Global.resetBG2 = false;
            }
            if(this.busyDelay)
            {
               --this.busyDelay;
            }
            else
            {
               Battle.runBattle();
            }
         }
         return _loc1_;
      }
   }
}


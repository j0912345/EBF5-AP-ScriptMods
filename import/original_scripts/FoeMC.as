package
{
   import flash.display.MovieClip;
   
   public class FoeMC extends TargetMC
   {
      public var head:MovieClip;
      
      public var body:MovieClip;
      
      public var eye1:MovieClip;
      
      public var eye2:MovieClip;
      
      public function FoeMC()
      {
         super();
      }
      
      public function foeText(param1:Object) : *
      {
         if(!self)
         {
            return;
         }
         Text.speech(param1,self.icon,self.textFont,self.textColor,self.textAnimation);
         Battle.menu.speechBox.foeIcon.gotoAndStop(self.icon);
      }
   }
}


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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol7017")]
   public dynamic class shopMenu extends MovieClip
   {
      public var b0:SimpleButton;
      
      public var b10:SimpleButton;
      
      public var b11:SimpleButton;
      
      public var b2:SimpleButton;
      
      public var b3:SimpleButton;
      
      public var b4:SimpleButton;
      
      public var b44:SimpleButton;
      
      public var b5:SimpleButton;
      
      public var b6:SimpleButton;
      
      public var b7:SimpleButton;
      
      public var b9:SimpleButton;
      
      public var m:TextField;
      
      public var oj:MovieClip;
      
      public var oo:MovieClip;
      
      public var t:TextField;
      
      public var t1:TextField;
      
      public var t2:TextField;
      
      public var t3:TextField;
      
      public var t4:TextField;
      
      public var t7:TextField;
      
      public var t8:TextField;
      
      public var tb:TextField;
      
      public var tm:TextField;
      
      public var tn:TextField;
      
      public var to:TextField;
      
      public var tq:TextField;
      
      public var uv:MovieClip;
      
      public var yu:MovieClip;
      
      public var yy:MovieClip;
      
      public var icon:int;
      
      public var type:String;
      
      public var items:Array;
      
      public var buying:Boolean;
      
      public var choice:Object;
      
      public var mode:String;
      
      public var quantity:int;
      
      public var ic:Icon;
      
      public var refreshed:Boolean;
      
      public function shopMenu()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3,3,this.frame4,4,this.frame5,5,this.frame6,6,this.frame7,7,this.frame8);
      }
      
      public function clickBuy() : *
      {
         this.buying = true;
         if(this.type == MapData.ITEM_SHOP)
         {
            gotoAndStop(4);
         }
         else
         {
            gotoAndStop(5);
         }
      }
      
      public function clickSell() : *
      {
         this.buying = false;
         if(this.type == MapData.ITEM_SHOP)
         {
            gotoAndStop(4);
         }
         else
         {
            gotoAndStop(5);
         }
      }
      
      public function clickItem(param1:Object) : *
      {
         GUI.removeIcons();
         this.choice = param1;
         if(this.buying && (this.type == MapData.EQUIP_SHOP || this.type == MapData.RARE_FOOD_SHOP))
         {
            gotoAndStop(7);
         }
         else if(this.buying)
         {
            gotoAndStop(6);
         }
         else
         {
            gotoAndStop(8);
         }
      }
      
      public function setText() : *
      {
         if(this.type == MapData.EQUIP_SHOP)
         {
            Global.translate(this.t,"shop6",20);
         }
         if(this.type == MapData.FOOD_SHOP)
         {
            Global.translate(this.t,"shop7",20);
         }
         if(this.type == MapData.ITEM_SHOP)
         {
            Global.translate(this.t,"shop8",20);
         }
         if(this.type == MapData.RARE_FOOD_SHOP)
         {
            Global.translate(this.t,"shop9",20);
         }
         this.t.setTextFormat(GUI.boldText);
         this.m.text = GUI.formatNumber(SaveData.money);
         this.m.setTextFormat(GUI.boldText);
      }
      
      public function displayItems() : *
      {
         var _loc1_:Boolean = false;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:Array = [];
         var _loc5_:Boolean = true;
         var _loc6_:int = 0;
         while(_loc6_ < this.items.length)
         {
            _loc4_ = int(this.items[_loc6_].cost);
            _loc7_ = -1;
            try
            {
               if(this.items[_loc6_].purchased)
               {
                  _loc4_ = this.items[_loc6_].cost * Math.pow(2,this.items[_loc6_].purchased);
               }
            }
            catch(e:Error)
            {
            }
            if(!this.buying)
            {
               _loc4_ *= Constants.SELL_RATE;
            }
            if(_loc4_ >= 1000000)
            {
               Icon.text = "" + GUI.formatNumber(_loc4_ / 1000000) + "M";
            }
            else if(_loc4_ >= 10000)
            {
               Icon.text = "" + _loc4_ / 1000 + "K";
            }
            else
            {
               Icon.text = "" + _loc4_;
            }
            if(_loc4_ > SaveData.money && this.buying)
            {
               _loc1_ = false;
            }
            else
            {
               _loc1_ = true;
            }
            if(this.type == MapData.EQUIP_SHOP)
            {
               this.mode = Icon.EQUIP;
            }
            else
            {
               this.mode = Icon.ITEM;
            }
            if(_loc6_ % 12 > 10 && this.type == MapData.ITEM_SHOP)
            {
               _loc3_ = 12;
            }
            else if(this.type == MapData.EQUIP_SHOP)
            {
               _loc3_ = 11;
               _loc7_ = 22;
            }
            else
            {
               _loc3_ = 13;
            }
            if(this.buying && (this.type != MapData.EQUIP_SHOP || !this.items[_loc6_].owned) || !this.buying && this.items[_loc6_].quantity != 0)
            {
               _loc5_ = false;
               _loc2_.push(GUI.createIcon(this,this.items[_loc6_],this.clickItem,_loc1_,this.mode,0,0,0,_loc7_,_loc3_));
            }
            else
            {
               _loc2_.push(null);
            }
            Icon.text = "";
            _loc6_++;
         }
         if(this.type == MapData.EQUIP_SHOP)
         {
            GUI.createIconMatrix(_loc2_,6,25 - 26,21 - 10,6);
            Equips.customerMedal();
         }
         else if(this.type == MapData.FOOD_SHOP || this.type == MapData.RARE_FOOD_SHOP)
         {
            GUI.createIconMatrix(_loc2_,4,53,21 - 10,6);
         }
         else if(this.type != MapData.ITEM_SHOP)
         {
            GUI.createIconMatrix(_loc2_,5,25,21,6);
         }
         else
         {
            GUI.createIconMatrix(_loc2_,12,-168,22,5);
         }
      }
      
      public function clickExit() : *
      {
         this.visible = false;
         parent.back.visible = false;
      }
      
      public function back() : *
      {
         GUI.removeIcons();
         if(this.ic)
         {
            removeChild(this.ic);
            this.ic = null;
         }
         this.init(this.type,this.items);
      }
      
      public function init(param1:String, param2:Array) : *
      {
         this.type = param1;
         this.items = param2;
         if(this.ic)
         {
            removeChild(this.ic);
            this.ic = null;
         }
         gotoAndStop(11);
         if(this.type == MapData.EQUIP_SHOP)
         {
            this.icon = 1;
            gotoAndStop(3);
         }
         if(this.type == MapData.FOOD_SHOP)
         {
            this.icon = 2;
            gotoAndStop(2);
         }
         if(this.type == MapData.ITEM_SHOP)
         {
            this.icon = 3;
            gotoAndStop(2);
         }
         if(this.type == MapData.RARE_FOOD_SHOP)
         {
            this.icon = 4;
            gotoAndStop(3);
         }
      }
      
      public function cancel() : *
      {
         if(this.ic)
         {
            removeChild(this.ic);
            this.ic = null;
         }
         if(this.type == MapData.ITEM_SHOP)
         {
            gotoAndStop(4);
         }
         else
         {
            gotoAndStop(5);
         }
      }
      
      public function buyItem() : *
      {
         if(this.type == MapData.EQUIP_SHOP)
         {
            this.choice.owned = true;
         }
         else
         {
            this.choice.quantity += this.quantity;
         }
         if(this.type == MapData.RARE_FOOD_SHOP)
         {
            SaveData.money -= this.choice.cost * Math.pow(2,this.choice.purchased);
            ++this.choice.purchased;
         }
         else
         {
            SaveData.money -= this.quantity * this.choice.cost;
         }
         parent.splash.gotoAndPlay("buy");
         (parent as MapMenu).updatePlayerBars(true);
         this.cancel();
      }
      
      public function addQuantity(param1:int = 1) : *
      {
         if((this.quantity + param1) * this.choice.cost <= SaveData.money)
         {
            this.quantity += param1;
         }
         this.refresh();
      }
      
      public function subQuantity(param1:int = 1) : *
      {
         this.quantity -= param1;
         if(this.quantity <= 0)
         {
            this.quantity = 1;
         }
         this.refresh();
      }
      
      public function refresh() : *
      {
         this.tq.text = "x" + this.quantity;
         GUI.setTextColor(this.tq);
         this.tm.text = "" + GUI.formatNumber(this.quantity * this.choice.cost);
         this.tm.setTextFormat(GUI.boldText);
         if(this.refreshed)
         {
            return;
         }
         Global.translate(this.tn,"",30,this.choice.name,false,"",false,true);
         Global.translate(this.to,"shop4",20,this.choice.quantity);
         Global.translate(this.tb,"back",10);
         Global.translate(this.t7,"shop1",20);
         Global.translate(this.t8,"cancel",20);
         GUI.setTextColor(this.tn);
         GUI.setTextColorDark(this.to);
         this.refreshed = true;
      }
      
      public function maxQuantity() : *
      {
         this.quantity = this.choice.quantity;
         this.refresh2();
      }
      
      public function addQuantity2(param1:int = 1) : *
      {
         if(this.quantity + param1 <= this.choice.quantity)
         {
            this.quantity += param1;
         }
         this.refresh2();
      }
      
      public function subQuantity2(param1:int = 1) : *
      {
         this.quantity -= param1;
         if(this.quantity <= 0)
         {
            this.quantity = 1;
         }
         this.refresh2();
      }
      
      public function refresh2() : *
      {
         this.tq.text = "x" + this.quantity;
         this.tq.setTextFormat(GUI.boldText);
         this.tm.text = "" + GUI.formatNumber(int(this.quantity * this.choice.cost * Constants.SELL_RATE));
         this.tm.setTextFormat(GUI.boldText);
         if(this.refreshed)
         {
            return;
         }
         Global.translate(this.tb,"back",10);
         Global.translate(this.t7,"shop2",20);
         Global.translate(this.t8,"cancel",20);
         Global.translate(this.tn,"",30,this.choice.name,false,"",false,true);
         Global.translate(this.to,"shop4",0,this.choice.quantity);
         Global.resize(this.tn,20);
         GUI.setTextColor(this.tn);
         GUI.setTextColor(this.tq);
         GUI.setTextColorDark(this.to);
         this.refreshed = true;
      }
      
      public function sellItem() : *
      {
         this.choice.quantity -= this.quantity;
         SaveData.money += int(this.quantity * this.choice.cost * Constants.SELL_RATE);
         if(SaveData.money > SaveData.moneyMax)
         {
            SaveData.money = SaveData.moneyMax;
         }
         parent.splash.gotoAndPlay("sell");
         (parent as MapMenu).updatePlayerBars(true);
         this.cancel();
      }
      
      internal function frame1() : *
      {
         this.icon = 1;
         this.items = [];
         this.buying = true;
         this.quantity = 1;
         stop();
         this.t;
      }
      
      internal function frame2() : *
      {
         this.b3.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            clickBuy();
         });
         this.b4.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            clickSell();
         });
         getChildByName("b5").addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            clickExit();
         });
         this.setText();
         Global.translate(this.t1,"shop1");
         Global.translate(this.t2,"shop2");
         Global.translate(this.t3,"shop3");
         Global.translate(this.t4,"shop5");
         GUI.setTextColor(this.t1);
         GUI.setTextColor(this.t2);
         GUI.setTextColor(this.t3);
      }
      
      internal function frame3() : *
      {
         this.b0.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            clickBuy();
         });
         this.b2.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            clickExit();
         });
         this.setText();
         Global.translate(this.t1,"shop1");
         Global.translate(this.t3,"shop3");
         Global.translate(this.t4,"shop5");
         GUI.setTextColor(this.t1);
         GUI.setTextColor(this.t3);
      }
      
      internal function frame4() : *
      {
         this.displayItems();
         this.setText();
         this.b9.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            back();
         });
         Global.translate(this.tb,"back");
      }
      
      internal function frame5() : *
      {
         this.displayItems();
         this.setText();
         this.b9.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            back();
         });
         Global.translate(this.tb,"back");
      }
      
      internal function frame6() : *
      {
         this.setText();
         this.quantity = 1;
         Icon.text = "  ";
         if(this.type == MapData.EQUIP_SHOP)
         {
            this.mode = Icon.EQUIP;
         }
         else
         {
            this.mode = Icon.ITEM;
         }
         this.ic = GUI.createIcon(this,this.choice,this.clickItem,true,this.mode);
         Icon.text = "";
         this.ic.scaleX *= 1.4;
         this.ic.scaleY *= 1.4;
         this.ic.x -= 50;
         this.ic.y += 70;
         this.b9.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            back();
         });
         this.refreshed = false;
         this.refresh();
         this.b10.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            addQuantity(10);
         });
         this.b11.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            subQuantity(10);
         });
         this.b4.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            addQuantity();
         });
         this.b5.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            subQuantity();
         });
         this.b6.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            buyItem();
         });
         this.b7.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            cancel();
         });
      }
      
      internal function frame7() : *
      {
         this.b9.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            back();
         });
         this.setText();
         this.quantity = 1;
         Icon.text = "  ";
         if(this.type == MapData.EQUIP_SHOP)
         {
            this.ic = GUI.createIcon(this,this.choice,this.clickItem,true,Icon.EQUIP,0,0,0,-1,11);
         }
         else
         {
            this.ic = GUI.createIcon(this,this.choice,this.clickItem,true,Icon.ITEM);
         }
         Icon.text = "";
         this.ic.scaleX *= 1.4;
         this.ic.scaleY *= 1.4;
         this.ic.x += 10;
         this.ic.y += 70;
         this.tm.text = "" + GUI.formatNumber(this.choice.cost);
         if(this.type != MapData.EQUIP_SHOP && Boolean(this.choice.purchased))
         {
            this.tm.text = "" + GUI.formatNumber(this.choice.cost * Math.pow(2,this.choice.purchased));
         }
         this.tm.setTextFormat(GUI.boldText);
         Global.translate(this.tn,"",30,this.choice.name);
         Global.resize(this.tn,20);
         this.tn.setTextFormat(GUI.boldText);
         if(this.type == MapData.RARE_FOOD_SHOP)
         {
            Global.translate(this.to,"shop4",20,this.choice.quantity);
         }
         else
         {
            Global.translate(this.to,this.choice.type,20);
         }
         Global.translate(this.tb,"back",10);
         Global.translate(this.t7,"shop1",20);
         Global.translate(this.t8,"cancel",20);
         GUI.setTextColor(this.tn);
         GUI.setTextColorDark(this.to);
         this.b6.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            buyItem();
         });
         this.b7.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            cancel();
         });
      }
      
      internal function frame8() : *
      {
         this.setText();
         this.quantity = 1;
         Icon.text = "  ";
         this.mode = Icon.ITEM;
         this.ic = GUI.createIcon(this,this.choice,this.clickItem,true,this.mode);
         Icon.text = "";
         this.ic.scaleX *= 1.4;
         this.ic.scaleY *= 1.4;
         this.ic.x -= 50;
         this.ic.y += 70;
         this.b9.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            back();
         });
         this.refreshed = false;
         this.refresh2();
         this.b10.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            addQuantity2(10);
         });
         this.b11.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            subQuantity2(10);
         });
         this.b4.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            addQuantity2();
         });
         this.b44.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            maxQuantity();
         });
         this.b5.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            subQuantity2();
         });
         this.b6.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            sellItem();
         });
         this.b7.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            cancel();
         });
      }
   }
}


package text.vietnamese
{
   public class skills
   {
      public static var WEP_EFFECTS:String = "\n • Hệ và hiệu ứng phụ thuộc vào vũ khí hiện tại.";
      
      public static var WEP_EFFECTS_2:String = "\n • Hiệu Ứng của vũ khí mạnh hơn bình thường.";
      
      public static var LOW_ACC:String = "\n • Độ Chính Xác thấp.";
      
      public static var HIGH_ACC:String = "\n • Độ Chính Xác cao.";
      
      public static var HIGH_ACC_2:String = "\n • Độ Chính Xác cực cao.";
      
      public static var HIGH_CRITS:String = "\n • Tỉ lệ Chí Mạng cao.";
      
      public static var RETARGETS:String = "\n • Chuyển sang mục tiêu mới nếu mục tiêu cũ bị hạ.";
      
      public static var RETARGETS_2:String = "\n • Chọn một mục tiêu mới nếu mục tiêu cũ bị hạ.";
      
      public static var LIMIT_BREAK:String = "Chiêu cuối! ";
      
      public static var ALTERNATIVE_ALL:String = " Có thể nhắm vào tất cả kẻ địch để dàn sát thương . ";
      
      public static var ALTERNATIVE_ONE:String = " Có thể tập trung lên một mục tiêu để gia tăng sát thương .";
      
      public static var MAY_SURRENDER:String = " Có thể khiến mục tiêu đầu hàng, kể cả những kẻ địch mạnh. ";
      
      public static var SWORD_DANCE:String = " Tấn công một mục tiêu 3 lần, chuyển sang mục tiêu khác nếu mục tiêu chính bị hạ.";
      
      public static var EXTRA_HITS:String = " Được phép ra thêm một đòn với mỗi mục tiêu hạ được.";
      
      public static var DISPEL_ALL:String = " Phá Phép tất cả các mục tiêu, loại bỏ các bùa và hiệu ứng có lợi.";
      
      public static var HITS_RANDOM_FOES:String = " Bắn ra 1 mũi tên ứng với mỗi kẻ địch, nhưng nhắm vào các mục tiêu ngẫu nhiên.";
      
      public static var COOLDOWN_2:String = "\n • Hồi chiêu sau 1 lượt. ";
      
      public static var COOLDOWN_3:String = "\n • Hồi chiêu sau 2 lượt. ";
      
      public static var COOLDOWN_4:String = "\n • Hồi chiêu sau 3 lượt. ";
      
      public static var COOLDOWN_6:String = "\n • Hồi chiêu sau 5 lượt. ";
      
      public static var COOLDOWN_11:String = "\n • Hồi chiêu sau 10 lượt. ";
      
      public static var defend:Object = {
         "name":"Phòng Ngự",
         "desc":"Mọi sát thương nhận vào đều giảm 50% trong 1 lượt. Một số Trang Bị gây thêm hiệu ứng đặc biệt."
      };
      
      public static var swap:Object = {
         "name":"Đổi Phiên",
         "desc":"Đổi lượt hành động với một nhân vật khác. Không tốn lượt."
      };
      
      public static var flee:Object = {
         "name":"Bỏ Chạy",
         "desc":"Tháo chạy khỏi trận chiến này. Không có hình phạt đi kèm."
      };
      
      public static var skip:Object = {
         "name":"Bỏ Lượt",
         "desc":"Bỏ lượt nhân vật này mà không làm gì cả."
      };
      
      public static var scan:Object = {
         "name":"Quét",
         "desc":"Quét tất cả kẻ địch, cho biết điểm yếu của chúng. Thông tin này sẽ được lưu trữ vĩnh viễn trong Bách Khoa."
      };
      
      public static var capture:Object = {
         "name":"Thu Phục",
         "desc":"Thử thu phục một kẻ địch. Những kẻ địch trọng thương, chịu các hiệu ứng xấu sẽ dễ thu phục hơn. Một vài kẻ địch không thể bị thu phục."
      };
      
      public static var bring1:Object = {
         "name":"Thay thành Matt",
         "desc":"Thay Matt vào một vị trí trên chiến trường. Không tốn lượt."
      };
      
      public static var bring2:Object = {
         "name":"Thay thành Natalie",
         "desc":"Thay Natalie vào một vị trí trên chiến trường. Không tốn lượt."
      };
      
      public static var bring3:Object = {
         "name":"Thay thành Lance",
         "desc":"Thay Lance vào một vị trí trên chiến trường. Không tốn lượt."
      };
      
      public static var bring4:Object = {
         "name":"Thay thành Anna",
         "desc":"Thay Anna vào một vị trí trên chiến trường. Không tốn lượt."
      };
      
      public static var bring5:Object = {
         "name":"Thay thành NoLegs",
         "desc":"Thay NoLegs vào một vị trí trên chiến trường. Không tốn lượt."
      };
      
      public static var swordslash:Object = {
         "name":"Đánh Thường",
         "desc":"Tấn công một mục tiêu bằng một nhát chém." + WEP_EFFECTS
      };
      
      public static var earthedge:Object = {
         "name":"Chấn Động",
         "desc":"Chiêu thức đơn cơ bản với hệ Đất."
      };
      
      public static var quakespikes:Object = {
         "name":"Địa Chấn",
         "desc":"Chiêu thức đơn nâng cao với hệ Đất."
      };
      
      public static var cataclysmiccut:Object = {
         "name":"Đại Địa Chấn",
         "desc":"Chiêu thức đơn cực mạnh với hệ Đất." + HIGH_CRITS
      };
      
      public static var geysergush:Object = {
         "name":"Cột Nước",
         "desc":"Chiêu thức đơn cơ bản với hệ Nước." + equips.MAY_WET
      };
      
      public static var pouringpike:Object = {
         "name":"Thủy Thương",
         "desc":"Chiêu thức đơn nâng cao với hệ Nước." + equips.MAY_WET
      };
      
      public static var surgingskewer:Object = {
         "name":"Vòi Rồng",
         "desc":"Chiêu thức đơn cực mạnh với hệ Nước." + equips.MAY_WET + HIGH_CRITS
      };
      
      public static var frostfragment:Object = {
         "name":"Cột Băng",
         "desc":"Chiêu thức đơn nâng cao với hệ Băng." + equips.MAY_CHILL
      };
      
      public static var glacialglaive:Object = {
         "name":"Băng Kiếm",
         "desc":"Chiêu thức đơn cực mạnh với hệ Băng." + equips.MAY_CHILL
      };
      
      public static var firespire:Object = {
         "name":"Dung Nham",
         "desc":"Chiêu thức đơn nâng cao với hệ Lửa." + equips.MAY_DRY
      };
      
      public static var lavalance:Object = {
         "name":"Phun Trào",
         "desc":"Chiêu thức đơn cực mạnh với hệ Lửa." + equips.MAY_DRY
      };
      
      public static var nettleknife:Object = {
         "name":"Tầm Ma",
         "desc":"Chiêu thức đơn cơ bản với hệ Sinh Học." + equips.MAY_POISON
      };
      
      public static var shreddingshrub:Object = {
         "name":"Um Tùm",
         "desc":"Chiêu thức đơn cực mạnh với hệ Sinh Học." + equips.MAY_POISON
      };
      
      public static var slicingcyclone:Object = {
         "name":"Bão Kiếm",
         "desc":"Chiêu thức diện rộng cực mạnh với hệ của vũ khí hiện tại." + WEP_EFFECTS + COOLDOWN_2
      };
      
      public static var stealitem:Object = {
         "name":"Đánh Cắp",
         "desc":"Đánh cắp một vật phẩm ngẫu nhiên từ một mục tiêu. Độ hiếm của vật phẩm cướp được tăng lên khi Kĩ Năng này lên cấp." + LOW_ACC
      };
      
      public static var legend:Object = {
         "name":"Liên Kích",
         "desc":"Chiêu thức đơn nhiều đòn cực mạnh với hệ của vũ khí hiện tại." + WEP_EFFECTS + COOLDOWN_3
      };
      
      public static var lightblade:Object = {
         "name":"Quang Kiếm",
         "desc":"Chiêu thức đơn nâng cao với hệ Ánh Sáng."
      };
      
      public static var holysword:Object = {
         "name":"Thánh Kiếm",
         "desc":"Chiêu thức đơn cực mạnh với hệ Ánh Sáng." + equips.MAY_DISPEL
      };
      
      public static var unleash:Object = {
         "name":"Giải Phóng",
         "desc":"Chiêu thức đơn giải phóng tiềm năng của vũ khí hiện tại." + WEP_EFFECTS + WEP_EFFECTS_2
      };
      
      public static var quickslash:Object = {
         "name":"Chém Nhanh",
         "desc":"Tấn công một mục tiêu với độ chính xác cực cao." + WEP_EFFECTS
      };
      
      public static var temper:Object = {
         "name":"Cuồng Kích",
         "desc":"Gia tăng Công của 1 đồng minh, và cho họ hiệu ứng Dũng Cảm. " + COOLDOWN_2
      };
      
      public static var revenge:Object = {
         "name":"Trả Thù",
         "desc":"Một đòn đánh đơn với khả năng tàn phá dữ dội. Công hiệu của nó tăng lên nếu Matt yếu Máu, và nếu các đồng minh của anh ta đều đã bị hạ. Công hiệu ở dưới là lượng tối đa có thể đạt được." + WEP_EFFECTS
      };
      
      public static var cleaver:Object = {
         "name":"Vô Cực Bá Trảm",
         "desc":LIMIT_BREAK + "Gây sát thương vật lý cực lớn lên một mục tiêu, với nhiều nhát chém liên tiếp." + WEP_EFFECTS + RETARGETS + HIGH_ACC + HIGH_CRITS
      };
      
      public static var ragnarok:Object = {
         "name":"Ragnarok",
         "desc":LIMIT_BREAK + "Tấn công tất cả kẻ địch với sát thương vật lý vô hệ, gia tăng Công cho tất cả đồng minh, và cho họ hiệu ứng Dũng Cảm. Bao gồm cả hậu quân." + HIGH_ACC
      };
      
      public static var staffstrike:Object = {
         "name":"Đánh Thường",
         "desc":"Tấn công một mục tiêu bằng một cú đập, đồng thời có khả năng giải phóng sức mạnh ma thuật của vũ khí hiện tại." + WEP_EFFECTS
      };
      
      public static var blessedbunny:Object = {
         "name":"Giải Thuật",
         "desc":"Loại bỏ mọi Bùa Hại và hiệu ứng xấu cho một đồng minh, và cho họ hiệu ứng Ban Phước."
      };
      
      public static var luckystar:Object = {
         "name":"Ngôi Sao Hi Vọng",
         "desc":"Phép đơn cơ bản với sát thương rất ngẫu nhiên." + HIGH_CRITS
      };
      
      public static var starshower:Object = {
         "name":"Mưa Sao Băng",
         "desc":"Phép diện rộng cực mạnh với sát thương rất ngẫu nhiên." + ALTERNATIVE_ONE + HIGH_CRITS
      };
      
      public static var starpower:Object = {
         "name":"Sức Mạnh Của Vì Sao",
         "desc":"Gia tăng Công Phép cho một đồng minh, và cho họ hiệu ứng May Mắn." + COOLDOWN_2
      };
      
      public static var intoxicate:Object = {
         "name":"Bong Bóng Độc",
         "desc":"Phép đơn cơ bản với hệ Sinh Học và khả năng gây Trúng Độc lớn."
      };
      
      public static var fireball:Object = {
         "name":"Lửa",
         "desc":"Phép đơn cơ bản với hệ Lửa." + equips.MAY_BURN
      };
      
      public static var fireblast:Object = {
         "name":"Hỏa Cầu",
         "desc":"Phép đơn nâng cao với hệ Lửa." + equips.MAY_BURN
      };
      
      public static var firestorm:Object = {
         "name":"Hoả Vũ",
         "desc":"Phép diện rộng cực mạnh với hệ Lửa." + ALTERNATIVE_ONE + equips.MAY_BURN
      };
      
      public static var thunderbolt:Object = {
         "name":"Sét",
         "desc":"Phép đơn cơ bản với hệ Điện." + equips.MAY_STUN
      };
      
      public static var thundershock:Object = {
         "name":"Lôi Giáng",
         "desc":"Phép đơn nâng cao với hệ Điện." + equips.MAY_STUN
      };
      
      public static var thunderstorm:Object = {
         "name":"Lôi Bão",
         "desc":"Phép diện rộng cực mạnh với hệ Điện." + ALTERNATIVE_ONE + equips.MAY_STUN
      };
      
      public static var iceshard:Object = {
         "name":"Băng",
         "desc":"Phép đơn cơ bản với hệ Băng." + equips.MAY_FREEZE
      };
      
      public static var iceshatter:Object = {
         "name":"Băng Kích",
         "desc":"Phép đơn nâng cao với hệ Băng." + equips.MAY_FREEZE
      };
      
      public static var icestorm:Object = {
         "name":"Băng Vũ",
         "desc":"Phép diện rộng cực mạnh với hệ Băng." + ALTERNATIVE_ONE + equips.MAY_FREEZE
      };
      
      public static var darkpulse:Object = {
         "name":"Hắc Cầu",
         "desc":"Phép đơn nâng cao với hệ Bóng Tối." + equips.MAY_HEAVY
      };
      
      public static var darkpulsar:Object = {
         "name":"Hắc Bão",
         "desc":"Phép diện rộng cực mạnh với hệ Bóng Tối." + equips.MAY_HEAVY + COOLDOWN_3
      };
      
      public static var spectralflash:Object = {
         "name":"Quang Phổ",
         "desc":"Phép đơn nâng cao với hệ của vũ khí hiện tại." + WEP_EFFECTS
      };
      
      public static var rainbowblast:Object = {
         "name":"Thất Sắc Liên Tiễn",
         "desc":"Phép diện rộng cực mạnh với hệ của vũ khí hiện tại." + ALTERNATIVE_ONE + WEP_EFFECTS
      };
      
      public static var holylight:Object = {
         "name":"Thánh Quang",
         "desc":"Phép đơn nâng cao với hệ Ánh Sáng." + equips.MAY_WEAKEN
      };
      
      public static var divinejudgement:Object = {
         "name":"Phán Quyết",
         "desc":"Phép đơn cực mạnh với hệ Ánh Sáng và có khả năng hấp thụ Máu của mục tiêu." + HIGH_ACC + COOLDOWN_3
      };
      
      public static var syphon:Object = {
         "name":"Khóa",
         "desc":"Gây hiệu ứng Câm Lặng lên một mục tiêu, khiến chúng không thể dùng phần lớn kỹ năng ma thuật." + COOLDOWN_3
      };
      
      public static var syphon2:Object = {
         "name":"Khóa Phép",
         "desc":"Gây hiệu ứng Câm Lặng lên mọi mục tiêu, khiến chúng không thể dùng phần lớn kỹ năng ma thuật. Có thể tập trung vào 1 mục tiêu để gia tăng độ thành công và giới hạn." + COOLDOWN_3
      };
      
      public static var genesis:Object = {
         "name":"Khởi Nguyên",
         "desc":LIMIT_BREAK + "Gây sát thương Ánh Sáng cực lớn lên tất cả Kẻ Thù, và hồi sinh hoặc cho hiệu ứng Tự Động Hồi Sinh lên tất cả đồng minh. \n • Có tác dụng lên cả hậu quân." + HIGH_ACC
      };
      
      public static var kyun:Object = {
         "name":"Thiên Đàng Thứ 7",
         "desc":LIMIT_BREAK + "Hồi phục Máu cho tất cả đồng minh và xóa hiệu ứng xấu, gia tăng Công, Công Phép, Thủ và Thủ Phép của họ. \n • Có tác dụng lên cả hậu quân. \n • Ban hiệu ứng Dễ Thương cho Natalie."
      };
      
      public static var pistolwhip:Object = {
         "name":"Đánh Thường",
         "desc":"Tấn công một mục tiêu với 2 đòn." + WEP_EFFECTS
      };
      
      public static var snipe:Object = {
         "name":"Bắn Tỉa",
         "desc":"Bắn một mục tiêu với Độ Chính Xác cực cao." + WEP_EFFECTS + HIGH_CRITS + COOLDOWN_2
      };
      
      public static var doubleshot:Object = {
         "name":"Liên Thanh",
         "desc":"Bắn một mục tiêu bằng 2 phát súng." + WEP_EFFECTS + WEP_EFFECTS_2 + RETARGETS
      };
      
      public static var unload:Object = {
         "name":"Bão Đạn",
         "desc":"Bắn một mục tiêu bằng 6 phát súng." + WEP_EFFECTS + RETARGETS + HIGH_CRITS + COOLDOWN_6
      };
      
      public static var flameshot:Object = {
         "name":"Hỏa Đạn",
         "desc":"Phép đơn cơ bản với hệ Lửa." + equips.DEBUFF_DEF + COOLDOWN_2
      };
      
      public static var flameburst:Object = {
         "name":"Hỏa Bộc",
         "desc":"Phép diện rộng nâng cao với hệ Lửa." + equips.DEBUFF_DEF + COOLDOWN_2 + ALTERNATIVE_ONE
      };
      
      public static var bullethell:Object = {
         "name":"Địa Ngục Viêm Đạn",
         "desc":"Phép diện rộng kiêm tập trung cực mạnh với hệ Lửa, và các mục tiêu lân cận nhận 1/3 sát thương." + ALTERNATIVE_ALL + equips.DEBUFF_DEF + COOLDOWN_2
      };
      
      public static var plasmashot:Object = {
         "name":"Đạn Plasma",
         "desc":"Phép đơn cơ bản với hệ Điện." + equips.DEBUFF_EVA + COOLDOWN_2
      };
      
      public static var plasmawave:Object = {
         "name":"Sóng Plasma",
         "desc":"Phép diện rộng nâng cao với hệ Điện." + equips.DEBUFF_EVA + COOLDOWN_2 + ALTERNATIVE_ONE
      };
      
      public static var plasmafield:Object = {
         "name":"Trường Plasma",
         "desc":"Phép diện rộng kiêm tập trung cực mạnh với hệ Điện, và các mục tiêu lân cận nhận 1/3 sát thương. " + ALTERNATIVE_ALL + equips.DEBUFF_EVA + COOLDOWN_2
      };
      
      public static var darkshot:Object = {
         "name":"Hắc Đạn",
         "desc":"Phép đơn cơ bản với hệ Bóng Tối." + equips.DEBUFF_MDEF + COOLDOWN_2
      };
      
      public static var gravitysurge:Object = {
         "name":"Sốc Trọng Lực",
         "desc":"Phép diện rộng nâng cao với hệ Bóng Tối." + equips.DEBUFF_MDEF + COOLDOWN_2 + ALTERNATIVE_ONE
      };
      
      public static var antimatterflux:Object = {
         "name":"Xoáy Phản Vật Chất",
         "desc":"Phép diện rộng kiêm tập trung với hệ Bóng Tối, và các mục tiêu lân cận nhận 1/3 sát thương." + ALTERNATIVE_ALL + equips.DEBUFF_MDEF + COOLDOWN_2
      };
      
      public static var poisongas:Object = {
         "name":"Khí Độc",
         "desc":"Khiến tất cả kẻ địch bị Trúng Độc, và gây sát thương Sinh Học." + COOLDOWN_4
      };
      
      public static var airstrike1:Object = {
         "name":"Thả Bom",
         "desc":"Cho nổ một mục tiêu bằng sát thương phép lớn với hệ Bom." + equips.MAY_STAGGER + COOLDOWN_4
      };
      
      public static var airstrike2:Object = {
         "name":"Không Kích",
         "desc":"Cho nổ tất cả mục tiêu bằng sát thương phép lớn với hệ Bom." + ALTERNATIVE_ONE + equips.MAY_STAGGER + COOLDOWN_4
      };
      
      public static var airstrike3:Object = {
         "name":"M.O.A.B",
         "desc":"Cho nổ tất cả mục tiêu bằng sát thương phép cực mạnh với hệ Bom. Tốn thời gian rất lâu để hồi phục." + equips.MAY_STAGGER + COOLDOWN_11
      };
      
      public static var medipack1:Object = {
         "name":"Túi Cứu Thương",
         "desc":"Hồi phục một đồng minh và xóa mọi hiệu ứng xấu của họ. " + COOLDOWN_4
      };
      
      public static var medipack2:Object = {
         "name":"Hồi Sức",
         "desc":"Hồi phục mọi đồng minh và xóa mọi hiệu ứng xấu của họ. " + COOLDOWN_4
      };
      
      public static var tankguns:Object = {
         "name":"Súng Máy",
         "desc":"Bắn tất cả kẻ địch liên tiếp bằng sát thương Bom." + COOLDOWN_2
      };
      
      public static var armorcrush:Object = {
         "name":"Nghiền Nát",
         "desc":"Đập một mục tiêu bằng đòn tấn công vật lý, và Phá Phép nó." + WEP_EFFECTS + COOLDOWN_2
      };
      
      public static var hyperbeam:Object = {
         "name":"Tia Tối Thượng",
         "desc":"Mất 2 lượt để sử dụng: Chuẩn bị ở lượt đầu, và khai hỏa ở lần sử dụng sau. Gây sát thương phép cực mạnh lên tất cả kẻ thù." + WEP_EFFECTS
      };
      
      public static var nuke:Object = {
         "name":"Bom Hạt Nhân",
         "desc":LIMIT_BREAK + "Gây sát thương phép cực mạnh với hệ Lửa lên tất cả, và gây Bỏng cho tất cả nhân vật lẫn kẻ thù." + HIGH_ACC + "\n • Đổi thời tiết hiện tại thành Nhiễm Xạ cho 5 lượt. "
      };
      
      public static var oblivion:Object = {
         "name":"Diệt Vong",
         "desc":LIMIT_BREAK + "Gây sát thương vật lý với hệ Bom lên tất cả kẻ địch. Làm vậy thì hỏng mất xe tăng của Lance, nhưng anh ta còn ối cái để dùng." + HIGH_ACC
      };
      
      public static var arrowslash:Object = {
         "name":"Đánh Thường",
         "desc":"Chém một mục tiêu với một đòn đánh đơn cơ bản." + WEP_EFFECTS
      };
      
      public static var bowwhack:Object = {
         "name":"Phang Cung",
         "desc":"Đập một kẻ địch với cung của bạn, khiến chúng có thể đầu hàng. Thậm chí những kẻ địch mạnh cũng không ngoại lệ." + WEP_EFFECTS + "\n • Chiêu này không giết địch được."
      };
      
      public static var gust:Object = {
         "name":"Gió",
         "desc":"Phép đơn cơ bản với hệ Gió." + equips.MAY_LIGHT
      };
      
      public static var whirlwind:Object = {
         "name":"Gió Lốc",
         "desc":"Phép đơn nâng cao với hệ Gió." + equips.MAY_LIGHT + equips.DEBUFF_MDEF
      };
      
      public static var hurricane:Object = {
         "name":"Bão Tố",
         "desc":"Phép diện rộng cực mạnh với hệ Gió." + ALTERNATIVE_ONE + equips.MAY_LIGHT + equips.DEBUFF_MDEF
      };
      
      public static var logjab:Object = {
         "name":"Gỗ",
         "desc":"Tấn công đơn cơ bản với hệ Đất." + equips.MAY_STAGGER
      };
      
      public static var lumbertrap:Object = {
         "name":"Bẫy gỗ",
         "desc":"Tấn công đơn cực mạnh, nhiều lần với hệ Đất." + equips.MAY_STAGGER
      };
      
      public static var leafblade:Object = {
         "name":"Song Diệp Đao",
         "desc":"Tấn công đơn cơ bản 2 lần với hệ Sinh Học." + HIGH_CRITS
      };
      
      public static var razorleaf:Object = {
         "name":"Lục Diệp Tiễn",
         "desc":"Tấn công diện rộng cực mạnh nhiều lần với hệ Sinh Học." + ALTERNATIVE_ONE + HIGH_CRITS
      };
      
      public static var soularrow:Object = {
         "name":"Quang Tiễn",
         "desc":"Tấn công đơn nâng cao với hệ Ánh Sáng." + equips.MAY_WEAKEN
      };
      
      public static var frostarrow:Object = {
         "name":"Băng Tiễn",
         "desc":"Tấn công đơn nâng cao với hệ Băng." + equips.MAY_FREEZE
      };
      
      public static var aquaarrow:Object = {
         "name":"Thủy Tiễn",
         "desc":"Tấn công đơn nâng cao với hệ Nước." + equips.MAY_WET
      };
      
      public static var nitroarrow:Object = {
         "name":"Bộc Tiễn",
         "desc":"Tấn công đơn nâng cao với hệ Bom." + equips.MAY_DISPEL
      };
      
      public static var sparkarrow:Object = {
         "name":"Lôi Tiễn",
         "desc":"Tấn công đơn nâng cao với hệ Điện." + equips.MAY_STUN
      };
      
      public static var soularrow2:Object = {
         "name":"Thánh Vũ",
         "desc":"Tấn công mạnh với hệ Ánh Sáng:" + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_WEAKEN
      };
      
      public static var frostarrow2:Object = {
         "name":"Băng Hoàng Liên Vũ",
         "desc":"Tấn công mạnh với hệ Băng:" + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_FREEZE
      };
      
      public static var aquaarrow2:Object = {
         "name":"Kính Hoa Thủy Nguyệt",
         "desc":"Tấn công mạnh với hệ Nước:" + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_WET
      };
      
      public static var nitroarrow2:Object = {
         "name":"Vọng Bộc Liên Kích",
         "desc":"Tấn công mạnh với hệ Bom:" + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_DISPEL
      };
      
      public static var sparkarrow2:Object = {
         "name":"Lôi Đình Đa Kích",
         "desc":"Tấn công mạnh với hệ Điện:" + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_STUN
      };
      
      public static var piercingshot:Object = {
         "name":"Xuyên Tâm Tiễn",
         "desc":"Tấn công bằng một phát bắn cực chính xác." + equips.IGNORES_BUFFS + HIGH_CRITS + WEP_EFFECTS
      };
      
      public static var comboshot:Object = {
         "name":"Liên Tiễn",
         "desc":"Tấn công bằng 3 mũi tên cực mạnh và chính xác." + COOLDOWN_2 + WEP_EFFECTS
      };
      
      public static var arrowrain:Object = {
         "name":"Mưa Tên",
         "desc":"Tấn công với nhiều mũi tên, có khả năng trúng nhiều lần." + COOLDOWN_2 + WEP_EFFECTS
      };
      
      public static var renew:Object = {
         "name":"Khắc Phục",
         "desc":"Phép hồi phục cơ bản cho một đồng minh."
      };
      
      public static var remedy:Object = {
         "name":"Sảng Khoái",
         "desc":"Phép hồi phục nâng cao cho một đồng minh, và cho họ hiệu ứng Ban Phước."
      };
      
      public static var motherearth:Object = {
         "name":"Mẹ Thiên Nhiên",
         "desc":LIMIT_BREAK + "Gây sát thương phép cực mạnh với hệ Sinh Học lên tất cả kẻ địch và khiến chúng bị Trúng Độc. \n • Ban hiệu ứng Ban Phước cho tất cả đồng minh, bao gồm hậu quân." + HIGH_ACC + "\n • Làm Thời Tiết yên bình cho 5 lượt."
      };
      
      public static var mightyoak:Object = {
         "name":"Thần Sồi Vĩ Đại",
         "desc":LIMIT_BREAK + "Gây sát thương vật lý cực mạnh với hệ Đất lên tất cả kẻ địch, với nhiều đòn đầy uy lực." + HIGH_ACC
      };
      
      public static var backstab:Object = {
         "name":"Đánh Thường",
         "desc":"Đánh úp một mục tiêu bằng một cú đâm từ đằng sau." + WEP_EFFECTS
      };
      
      public static var multistab:Object = {
         "name":"Tập Kiếm",
         "desc":"Tấn công đơn cơ bản với 4 nhát chém." + WEP_EFFECTS + COOLDOWN_2
      };
      
      public static var bladeblitz:Object = {
         "name":"Bão Kiếm",
         "desc":"Tấn công đơn cực mạnh với 11 nhát chém." + WEP_EFFECTS + COOLDOWN_2
      };
      
      public static var swiftslash:Object = {
         "name":"Tốc Chém",
         "desc":"Một cú chém cực nhanh lên tất cả kẻ địch." + WEP_EFFECTS + HIGH_ACC + COOLDOWN_2
      };
      
      public static var ninelives:Object = {
         "name":"9 Mạng",
         "desc":"Hồi phục cho tất cả đồng minh, cho họ hiệu ứng Tự Động Hồi Sinh, và hồi sinh luôn cả đồng minh bị hạ. Tốn thời gian rất lâu để hồi phục." + COOLDOWN_11
      };
      
      public static var starblast:Object = {
         "name":"Luồng Sao",
         "desc":"Đánh tất cả kẻ địch bằng sát thương phép vô hệ. Tốn rất nhiều thời gian để hồi phục." + equips.MAY_DISPEL + HIGH_ACC + COOLDOWN_11
      };
      
      public static var sworddance:Object = {
         "name":"Chém Trên",
         "desc":"Tấn công đơn cơ bản:" + SWORD_DANCE + EXTRA_HITS + WEP_EFFECTS
      };
      
      public static var sworddance2:Object = {
         "name":"Múa Kiếm",
         "desc":"Tấn công đơn nâng cao:" + SWORD_DANCE + EXTRA_HITS + WEP_EFFECTS
      };
      
      public static var sworddance3:Object = {
         "name":"Cú Chém Cuối Cùng",
         "desc":"Tấn công đơn cực mạnh:" + SWORD_DANCE + EXTRA_HITS + WEP_EFFECTS
      };
      
      public static var darkslash:Object = {
         "name":"Hắc Trảm",
         "desc":"Tấn công đơn nâng cao với hệ Bóng Tối:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_CURSE
      };
      
      public static var darkslash2:Object = {
         "name":"Điệu Tango Của Hoàng Hôn",
         "desc":"Tấn công đơn cực mạnh với hệ Bóng Tối:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_CURSE
      };
      
      public static var holyslash:Object = {
         "name":"Bạch Trảm",
         "desc":"Tấn công đơn nâng cao với hệ Ánh Sáng:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_SYPHON
      };
      
      public static var holyslash2:Object = {
         "name":"Điệu Nhảy Linh Thiêng",
         "desc":"Tấn công đơn cực mạnh với hệ Ánh Sáng:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_SYPHON
      };
      
      public static var lightningslash:Object = {
         "name":"Lôi Trảm",
         "desc":"Tấn công đơn nâng cao với hệ Điện:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_STUN
      };
      
      public static var lightningslash2:Object = {
         "name":"Điệu Boogie của Sét",
         "desc":"Tấn công đơn cực mạnh với hệ Điện:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_STUN
      };
      
      public static var windslash:Object = {
         "name":"Phong Trảm",
         "desc":"Tấn công đơn nâng cao với hệ Gió:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_WEAKEN
      };
      
      public static var windslash2:Object = {
         "name":"Điệu Nhảy Lốc Xoáy",
         "desc":"Tấn công đơn cực mạnh với hệ Gió:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_WEAKEN
      };
      
      public static var waterslash:Object = {
         "name":"Thủy Trảm",
         "desc":"Tấn công đơn nâng cao với hệ Nước:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_BAD_LUCK
      };
      
      public static var waterslash2:Object = {
         "name":"Điệu Nhảy Xoáy Nước",
         "desc":"Tấn công đơn cực mạnh với hệ Nước:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_BAD_LUCK
      };
      
      public static var sushicat:Object = {
         "name":"Mèo Sushi",
         "desc":"Nảy lung tung, đánh 3 kẻ địch ngẫu nhiên bằng sát thương phép, và hồi phục 2 đồng minh yếu Máu nhất." + COOLDOWN_3
      };
      
      public static var sushicat2:Object = {
         "name":"Mèo Sushi!",
         "desc":"Nảy lung tung, đánh 3 kẻ địch ngẫu nhiên bằng sát thương phép, và hồi phục 2 đồng minh yếu Máu nhất. \n • Cho các nhân vật hiệu ứng May Mắn." + COOLDOWN_3
      };
      
      public static var berserk:Object = {
         "name":"Cuồng Bạo",
         "desc":"Làm một mục tiêu, đồng minh hay kẻ địch Cuồng Nộ khiến họ tấn công không kiểm soát với sức mạnh dữ dội. " + COOLDOWN_2
      };
      
      public static var berserk2:Object = {
         "name":"Tức Điên",
         "desc":"Làm tất cả đồng minh Cuồng Nộ. Cũng có thể tập trung vào một đồng minh để gia tăng giới hạn. " + COOLDOWN_3
      };
      
      public static var cherish:Object = {
         "name":"Yêu Quý",
         "desc":"Làm một mục tiêu trở nên Dễ Thương, khiến họ không thể bị nhắm bởi các đòn tấn công đơn được. " + COOLDOWN_3
      };
      
      public static var cherish2:Object = {
         "name":"Quý Trọng",
         "desc":"Làm tất cả đồng minh trở nên Dễ Thương. Cũng có thể tập trung vào một đồng minh để gia tăng giới hạn. " + COOLDOWN_4
      };
      
      public static var thecreator:Object = {
         "name":"Đấng Tạo Hóa",
         "desc":LIMIT_BREAK + "Gây sát thương phép cực mạnh với hệ Ánh Sáng lên tất cả kẻ địch. \n • Ban hiệu ứng May Mắn lên tất cả đồng minh, bao gồm hậu quân." + HIGH_ACC + "\n • Làm Thời Tiết yên bình cho 5 lượt."
      };
      
      public static var thedestroyer:Object = {
         "name":"Kẻ Hủy Diệt",
         "desc":LIMIT_BREAK + "Gây sát thương vật lý cực mạnh với hệ Bóng Tối lên tất cả kẻ địch với nhiều nhát đâm." + DISPEL_ALL + HIGH_ACC
      };
      
      public static var snowbunny:Object = {
         "name":"Thỏ Tuyết",
         "desc":"Phép diện rộng với hệ Băng." + equips.MAY_CHILL + COOLDOWN_3
      };
      
      public static var snowcat:Object = {
         "name":"Mèo Tuyết",
         "desc":"Phép diện rộng mạnh với hệ Băng, gây hiệu ứng Tê Cóng." + equips.MAY_CHILL + COOLDOWN_3
      };
      
      public static var ivy:Object = {
         "name":"Dây Gai",
         "desc":"Tấn công đơn với hệ Sinh Học." + equips.MAY_POISON
      };
      
      public static var vines:Object = {
         "name":"Dây Độc",
         "desc":"Tấn công đơn mạnh nhiều lần với hệ Sinh Học." + equips.MAY_POISON + equips.DEBUFF_EVA
      };
      
      public static var energy:Object = {
         "name":"Năng Lượng",
         "desc":"Phép đơn cơ bản với hệ Bom." + HIGH_CRITS
      };
      
      public static var energy2:Object = {
         "name":"Bom Năng Lượng",
         "desc":"Phép đơn nâng cao với hệ Bom." + HIGH_CRITS
      };
      
      public static var energy3:Object = {
         "name":"Quầng Năng Lượng",
         "desc":"Phép diện rộng cực mạnh với hệ Bom." + ALTERNATIVE_ONE + HIGH_CRITS
      };
      
      public static var bubbles:Object = {
         "name":"Bong Bóng",
         "desc":"Phép đơn cơ bản với hệ Nước." + equips.MAY_WET
      };
      
      public static var whirlpool:Object = {
         "name":"Xoáy Nước",
         "desc":"Phép đơn nâng cao với hệ Nước." + equips.MAY_WET + equips.DEBUFF_EVA
      };
      
      public static var vortex:Object = {
         "name":"Bão Bong Bóng",
         "desc":"Phép diện rộng cực mạnh với hệ Nước." + ALTERNATIVE_ONE + equips.MAY_WET + equips.DEBUFF_EVA
      };
      
      public static var laserblade:Object = {
         "name":"Lôi Gươm",
         "desc":"Tấn công đơn nâng cao với hệ Điện." + equips.MAY_STAGGER
      };
      
      public static var lasersword:Object = {
         "name":"Lôi Kiếm",
         "desc":"Tấn công đơn cực mạnh với hệ Điện." + equips.MAY_STAGGER
      };
      
      public static var bulletbob:Object = {
         "name":"Đạn Lớn",
         "desc":"Tấn công đơn nâng cao với hệ Bom." + HIGH_CRITS
      };
      
      public static var bigbullet:Object = {
         "name":"Đạn Khổng Lồ",
         "desc":"Tấn công đơn cực mạnh với hệ Bom." + HIGH_CRITS
      };
      
      public static var gale:Object = {
         "name":"Cắt Gió",
         "desc":"Tấn công đơn nâng cao với hệ Gió." + equips.MAY_LIGHT
      };
      
      public static var tempest:Object = {
         "name":"Chém Gió",
         "desc":"Tấn công đơn cực mạnh với hệ Gió." + equips.MAY_LIGHT
      };
      
      public static var powermetal:Object = {
         "name":"Power Metal",
         "desc":"Gây sát thương phép với hệ Gió lên tất cả kẻ địch, và hồi phục cho tất cả đồng minh." + HIGH_ACC + COOLDOWN_3
      };
      
      public static var air:Object = {
         "name":"Khí",
         "desc":"Phép đơn cơ bản với hệ Gió." + equips.MAY_STAGGER
      };
      
      public static var air2:Object = {
         "name":"Sóng Gió",
         "desc":"Phép đơn nâng cao với hệ Gió." + equips.MAY_STAGGER
      };
      
      public static var air3:Object = {
         "name":"Phong Cầu",
         "desc":"Phép diện rông cực mạnh với hệ Gió." + ALTERNATIVE_ONE + equips.MAY_STAGGER
      };
      
      public static var sawblade:Object = {
         "name":"Lưỡi Cưa",
         "desc":"Tấn công đơn nâng cao vô hệ." + equips.IGNORES_BUFFS + equips.MAY_DEATH
      };
      
      public static var sawblades:Object = {
         "name":"Xé Nát",
         "desc":"Tấn công diện rộng nâng cao vô hệ." + equips.IGNORES_BUFFS + equips.MAY_DEATH + COOLDOWN_2
      };
      
      public static var gaia:Object = {
         "name":"Thổ Hạt",
         "desc":"Phép đơn cơ bản với hệ Đất." + equips.MAY_TIRE
      };
      
      public static var gaia2:Object = {
         "name":"Thổ Trưởng",
         "desc":"Phép đơn nâng cao với hệ Đất." + equips.MAY_TIRE
      };
      
      public static var gaia3:Object = {
         "name":"Thổ Hoa",
         "desc":"Phép diện rộng cực mạnh với hệ Đất." + ALTERNATIVE_ONE + equips.MAY_TIRE
      };
      
      public static var firespin:Object = {
         "name":"Vòng Lửa",
         "desc":"Phép diện rộng mạnh với hệ Lửa." + equips.MAY_BURN + equips.DEBUFF_DEF + COOLDOWN_2
      };
      
      public static var purgingflame:Object = {
         "name":"Bạch Hỏa",
         "desc":"Phép đơn với hệ Ánh Sáng gây Phá Phép và giảm Công Phép của một mục tiêu." + HIGH_ACC
      };
      
      public static var screamer:Object = {
         "name":"Hù Dọa",
         "desc":"Gây sát thương phép với hệ Bóng Tối lên tất cả kẻ địch và giảm Công của chúng." + MAY_SURRENDER + COOLDOWN_4
      };
      
      public static var heal:Object = {
         "name":"Hồi Máu",
         "desc":"Phép hồi phục đơn cơ bản." + COOLDOWN_2
      };
      
      public static var healmore:Object = {
         "name":"Hồi Máu Cao Cấp",
         "desc":"Phép hồi phục diện rộng cấp cao. Cũng có thể tập trung vào một đồng minh để gia tăng hiệu quả." + COOLDOWN_2
      };
      
      public static var revive:Object = {
         "name":"Hồi Sinh",
         "desc":"Hồi sinh một đồng minh đã chết, hoặc cho một đồng minh còn sống hiệu ứng Tự Động Hồi Sinh. "
      };
      
      public static var purify:Object = {
         "name":"Thanh Tẩy",
         "desc":"Loại bỏ tất cả hiệu ứng xấu cho cả đội hoặc tất cả kẻ địch. Không bao hàm các hiệu ứng trung tính như Ướt hoặc Khô. " + COOLDOWN_3
      };
      
      public static var lockon:Object = {
         "name":"Nhắm Chuẩn",
         "desc":"Gia tăng Độ Chính Xác cho một đồng minh, và cho họ hiệu ứng May Mắn. " + COOLDOWN_2
      };
      
      public static var protect:Object = {
         "name":"Phòng Vệ",
         "desc":"Gia tăng Thủ cho tất cả đồng minh, bao gồm hậu quân." + COOLDOWN_6
      };
      
      public static var barrier:Object = {
         "name":"Kết Giới",
         "desc":"Gia tăng Thủ Phép cho tất cả đồng minh, bao gồm hậu quân." + COOLDOWN_6
      };
      
      public static var reflex:Object = {
         "name":"Phản Xạ",
         "desc":"Gia tăng Né Tránh cho tất cả đồng minh, bao gồm hậu quân, và xóa hiệu ứng Ẩn cho các đồng minh trên chiến trường. " + COOLDOWN_6
      };
      
      public static var guardian:Object = {
         "name":"Khiên Thủ Vệ",
         "desc":"Gia tăng Thủ và Thủ Phép cho một đồng minh. " + COOLDOWN_2
      };
      
      public static var dispel:Object = {
         "name":"Phá Phép",
         "desc":"Phá phép tất cả kẻ địch, loại bỏ các Bùa Lợi và hiệu ứng tốt của chúng. Nó có thể dùng để loại bỏ Bùa Hại của các đồng minh nữa. " + COOLDOWN_6
      };
      
      public static var flare:Object = {
         "name":"Chói Sáng",
         "desc":"Giảm Độ Chính Xác của tất cả kẻ địch." + HIGH_ACC + COOLDOWN_3
      };
      
      public static var bind:Object = {
         "name":"Bẫy Lưới",
         "desc":"Giảm Né Tránh của tất cả kẻ địch." + HIGH_ACC + COOLDOWN_3
      };
      
      public static var debilitate:Object = {
         "name":"Phá Giáp",
         "desc":"Giảm Thủ của tất cả kẻ địch." + COOLDOWN_6
      };
      
      public static var enfeeble:Object = {
         "name":"Suy Nhược",
         "desc":"Giảm Thủ Phép của tất cả kẻ địch." + COOLDOWN_6
      };
      
      public static var teradrill:Object = {
         "name":"Đại Khoan",
         "desc":"Tấn công đơn cực mạnh với hệ Đất. Gây sát thương nhiều hơn nếu mục tiêu có gia tăng Thủ hoặc Thủ Phép, hoặc là đang phòng ngự. " + COOLDOWN_3
      };
      
      public static var encore:Object = {
         "name":"Vỗ Tay",
         "desc":"Cho một đồng minh thêm lượt nữa. Tự dùng lên chính bạn là cực kì vô dụng và dở hơi." + COOLDOWN_3
      };
      
      public static var firecrackers:Object = {
         "name":"Pháo Hoa",
         "desc":"Gây Xui Xẻo cho tất cả kẻ địch, đồng thời ban May Mắn cho tất cả đồng minh, bao gồm hậu quân." + MAY_SURRENDER + COOLDOWN_4
      };
      
      public static var abzero:Object = {
         "name":"Độ Không Tuyệt Đối",
         "desc":LIMIT_BREAK + "Gây sát thương phép cực mạnh với hệ Băng lên tất cả kẻ địch, giảm Né Tránh, và Đóng Băng chúng. \n • Kết thúc hồi chiêu của toàn bộ nhân vật." + HIGH_ACC
      };
      
      public static var tsunami:Object = {
         "name":"Sóng Thần",
         "desc":LIMIT_BREAK + "Gây sát thương vật lý hoặc phép cực mạnh với hệ Nước lên tất cả kẻ địch, và làm chúng Ướt. \n • Sát thương dựa vào chỉ số cao nhất." + equips.MAY_DEATH + HIGH_ACC_2
      };
      
      public static var supernova:Object = {
         "name":"Siêu Tân Tinh",
         "desc":LIMIT_BREAK + "Gây sát thương phép cực mạnh với hệ Lửa lên tất cả kẻ địch lẫn đồng minh, và khiến tất cả bị Bỏng. \n • Không thể tránh được."
      };
      
      public static var deathmetal:Object = {
         "name":"Death Metal",
         "desc":LIMIT_BREAK + "Gây sát thương phép cực mạnh với hệ Gió lên tất cả kẻ địch. Hồi phục tất cả đồng minh và ban cho họ hiệu ứng Quyết Chí. Bao gồm cả hậu quân." + HIGH_ACC
      };
      
      public static var annihilate:Object = {
         "name":"Tận Diệt",
         "desc":LIMIT_BREAK + "Tấn công với tỉ lệ giết các kẻ thù lập tức cao. Không hiệu nghiệm lắm với Boss và có độ chính xác thấp."
      };
      
      public static var ion:Object = {
         "name":"Pháo Ion",
         "desc":LIMIT_BREAK + "Gây sát thương phép cực mạnh với hệ Điện lên tất cả kẻ địch, và có khả năng khiến chúng Choáng. \n • Cho Lance hiệu ứng Chuẩn Bị cho kỹ năng Tia Siêu Cấp." + HIGH_ACC_2
      };
      
      public static var blackhole:Object = {
         "name":"Lỗ Đen",
         "desc":LIMIT_BREAK + "Gây sát thương phép cực mạnh với hệ Bóng Tối lên tất cả kẻ địch, và khiến chúng Nặng hơn. Giết luôn cả người sử dụng." + HIGH_ACC
      };
      
      public static var rapture:Object = {
         "name":"Sức Mạnh Tiềm Ẩn",
         "desc":LIMIT_BREAK + "Gây sát thương vật lý hoặc phép cực mạnh lên tất cả kẻ địch. \n • Sát thương dựa vào chỉ số cao nhất." + WEP_EFFECTS + HIGH_ACC
      };
      
      public static var bones:String = "Độn Xương";
      
      public static var bonestar:String = "Vòng Xương";
      
      public static var groundblade:String = "Độn Kiếm";
      
      public static var fallingstar:String = "Sao Băng";
      
      public static var firerock:String = "Hỏa Thạch";
      
      public static var stalactite:String = "Thạch Nhũ";
      
      public static var stalactite2:String = "Nhũ Đá";
      
      public static var fume:String = "Bốc Lửa";
      
      public static var eruption:String = "Phun Trào";
      
      public static var scald:String = "Khói Nóng";
      
      public static var rain:String = "Mưa";
      
      public static var sandstorm:String = "Bão Cát";
      
      public static var hail:String = "Mưa Băng";
      
      public static var nitro:String = "Vết Đốt Nitro";
      
      public static var acid:String = "Acid Nóng";
      
      public static var bamboo:String = "Tre";
      
      public static var bamboo2:String = "Bẫy Tre";
      
      public static var bluebolt:String = "Sét Lam";
      
      public static var deepfreeze:String = "Âm Độ";
      
      public static var wafer:String = "Bánh Kẹp";
      
      public static var present:String = "Quà Bất Ngờ";
      
      public static var plasmacage:String = "Lồng Plasma";
      
      public static var tankcannon:String = "Đại Bác Xe Tăng";
      
      public static var candycanes:String = "Kẹo Sọc";
      
      public static var bonefish:String = "Xương Cá";
      
      public static var riceball:String = "Mưa Cơm Nắm";
      
      public static var mushroom:String = "Nấm";
      
      public static var lifedrain:String = "Hút Máu";
      
      public static var smokepuff:String = "Khói Bụi";
      
      public static var confusion:String = "Loạn Trí";
      
      public static var ink:String = "Phun Mực";
      
      public static var chocolate:String = "Phun Chocolate";
      
      public static var tentacles:String = "Xúc Tu";
      
      public static var slowdown:String = "Giảm Tốc";
      
      public static var speedup:String = "Tăng Tốc";
      
      public static var poisonroot:String = "Rễ Độc";
      
      public static var burningroot:String = "Rễ Cháy";
      
      public static var searoot:String = "Rễ Biển";
      
      public static var bombblast:String = "Nổ";
      
      public static var bigblast:String = "Nổ Lớn";
      
      public static var cactus:String = "Xương Rồng";
      
      public static var cacti:String = "Cụm Xương Rồng";
      
      public static var spark:String = "Lôi Cầu";
      
      public static var bigspark:String = "Đại Lôi Cầu";
      
      public static var talisman:String = "Bùa Phù Hộ";
      
      public static var ember:String = "Hạt Lửa";
      
      public static var fireblast2:String = "Phun Lửa";
      
      public static var firecrystals:String = "Pha Lê Lửa";
      
      public static var zephyrcrystals:String = "Pha Lê Gió";
      
      public static var frost:String = "Đông Đá";
      
      public static var rockslide:String = "Đá Rơi";
      
      public static var avalanche:String = "Băng Rơi";
      
      public static var blackspikes:String = "Gai Đen";
      
      public static var stonefist:String = "Nắm Đấm Đá";
      
      public static var spiderweb:String = "Tơ Nhện";
      
      public static var spiders:String = "Bầy Nhện";
      
      public static var geometry2:String = "Loạn Không Gian";
      
      public static var geometry3:String = "Vùng Rối Loạn";
      
      public static var sacrifice:String = "Hiến Tế";
      
      public static var bigroot:String = "Rễ Lớn";
      
      public static var seabomb:String = "Bom Nước";
      
      public static var fairy:String = "Bom Tiên";
      
      public static var fly:String = "Bom Ruồi";
      
      public static var starpunch:String = "Cú Đấm Sao Bay";
      
      public static var darken:String = "Vô Hình";
      
      public static var lighten:String = "Phù Phép";
      
      public static var SlimeChocolate:String = "Nhổ vào một mục tiêu, gây sát thương vật lý Đất và giảm Độ Chính Xác.";
      
      public static var SlimeIcecream:String = "Dùng phép Băng cơ bản gây Tê Cóng một mục tiêu.";
      
      public static var SlimeSand:String = "Dùng phép Sinh Học cơ bản gây Choáng một mục tiêu.";
      
      public static var SlimeLava:String = "Dùng phép Lửa cơ bản gây Khô một mục tiêu.";
      
      public static var SlimeMouse:String = "Dùng tấn công Điện yếu gây Choáng một mục tiêu.";
      
      public static var SlimeWater:String = "Dùng tấn công Nước cực thảm hại lên một mục tiêu.";
      
      public static var SlimeMud:String = "Dùng tấn công Sinh Học cơ bản lên một mục tiêu.";
      
      public static var SlimeBunny:String = "Cho hiệu ứng Hồi Phục lên tất cả đồng minh, bao gồm hậu quân, hồi Máu cho họ mỗi lượt.";
      
      public static var SpriteFire:String = "Thay thế Thời Tiết hiện tại thành Tro Nóng cho 5 lượt.";
      
      public static var SpriteIce:String = "Thay thế Thời Tiết hiện tại thành Bão Tuyết cho 5 lượt.";
      
      public static var SpriteThunder:String = "Thay thế Thời Tiết hiện tại thành Nhiễm Điện cho 5 lượt.";
      
      public static var SpriteRock:String = "Thay thế Thời Tiết hiện tại thành Chấn Địa cho 5 lượt.";
      
      public static var SpriteWind:String = "Thay thế Thời Tiết hiện tại thành Bão cho 5 lượt.";
      
      public static var ChomperLeafy:String = "Thay thế Thời Tiết hiện tại thành Gió Thoảng cho 5 lượt.";
      
      public static var ChomperSeaweed:String = "Thay thế Thời Tiết hiện tại thành Mưa cho 5 lượt.";
      
      public static var ChomperMagma:String = "Thay thế Thời Tiết hiện tại thành Nắng cho 5 lượt.";
      
      public static var ChomperMutant:String = "Thay thế Thời Tiết hiện tại thành Mưa Acid.";
      
      public static var CreepThorny:String = "Đâm bằng một đòn Đất đơn nâng cao, có khả năng gây Choáng.";
      
      public static var CreepIcicle:String = "Đâm bằng một đòn Băng đơn nâng cao, có khả năng gây Tê Cóng.";
      
      public static var CreepHermit:String = "Cắt một mục tiêu bằng sát thương vô hệ nâng cao.";
      
      public static var CreepGreen:String = "Nảy lên một mục tiêu 3 lần với sát thương vật lý vô hệ mạnh." + RETARGETS_2;
      
      public static var CreepRed:String = "Đâm vào một mục tiêu với sát thương vật lý Gió mạnh, có khả năng gây Chao Đảo.";
      
      public static var CreepBlue:String = "Nổ với sát thương bom mạnh và có khả năng gây Choáng.";
      
      public static var Defender1:String = "Cho nổ tất cả kẻ địch với sát thương phép Điện mạnh, có khả năng gây Chao Đảo.";
      
      public static var Defender2:String = "Phun vào một mục tiêu với sát thương phép Nước mạnh, có khả năng gây Ướt. ";
      
      public static var DogFriend:String = "Cho Hiệu ứng Dễ Thương lên tất cả đồng minh, khiến kẻ địch khó dám đánh họ được.";
      
      public static var DogMaxi:String = DogFriend;
      
      public static var DogTanuki:String = "Nhảy đến một mục tiêu bằng sát thương Lửa, và gây Bỏng.";
      
      public static var DogWolf:String = "Nhảy đến một mục tiêu bằng sát thương Băng, và gây Đóng Băng.";
      
      public static var DogZap:String = "Nhảy đến tất cả kẻ địch bằng sát thương Điện, và có khả năng gây Chao Đảo.";
      
      public static var DogMage:String = "Đánh tất cả kẻ địch bằng phép Ánh Sáng đen tối, và gây Nguyền Rủa.";
      
      public static var ChibiKnightUltra:String = "Gia tăng Công cho tất cả đồng minh, bao gồm hậu quân, và rồi tấn công một kẻ địch nhiều lần." + RETARGETS_2;
      
      public static var BushGreen:String = "Hét vào mặt các kẻ địch, làm giảm Công của chúng một chút.";
      
      public static var BushRed:String = "Hét vào mặt các kẻ địch, làm giảm Thủ của chúng một chút.";
      
      public static var BushDark:String = "Khè dữ dội vào mặt các kẻ địch, làm giảm Né Tránh của chúng một chút.";
      
      public static var BushMud:String = "Hét vào mặt các kẻ địch, làm giảm Công Phép của chúng một chút.";
      
      public static var BushSand:String = "Khè dữ dội vào mặt các kẻ địch, làm giảm Thủ Phép của chúng một chút.";
      
      public static var GolemTopaz:String = "Đấm một mục tiêu nhiều lần với sát thương Điện mạnh, có khả năng gây Choáng.";
      
      public static var GolemPearl:String = "Khiến tất cả kẻ địch bị Tê Cóng bằng phép Băng mạnh, và thay thế Thời Tiết hiện tại thành Mưa Băng cho 5 lượt.";
      
      public static var GolemAmethyst:String = "Đấm tất cả kẻ địch nhiều lần với sát thương vô hệ mạnh, và gây Chao Đảo.";
      
      public static var FishSteam:String = "Đâm vào tất cả kẻ địch với tốc độ siêu thanh, và có khả năng khiến chúng Nhẹ hơn.";
      
      public static var FishGold:String = "Bắn tất cả kẻ địch bằng một tia Ánh Sáng, và có khả năng gây Khô.";
      
      public static var FishJet:String = "Bắn liên tiếp vào tất cả kẻ địch bằng sát thương Bom.";
      
      public static var HandSkeleton:String = "Cho hiệu ứng May Mắn lên tất cả đồng minh, bao gồm hậu quân, tăng vận may của họ trong nhiều sự kiện.";
      
      public static var HandZombie:String = "Cho hiệu ứng Tử Vận lên tất cả kể địch, khiến chúng chết ngay trong vòng 3 lượt.";
      
      public static var HandMagma:String = "Cho hiệu ứng Cuồng Nộ lên tất cả đồng minh, khiến họ tấn công không kiểm soát với sức mạnh dữ dội.";
      
      public static var FlybotBlue:String = "Đảo ngược Bùa của tất cả đồng minh, biến Hại thành Tốt, và ngược lại.";
      
      public static var FlybotYellow:String = "Đảo ngược Bùa của tất cả kẻ địch, biến Hại thành Tốt, và ngược lại.";
      
      public static var FlybotRed:String = "Đảo ngược Bùa của một đồng minh hoặc kẻ địch, biến Hại thành Tốt, và ngược lại.";
      
      public static var FallenLost:String = "Chém một kẻ địch bằng sát thương Gió, và cho Hiệu ứng Quyết Chí lên tất cả đồng minh, bao gồm hậu quân.";
      
      public static var FallenCrucified:String = "Chém một kẻ địch bằng sát thương Ánh Sáng, có khả năng Đột Tử.";
      
      public static var FallenDrowned:String = "Hủy tất cả các hiệu ứng xấu của đồng đội trên sân.";
      
      public static var FallenBurned:String = "Làm khô tất cả các kẻ địch bị Khô bằng sát thương Lửa, và thay thế Thời Tiết hiện tại thành Bão Cát trong 5 lượt.";
      
      public static var FallenBeheaded:String = "Đâm một kẻ địch bằng đòn Bóng Tối, và cho hiệu ứng Dũng Cảm lên tất cả đồng minh, bao gồm hậu quân.";
      
      public static var PixelSlime:String = "Đánh một kẻ thù với đòn Độc yếu, gây hiệu ứng Mệt.";
      
      public static var PixelBush:String = "Đánh một kẻ thù với đòn Lửa yếu, gây hiệu ứng Khô.";
      
      public static var PixelBat:String = "Đánh một kẻ thù với đòn Bóng Tối yếu, gây hiệu ứng Xui Xẻo.";
      
      public static var PixelIdol:String = "Đánh một kẻ thù với đòn Bom yếu, gây hiệu ứng Yếu.";
      
      public static var MonolithViking:String = "Thêm lượt cho tất cả đồng đội.";
      
      public static var MonolithAncient:String = "Cho hiệu ứng Phòng Thủ lên toàn đồng đội, giảm đáng kể sát thương phải nhận.";
      
      public static var MonolithCosmic:String = "Tấn công bằng phép Bóng Tối cực mạnh lên tất cả kẻ địch.";
      
      public static var IdolGem:String = "Cho hiệu ứng Nhẹ lên tất cả đồng minh, bao gồm hậu quân, bảo vệ họ khỏi sát thương Đất.";
      
      public static var IdolStone:String = "Cho hiệu ứng Khô lên tất cả đồng minh, bao gồm hậu quân, bảo vệ họ khỏi sát thương Điện và Băng.";
      
      public static var IdolMetal:String = "Cho hiệu ứng Nặng lên tất cả đồng minh, bao gồm hậu quân, bảo vệ họ khỏi sát thương Gió.";
      
      public static var IdolWood:String = "Cho hiệu ứng Ban Phước lên tất cả đồng minh, bao gồm hậu quân, bảo vệ họ khỏi tất cả các hiệu ứng xấu.";
      
      public static var MirrorWise:String = IdolWood;
      
      public static var MirrorAngel:String = "Cho hiệu ứng Phù Phép lên tất cả các đồng minh, bảo vệ họ khỏi các đòn Công Phép, nhưng làm họ yếu với các đòn vật lí.";
      
      public static var MirrorDemon:String = "Cho hiệu ứng Vô Hình lên tất cả các đồng minh, bảo vệ họ khỏi các đòn Công vật lý, nhưng làm họ yếu với các đòn phép.";
      
      public static var MirrorHaunted:String = "Cắn một kẻ địch với đòn Bóng Tối mạnh, và gây hiệu ứng Nguyền Rủa.";
      
      public static var MammothWooly:String = "Đè một kẻ địch với một đòn vô hệ cực mạnh, các kẻ địch lân cận nhận 1/3 sát thương ." + equips.MAY_STUN;
      
      public static var MammothCamel:String = "Tăng Thủ Phép của tất cả đồng minh, bao gồm hậu quân, sau đó tấn công tất cả kẻ địch bằng một đòn Đất mạnh.";
      
      public static var MammothWar:String = "Tăng Thủ của tất cả đồng minh, bao gồm hậu quân, sau đó tấn công tất cả kẻ địch bằng một đòn Bom." + equips.MAY_STAGGER;
      
      public static var SquidPink:String = "Phun mực vào một kẻ thù, gây sát thương Bóng Tối mạnh, giảm Độ Chính Xác địch và gây hiệu ứng Vô Hình.";
      
      public static var SquidPurple:String = "Giảm Độ Chính Xác của tất cả kẻ địch, và có thể gây hiệu ứng Tử Vận.";
      
      public static var SquidLime:String = "Đâm tất cả kẻ địch với đòn Điện mạnh, và gây Choáng tất cả.";
      
      public static var Underlegs:String = "Phá Phép tất cả kẻ địch và tấn công tất cả với đòn tấn công vô hệ mạnh.";
      
      public static var SlimeBigSand:String = "Tấn công một kẻ địch với một đòn Độc mạnh, và gây Choáng.";
      
      public static var SlimeBigLava:String = "Dùng một đòn tấn công đơn Lửa mạnh và gây Bỏng nặng.";
      
      public static var SlimeBigMud:String = "Dùng các đòn tấn công diện rộng bằng nấm thuộc tính Sinh Học, có khả năng gây Choáng.";
      
      public static var SlimeBigIcecream:String = "Dùng phép diện rộng thuộc tính Băng yếu gây Tê Cóng, thích hợp cho các combo Nước và Băng.";
      
      public static var SlimeBigChocolate:String = "Ói chocolate lên tất cả kẻ địch, gây sát thương phép Đất và làm chúng trở nên Nặng hơn.";
      
      public static var WormPutrid:String = "Dùng một đòn phun tơ đơn yếu vô hệ chủ yếu làm giảm Né Tránh nhiều.";
      
      public static var WormScaly:String = "Cho hiệu ứng Ướt lên tất cả các đồng minh, bao gồm hậu quân, bảo vệ họ khỏi sát thương Lửa.";
      
      public static var WormFuzzy:String = "Dùng một đòn cắn đơn yếu vô hệ, khiến cho mục tiêu bị Nhiễm Virus.";
      
      public static var WormCutie:String = "Hồi phục các hiệu ứng trung tính của tất cả đồng minh, bao gồm: Ướt, Tê Cóng, Khô, Nặng, Nhẹ, Phù Phép và Vô Hình.";
      
      public static var WraithIce:String = "Tấn công một kẻ địch bằng những mảnh băng xuyên tim, có khả năng giết trong một đòn tức thì.";
      
      public static var WraithFire:String = "Tấn công một kẻ địch bằng phép Lửa mạnh, khiến cho chúng bị Cuồng Nộ. \n • Tốt nhất là đừng để mục tiêu sống sót.";
      
      public static var WraithSteel:String = "Bắn một kẻ địch bằng nhiều loạt bom, khiến chúng Chao Đảo và bị giảm Thủ.";
      
      public static var WraithLeaf:String = "Bắn một kẻ địch nhiều lần bằng sát thương Sinh Học, gây Trúng Độc và giảm Thủ Phép của chúng.";
      
      public static var WraithMaster:String = "Dùng phép đơn Bóng Tối mạnh, khiến kẻ địch bị Câm Lặng.";
      
      public static var Glitch2:String = "???-?eII V47 PH4M KH0NG 7H3 71M 7H4Y! ### \nL01: 0x000002";
      
      public static var Glitch1:String = "??-//LUU Y: KH0NG 840 D4M ##7R0NG## N3U M4 ##V0##!! 0?-//??";
      
      public static var GloopStone:String = "Cho hiệu ứng Vô Hình lên một kẻ địch, khiến sát thương phép chúng nhận được nhân đôi.";
      
      public static var GloopCrystal:String = "Cho hiệu ứng Phù Phép lên một kẻ địch, khiến sát thương vật lý chúng nhận được nhân đôi.";
      
      public static var GloopAsh:String = "Cho hiệu ứng Dũng Cảm lên tất cả đồng minh, bao gồm hậu quân, gia tăng tỉ lệ gây Chí Mạng.";
      
      public static var GloopWood:String = "Cho hiệu ứng Quyết Chí lên tất cả đồng minh, bao gồm hậu quân, bảo vệ họ khỏi các đòn tất sát.";
      
      public static var HydraZombie:String = "Hạ tất cả kẻ địch ngay lập tức, hoặc nếu thất bại, đánh chúng bằng sát thương vật lý Bóng Tối.";
      
      public static var HydraMagma:String = "Đánh tất cả kẻ địch bằng phép Lửa cực mạnh, gây Bỏng.";
      
      public static var HydraIce:String = "Cắn một kẻ địch nhiều lần, gây sát thương vật lý Băng cực lớn.";
      
      public static var DragonEarth:String = "Giảm Thủ Phép của tất cả kẻ địch, rồi phun acid mạnh nhất, gây sát thương phép Sinh Học.";
      
      public static var DragonSky:String = "Giảm Thủ của tất cả kẻ địch, rồi tấn công chúng với một luồng bão lông vũ, gây sát thương vật lý Gió.";
      
      public static var DragonSea:String = "Giảm Công của tất cả kẻ địch, rồi gây sát thương phép Nước cực mạnh, gây Ướt.";
      
      public static var DragonOmega:String = "Giảm Công Phép của tất cả kẻ địch, rồi gây sát thương phép Ánh Sáng cực mạnh, có khả năng gây Choáng.";
      
      public static var BatBlood:String = "Hút Máu từ một mục tiêu với một đòn vật lí Sinh Học cơ bản, và cho Máu đến người triệu hồi.";
      
      public static var BatSnow:String = "Cho hiệu ứng Tê Cóng lên tất cả đồng minh, bao gồm hậu quân, bảo vệ họ khỏi sát thương Sinh Học.";
      
      public static var BatThunder:String = "Cho hiệu ứng Loạn Trí lên tất cả đồng minh trong nhiều lượt, đại loại đấu tự động.  \n • Đừng có mà thử cái này khi đấu Boss.";
      
      public static var BatBone:String = "Cho hiệu ứng Nhiễm Virus lên tất cả đồng minh, kể cả nếu họ kháng cự nó đi chăng nữa.";
      
      public static var BearBrown:String = "Cào xé một mục tiêu với sát thương vô hệ. Gây nhiều sát thương hơn nếu người dùng bị trọng thương, và nếu các đồng minh đều đã chết. \n • Công hiệu tối đa là 1000.";
      
      public static var BearGrolar:String = "Làm băng rớt lên tất cả kẻ địch, có khả năng gây Đóng Băng.";
      
      public static var BearPanda:String = "Đâm tất cả kẻ địch với nhiều sát thương Sinh Học, và gây Trúng Độc.";
      
      public static var BitIce:String = "Dùng phép tạo Kết Giới, gia tăng Thủ Phép của tất cả đồng minh, bao gồm hậu quân.";
      
      public static var BitThunder:String = "Dùng phép tạo Phòng Vệ, gia tăng Thủ của tất cả đồng minh, bao gồm hậu quân. ";
      
      public static var BitHoly:String = "Dùng phép hồi phục cao cấp, chữa cho tất cả đồng minh.";
      
      public static var BitFire:String = "Đánh một kẻ địch bằng một đòn Lửa, giảm Thủ của chúng và gây Bỏng.";
      
      public static var BitWind:String = "Đánh một kẻ địch bằng một đòn Gió, giảm Thủ Phép của chúng và có khả năng gây Choáng.";
      
      public static var BitWater:String = "Dội lên tất cả kẻ địch bằng phép Nước yếu, gây Ướt, và dựng combo cho Băng và Điện.";
      
      public static var BitPoison:String = "Gây Trúng Độc lên tất cả kẻ địch bằng phép Sinh Học yếu, gây sát thương mỗi lượt.";
      
      public static var BoulderCoral:String = "Nhảy lên một mục tiêu bằng sát thương Nước, gây Chao Đảo.";
      
      public static var BoulderMarble:String = "Đánh tất cả kẻ địch bằng phép Gió, gây hiệu ứng Câm Lặng.";
      
      public static var BoulderObsidian:String = "Đánh tất cả kẻ địch bằng một cục xúc sắc 20 mặt, gây sát thương phép Lửa cực ngẫu nhiên, và khiến chúng Bỏng.";
      
      public static var BoulderDirt:String = "Đánh tất cả kẻ địch bằng sát thương vật lý Đất, gây Mệt.";
      
      public static var BoulderSandstone:String = "Nhảy lên một mục tiêu và gây sát thương vật lý Đất cực lớn.";
      
      public static var CatNinja:String = "Cho một lượt miễn phí lên một đồng minh.";
      
      public static var CatSniper:String = "Bắn một kẻ thù ngay mặt, có khả năng giết nó ngay nếu may mắn.";
      
      public static var CatWizard:String = "Dùng phép hồi phục cơ bản, chữa cho một đồng minh.";
      
      public static var CatBomber:String = "Ném một quả bom vào một kẻ địch, gây sát thương phép và Chao Đảo.";
      
      public static var CatWarrior:String = "Chém một kẻ địch nhiều lần bằng sát thương vô hệ.";
      
      public static var DollMatt:String = "Gia tăng Công của một đồng minh một cách hiệu quả, và cho họ hiệu ứng Ban Phước.";
      
      public static var DollNatalie:String = "Gia tăng Công Phép của một đồng minh một cách hiệu quả, và cho họ hiệu ứng Quyết Chí.";
      
      public static var DollLance:String = "Tấn công tất cả kẻ địch bằng phép Bom mạnh, có khả năng gây Chao Đảo.";
      
      public static var DollAnna:String = "Tấn công bằng một mũi tên Sinh Học, gây sát thương cao hơn nếu mục tiêu tăng Thủ hoặc Thủ Phép, hoặc là đang phòng ngự.";
      
      public static var DollNoLegs:String = "Meo một cách u ám vào tất cả kẻ địch, giảm Né Tránh và gây hiệu ứng Xui Xẻo.";
      
      public static var BossCyclopsDesert:String = "Gây sát thương phép Bom lên tất cả kẻ địch nhiều lần, có khả năng gây Choáng.";
      
      public static var BossCyclopsGlacial:String = "Đấm một kẻ địch nhiều lần bằng sát thương Băng mạnh, với các kẻ địch lân cận nhận 1/3 sát thương. \n • Tất cả kẻ địch có thể bị Đóng Băng. ";
      
      public static var BossCyclopsInfernal:String = "Đấm một kẻ địch nhiều lần bằng sát thương Lửa mạnh, với các kẻ địch lân cận nhận 1/3 sát thương. \n • Tất cả kẻ địch có thể bị Bỏng. ";
      
      public static var BossGolemWater:String = "Tấn công tất cả kẻ địch bằng sát thương Nước cực mạnh, có khả năng gây Ướt.";
      
      public static var BossGolemFire:String = "Tấn công tất cả kẻ địch bằng sát thương Lửa cực mạnh, gây Bỏng bất kì kẻ địch nào còn sống sót.";
      
      public static var BossNestCat:String = "Gia tăng Công Phép cho tất cả đồng minh, bao gồm hậu quân, rồi cắt tất cả kẻ địch bằng nhiều đòn đánh Sinh Học. ";
      
      public static var BossNestNinja:String = "Tấn công tất cả kẻ địch bằng phép Bóng Tối cực mạnh, gây Nguyền Rủa.";
      
      public static var EvilMatt:String = "Đánh tất cả kẻ địch lần lượt bằng nhiều đòn Đất cực mạnh." + HIGH_CRITS;
      
      public static var EvilNatalie:String = "Đánh tất cả kẻ địch lần lượt bằng nhiều đòn Ánh Sáng cực mạnh." + HIGH_CRITS;
      
      public static var EvilLance:String = "Cho nổ tất cả kẻ địch lần lượt bằng nhiều đòn Bom cực mạnh." + HIGH_CRITS;
      
      public static var EvilAnna:String = "Cắt đôi tất cả kẻ địch lần lượt bằng nhiều đòn Gió cực mạnh." + HIGH_CRITS;
      
      public static var EvilNoLegs:String = "Sử dụng sức mạnh của vũ trụ để hủy diệt tất cả kẻ địch.";
      
      public static var WraithOrigami:String = "Tấn công một kẻ địch bằng đòn cắt xém vô hệ, đồng thời Phá Phép nó.";
      
      public static var GloopFab:String = "Thay thế thời tiết hiện tại thành Mùa Hoa Anh Đào cho 5 lượt.";
      
      public static var CatSkeleton:String = "Chọt một kẻ địch từ sau lưng, gây sát thương vật lí Bóng Tối, và khiến chúng bị Xui Xẻo cực độ.";
      
      public static var HydraOrigami:String = "Đánh tất cả kẻ địch bằng những cây kiếm giấy vô hệ, và tăng Né Tránh cho tất cả đồng minh, bao gồm hậu quân.";
      
      public static var Defender3:String = "Bắn tất cả kẻ địch bằng những luồng năng lượng mạnh, gây sát thương Bóng Tối. \n • Luôn luôn đánh chí mạng.";
      
      public static var BearBlack:String = "Cào một mục tiêu đơn, gây sát thương vật lí Lửa, và khiến nó bị Khô cực độ.";
      
      public static var GolemBone:String = "Xẻo tất cả kẻ địch bằng những đòn vô hệ mạnh, và có khả năng gây Yếu.";
      
      public static var WormBook:String = "Gia tăng Độ Chính Xác cho tất cả đồng minh.";
      
      public static var BossGigalith:String = "Bắn tất cả kẻ địch bằng phép vô hệ mạnh, và khiến chúng bị Thiêu Đốt, giảm Máu Tối Đa theo từng lượt.";
      
      public static var BossDevourer:String = "Đóng game.";
      
      public static var SketchPapalotl:String = "Đâm tất cả kẻ địch bằng sát thương vô hệ cực mạnh, và bỏ qua bùa lợi phòng thủ. (không tính bùa hại)";
      
      public static var SketchGuncat:String = "Bắn tất cả kẻ địch bằng sát thương Bom cực mạnh, vừa nửa vật lí, nửa phép. Bỏ qua bùa lợi phòng thủ. (không tính bùa hại)";
      
      public static var SketchXolotl:String = "Đánh tất cả kẻ địch bằng sát thương vô hệ, gây Yếu, và bỏ qua bùa lợi phòng thủ. (không tính bùa hại)";
      
      public static var SketchGlaurung:String = "Thổi phép Gió lên tất cả kẻ địch, Phá Phép chúng, và bỏ qua bùa lợi phòng thủ. (không tính bùa hại)";
      
      public static var ArcadeGuoye:String = "Gia tăng Độ Chính Xác cực cao cho tất cả đồng minh.";
      
      public static var ArcadeTotom:String = "Hồi phục đầy đủ tất cả đồng minh còn sống, và chữa bùa hại lẫn hiệu ứng xấu của họ.";
      
      public static var ArcadeChair:String = "Giảm Công Phép cho tất cả kẻ địch, và gây một chút sát thương Bom luôn.";
      
      public static var ArcadePumpkus:String = "Bình thường thì nó chả làm gì, nhưng mà nhây với nó hai ba lần nữa sẽ khiến nó nổi điên. Nó sẽ trút giận lên những kẻ địch ngẫu nhiên bằng sát thương vật lí vô hệ cực mạnh.";
      
      public static var ArcadeGlob:String = "Cho một đối phương lãnh hơi thở kinh khủng của nó, gây Phá Phép, Mệt, Nguyền Rủa, Yếu, Xui Xẻo, và Ẩn - theo thứ tự này. Cũng gây một chút sát thương phép vô hệ.";
      
      public static var ArcadeSnek:String = "Cắn một mục tiêu đơn, gây sát thương vật lí vô hệ, gây Cháy và Trúng Độc cực độ.";
      
      public static var ArcadeRobo:String = "Bắn một mục tiêu đơn bằng phép Điện, Choáng nó, và giảm Độ Chính Xác nhiều.";
      
      public static var ArcadeBosh:String = "Hét cho tất cả kẻ địch run sợ và bị giảm Công cực nặng.";
      
      public static var ArcadeTreagure:String = "Đánh ngẫu nhiên lên các kẻ địch ngẫu nhiên, và gây hiệu ứng ngẫu nhiên. \n • Hiệu ứng bao gồm Đóng Băng, Thiêu Đốt, Choáng, Câm Lặng, Chao Đảo, Tử Vận, và Xui Xẻo.";
      
      public static var ArcadePhoenix:String = "Hồi sinh tất cả đồng minh, hoặc ban họ hiệu ứng Tự Động Hồi Sinh nếu họ còn sống.";
      
      public static var ArcadeMermaid:String = "Gia tăng Né Tránh cực cao cho tất cả đồng minh, bao gồm hậu quân.";
      
      public static var ArcadeMaw:String = "Lây truyền tất cả kẻ địch bằng virus chết người, và gây một chút sát thương Sinh Học.";
      
      public static var ClassicSlime:String = "Đánh một mục tiêu đơn bằng đòn vô hệ cực yếu.";
      
      public static var ClassicSlimeKing:String = "Dùng phép trị thương mạnh, hồi phục cho tất cả đồng minh, bao gồm hậu quân. \n • Chữa luôn cả hiệu ứng xấu.";
      
      public static var ClassicTree:String = "Gây sát thương Sinh Học cực yếu, và có khả năng gây Choáng.";
      
      public static var ClassicEyeball:String = "Tấn công tất cả kẻ địch bằng phép vô hệ.";
      
      public static var ClassicBeholder:String = "Hấp diêm một kẻ địch không may, gây sát thương Sinh Học, và khiến nó bị Trúng Độc nặng.";
      
      public static var ClassicWaspRed:String = "Giảm Công Phép cực nặng cho một mục tiêu.";
      
      public static var ClassicWaspBlack:String = "Giảm Công cực nặng cho một mục tiêu.";
      
      public static var ClassicSandworm:String = "Ói dữ dội lên tất cả kẻ địch, gây sát thương Sinh Học, và giảm Công, Công Phép, Thủ, và Thủ Phép.";
      
      public static var ClassicEaterIce:String = "Phun phép khí lạnh lên tất cả kẻ địch. Nó không mạnh mấy, nhưng mà có tỉ lệ Đóng Băng cao.";
      
      public static var ClassicEaterFire:String = "Phun phép lửa lên tất cả kẻ địch, và khiến chúng bị Khô.";
      
      public static var ClassicClayBlue:String = "Dùng phép Gió lên một mục tiêu, khiến nó trở nên cực kì Nhẹ.";
      
      public static var ClassicClayRed:String = "Đánh một mục tiêu bằng đòn Đất, khiến nó trở nên cực kì Nặng.";
      
      public static var ClassicClayDark:String = "Dùng phép Bóng Tối lên một mục tiêu, gây Tử Vận, và giảm Công, Công Phép, Thủ, và Thủ Phép.";
      
      public static var ClassicClayLight:String = "Dùng phép trị thương vừa, hồi phục cho tất cả đồng minh, bao gồm hậu quân.";
      
      public static var ClassicProtector:String = "Bắn tất cả kẻ địch bằng một tia Điện mạnh. Những con còn sống sẽ bị Choáng trong vài lượt tiếp.";
      
      public static var ClassicSlingerGun:String = "Thử bắn tỉa một mục tiêu bằng sát thương Bom mạnh.\n • Luôn luôn có độ chính xác 50%.\n • Bỏ qua chỉ số Né Tránh và bùa lợi phòng thủ của mục tiêu.";
      
      public static var ClassicSlingerSword:String = "Thử đâm một mục tiêu bằng sát thương vô hệ mạnh.\n • Luôn luôn có độ chính xác 50%.\n • Bỏ qua chỉ số Né Tránh và bùa lợi phòng thủ của mục tiêu.";
      
      public static var ClassicPraetorian:String = "Cho hiệu ứng Phòng Thủ lên tất cả đồng minh còn sống. Sau đó tấn công tất cả kẻ địch bằng sát thương vô hệ, có khả năng giết chúng tức thì, và bỏ qua bùa lợi phòng thủ. (không tính bùa hại) ";
      
      public static var ClassicCrystalRed:String = "Bắn một mục tiêu bằng phép Lửa, gây Thiêu Đốt.";
      
      public static var ClassicCrystalBlue:String = "Không gây nhiều sát thương mấy, nhưng có tỉ lệ Đóng Băng cực cao.";
      
      public static var ClassicGigaGolem:String = "Đánh một kẻ địch bằng sát thương vật lí cực mạnh, có thể là hệ Lửa hoặc Băng - nó hoàn toàn ngẫu nhiên!";
      
      public static var ClassicRafflesia:String = "Gây sát thương vật lí Sinh Học lên tất cả kẻ địch.";
      
      public static var ClassicJack:String = "Gia tăng Công và Công Phép cực cao cho tất cả đồng minh, bao gồm hậu quân.";
      
      public static var arcadePoison:String = "Bong Bóng Độc";
      
      public static var arcadeNettle:String = "Bẫy Dây Leo";
      
      public static var arcadeTeeth:String = "Răng Nhọn";
      
      public static var bonePillar:String = "Cột Xương";
      
      public static var hellfire:String = "Hỏa Ngục";
      
      public static var pixelswords:String = "Bão Kiếm";
      
      public static var pixelfork:String = "Bão Nĩa";
      
      public static var paperSword:String = "Kiếm Giấy";
      
      public static var paperStars:String = "Phi Tiêu Giấy";
      
      public static var swordswirl:String = "Lốc Kiếm";
      
      public static var iceneedle:String = "Gai Băng";
      
      public static var thunderblast:String = "Băng Bộc";
      
      public static var snowblast:String = "Lôi Bộc";
      
      public static var arcadeFlood:String = "Thác Nước";
      
      public static var ritual:String = "Nghi Lễ Đen";
      
      public static var highgravity:String = "Trọng Lực Mạnh";
      
      public static var lowgravity:String = "Trọng Lực Yếu";
      
      public static var snow:String = "Bão Tuyết";
      
      public static var earthquake:String = "Chấn Địa";
      
      public static var blossom:String = "Mùa Hoa Anh Đào";
      
      public static var electrongun:Object = {
         "name":"Súng Electron",
         "desc":"Phép đơn với hệ Điện. Gây Choáng." + COOLDOWN_6
      };
      
      public static var sharpen:Object = {
         "name":"Sharpen",
         "desc":"Kéo dài thời gian tác dụng của mọi hiệu ứng xấu trên kẻ địch. Chiêu thức này còn có thể sử dụng lên đồng minh, bao gồm cả hậu quân, để kéo dài thời gian tác dụng của các hiệu ứng tốt. Không ảnh hưởng với Tốc Hành và Phòng Thủ." + COOLDOWN_6
      };
      
      public static var sand:Object = {
         "name":"Bụi Cát",
         "desc":"Tấn công đơn nâng cao với hệ Đất." + equips.MAY_DRY + equips.DEBUFF_ACC
      };
      
      public static var sanddune:Object = {
         "name":"Phun Cát",
         "desc":"Tấn công đơn cực mạnh với hệ Đất." + equips.MAY_DRY + equips.DEBUFF_ACC
      };
      
      public static var acid3:Object = {
         "name":"Axit Nóng",
         "desc":"Phép đơn với hệ Sinh Học." + equips.DEBUFF_MDEF
      };
      
      public static var acid2:Object = {
         "name":"Phun Axit",
         "desc":"Phép diện rộng cực mạnh với hệ Sinh Học." + ALTERNATIVE_ONE + equips.DEBUFF_MDEF
      };
      
      public static var bubblering:Object = {
         "name":"Vòng Bong Bóng",
         "desc":"Chiêu đơn với hệ Nước, gây Câm Lặng. \n • Sát thương dựa vào chỉ số cao nhất."
      };
      
      public static var musicalblast:Object = {
         "name":"Phước Lành của Phyrnna",
         "desc":"Gia tăng Công Phép cho tất cả đồng minh, bao gồm hậu quân, đồng thời cho họ hiệu ứng Hồi Phục. " + COOLDOWN_11
      };
      
      public static var geometry:Object = {
         "name":"Nhiễu",
         "desc":"Chiêu đơn vô hệ cực mạnh. \n • Sát thương dựa vào chỉ số cao nhất." + HIGH_ACC + HIGH_CRITS + COOLDOWN_3
      };
      
      public static var fairy2:Object = {
         "name":"Bom Tiên",
         "desc":"Phép diện rộng cực mạnh với hệ Ánh Sáng. " + HIGH_ACC + COOLDOWN_2
      };
      
      public static var death:Object = {
         "name":"Thần Chết",
         "desc":"Đòn đơn với hệ Bóng Tối, có khả năng giết mục tiêu ngay tức thì. " + LOW_ACC + COOLDOWN_6
      };
      
      public static var retroswords:Object = {
         "name":"Quỷ Kiếm",
         "desc":"Đòn diện rộng với hệ Bóng Tối cực mạnh." + ALTERNATIVE_ONE + COOLDOWN_2
      };
      
      public static var artattack:Object = {
         "name":"Vũ Điệu Giấy",
         "desc":LIMIT_BREAK + "Hồi máu và loại bỏ hiệu ứng xấu cho tất cả đồng minh, đồng thời gia tăng Máu Tối Đa, Né Tránh và Độ Chính Xác. \n • Có tác dụng lên cả hậu quân."
      };
      
      public static var sevenswords:Object = {
         "name":"Thất Kiếm",
         "desc":LIMIT_BREAK + "Gây sát thương vật lý hệ Ánh Sáng cực khủng lên toàn bộ kẻ địch." + HIGH_ACC
      };
      
      public function skills()
      {
         super();
      }
   }
}


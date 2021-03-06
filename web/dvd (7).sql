-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- 主機: 127.0.0.1
-- 產生時間： 2018-01-03 13:10:07
-- 伺服器版本: 10.1.28-MariaDB
-- PHP 版本： 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `dvd`
--

-- --------------------------------------------------------

--
-- 資料表結構 `comment`
--

CREATE TABLE `comment` (
  `DVD_Id` int(11) NOT NULL,
  `Member_Id` int(11) NOT NULL,
  `Score` int(11) NOT NULL,
  `Comment_Text` text NOT NULL,
  `Date_Time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `comment`
--

INSERT INTO `comment` (`DVD_Id`, `Member_Id`, `Score`, `Comment_Text`, `Date_Time`) VALUES
(14, 2, 5, 'test', '2017-12-28'),
(14, 2, 5, 'test', '2017-12-28'),
(1, 2, 5, 'trest', '0000-00-00'),
(14, 2, 5, 'aaa', '2017-12-28'),
(14, 2, 5, 'sss', '2017-12-28'),
(14, 2, 5, 'fff', '2017-12-28'),
(13, 2, 5, 'asd', '2017-12-28'),
(13, 2, 5, 's', '2017-12-28'),
(13, 2, 5, 'f', '2017-12-28'),
(13, 2, 5, 'g', '2017-12-28'),
(13, 2, 5, 'good', '2017-12-28'),
(13, 2, 5, 'vdvssddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd', '2017-12-28'),
(13, 2, 5, 'vdvssddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd', '2017-12-28'),
(2, 7, 5, 'bad', '2018-01-01'),
(2, 7, 5, 'asda', '2018-01-01'),
(2, 7, 5, 'asdasda', '2018-01-01'),
(17, 2, 5, 'fsfdfdhgfuyg', '2018-01-02');

-- --------------------------------------------------------

--
-- 資料表結構 `dvd`
--

CREATE TABLE `dvd` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Picture` varchar(500) DEFAULT NULL,
  `Publisher` varchar(50) NOT NULL,
  `Introduction` varchar(500) DEFAULT NULL,
  `Category` varchar(20) NOT NULL,
  `Publish_Date` date NOT NULL,
  `Level` varchar(20) NOT NULL,
  `Time` text NOT NULL,
  `Actor` varchar(50) NOT NULL,
  `Price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `dvd`
--

INSERT INTO `dvd` (`Id`, `Name`, `Picture`, `Publisher`, `Introduction`, `Category`, `Publish_Date`, `Level`, `Time`, `Actor`, `Price`) VALUES
(1, '樓下的房客', 'https://goo.gl/f6n9cd', '愛貝克思', '『樓下的房客』為2016年暑假上映的黑色、幽默、奇幻、懸疑、推理電影，本片不僅改編自暢銷作家九把刀同名小說，並由崔震東執導並擔任製片、柴智屏監製、 九把刀編劇，黃金鐵三角再次聯手創造話題電影。「每個人的內心就像一個房間，門口緊緊的上了鎖，只有敲開它才能知道，門後也許藏著難以啟齒的私密慾望，也許更藏著一頭無法控制的邪惡巨獸。」導演崔震東表示，「這部電影是藉由一棟既真實又象徵人性的慾望公寓，帶領觀眾走進充滿張力的複雜人性世界，細細品嘗每個房間所隱藏的情慾糾葛。', 'horror', '2017-10-08', '限制級', '90分鐘', '何潔柔,李杏,莊凱勛,李康生,任達華,邵雨薇,游安順', 200),
(2, '逃出絕命鎮', 'https://goo.gl/x63nNm', 'Universal', '非裔青年克里斯是個才華洋溢的攝影師，與一名白人女孩蘿絲相互愛侶，兩人利用周末到蘿絲父母家中拜訪。兩人抵達當天，克里斯便一直注意到黑人園丁華特和女傭喬吉娜的怪異行為，晚上更是在談話中被蘿絲的母親催眠。隔天適逢家中舉行的年度聚會，蘿絲父母的親朋好友們紛紛來訪，他們清一色都是年邁的白人夫婦。聚會中克里斯終於發現一張熟面孔，但對方的行為舉止卻怪異無比。接連的怪事令克里斯漸漸察覺到不對勁，然而，誰也沒想到某個種族陰謀竟在背後偷偷醞釀著...。', 'horror', '2017-08-24', '限制級', '104分鐘', '布萊德利惠特福德,愛莉森威廉斯,丹尼爾卡盧亞', 850),
(3, '神祕家族', 'https://goo.gl/czWywW', '飛擎', '長跑選手苗苗（林依晨 飾）擁有一個平凡幸福的家庭，在平安夜全家慘遭滅門之禍，只有她一人倖存。苗苗看到慘案後失去意識，醒來時，竟發現時間又回到平安夜當天下午，她想要扭轉結局，更要尋找真相，她發現父親（姜武 飾）、母親（惠英紅 飾）和弟弟（陳曉 飾）都在隱藏一個巨大的秘密，這一切要從3年前，苗苗被神秘男子性侵（藍正龍 飾）那夜說起…苗苗狂奔提早回家，見到兇手的真實面貌，果然是雨夜性侵她的男子，她要如何提起勇氣，救回家人呢？', 'horror', '2017-11-16', '限制級', '92分鐘', '林依晨,姜武,陳曉', 350),
(4, '鬼娃恰吉7-鬼娃儀式', 'https://goo.gl/WdCuLd', 'Universal', '集結 歷代原班人馬經典大回歸。在過去四年來，妮可(費歐娜朵瑞夫 飾演)因神智不清謀殺罪嫌被判入院治療，她深信自己是謀殺了全家的主嫌而非鬼娃恰吉，然而當她的精神治療師引進了一種全新器材進入團體治療─一個看上去天真無邪的笑臉娃娃，一連串的死亡陰影再度籠罩上了整個療養院，妮可開始懷疑自己其實並沒有瘋。安迪(亞歷士文森 飾演)，「靈異入侵」首集的小男孩長大了，將加入妮可的聯手對抗陣容，然而在拯救妮可前，他必須先通過鬼娃新娘蒂芬妮(珍妮佛提莉 飾演)的考驗，蒂芬妮將不計任何代價，幫助她的摯愛-邪惡鬼娃恰吉稱霸天下。', 'horror', '2017-11-24', '限制級', '91分鐘', '艾力克斯·文森,珍妮·奧古特,葛瑞特·葛拉漢', 300),
(5, '血色漫畫', 'https://goo.gl/q4QuQo', '勁藝', '過去活潑外向的艾蜜莉，因為一場家庭慘劇，變得古怪又孤僻，在學校不但經常受到老師關注，長期飽受同學霸凌的她，藉由創作殺人漫畫的奇特嗜好，來排解平日所累積的痛苦與憤怒。殊不知在同學們舉辦狂歡派對這天，漫畫中的情節竟活生生真實上演，她開始意識到事情似乎變得不太對勁…', 'horror', '2017-12-22', '限制級', '87分鐘', '艾倫麥奈文', 350),
(6, '晚安媽咪', 'https://goo.gl/iHFTZU', '車庫娛樂', '一對漂亮的雙胞胎男孩住在鄉間的大屋裡，與世隔絕，無憂無慮，一心盼著媽咪回來。但等到的，是個頭部纏滿繃帶的女人，只留一雙眼睛狠狠打量著他們。孩子察覺事情不對，而試圖找回真正的媽咪：是脾氣、味道、臉上那顆痣、還是瞳孔的顏色？眼前這個陌生的母親是唯一的線索，他們只能從她「下手」，找出媽咪的下落。', 'horror', '2017-06-09', '限制級', '100分鐘', '蘇珊娜·魏斯特', 400),
(7, '暗黑死神', 'https://goo.gl/ifPC19', '獨立', '一三個青少年想擺脫他們沒沒無聞又被霸凌的人生、打算透過拍攝視頻成為網紅，他們打算實行令人難以想像的殘酷行為，為此，他們嘗試尋找拍攝地點與目標，卻因此將他們引向更黑暗的深淵...', 'horror', '2017-06-09', '限制級', '85分鐘', '葛蘭艾摩斯,路易斯麥多納,布萊恩湯普森,奈森葛林', 250),
(8, '剩女為亡', 'https://goo.gl/T8NfwJ', '勁藝', '一個古老的異教儀式，殘忍地奪走了多條年輕性命，只有凱麥倫是逃離兇手魔掌的唯一生還者。但多年過去，事件造成的陰影與獨自存活的傷痛，一再侵蝕著凱麥倫，試圖振作以回歸正常生活的她，近日身邊卻出現儀式的圖騰符號！難道，她永遠都無法擺脫這場悲劇嗎？', 'horror', '2017-06-16', '限制級', '90分鐘', '阿卡沙·班克斯·維拉洛博斯', 300),
(9, '我的恐怖情人', 'https://goo.gl/g9U5ZK', '勁藝', '結婚多年的維奧拉與尼可拉，正面臨兩人婚姻最艱難的時刻，為了度過這次難關，他們選在週末前往幽靜的小木屋度假，嘗試找回彼此最初的情感。但當爭吵再度產生、猜疑轉化成了憤怒，過去熟悉的枕邊人，竟拿起手邊的斧頭，想置對方於死地...', 'horror', '2017-06-18', '限制級', '83分鐘', '嘉貝拉萊特,布雷特羅伯茲,丹尼爾維維安', 300),
(10, '分裂', 'https://goo.gl/Fv8jeF', 'Universal', '凱文（詹姆斯麥艾維 飾）已被他信任的心理醫生佛萊契博士（貝蒂芭克利 飾）證實擁有23個人格，但還有一個主宰支配所有人格的人格尚未顯現。凱文為了在所有人格的戰爭中存活下去，他不得不故意去綁架三名少女其中包括個性孤僻冷漠的凱西（安雅泰勒喬伊 飾），就在情況越來越危急之下，凱西必須想盡辦法戰勝所有人格，並逃出囚禁。', 'horror', '2017-05-11', '限制級', '117分鐘', '詹姆斯麥艾維,貝蒂芭克利', 850),
(11, '沉默之丘2：啟示錄', 'https://goo.gl/7pDmRK', '勁藝', '海瑟梅森（雅德蕾德克萊門斯 飾）和父親哈利（西恩賓 飾）一直以來都在躲避不明力量的恐怖追殺。她18歲生日當晚，在夢魘纏身和父親神秘失蹤的詭譎情況下，海瑟發現自己原來從未瞭解「真正的自己」。隨著啟示錄的指引，她踏入了一個危機四伏、狂暴絕倫，可能令她永世不得脫身的邪惡世界…', 'horror', '2017-02-24', '限制級', '95分鐘', '雅德蕾德克萊門斯,西恩賓', 830),
(12, '碟仙：惡靈始源', 'https://goo.gl/iS4XRB', 'Universal', '這次故事回到前集的50年前，位在1967年的洛杉磯，敘述一名寡婦艾莉絲·詹德因已故家人的緣故而會使用假的降神會，以來欺騙客人。然而，當家人發現了一個占卜盤後，使得詹德家最小的女兒朵莉絲被邪惡的惡靈糾纏，使得母女三人為了拯救朵莉絲而想辦法應付其恐怖遊戲。古老的碟仙板將再次召喚出惡靈，這次誰敢來挑戰？為了要將召喚來的惡靈送回陰間，這一家人必須去面對他們內心最恐懼的事物......', 'horror', '2017-02-09', '限制級', '99分鐘', '伊莉莎白瑞瑟,亨利湯瑪斯', 850),
(13, '走進希望無限的森林', 'https://goo.gl/Rxa3xf', '得利影視', '互信與絕望的危機，如何重建彼此不離不棄的信任？ 伊娃和妮兒兩姊妹，從小與父親住在北加州的紅木森林，接受體制外的自然教育。妮兒專心在她的課業研究，伊娃勤練舞蹈，心想成為舞蹈家，然而三人平靜祥和的步調，卻突然被莫名的斷電所改變，父親意外的喪命，兩姊妹頓失依靠。然而父親遺留下來的一桶汽油，則成為大斷電期間的奢侈品。妮兒男友的意外出現，似乎讓她們的感情發生的裂痕。在森林的深處，兩姊妹必須考驗彼此的信任，等待彼此的心慢慢癒合，尋找遠方的的未來…', 'drama', '2017-12-08', '普遍級', '111分鐘', '艾倫佩姬,伊雯瑞秋伍德', 250),
(14, '非正義搜查', 'https://goo.gl/UqdCMf', '采昌國際多媒體', '以1980年代的南韓全斗煥新軍部軍事獨裁為背景，在那個人人只求過好自己日子的時代，工作認真，忠於國家的重案組刑警姜成陣（孫賢周 飾），與深愛的妻子（羅美蘭 飾）和行動不便的可愛兒子一起居住在二層公寓裡，過著簡單平凡的生活。某日，不分晝夜抓捕犯人的成陣，在偶然的機會下逮捕了可疑的嫌疑人金泰成（趙達煥 飾），獲得了有可能破獲韓國第一起連環殺人案的線索。但卻在追查過程中，不知不覺被捲入國家安全部的新任部長崔圭南（張赫 飾）主導的秘密計劃。為了給家人更好的生活，即使知道部長的計謀也只能默默接受，也讓自己和家人共同陷入了危險的境地。', 'drama', '2017-12-15', '普遍級', '121分鐘', '孫賢周,張赫', 250),
(15, '劫後愚生', 'https://goo.gl/13nrjJ', '采昌國際多媒體', '經歷了15天的生死考驗之後，一群倖存者終於被救出崩塌隧道。劫後餘生的他們相約每周五聚會，分享生活經歷與煩惱；有人決定向父母出櫃，有人想要修復破碎的家庭，有人卻陷入困惑。他們都想把握人生第二次機會，尋找新夢想、新希望，讓生活更美好，但離開隧道後的生活才是考驗的開始…', 'drama', '2017-12-15', '普遍級', '95分鐘', '阿托羅瓦爾斯,羅爾西馬斯', 380),
(16, '無障礙殺手', 'https://goo.gl/Aqayck', '得利影視', '佐利因為脊椎受傷，巴柏則因為中度腦性麻痺行動不便，身為室友的兩人，平日只能以輪椅代步，而且都有怪習慣。佐利超會素描，喝飲料一定要用吸管，巴柏則個性衝動火爆，興奮和緊張時會在衣服上噴灑除臭劑。兩人的命運在遇到因打火任務受傷下肢癱瘓的前消防隊員魯帕佐夫之後，展開了新頁，尤其在兩人親眼目睹坐在輪椅上的魯帕佐夫，以神準的槍法毫不遲疑幹掉四個流氓之後。看看魯帕佐夫的正向思考與強韌意志如何影響佐利和巴柏，奮發向上並直視他們被恥笑和輕蔑的少年人生。', 'drama', '2017-12-15', '普遍級', '103分鐘', '薩伯區土羅契,佐丹費尼維西', 400),
(17, '觸不到的愛戀', 'https://goo.gl/Mo7MZu', '海鵬', '愛情像一場魔術 當魔術師男友突然消失，露意絲遭受到巨大打擊，被送進了精神病院。不久後，她神祕產下了一名男孩「天使」，天生擁有一種特殊能力：他能隱形，來去自如。 為擔心「天使」驚嚇到人們，露意絲警告他：在這個無法容忍差異的世界裡，絕不能暴露自己的存在。然而某天，「天使」卻無可救藥地愛上了紅髮女孩瑪德琳。雖然瑪德琳天生眼盲，只能藉由聲音與氣味、感受「天使」的存在，這卻反讓他能心無旁騖地愛著她，不必擔心秘密被發現，也使這份愛情得以繼續…。 為能親眼一睹「天使」的容顏，瑪德琳宣布一個將會打亂他們生活的消息：她要恢復視力！ 真愛需要眼見為憑嗎？重見光明的瑪德琳，真能看見「天使」嗎？秘密還能繼續隱藏嗎？愛情又將面臨如何衝擊？', 'drama', '2017-12-22', '普遍級', '79分鐘', '芙洛兒潔芙莉爾', 300),
(18, '狂暴少年', 'https://goo.gl/3F9ZUy', '得利影視', '一再遭受暴力欺壓，終於重新喚醒潛藏在內心的獸性！ 菲律普和少年感化院的朋友，雖然都是成人眼中的問題少年，他們可能粗俗無理無所事事，而這正也是老師長輩應該要趁早利用教育，導正他們從迷亂的歧途走向人生正軌的應有作為。雖然感化院也有正義的老師，對少年們曉以大義，企圖將他們救離罪惡的染缸，然而在權力勝過一切的偏鄉小鎮，警察不僅罔顧伸張正義的職責，反而變成與地方惡勢力爭錢奪勢的有照流氓，更離譜的是還利用職務之便，恐嚇這群被大人遺棄的少年，充當他們與黑道正面衝突的武器！', 'drama', '2017-12-22', '普遍級', '100分鐘', '馬丁左哥斯基', 280),
(19, '愛情三人行', 'https://goo.gl/UjWPKZ', '索尼影業', '史蘭斯登是位無可救藥的浪漫主義者，認為在跟年紀較大的有夫之婦摩根(克麗絲汀娜雅柏蓋特 事)一夜情後，以為遇見了天命真女，但沒想到摩根只是為了要報復老公格雷迪(湯馬斯海登喬許 飾)忽略她而已，然而格雷迪為了想要躲避摩根，異想天開的搬進了史蘭斯登的公寓，讓這段三角關係更加複雜…。本片由奧斯卡提名最佳男配湯馬斯海登喬許、【真愛每天一天】多姆納爾格里森、【鼠來寶:鼠喉大作讚 】克麗絲汀娜雅柏蓋特、【別闖陰陽界】妮娜杜波夫等演技派演員一起打造這部愛情喜劇。', 'drama', '2017-12-22', '普遍級', '93分鐘', '艾倫佩姬,伊雯瑞秋伍德', 300),
(20, '拉拉行不行', 'https://goo.gl/YMWJ5y', '得利影視', '在學校同學、傳統家庭、及社會觀感的三重考驗之下，他們會持續堅持他們對彼此的渴望嗎？ 就讀高中最後一年的女孩莎拉，面對的是家裡讓人窒息的空氣與嚴格卻毫無樂趣的學校生活。 不過在美麗的轉學生安德莉亞到來後，點亮了莎拉寂寞的世界。慢慢的，他們成為無話不談的好朋友，常常一起去派對瘋狂、窩在房間談天說地！漸漸的，莎拉與安德莉亞對彼此產生了超友誼的情愫，點燃的青春之火一發不可收拾。莎拉思想保守的父母該如何面對這樣衝擊？', 'drama', '2017-12-29', '普遍級', '70分鐘', '莎曼莎凱希朵,瑪麗亞蘭傑,派翠西亞盧爾', 250),
(21, '心靈小屋', 'https://goo.gl/MpjRPS', '勁藝', '歷經喪女的家庭悲劇，麥肯（山姆沃辛頓 飾）一直無法走出痛徹心扉的傷痛，某天他意外收到一封署名上帝的來信，邀他到小女兒被殺害的山中小屋，他充滿疑惑和憤怒，決定踏上這趟沉重的旅程，回到小屋找尋信中背後的秘密，而他在小屋發生的一切，就此改變了他的一生，他真的遇見上帝了嗎？', 'drama', '2017-12-29', '普遍級', '132分鐘', '山姆沃辛頓,奧塔薇亞史班森,蘭妲米契爾,提姆麥格羅', 400),
(22, '完全真相', 'https://goo.gl/Rxa3xf', '美昇', '由《冰原之心》導演寇特妮杭特執導 描述一位名為理查的律師向他守寡的女性友人發誓一定會讓他被控謀殺父親的兒子麥克無罪釋放。起初麥克坦承犯案，但隨著審判的進行，關於被害父親背後不為然知的真相也逐漸的曝光。最終理查雖然成功為麥克辯護成功，但他的新同事卻不肯就此罷休，試圖挖掘「完全的真相」究竟為何。', 'drama', '2017-12-30', '普遍級', '93分鐘', '基努李維,芮妮齊薇格', 380),
(23, '末日公司', 'https://goo.gl/EDFYdG', '得利影視', '魔鬼就在你身邊！ 加菲全球倉儲公司最後一天上班日，一切都是那樣的平凡，天真的同事一樣天真、勢利眼的同事一樣惹人厭！從來沒有參加派對經驗的老闆，突然舉辦了派對跟員工一起同歡慶祝，他強制所有員工都必須出席，並給大家吃便宜的食物，玩無聊的遊戲…。之後，老闆宣佈了離職員工的遣散費，但條件是， 只要上最後一次晚班，每一位員工皆可得到一百萬美元的支票！欣喜若狂的員工們，壓根沒想到這筆遣散費是他們噩夢的開始…！', 'drama', '2017-10-06', '輔導級', '83分鐘', '馬克歐布萊恩', 399),
(24, '目擊者', 'https://goo.gl/k9kLEp', '勁藝', '衝勁十足、富有野心的社會線記者小齊，在報導一則事故車還魂新聞時，意外發現9年前一宗肇事逃逸命案並不單純，雖然提案不被長官邱哥重視，但相信直覺的小齊找上菜鳥警員阿緯幫忙，並說服女主管Maggie聯手調查當年的真相。當小齊、Maggie 好不容易找到命案中唯一生還的受害者徐愛婷，並取得採訪同意後 ，徐愛婷卻無故失蹤了…到底九年前被隱瞞的真相是什麼？', 'drama', '2017-11-10', '限制級', '118分', '許瑋甯,莊凱勛', 428),
(25, '狂暴3：白宮淪陷', 'https://goo.gl/gMJ3ez', '獨立', '比爾威廉森回來了，這次要到華府出任務。他打算從美國白宮內部引爆讓政治人物瓦解，結果之大將影響全世界。他這次的新任務，是要讓美國總統垮台，並揭發政府秘辛。再創前兩部電影的終極暴力美學。', 'adventure', '2018-01-05', '輔導級', '99分鐘', '布蘭登費雪', 299),
(26, '闇黑世界:守護者', 'https://goo.gl/5cXeVz', '獨立', '闇黑世界的幽靈入侵人類世界，帶來飢餓、低溫，他們吸取人類的快樂、愛和生命維生。邪惡勢力漸漸強大，維持兩個世界間的封印即將被毀壞，有群守護者卻每天努力維持這已斷垣殘壁的平衡。雖然他們無法阻止即將到來的災難，但只要有光明的力量存在，就有機會阻擋闇黑力量入侵光明世界。', 'adventure', '2017-12-29', '輔導級', '95分鐘', '瑪麗亞派羅娃,帕維爾普里盧茨', 279),
(27, '搏擊俱樂部', 'https://goo.gl/uufUjh', '獨立', '她曾是格鬥員，放棄格鬥之後，卻為了拯救自己的妹妹又回到這個地下非法的搏擊世界。即將在格鬥場上再掀起一場世界賭注之戰!!', 'adventure', '2017-12-29', '輔導級', '90分鐘', '杜夫朗格林,寇特妮帕爾', 299),
(28, '逃出絕命島', 'https://goo.gl/EkoiVH', '獨立', '比莉柯普為了尋找失蹤的妹妹來到墨西哥，卻在一座島上醒來，想不起自己怎麼來到島上的。她集結島上其他的生還者，利用自己在特種部隊學過的技能，幫助大家對抗綁架他們的人。比莉認為這座島的謎團，與妹妹的失蹤案件有關，比莉柯普將運用特種技能，誓必將這群作惡多端的人付出代價。', 'adventure', '2017-12-15', '輔導級', '89分鐘', '納塔利伯恩,傑森倫敦', 299),
(29, '黑客', 'https://goo.gl/56Jhaa', '獨立', '艾力克斯是住在加拿大的烏克蘭移民，因為母親被銀行解僱之後，想幫助父母的經濟，而加入了網路犯罪組織「黑網」。他學會了盜用信用卡、ATM、駭進銀行，甚至股票市場。他透過客服搜集資訊，並與塞耶和齊拉合作，販售網路商品。從一開始要幫助父母，逐漸變成自己的野心。', 'adventure', '2017-12-08', '輔導級', '95分鐘', '卡倫麥奧利菲,羅萊恩尼克森,丹尼爾艾瑞克高德', 299),
(30, '捍衛任務2：殺神回歸', 'https://goo.gl/Mh3o7Q', '勁藝', '故事發生在第一集的四天後，因失去一切而被迫重出江湖的「殺神」約翰維克（基努李維 飾），得知先前的盟友計畫控制一個神秘的國際刺客協會，由於兩人年輕時曾立下血誓盟約，約翰不得不再度提槍上陣，並因此來到羅馬，與世界上最致命的頂尖殺手展開兇惡對決。這場殺手與殺手的對決戰裡，約翰將使出渾身解數、直搗黃龍，並將擋住他去路的人一一解決！', 'adventure', '2017-12-01', '限制級', '112分鐘', '基諾李維,勞倫斯費許朋,凡夫俗子', 428),
(31, '猩球崛起：終極決戰', 'https://goo.gl/nSFL5T', '福斯', '【猩球崛起：黎明的進擊】導演麥特李維斯與令人讚嘆的安迪瑟克斯再度合作，在充滿驚悚與高潮的【猩球崛起】傳奇篇章中，凱薩與猿人同伴被迫與人類發生致命的衝突，面對著一位冷血殘暴並率領著人類武裝軍團的軍官(伍迪哈里遜 飾)強烈逼迫，為了生存，凱薩不得不展開反擊，以爭取牠們的自由與未來…。', 'adventure', '2017-11-17', '保護級', '140分鐘', '安迪席克斯,伍迪哈里遜', 498),
(32, '變形金剛5：最終騎士', 'https://goo.gl/6UwVmB', '派拉蒙', '\"變形金剛最新篇章【變形金剛5：最終騎士】打破了整個神話的核心，並重新檢視了英雄的定義。人類和鋼鐵筋骨即將開戰，柯博文離開了，拯救未來的關鍵埋沒在地球上被隱瞞的歷史裡。然而出乎意料的組合：凱德伊格（馬克華柏格 飾）、大黃蜂、英國勛爵（安東尼霍普金斯 飾）和一位牛津教授（蘿拉哈德克 飾）卻肩扛拯救世界的重擔。 每個人的生命中，總會有一個時刻、一個讓你做出改變的時刻。在【變形金剛5：最終騎士】中，獵物變成了英雄；英雄變成了惡人。只有一方能夠存活下來：是它們，還是我們？\"', 'adventure', '2017-11-03', '輔導級', '154分鐘', '馬克華柏格,蘿拉哈德克', 498),
(33, '蜘蛛人返校日', 'https://goo.gl/eXfo7z', '索尼影業', '蜘蛛人重回漫威電影宇宙後全新作品！還是中學生的蜘蛛人/彼得帕克 (湯姆霍蘭德 飾)在【美國隊長3：英雄內戰】首次登場，讓他成為網路爆紅的超級英雄。與復仇者聯盟參與一場刺激大戰後，彼得終究回到他與梅嬸(瑪麗莎托梅 飾)的身邊，並在「心靈導師」鋼鐵人東尼史塔克(小勞勃道尼 飾)的指引下，試圖融入過去平凡的生活。但蜘蛛人一心想證明自己不是鄰家英雄，直到全新反派禿鷹 (米高基頓 飾)的強勢現身，才讓他意識到身邊珍惜的事物都將遭受嚴重威脅。', 'adventure', '2017-10-27', '保護級', '133分鐘', '湯姆霍蘭德,米高基頓,小勞勃道尼', 498),
(34, '拆彈專家', 'https://goo.gl/BNE97u', '睿客', '章在山（劉德華 飾）是香港『爆炸品處理課』（EODB–Explosive Ordnance Disposal Bureau）的一名高級督察。七年前，他作為臥底探員潛伏到頭號通緝犯洪繼鵬外號「火爆」（姜武 飾）的犯罪集團中，並成功瓦解火爆所屬的犯罪集團，共拘捕了包含火爆的弟弟阿標（王紫逸 飾）在內的幾位劫匪，但行動過程中卻意外地讓火爆脫逃並揚言必定會回來報仇。七年後，火爆開始了他的復仇計劃，接連不斷的炸彈驚魂，使全香港市民人心惶惶。為維持法紀，必須將火爆繩之以法，章在山將自己的生命豁出去，和火爆決一死戰……', 'adventure', '2017-10-20', '輔導級', '119分鐘', '劉德華', 428),
(35, '神力女超人', 'https://goo.gl/a8b9Mu', '華納兄弟影業', '故事敘述亞馬遜族的公主戴安娜，自幼生長在與世隔絕的天堂島上，她被嚴格訓練成為一名英勇的戰士。某天，墜機於小島附近的美國飛行軍官口中得知世界正經歷一場大戰，數以百萬的生靈塗炭，不忍心見到人類遭受如此磨難的黛安娜毅然離開家園，她深信自己有力量能阻止這場戰爭，在第一次世界大戰中，她為正義而戰，她將發現自己真正的力量和她與生俱來的天命。', 'adventure', '2017-10-06', '保護級', '141分鐘', '蓋兒加朵,克里斯潘恩', 498),
(36, '星際異攻隊2', 'https://goo.gl/zuJUBJ', '博偉', '在「勁爆舞曲大帝國第二集」的歌聲中，本片的故事描述星際異攻隊在努力維繫他們這個新「家庭」之餘，同時也在廣闊的宇宙中四處飛行，希望解開彼得奎爾的身世之謎。隨著漫威電影宇宙持續擴大，舊敵人成了新盟友，甚至是經典漫畫中最受粉絲喜愛的人物也會加入陣容，奧援片中英雄的刺激任務。', 'adventure', '2017-09-08', '輔導級', '137分鐘', '克里斯普瑞特,柔伊莎達娜,戴夫巴帝斯塔,馮迪索', 498),
(37, '全壘打大賽', 'https://goo.gl/MTszde', '勁藝', '前職業棒球選手喬伊（馬修李亞德 飾）自從被趕出小聯盟後，整天窩在老爸的酒吧胡搞，反觀與他水火不容的老哥里科（狄恩肯恩 飾），從大聯盟退役後不但事業有成，還擔任青少棒的隊伍教練。眼看新球季即將開打，獲勝的隊伍還能參加一年一度的棒球盛事－－全壘打大賽，而一群懷抱夢想卻苦無教練的孩子，因緣際會找上成天遊手好閒的喬伊。看起來不太可靠的他，有辦法帶領孩子們迎向勝利嗎？', 'comedy', '2017-12-01', '保護級', '94分鐘', '馬修李亞德,狄恩肯恩', 320),
(38, '好萊塢真爆炸', 'https://goo.gl/sf1mtH', '勁藝', '自拆彈小組退役後，曼柯斯基以為能在新轉調的性犯罪調查科好好養老，殊不知上班第一天就接獲好萊塢女星的性侵案件，嫌犯還是電影界的大亨伍迪！在對伍迪展開調查的同時，有爆炸前科的羅蘋與斯基普正準備重出江湖，利用他們的專長：美色與炸彈，從伍迪身上撈些油水。當雙方人馬狹路相逢，計劃總是趕不上變化，一場爾虞我詐的瘋狂遊戲也就此展開。', 'comedy', '2017-12-01', '輔導級', '93分鐘', '克里斯汀史萊特,麥可賈懷特', 320),
(39, '極品間諜', 'https://goo.gl/xafCqu', '寶騰', '男孩蒂姆跟著家人們一起搬家到一座老旅館裡，全新的環境讓他難以習慣，直到他遇見了新朋友西蒙。西蒙是一位特工探員，特別的是，他來自1974年！西蒙因被冷凍陷入沉睡，偶然間被蒂姆喚醒，他對現代的一切都無法適應，卻必須去解決來自過去的一樁舊案件。蒂姆決定幫助他，他們的冒險行動就此開始…', 'comedy', '2017-11-17', '輔導級', '74分鐘', '彼德．范賴恩,碧兒．施奈德', 220),
(40, '海灘救護隊', 'https://goo.gl/9Bu4qC', '派拉蒙', '故事講述肌肉猛男救生員隊長米奇布坎南(巨石強森 飾)，接下神聖的一號瞭望塔職責，維護海灘的安全。恰好這維護海灘的神聖隊伍，正準備徵招新進成員，他們以嚴格體試把關，卻有奪得兩面金牌的游泳好手麥特布洛迪(柴克艾弗隆 飾)，僅想以推薦信函入隊。在米奇挑戰麥特布洛迪是否有資格入隊同時，他還必須查出最近是誰在海灘私販危險毒品，並且要和情同家人的海灘救護隊，更深入調查其背後的陰謀。', 'comedy', '2017-09-29', '輔導級', '117分鐘', '巨石強森,柴克艾弗隆', 498),
(41, '婚禮麥來亂', 'https://goo.gl/61nsJh', '勁藝', '準新郎傑瑞米一早醒來頭痛欲裂，昨晚他跟大夥狂歡喝個爛醉，現在得準備趕往教堂參加結婚典禮，但他的死黨兼伴郎們只記得胡鬧搞破壞，連最重要的禮車都忘了叫！而準新娘亞莉的伴娘們也沒好到哪去，先是一個搞失蹤，接著另一個還進了醫院！眼看典禮時間就快到了，他們這個婚還結的成嗎？', 'comedy', '2017-09-08', '輔導級', '92分鐘', '馬修麥納特,蜜娜蘇瓦莉', 320),
(42, '怪獸卡車', 'https://goo.gl/yHD4S6', '派拉蒙', '敘述一名高中生崔普（盧卡斯提爾 飾），想盡方法要離開他出生的小鎮，所以利用報廢車輛的零件嘗試打造自己的「怪獸卡車」。一場發生在油井鑽探現場的意外，一隻地底生物得以竄出地表，這隻生物對於速度的執著與喜好，讓崔普在得到一位摯友的同時也更接近自己的夢想。', 'comedy', '2017-06-02', '保護級', '105分鐘', '盧卡斯提爾,珍莉薇', 498),
(43, '惱爸偏頭痛', 'https://goo.gl/7S231X', '福斯', '由四屆艾美獎最佳男主角布萊恩克萊斯頓以及奧斯卡最佳男主角入圍詹姆斯法蘭科帶來這部瘋狂又另類的搞笑喜劇，全片滿載機智的對白與殘酷的心理遊戲，讓人捧腹大笑！ 久違的聖誕長假即將到來，愛女心切的老爸奈德（布萊恩克萊斯頓 飾），攜家帶眷跑來史丹佛探望寶貝女兒，但沒想到卻也遇上了他人生最大的夢魘，那就是寶貝女兒的男朋友萊爾德（詹姆斯法蘭科 飾），這位行事大膽的矽谷科技新貴，讓個性保守的奈德有些招架不住，未來女婿與岳父的大戰在歡樂的假期中一觸即發...。', 'comedy', '2017-04-21', '輔導級', '112分鐘', '詹姆斯法蘭科,布萊恩克萊斯頓', 498),
(44, 'BJ有喜', 'https://goo.gl/aWHx9e', 'Universal', '暌違15年，【BJ單身日記】回來了！這次B.J.布莉琪瓊斯（芮妮齊薇格 飾）和馬克達西（柯林佛斯 飾）分手以後，她那「從此過著快樂幸福的生活」的計畫永遠趕不上變化，四十好幾的她又再度單身，於是她決定把感情放一邊，專心當一個頂尖的電視新聞節目製作人，也繼續和老朋友和新朋友一起鬼混。布莉琪這輩子終於覺得她的人生一切都在她自己的掌控之中，這時候還會出什麼差錯呢？', 'comedy', '2017-03-16', '輔導級', '123分鐘', '芮妮齊薇格,柯林佛斯', 450),
(45, '這不是毒鑰', 'https://goo.gl/yCjRnT', '勁藝', '好不容易逃離詭異邪惡的「尼噁堡」，霍華卻在一次意外中了殭屍病毒，迫使他不得不回到那屍氣重重的禁區尋找解藥。另一方面，由冰人帶領的特戰小隊正準備進軍「尼噁堡」，搶奪傳說中的萬能神鑰。雙方人馬為達目的無所不用其極闖入，但裡頭飢渴的殭屍大軍，會那麼容易讓他們得逞嗎？', 'comedy', '2017-03-10', '輔導級', '120分鐘', '約翰強森', 320),
(46, '精牌大玩咖', 'https://goo.gl/46M193', '勁藝', '夜夜笙歌到處跑趴的花花公子喬納，只管玩樂、從未思考過成家立業這檔事。當與室友合夥的事業逐漸步上軌道，喬納卻被醫生診斷出癌症，且術後將完全失去生育能力！眼看手術只剩一個月的時間，他必須使出渾身解數，找出願意為他傳宗接代的女孩。', 'comedy', '2017-02-24', '限制級', '96分鐘', '萊恩昆坦,萊恩昆坦', 320),
(47, '大顯神威', 'https://goo.gl/t8hmQ6', '鴻聯', '天靈靈地靈靈看「豬哥仙」來顯靈！保坪宮第十八代師公─王富貴，人稱「豬哥仙」，實際上是個逢賭必輸的落魄師公，輸到攜家帶眷南下投靠有錢的妹婿（黃明志 飾），卻不料命運捉弄人，妹婿竟中風，但天無絕人之路，王富貴因緣際會認識保坪宮第十八代繼承人龍老大（李李仁 飾），還誤打誤撞遇見了美豔動人的阿飄─林晴霞（安心亞 飾），從此時來運轉，但請鬼拿藥單，總要付出代價的。', 'comedy', '2017-02-17', '輔導級', '95分鐘', '豬哥亮,安心亞,李李仁', 320),
(48, '俺物語', 'https://goo.gl/vk35uq', '采昌國際多媒體', '高中生剛田猛男（鈴木亮平飾）擁有操老臉孔與魁梧身材，雖然其貌不揚，總讓女孩們紛紛退散，但重情重義、樂於助人又極具包容力的個性，卻廣受同性歡迎。不過每當猛男有心儀對象，對方都會愛上他的男神好友砂川誠（坂口健太郎飾）。某天，他們遇見被痴漢騷擾的女高中生大和凜子（永野芽郁飾）。猛男奮不顧身英雄救美，更對凜子一見鍾情。但凜子做出某個舉動，讓猛男驚覺「她也喜歡砂川」。心情低落的他決定壓抑自己，積極撮合凜子與砂川。單純的猛男，他的戀情將何去何從？純情的凜子，又將做出什麼抉擇？砂川為了摯友，會採取什麼行動？', 'comedy', '2017-12-31', '普遍級', '105分鐘', '鈴木亮平', 299),
(49, '父仇者', 'https://goo.gl/Jr57Cr', '飛擎', '熙珠在年幼時，父親被殺人狂起範殺害，失去父親的她由父親的同事大英扶養長大。多年後殺人狂假釋出獄，當時為女孩的熙珠已長成少女，終於等到殺父兇手出獄的她，天真無邪的少女終於展露實為冷酷無情的復仇天使，將展開最決裂而無法回頭的復仇手段追捕殺人犯；然而在此同時，社會上又再度發生和當年起範作案手法一樣的殺人事件，而兇手行蹤再度成謎……隨著劇情急轉直下，究竟誰是兇手？少女的復仇最終是否能成功？不到最後一刻，答案無法揭曉！', 'crime', '2017-02-24', '限制級', '109分鐘', '沈恩敬', 350),
(50, '萬惡金錢爆', 'https://goo.gl/JWDzwx', '飛擎', '白東日會長的貪污醜聞，震撼了政經界，曾任高層幹部的女職員有美，屍體在清溪山腳下被發現。沒有他殺痕跡，警察只好判定失足致死。但平凡的樂器修繕師韓秉道，認為太太的死和白東日貪汙案有關，為了親手讓他受到懲罰，搖身一變成為狠毒罪犯、展開追殺。另一方面，白東日接受黑道老大宋燦赫的幫助準備偷渡，而暗中調查事件真相的刑警金柱元，察覺了韓秉道與白東日的計畫…冰冷又殘酷的真相即將揭露，唯有最狠毒的惡人才能存活！', 'crime', '2017-02-24', '限制級', '91分鐘', '朴秉恩', 299),
(51, '怪房客:倫敦霧夜奇案', 'https://goo.gl/7Ae1uR', '位佳', '倫敦發生連續兇殺案，被害者都是年輕漂亮的金髮女郎，根據目擊者的描述，兇手的身材高瘦、蒙面、隨身帶著一個小皮箱。不久後，某間出租公寓搬來了一個新房客，他的體型外貌與兇嫌很類似，而且行為非常怪異，漸漸被瘋癲的房東太太懷疑，這個新房客是否就是冷血的催花手?!', 'crime', '2016-12-02', '限制級', '89分鐘', '朱恩崔普,艾佛諾維洛', 199),
(52, '失控謊言', 'https://goo.gl/NsnJPo', '禾廣', '一宗命案，三個偶然重疊的生命，萬千謎團與深陷泥淖的真相。彩虹法藝老闆娘意外遇害，頸部被利刃深深劃開，老闆蘇俊傑（王柏傑飾）離奇失蹤，陪同逃亡的竟是初戀情人周曉晨（許瑋甯飾），沸沸揚揚的新聞事件，更引來周刊記者美玉（陳庭妮飾）的密切關注，身為兩人國中同學的她，以協助澄清為由，取得獨家專訪機會，卻也意外抖出多年前另一起草草了結的命案。靈感取自70年代轟動台灣的真實社會案件，撲朔迷離的男女關係、懸疑難辨的兇殺真相，直指人性最深層的黑暗角落。', 'crime', '2016-12-01', '保護級', '94分鐘', '許瑋甯', 450),
(53, '出神入化2', 'https://goo.gl/f7FKf2', '睿客', '江湖人稱四騎士的魔術大師回來了，這次他們要展開空前大膽又驚人的偷天換日計劃，將舞台幻覺極限提升到全新境界，企圖洗刷他們的盗匪汙名並揭露貪婪科技鉅子的冷酷惡行。 一年前，四騎士劫富濟貧的羅賓漢式魔術秀，博得大眾崇拜，並把FBI搞得人仰馬翻。如今，他們重登舞台，風光復出，將要施展前未見，更令人瞠目結舌的瞞天佈局。在FBI特別探員迪倫羅德（馬克魯法洛 飾）幫助下，四騎士－－丹尼亞特斯（傑西艾森柏格 飾）、梅利麥金尼（伍迪哈里遜 飾）、傑克懷德（戴夫法蘭科 飾）及新成員魯拉（莉茲凱普蘭 飾），籌備了一場計劃周詳的復出大秀，企圖借此揭發貪婪的科技大亨歐文凱斯（班蘭姆 飾）。然而，他們的計謀卻遭一股神祕勢力破壞，不但曝露出迪倫與四騎士是同夥，並使他們五人淪為逃犯。為了洗刷汙名，他們被迫聽從一名遁世的年輕富豪華特馬布利（丹尼爾雷德克里夫 飾）指示，要幫他偷回被歐文凱斯奪走的一個超強電腦晶片。正當四騎士試圖完成這樁超高難度的任務之際，未料竟冤家路窄，再度對上前集的無恥富商亞瑟崔斯勒（米高肯恩 飾）及魔術破解達人塞杜斯布萊德利（摩根費里曼 飾），但即使是這兩位老謀深算的江湖老手，也難以料想會有何等驚人的', 'crime', '2016-10-27', '輔導級', '115分鐘', '傑西艾森柏格', 428),
(54, '萬惡新世界', 'https://goo.gl/7TALjB', '飛擎', '政治流氓安尚久（李炳憲 飾）縱橫黑白兩道，與總統候選人和財閥會長平起平坐，不惜利益威誘以達目的。這塊官商勾結的黑幕背後，竟是報社編輯李江熙（白潤植 飾）為鞏固權勢而精心策劃的計謀。一場交易事跡敗露後，安尚久被報復成為殘廢，卻因緣際會碰上毫無背景的檢察官禹長勳（曺承佑 飾）。一人為了復仇、一人則為了升遷，向李江熙做出全面反攻。究竟這場黑吃黑的金權遊戲，誰才是最後贏家？', 'crime', '2016-09-02', '限制級', '130分鐘', '李炳憲,曺承佑', 399),
(55, '牙買加旅店', 'https://goo.gl/17t7gF', '位佳', '故事發生在十九世紀英國沿海某地，一群海盜經常打劫擱淺的貨船，手段殘忍兇狠，父母離世的愛爾蘭女孩瑪麗千里迢迢來到此地，前往該地投奔自己的姨媽，途中她遇到了當地的富紳漢弗萊公爵，在他的幫助下，瑪麗很快找到了姨媽所開設的「牙買加旅店」，但不久她就發現旅店竟然是海盜們的據點，而這個海盜集團幕後主使者竟然是看似善良的漢弗萊公爵，他看中了瑪麗的美貌，決定將她擄走。瑪麗不但從海盜們手中救了吉姆，同時她也破壞一次海盜劫船行動，因此徹底激怒了兇殘冷酷的海盜們...', 'crime', '2016-09-01', '輔導級', '108分鐘', '瑪琳奧哈拉,羅伯特牛頓', 199),
(56, '慾海驚魂', 'https://goo.gl/uhu2yj', '位佳', '伊芙是一位皇家戲劇學院的學生，某日，她的愛慕之人喬納森急迫尋求她的幫助，原來，喬納森是當紅舞台女星夏洛特的地下情人，一早夏洛特穿著裙子沾滿大片血跡向喬納森求救，原來她殺了自己的丈夫，喬納森為了使她脫罪，所以到夏洛特的家找件乾淨的裙子給她並且佈置假搶劫殺人現場，正當離去時卻被夏洛特的傭人看到，於是警方開始追緝喬納森，伊芙將喬納森帶到爸爸度假的小屋躲避，伊芙的爸爸發覺此事不對勁，猜疑夏洛特故意裙子沾血陷害喬納森背負罪名。伊芙為了幫助喬納森，到了命案現場，用了「演技」結識了探長史密斯，藉此瞭解案情，之後又買通夏洛特的傭人，喬裝成她的姪女去當夏洛特的服裝師，伊芙在夏洛特身邊果然發現，她把殺人的罪責都推到喬納森身上，為了讓史密斯探長相信夏洛特有罪，於是千方百計尋找證據，不料，事實的真相並非如此...', 'crime', '2016-08-01', '保護級', '110分鐘', '瑪琳黛德麗', 199),
(57, '柏林諜影', 'https://goo.gl/CU4osb', '搖滾萬歲', '英國密情局西柏林站長艾力克利馬斯，在歷經數次東德特務頭子穆特殺害所屬情報員後，心生倦怠。密情局長把他召回、並給了一個新的任務，希望讓他能扳回一城。此時回到倫敦的利馬斯成了個怨天尤人、酗酒鬧事的失業者；在出獄當下，立刻被東德的情報機構找上、並意圖吸收他。而他的新任務正是假扮成叛逃的間諜滲透進東德，利用手邊的資料來策動東德特務二號頭子費德勒，扳倒他的死對頭穆特。任務看來已成功在望，但一步一步地接近真相，卻更陷入了撲朔迷離的危機之中...', 'crime', '2016-07-27', '保護級', '112分鐘', '李察波頓', 99),
(58, '衝出康普頓', 'https://goo.gl/s3gU1o', '傳訊時代', '描述在80年代轟動一時，並在嘻哈音樂中奠定重要地位的傳奇團體N.W.A.從組成到解散的故事。五位團員均出身於加州治安最差的黑人區：康普頓街。以獨特的嘻哈節奏、配上前衛批判性的歌詞，以強烈且絕無僅有的音樂風格，造就當時的全民嘻哈熱潮。但歌詞太過批判、煽動，引發反彈聲浪，還掀起不少暴動。白人警方視他們為禍害，媒體更是毫不留情批評他們。在種族歧視與社會觀感的夾擊下，N.W.A.堅持用自己的態度，向這個世界宣示反叛的嘻哈精神。', 'crime', '2016-02-24', '限制級', '147分鐘', '德瑞博士', 450),
(59, '辛辛那提小子', 'https://goo.gl/9TZqYF', '新動', '艾力克是一位撲克高手綽號\"辛辛那提小子\"，在紐奧爾良戰無不勝，所有與他交手過的，都簽了借據在他手中；他在等待與全美撲克第一好手 蘭西霍華德一較高下。小子在緊張的牌局中，竟發現舒特故意做牌給他；這讓小子勃然大怒，要求更換發牌手，他要靠自己的牌技打敗蘭西，小子不了解的是，舒特的行為背後有著更大的陰謀進行著…。', 'crime', '2016-02-03', '保護級', '102分鐘', '史提夫麥昆', 133),
(60, '共犯', 'https://goo.gl/KLCQZF', '迪昇數位影視', '一如往常的上學日，不尋常的意外改變了命運，在彼此相互隱瞞的秘密中，他們成為了「共犯」。獨行俠黃立淮（巫建和飾）、壞學生葉一凱（鄭開元飾）以及模範生林永群（鄧育凱飾），三位性格迥異且原本沒有交集的同校高中少年，因緣際會下相識，聯繫他們的共同點，是一起在上學途中目擊了女學生夏薇喬（姚愛?飾）的意外死亡事件！為了探查夏薇喬的死因，他們三人組織了一個祕密結社，一同展開調查行動；結果，一場突如其來的意外，卻永遠改變了他們的命運與過往生活。因為要維繫彼此之間的友誼，有人私自隱藏了祕密，有人被罪惡感糾纏，有人竟淪為全校公敵，三人的共犯結構逐漸開始崩裂。', 'crime', '2015-02-16', '輔導級', '110分鐘', '巫建和,鄭開元', 399),
(61, '反物質效應', 'https://goo.gl/Sg3Ceh', '獨立', '反物質理論本是愛麗絲夢遊仙境的科幻奇想，然而，博士生安娜卻發現自己在蟲洞旅行實驗之後，就無法建立新記憶。這背後到底是什麼人或什麼東西從中搞鬼呢？', 'sciencefiction', '2017-12-22', '輔導級', '105分鐘', '亞沙費格羅,菲力帕卡爾森,湯姆巴勃道非', 299),
(62, '異世界駭客', 'https://goo.gl/RzPcLb', '獨立', '登山客在阿帕拉契步道迷路了，還不小心發現了一個古老的秘密，來自異世界的物種正悄然逼近，現在，他們的生命即將受到威脅，這群登山客該如何全身而退呢?!', 'sciencefiction', '2017-12-15', '輔導級', '85分鐘', '瓊恩布利得,艾瑞克葛恩斯', 288),
(63, '異形入侵者', 'https://goo.gl/oWCGMv', '獨立', '在一個遙遠的星球上，有一群時空穿越者正和外星人對戰，必須在限定時間內啟動時光機器，將地球回復到毀滅之前的樣子。', 'sciencefiction', '2017-12-15', '輔導級', '90分鐘', '托瑞哈特,狄納葛雷斯康格', 299),
(64, '夜夢效應', 'https://goo.gl/EKsE34', '獨立', '著迷於基因再生和醒夢現象的利斯博士，在年輕的蓋伯瑞霍瓦斯身上做研究。這個年輕人因為虛擬的夢境與他的真實人生混在一起，生活變得天翻地覆。某天蓋伯瑞的夢境反映了政治暗殺情節，這下他得和時間賽跑，除了保護自己和妻子，還要阻止政府的實驗計畫。時間分秒必爭，蓋伯瑞危在旦夕，真正握有關鍵的人卻是利斯博士。', 'sciencefiction', '2017-12-01', '輔導級', '94分鐘', '凱姆吉甘特,麥可賓恩', 299),
(65, '鳳凰城光點事件', 'https://goo.gl/tSDE9S', '采昌國際多媒體', '1997年3月13日，亞利桑那州鳳凰城發生美國史上最多人目擊的幽浮事件，被稱為「鳳凰城光點」。當晚，有四名鳳凰城居民於附近山區失蹤，至今仍未尋獲。本片以紀錄片形式拍攝，透過機密軍事文件、相關人士採訪與第一手影像資料，還原失蹤事件的真相，發現美國軍方竟牽涉其中…', 'sciencefiction', '2017-11-24', '輔導級', '81分鐘', '奇斯亞雷,尤里洛文塔爾,崔維斯威靈漢,特羅伊貝克,利亞姆奧布萊恩', 399),
(66, '陸戰特工', 'https://goo.gl/qg3eLN', '獨立', '大城市遭到致命病毒侵襲，生還者被隔離在軍事基地。有錢的企業家想從混亂之中救回自己的女兒，只能請來前突襲隊員麥克斯卡特靈幫忙。卡特靈只有一天時間，要闖進一群殭屍中拯救出女孩。然而營救行動過程中，被感染的人類和武裝機器人的攻擊，即將讓卡特靈大開殺戒…', 'sciencefiction', '2017-11-10', '輔導級', '88分鐘', '杜夫朗格林,麥特多蘭,大衛菲爾德,梅蘭尼查奈特', 299),
(67, '魔鬼生化人', 'https://goo.gl/oHDitE', '獨立', '在未來的時空，大型網路病毒滲透X公司，這原是一間高機密、先進的武器工廠。如今，成了末日啟示錄的死亡之地，只有一片廢墟。Ｘ公司的機器人兵團和無人戰鬥機獵殺僅存的人類。為了拯救人類世界，有一群守護者集結，決定要反擊。帶著反情報設備、大型武器重裝上陣，他們就這樣開始了這項任務潛入了X公司總部，從源頭毀壞機械。但當他們來到公司內部，才發現這個網路病毒可不單純…..', 'sciencefiction', '2017-10-27', '限制級', '90分鐘', '丹尼特瑞歐', 299),
(68, '巴霍巴利王:磅礡終章', 'https://goo.gl/W4ny5U', '原創娛樂', '仁德的巴霍巴利王之後──濕婆度，得知自己的身世後，開始尋找一切謎團的解答。巴霍巴利王為何被忠臣卡塔帕所殺？濕婆度有辦法戰勝權謀深算的叔叔帕拉提婆嗎？馬西馬帝王國的最終命運即將揭曉！', 'sciencefiction', '2017-10-27', '輔導級', '167分鐘', '普拉哈斯,拉納達古巴提,安努舒卡謝蒂,特曼娜芭蒂亞', 428),
(69, '金剛戰士', 'https://goo.gl/9vihBQ', '勁藝', '英傑、小晴、比利、珍妮和賽克五名平凡高中生，發現自己所住的城鎮和世界受到外星勢力的侵略，他們受到命運的驅使，被賦予了超異能，開始成為捍衛地球的「金剛戰士」，合力對抗邪惡勢力幽冥女王。', 'sciencefiction', '2017-10-20', '輔導級', '124分鐘', '布萊恩克雷斯頓,伊莉莎白班克斯,娜歐蜜史考特,RJ賽勒,貝琪戈梅,林路迪,達克瑞蒙哥馬利', 428),
(70, '異形:聖約', 'https://goo.gl/bWxTjC', '福斯', '大師級導演雷利史考特繼【絕地救援】後，重返經典回歸其一手打造的科幻史詩鉅作【異形】系列，新作【異形：聖約】將直接與1979年的【異形】故事連結，故事描述殖民太空船聖約號前往浩瀚銀河中一顆遙遠的星球奧瑞加六，航程中成員發現了世人都未知的「天堂」，但當他們抵達時卻發現這個「新世界」埋藏著難以想像的威脅，為了活命他們必須展開驚心動魄的逃亡旅程…', 'sciencefiction', '2017-09-22', '輔導級', '122分鐘', '麥可法斯賓達,凱薩琳華特斯頓,比利克魯德普,德米安畢齊', 498),
(71, '巴黎交易員', 'https://goo.gl/WS8UDB', '海鵬', '他在銀行賺到的錢，遠超過父親幾十個勞碌人生… 傑宏來自布列塔尼，他幸運擠身法興銀行，在獲主管同儕欣賞下，搖身成為巴黎交易員。人生鯉躍龍門，眼界自此大開，而他在股價期貨交易賺到的錢，更遠超過父親幾十個勞碌的人生…。 傑宏的父親是個鍋爐工人，母親則是理髮師。頂著金融碩士頭銜的他，彷彿有彈指魔法，總能幫銀行賺進驚人利潤，卻也逐漸沉迷於一場場的金錢遊戲。傑宏每投必中宛若神助，在銀行默許下，他越發大膽展開最瘋狂交易，不僅買賣金額逐步超越權限，投資金額更超乎銀行股本，導致不可收拾局面，引發那斯達克、道瓊歐盟指數崩盤暴瀉，銀行跟著搖搖欲墜…。 銀行憤怒對傑宏提出控告，使他面臨49億歐元的天價求償！這位「魔鬼交易員」如何能瞞天過海、暗地進行500億歐元的投資？他堅持沒有私吞一毛錢，但憑空消失的鉅款，究竟去了哪裡？一場關乎人性與慾望的金錢遊戲於是登場…', 'sciencefiction', '2017-09-22', '輔導級', '118分鐘', '亞瑟杜朋', 399),
(72, '登入火星', 'https://goo.gl/nHRUFw', '甲上', '一場孤獨卻驚險的太空旅程正要展開 科學家兼太空人威廉隊長被派往火星執行一項單程任務！他將獨自面對四千萬英哩、270天航程的挑戰，正式邁出人類殖民火星第一步 但看似單純簡單的任務，確因為一個錯誤，威廉必須承擔任務取消並折返地球的窘境！但威廉毅然決然決定要繼續前往火星，完成這趟不可能的任務，而他將面對史無前例的挑戰！', 'sciencefiction', '2017-07-28', '輔導級', '90分鐘', '馬克史壯', 399),
(73, '聖保羅炮艇', 'https://goo.gl/2saQeL', '搖滾萬歲', '在1926年的中國，一艘名為”聖保羅”的美國炮艇，利用內河航行權航行於長江流域；時值軍閥割據、革命軍北伐、國共內鬥之際，其任務是保護在中國動亂地區的美國人民。美海軍機械士霍曼，他熱愛機房工作且獨善其身，但叛逆的個性使得他勇於向傳統思維挑戰。當時船上的苦力均仰賴華人，船長均不會過問權威管理下屬的中國傳統領班。霍曼執意打破潛規則，堅持提拔年輕的中國苦力寶漢，並教授其機械原理，但霍曼反成為眾矢之的。寶漢後來成為中國民族主義抗爭下的犧牲者，霍曼不禁心灰意冷，所幸傳教士女友雪莉及時鼓勵而逐漸重拾自信。但霍曼卻捲入一樁莫名的謀殺案，憤怒的中國軍民包圍炮艇，要求交出霍曼加以審判；雪上加霜的是，炮艇接獲國共兩黨與英美軍隊在南京展開交戰的消息。上級指示船長返航，此時江面上已聚滿中國船筏和士兵、雙方展開了一場血淋淋的激烈交戰；而此時尚在庇護所的美國傳教士父女仍不願登船.....', 'war', '2017-01-05', '普遍級', '180分鐘', '史提夫.麥昆,甘蒂絲.柏根,李察.艾登堡祿,理察.克里納', 430),
(74, '敦克爾克大行動', 'https://goo.gl/7Fm2uo', '華納兄弟影業', '【黑暗騎士】、【星際效應】克里斯多夫諾蘭最新作品，這是他首次執導二次世界大戰的題材。【敦克爾克大行動】以二次世界大戰為故事背景，當數十萬名英軍與盟軍被敵人的武力團團包圍，他們的背後只有冰冷的大海，而敵軍正從四方進逼，隨時可以一舉殲滅盟軍。敵軍利用大規模空襲的方式攻擊海灘上無處可躲、彈盡援絕的盟軍。為此，英國下令出動各式大小船隻，冒著猛烈的戰火，出發拯救盟軍。這是改變二次大戰結果的關鍵行動，也是塑造現今世界的決定性事件之一，希望是他們唯一的武器，存活就是勝利。', 'war', '2018-01-05', '輔導級', '106分鐘', '菲昂懷海德,湯姆哈迪', 498),
(75, 'USSI:勇者無畏', 'https://goo.gl/N5SvzQ', '車庫娛樂', '第二次世界大戰期間，戰雲密佈的太平洋戰場，美軍艦長麥維（尼可拉斯凱吉 飾）臨危受命，率巡洋艦「印第安納波利斯」號執行運送原子彈至太平洋戰區的秘密任務。不料途中遭到日軍潛艇攔截擊沉，被迫棄艦求生的數百名官軍於無際汪洋中漂流數日苦等救援，他們不僅得忍受饑餓脫水的痛苦煎熬，還得面對上百尾嗜血鯊魚的威脅。隨著時間一點一滴流逝，這些歷盡磨難且親眼目睹同袍慘遭鯊魚吞噬分食的倖存者們，又該如何撐過這宛如人間煉獄般的絕境？', 'war', '2017-09-08', '輔導級', '130分鐘', '湯姆賽斯摩,尼可拉斯凱吉,湯瑪斯傑恩,寇帝沃克', 370),
(76, '決死突擊隊', 'https://goo.gl/fEP22f', '搖滾萬歲', '二戰1944年盟軍大反攻前的3月，美方策劃了一場諾曼第戰役的前哨入侵突擊行動，名為「大赦計劃」、由一位歷經多次戰役且桀驁不馴的萊斯曼少校，挑選十二名軍事重刑犯，準備潛入法國境內的萊納斯堡，進行暗殺在該處渡假的德軍高階將領，藉以鼓舞盟軍及打擊德軍士氣。少校用減刑的誘因和鋼鐵般的訓練，促使囚犯們逐漸成為足以擔此重任的戰士，但少校特立獨行的行事作風加上囚犯們反社會的性格，期間遭受到高層不少的質疑和阻礙。在歷經一場紅藍軍大對抗且成功擄獲死對頭布立德上校的演習後，這群來自三山五嶽的重刑犯雜牌軍將前往法國執行任務。這支渴望重生的「決死突擊隊」最終能否達成使命.....', 'war', '2017-08-17', '保護級', '150分鐘', '李．馬文,查理士．布朗遜,歐尼斯．鮑寧,唐納．蘇德蘭,泰利．沙瓦拉,約翰．卡薩維蒂,喬治．甘迺迪', 99),
(77, '633轟炸大隊', 'https://goo.gl/3FwbD6', '搖滾萬歲', '二戰期間，挪威反抗軍領袖艾利克冒死劫機逃至英國，帶來德軍在挪威秘密研發飛彈，準備對盟軍展開致命攻擊的情報。英軍命令格蘭特指揮官的蚊式戰鬥轟炸機633中隊，執行摧毀德軍隱身在挪威險峻峽灣飛彈工廠的任務。艾利克奉命返回挪威帶領反抗軍破壞保護工廠的防空陣地，卻不幸被蓋世太保所擄嚴刑拷問；消息傳回英國，為避免任務曝光、急命633中隊在沒有地面支援下全員出動....', 'war', '2017-06-21', '保護級', '90分鐘', '克里夫.羅勃遜,喬治.查格里斯', 99),
(78, '代號:鐵鉻行動', 'https://goo.gl/uuZyMC', '海樂', '1950年6月25日凌晨北韓軍突然南侵攻擊南韓！僅3天首爾就淪陷，40天後除了洛東江外，朝鮮半島全都被北韓軍占領！聯合國軍最高司令官道格拉斯‧麥克阿瑟為了扭轉情勢，瞄準北韓軍的弱點突襲進攻，企劃了「仁川登陸：鐵鉻行動」計畫。為此麥克阿瑟將軍啟動了X光諜戰任務，讓不具編號的特殊情報部隊隊員滲透北韓軍挖出情報。海軍上尉張學修（李政宰 飾）領軍的KLO部隊，成功僞裝成北韓軍，進行滲透，雖暗中執行任務，卻因北韓軍司令官林桂珍（李凡秀飾）而處於有恐洩露身分的危機中。所剩時間是24小時。攸關朝鮮半島歷史與命運的「鐵鉻行動」就此展開！', 'war', '2017-04-28', '輔導級', '111分鐘', '連恩尼遜,李政宰,李凡秀,鄭俊鎬', 320),
(79, '鋼鐵英雄', 'https://goo.gl/mmyvUj', '甲上', '1945年春天，二戰隨著太平洋戰事進入最後階段，但在沖繩島的美軍遭遇前所未見的慘烈苦戰，雙方傷亡人數超過16萬人！一名士兵戴斯蒙杜斯(安德魯加菲 飾)因信仰而拒絕拿任何武器上戰場，數度被同袍恥笑霸凌。但上級下達的撤退命令，部隊所有人都離開時，只有他獨自留下來，憑藉一己之力來回穿梭槍林彈雨中拯救了75名重傷同袍的生命。同年10月杜斯從杜魯門總統手中接過榮譽勳章，成為美國史上最偉大的二戰英雄。', 'war', '2017-04-14', '輔導級', '140分鐘', '泰瑞莎帕瑪,安德魯加菲爾德,山姆沃辛頓,文斯范恩', 980),
(80, '將軍之夜', 'https://goo.gl/qk9gYv', '搖滾萬歲', '1942年二戰德軍佔領區，情報處格勞少校奉命調查一宗發生在華沙、手段極為兇殘的謀殺案，死者是一名具有情報員身分的妓女，在目擊者證詞的拼湊下，兇嫌竟是一名納粹將軍。當時有三位將軍涉案，但三人都不願配合調查，而且都沒有不在場證明。兩年後，巴黎又發生一起手法類似的命案，已是上校的格勞認定坦斯將軍就是兩起謀殺案的變態殺人兇手，在七月二十日刺殺希特勒的行動日，格勞前往逮捕坦斯，但卻被坦斯以其同為謀反黨羽而槍殺。', 'war', '2017-03-24', '保護級', '145分鐘', '彼得．奧圖,奧馬．雪瑞夫,湯姆．寇特尼', 99),
(81, '藍徽特攻隊', 'https://goo.gl/obMahu', '搖滾萬歲', '一戰末期、德軍在西部前線戰事吃緊，嚮往翱翔天空的步兵下士史達赫在飛行學校畢業後晉升中尉，被分發到海德曼上校的飛行中隊。在那飛行仍屬於貴族的年代，空戰被視為是高尚的騎士之戰；史達赫雖出身卑微，但憑著優異的飛行戰技，無視所謂騎士精神、團隊合作而汲汲於打落敵機的紀錄，雖然履立戰功，卻飽受隊上其他飛官鄙視，特別是即將擊落二十架敵機、將獲頒藍徽勳章的威利上尉。而史達赫的表現被柏林方面相中，在宣傳部將軍的包裝下，他成了激勵人民士氣的平民戰爭英雄；而他在此時卻和將軍年輕未婚妻凱蒂結下不倫戀情。在一次威利自己挑起的飛行競技中，威利墜機身亡；而史達赫在後續任務又為求達成獲取勳章紀錄而未遵守命令，中隊長決定把他送至柏林軍事法庭究責.....', 'war', '2016-12-08', '輔導級', '156分鐘', '喬治比柏,詹姆士梅遜,烏蘇拉安德絲', 99),
(82, '列車大逃亡', 'https://goo.gl/dcSwSe', '新動', '美國陸軍航空隊上校 萊恩‧約瑟菲爾 (法蘭克‧辛納屈 飾)出任務時，飛機墜毀在義大利偏遠郊區，被送至距前線200哩，關押著由英國陸軍芬奇少校率領之第九步兵團戰俘的義大利戰俘營。芬奇一直嘗試帶領部隊逃出戰俘營，都以失敗收場！之後他們在被德軍轉移的途中，藉著夜色掩護成功奪取運輸火車，一行人開始在德軍的監控與追擊下，嘗試突破重重難關，準備從義大利一路開向瑞士！', 'war', '2016-11-08', '輔導級', '116分鐘', '法蘭克辛納屈,屈佛霍華', 190),
(83, '時空攔截:二戰英豪', 'https://goo.gl/9nVoeK', '睿客', '757班機的乘客因為神秘原因穿梭時空，回到戰火燎原的 1940年，還成為納粹德軍的俘虜。 絕望的乘客為了重返家園，決心扭轉頹勢，靠自己來贏得贏得歐洲戰場的戰役！', 'war', '2016-10-06', '輔導級', '82分鐘', '法倫塔希爾,羅比凱', 399),
(84, '鐵翼雄風', 'https://goo.gl/eeQ2Ua', '位佳', '在一個小鎮上，兩個年輕人傑克和大衛愛上同一個女孩西爾維亞，因此兩人成了情敵。因為大衛家境富裕，且風度翩翩，他在這場愛情中占據了上風。然而傑克卻因為墜入愛河而盲目以為自己才是她的意中人，他也因此忽略了暗戀著自己的鄰家女孩瑪莉。受愛國情懷與冒險精神的驅使，傑克和大衛報名參軍，成為了一次世界大戰中的飛行員，又恰好被分配到了同一個軍營。一開始他們由於是情敵的關係所以相互作對，不過後來逐漸成為了朋友。他們一同執行飛行任務，並且互相保護，下了飛機到達地面以後依然如此。在一次的空戰中，大衛被敵機擊中墜落，傑克非常的憤怒，誓言要為大衛報仇!', 'war', '2016-10-03', '普遍級', '144分鐘', '克拉拉 鲍,查爾斯 羅傑斯,理查 阿倫', 199),
(85, '反恐特警組:十萬火急', 'https://goo.gl/bkhN62', '索尼影業', '美國緝毒署與霹靂小組聯手追緝案件，霹靂小組探員崔維斯赫爾將一名神秘的囚犯羈壓，但沒想到霹靂小組又被一波又一波的火力給襲擊，崔維斯發現這名囚犯其實大有來頭，他握有價值10億美金軍火情資的晶片，而崔維斯更發現霹靂小組裡面有內賊，讓崔維斯與他的團隊陷入生命的威脅....', 'action', '2017-08-25', '輔導級', '89分鐘', '安卓恩帕利,帕斯卡胡頓,山姆賈格', 399),
(86, '午後槍聲', 'https://goo.gl/KoqTU5', '新動', '老槍手史蒂夫賈德，受銀行委託以一天40美金的報酬，要到庫爾斯金礦將銀行收購的金子安全運回鎮上。史蒂夫深知單槍匹馬很難達成護衛黃金的任務，於是找來了窮困的老搭當赫克與毛躁青年吉爾一起上山。三人途經克努森農場借宿了一晚，認識了虔誠的農場主人與他正值青春年華的女兒愛爾莎。第二天啟程時少女愛爾莎逕自追隨而來，目的是要上庫爾斯山，找礦工比利赫爾曼結婚。赫克和吉爾密謀回程時瓜分掉銀行的金子，不得已時也會要了史蒂夫的性命！但一切計畫，在愛爾莎的婚禮後完全變了調…', 'action', '2017-08-23', '保護級', '93分鐘', '喬爾·麥克雷,蘭道夫·史考特', 140),
(87, '攻殼機動隊', 'https://goo.gl/CovLxv', '派拉蒙', '電影故事講述在不久的未來，少校（史嘉蕾喬韓森 飾）是全新人種的第一人：她本來是一個擁有血肉之軀的人類，但是在發生一場意外被救回一命之後，被裝上強化的生化電子義體，成為一個完美的戰士，致力於打擊世上最危險的罪犯。當恐怖行動發展到了極端，包括能夠駭進人類的大腦和意識，並且控制他們的行為，只有少校擁有的獨特能力能夠阻止新一代的恐怖份子。但是當她面對一個全新的敵人，少校這才赫然發現她所知道的一切都是謊言：她的人生並沒有受到拯救，而是完全被偷走。她將不計代價、竭盡所能，重拾她的記憶、揪出偷走她人生的原兇，並且阻止他們再對其他人做出這種事。', 'action', '2017-07-28', '保護級', '107分鐘', '史嘉蕾喬韓森,麥可彼特', 1280),
(88, '金剛:骷髏島', 'https://goo.gl/vRYRPH', '華納兄弟影業', '在這場令人注目的原創冒險中，一群包括軍人、科學家和探險家的多元團隊，一同探索太平洋上一座看似美麗又危險的的未知島嶼。這群人被隔絕在這個神祕地域，冒險進入強大金剛的地盤，並點燃人類與大自然之間的終極之戰。隨著他們的探險任務變得生死攸關，他們必須努力逃脫這個不屬於人類的原始伊甸園。', 'action', '2017-07-28', '輔導級', '118分鐘', '湯姆希德斯頓,布麗拉爾森', 498),
(89, '將軍的子彈', 'https://goo.gl/44Xuz8', '新動', '職業殺手泰特為了10萬美元報酬，準備暗殺墨西哥叛軍首領埃利亞斯將軍，將軍受到嚴密保護，一般人想見到將軍都屬不易，想要刺殺更是難上加難！於是泰特連續二周都坐在通往墨西哥的火車上，等待著另一支由瓊喬穆諾斯帶領的叛軍來打劫，經過耐心等待計畫終於成功！ 瓊喬搶劫了泰特乘坐的火車，泰特也假扮成懸賞要犯順利的混入叛軍中。瓊喬很欣賞泰特的能力，在泰特的協助下數度打敗墨西哥政府軍，奪得許多財富與槍枝，於是瓊喬帶著泰特與給將軍的軍火，準備到叛軍根據地面見將軍，而泰特隨身的一顆金色子彈，將會是將軍最後的禮物！', 'action', '2017-07-20', '保護級', '137分鐘', '吉安·瑪麗亞·沃爾特,盧·卡斯特爾,馬丁·貝西克,克勞斯·金斯基', 140),
(90, '英雄聯盟', 'https://goo.gl/gKMWrf', '獨立', '外星人侵佔了地球，人類的世界陷入混亂，但這七十億人口中，有個男孩握有摧毀外星人的能力，他們要把這位超級英雄找出來拯救地球。', 'action', '2017-07-14', '保護級', '110分鐘', '羅南昆比,布萊德理查', 299),
(91, '羅根', 'https://goo.gl/WTVMrd', '福斯', '【X戰警】系列最具代表性人物「金鋼狼」推出個人系列電影最終章【羅根】，導演詹姆士曼格注入濃厚西部電影的風格，替金鋼狼休傑克曼與X教授派屈克史都華的謝幕留下感傷的印記。故事發生在不久的將來，離群索居的羅根（休傑克曼 飾）與衰弱的X教授（派屈克史都華）一同流亡在墨西哥邊境。當神秘的少女蘿拉(達芙妮基恩 飾)意外的出現，打破了羅根逃離這個世界的計畫，羅根必須面對黑暗勢力和與自身過去有關的敵人...', 'action', '2017-07-14', '輔導級', '137分鐘', '休傑克曼,派屈克史都華', 498),
(92, '刺客教條', 'https://goo.gl/HHSLfQ', '勁藝', '活在現代的卡倫林區（麥可法斯賓達 飾）透過革命性的科技解開了基因記憶，讓他經歷了15世紀祖先阿基拉在西班牙的冒險，而意外發現自己原來是神祕的「刺客」秘密組織的後代，在獲取驚人知識和技能之後，林區決定起身對抗專制壓迫的現代聖殿騎士們。', 'action', '2017-07-07', '輔導級', '115分鐘', '麥可法斯賓達,傑瑞米艾朗,阿麗安拉蓓,布蘭頓葛利森', 428),
(93, '機密同盟', 'https://goo.gl/Udktbg', '車庫娛樂', '為了顛覆「萬惡美帝」，國際傳言北韓秘密發展幾可亂真的完美偽鈔「超級美鈔」，一旦大量釋出即可輕易摧毀金融市場。但是這項傳聞中的秘密武器，卻被犯罪組織首腦車奇成（金柱赫 飾）竊取，並且捲款潛逃到了南韓。北韓迫不得已向南韓求助，雙方共同進行最高機密的搜索行動，北韓派出特種部隊出身的刑警任鐵零（炫彬 飾） 來到首爾執行任務，協助他尋找超級美鈔下落的則是南韓老鳥警探姜鎮泰（柳海真 飾）。姜鎮泰奉命暗中監視這位北韓貴客一舉一動，亦敵亦友，爾虞我詐的追兇冒險即將引爆！', 'action', '2017-07-07', '保護級', '125分鐘', '炫彬,柳海真,少女時代 潤娥,金柱赫', 320),
(94, '命懸生死線', 'https://goo.gl/qy4mC8', '勁藝', '一場強烈暴風雨來襲，全城陷入大停電，意外事故頻傳，為了替恐慌的市民爭取一線光明，身為電力維修員的波（約翰屈伏塔 飾）和鄧肯，決定放下過去對彼此的成見，冒著風雨和生命危險進行搶修任務。就在此時，鄧肯的女友貝莉（凱特柏絲沃 飾）也因受傷進了醫院，醫院發電機又因暴雨短路，讓這場復電行動陷入更急迫的困境…', 'action', '2017-06-23', '輔導級', '97分鐘', '約翰·屈伏塔,凱特·柏絲沃,戴文·沙瓦,茱莉·賓士,吉爾·貝羅斯,萊恩·羅賓斯和莎朗·史東', 428),
(95, '鐵道飛虎', 'https://goo.gl/WKogJk', '海樂', '講述1941年抗日戰爭期間，足智多謀的鐵道游擊隊隊長-馬原(成龍 飾)，召集鐵道工人與平凡百姓，利用工作經驗成功阻擊日軍突襲，並為百姓奪取生存補給，小蝦米搏倒大鯨魚！ 高手其實在民間！', 'action', '2017-06-09', '保護級', '125分鐘', '成龍', 320),
(96, '鋼鐵拳', 'https://goo.gl/UFVUKh', '獨立', '菜鳥救護員及支援人員上班的第一天晚上，就遇到了受重傷的超級英雄，還因此捲入了他的超級任務中。因事態危機緊急還自願加入組成英雄聯盟，就是要從邪惡組織手中，拯救洛杉磯…', 'action', '2017-05-12', '保護級', '90分鐘', '薇琪喬帝,傑森安敦', 299),
(97, 'asd', 'asd', 'asd', 'asd', 'horror', '0000-00-00', 'asd', 'asd', 'asd', 123),
(98, 'eee', 'eee', 'eee', 'gs', 'comedy', '1992-12-22', '2', '123', 'fd', 1222),
(99, 'rewrw', 'few', 'ewre', 'rewre', 'horror', '0000-00-00', 'sdf', '102', 'asd', 123);

-- --------------------------------------------------------

--
-- 資料表結構 `member`
--

CREATE TABLE `member` (
  `Id` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Password` text NOT NULL,
  `Email` varchar(70) NOT NULL,
  `Phone` text NOT NULL,
  `Sex` text NOT NULL,
  `Birthday` text NOT NULL,
  `Address` text NOT NULL,
  `Status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `member`
--

INSERT INTO `member` (`Id`, `Name`, `Password`, `Email`, `Phone`, `Sex`, `Birthday`, `Address`, `Status`) VALUES
(1, 'name', 'password', 'email@imwmail', '0912345678', '1', '1995-02-27', 'taipei', '2'),
(2, 'user', 'userpass', '123@123', '0923456788', '1', '1996-12-31', 'taipei', '0'),
(3, 'qqaa', 'qq', 'qq@qq', 'q', '0', '1', 'taipei', '0'),
(5, '1233', 'test', 'test@test', '0911111122', '1', '1992/12/22', 'addre2', '1'),
(6, 'zasda', 'asda', '12312@12321', '0912345678', '1', '1992/12/22', 'taipei', '0'),
(7, 'asd', 'uuuuu', 'asdasda@asdasda', '0912121212', '0', '1992/12/21', 'taipei', '0'),
(8, 'asddsa11', 'aaaa', 'aaa@aaa', '092222222222', '1', '1992/12/25', 'A1231231231', '1');

-- --------------------------------------------------------

--
-- 資料表結構 `order_list`
--

CREATE TABLE `order_list` (
  `Id` int(11) NOT NULL,
  `Member_Id` int(11) NOT NULL,
  `Cost` int(11) NOT NULL,
  `State` text NOT NULL,
  `Date_Time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `order_list`
--

INSERT INTO `order_list` (`Id`, `Member_Id`, `Cost`, `State`, `Date_Time`) VALUES
(0, 2, 2050, '3', '2017-12-25'),
(1, 2, 5107, '1', '2017-12-26'),
(2, 3, 1234, '0', '2017-12-13'),
(3, 7, 1249, '0', '2018-01-01'),
(4, 2, 723, '0', '2018-01-01'),
(5, 2, 1363, '0', '2018-01-02');

-- --------------------------------------------------------

--
-- 資料表結構 `order_list_dvd`
--

CREATE TABLE `order_list_dvd` (
  `order_list_Id` int(11) NOT NULL,
  `DVD_Id` int(11) NOT NULL,
  `Quantity` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `order_list_dvd`
--

INSERT INTO `order_list_dvd` (`order_list_Id`, `DVD_Id`, `Quantity`) VALUES
(0, 2, 1),
(0, 5, 1),
(0, 10, 1),
(0, 15, 1),
(0, 13, 1),
(0, 13, 1),
(0, 1, 1),
(0, 12, 1),
(0, 12, 1),
(0, 3, 1),
(1, 87, 1),
(1, 85, 1),
(1, 84, 1),
(1, 82, 1),
(1, 81, 1),
(1, 79, 1),
(1, 79, 1),
(1, 79, 1),
(0, 75, 2),
(0, 61, 1),
(2, 60, 2),
(1, 2, 1),
(1, 2, 1),
(0, 2, 1),
(3, 9, 1),
(3, 85, 1),
(3, 13, 1),
(3, 9, 1),
(4, 14, 1),
(4, 42, 1),
(5, 38, 1),
(5, 2, 1),
(5, 39, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `shopping_cart`
--

CREATE TABLE `shopping_cart` (
  `Member_Id` int(11) NOT NULL,
  `DVD_Id` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `shopping_cart`
--

INSERT INTO `shopping_cart` (`Member_Id`, `DVD_Id`, `Quantity`) VALUES
(1, 27, 1),
(1, 63, 1),
(1, 5, 1),
(1, 1, 1),
(1, 7, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `stroge_list`
--

CREATE TABLE `stroge_list` (
  `Member_Id` int(11) NOT NULL,
  `DVD_Id` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Cost` int(11) NOT NULL,
  `DATE_TIME` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `stroge_list`
--

INSERT INTO `stroge_list` (`Member_Id`, `DVD_Id`, `Quantity`, `Cost`, `DATE_TIME`) VALUES
(1, 1, 3, 200, '2017-12-24'),
(1, 2, 2, 850, '2017-12-24'),
(1, 3, 2, 350, '2017-12-24'),
(1, 4, 0, 300, '2017-12-24'),
(1, 5, 2, 350, '2017-12-24'),
(1, 6, 4, 400, '2017-12-24'),
(1, 7, 0, 250, '2017-12-24'),
(1, 8, 3, 300, '2017-12-24'),
(1, 9, 0, 300, '2017-12-24'),
(1, 10, 0, 850, '2017-12-24'),
(1, 11, 4, 830, '2017-12-24'),
(1, 12, 3, 850, '2017-12-24'),
(1, 13, 2, 250, '2017-12-24'),
(1, 14, 2, 250, '2017-12-24'),
(1, 15, 0, 380, '2017-12-24'),
(1, 16, 0, 400, '2017-12-24'),
(1, 17, 1, 300, '2017-12-24'),
(1, 18, 0, 280, '2017-12-24'),
(1, 19, 3, 300, '2017-12-24'),
(1, 20, 1, 250, '2017-12-24'),
(1, 21, 0, 400, '2017-12-24'),
(1, 22, 3, 380, '2017-12-24'),
(1, 23, 5, 399, '2017-12-24'),
(1, 24, 2, 428, '2017-12-24'),
(1, 25, 4, 299, '2017-12-24'),
(1, 26, 1, 279, '2017-12-24'),
(1, 27, 2, 299, '2017-12-24'),
(1, 28, 0, 299, '2017-12-24'),
(1, 29, 1, 299, '2017-12-24'),
(1, 30, 0, 428, '2017-12-24'),
(1, 31, 1, 498, '2017-12-24'),
(1, 32, 5, 498, '2017-12-24'),
(1, 33, 3, 498, '2017-12-24'),
(1, 34, 5, 428, '2017-12-24'),
(1, 35, 2, 498, '2017-12-24'),
(1, 36, 1, 498, '2017-12-24'),
(1, 37, 4, 320, '2017-12-24'),
(1, 38, 2, 320, '2017-12-24'),
(1, 39, 5, 220, '2017-12-24'),
(1, 40, 5, 498, '2017-12-24'),
(1, 41, 5, 320, '2017-12-24'),
(1, 42, 2, 498, '2017-12-24'),
(1, 43, 1, 498, '2017-12-24'),
(1, 44, 3, 450, '2017-12-24'),
(1, 45, 1, 320, '2017-12-24'),
(1, 46, 2, 320, '2017-12-24'),
(1, 47, 0, 320, '2017-12-24'),
(1, 48, 4, 299, '2017-12-24'),
(1, 49, 1, 350, '2017-12-24'),
(1, 50, 3, 299, '2017-12-24'),
(1, 51, 1, 199, '2017-12-24'),
(1, 52, 3, 450, '2017-12-24'),
(1, 53, 5, 428, '2017-12-24'),
(1, 54, 4, 399, '2017-12-24'),
(1, 55, 3, 199, '2017-12-24'),
(1, 56, 3, 199, '2017-12-24'),
(1, 57, 1, 99, '2017-12-24'),
(1, 58, 3, 450, '2017-12-24'),
(1, 59, 0, 133, '2017-12-24'),
(1, 60, 4, 399, '2017-12-24'),
(1, 61, 4, 299, '2017-12-24'),
(1, 62, 0, 288, '2017-12-24'),
(1, 63, 5, 299, '2017-12-24'),
(1, 64, 1, 299, '2017-12-24'),
(1, 65, 3, 399, '2017-12-24'),
(1, 66, 1, 299, '2017-12-24'),
(1, 67, 5, 299, '2017-12-24'),
(1, 68, 2, 428, '2017-12-24'),
(1, 69, 0, 428, '2017-12-24'),
(1, 70, 3, 498, '2017-12-24'),
(1, 71, 0, 399, '2017-12-24'),
(1, 72, 4, 399, '2017-12-24'),
(1, 73, 0, 430, '2017-12-24'),
(1, 74, 1, 498, '2017-12-24'),
(1, 75, 0, 370, '2017-12-24'),
(1, 76, 1, 99, '2017-12-24'),
(1, 77, 3, 99, '2017-12-24'),
(1, 78, 0, 320, '2017-12-24'),
(1, 79, 5, 980, '2017-12-24'),
(1, 80, 2, 99, '2017-12-24'),
(1, 81, 2, 99, '2017-12-24'),
(1, 82, 3, 190, '2017-12-24'),
(1, 83, 2, 399, '2017-12-24'),
(1, 84, 2, 199, '2017-12-24'),
(1, 85, 0, 399, '2017-12-24'),
(1, 86, 0, 140, '2017-12-24'),
(1, 87, 2, 1280, '2017-12-24'),
(1, 88, 1, 498, '2017-12-24'),
(1, 89, 4, 140, '2017-12-24'),
(1, 90, 3, 299, '2017-12-24'),
(1, 91, 1, 498, '2017-12-24'),
(1, 92, 5, 428, '2017-12-24'),
(1, 93, 3, 320, '2017-12-24'),
(1, 94, 1, 428, '2017-12-24'),
(1, 95, 4, 320, '2017-12-24'),
(1, 96, 3, 299, '2017-12-24'),
(1, 97, 2, 123, '2017-12-24'),
(1, 98, 3, 1222, '2018-01-01'),
(1, 99, 45, 123, '2018-01-01');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `comment`
--
ALTER TABLE `comment`
  ADD KEY `Member_Id` (`Member_Id`),
  ADD KEY `DVD_Id` (`DVD_Id`);

--
-- 資料表索引 `dvd`
--
ALTER TABLE `dvd`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Name` (`Name`);

--
-- 資料表索引 `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- 資料表索引 `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Member_Id` (`Member_Id`);

--
-- 資料表索引 `order_list_dvd`
--
ALTER TABLE `order_list_dvd`
  ADD KEY `order_list_dvd_ibfk_1` (`order_list_Id`),
  ADD KEY `order_list_dvd_ibfk_2` (`DVD_Id`);

--
-- 資料表索引 `shopping_cart`
--
ALTER TABLE `shopping_cart`
  ADD KEY `DVD_Id` (`DVD_Id`),
  ADD KEY `Member_Id` (`Member_Id`);

--
-- 資料表索引 `stroge_list`
--
ALTER TABLE `stroge_list`
  ADD KEY `DVD_Id` (`DVD_Id`),
  ADD KEY `Member_Id` (`Member_Id`);

--
-- 已匯出資料表的限制(Constraint)
--

--
-- 資料表的 Constraints `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`Member_Id`) REFERENCES `member` (`Id`),
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`DVD_Id`) REFERENCES `dvd` (`Id`);

--
-- 資料表的 Constraints `order_list`
--
ALTER TABLE `order_list`
  ADD CONSTRAINT `order_list_ibfk_1` FOREIGN KEY (`Member_Id`) REFERENCES `member` (`Id`);

--
-- 資料表的 Constraints `order_list_dvd`
--
ALTER TABLE `order_list_dvd`
  ADD CONSTRAINT `order_list_dvd_ibfk_1` FOREIGN KEY (`order_list_Id`) REFERENCES `order_list` (`Id`),
  ADD CONSTRAINT `order_list_dvd_ibfk_2` FOREIGN KEY (`DVD_Id`) REFERENCES `dvd` (`Id`);

--
-- 資料表的 Constraints `shopping_cart`
--
ALTER TABLE `shopping_cart`
  ADD CONSTRAINT `shopping_cart_ibfk_1` FOREIGN KEY (`DVD_Id`) REFERENCES `dvd` (`Id`),
  ADD CONSTRAINT `shopping_cart_ibfk_2` FOREIGN KEY (`Member_Id`) REFERENCES `member` (`Id`);

--
-- 資料表的 Constraints `stroge_list`
--
ALTER TABLE `stroge_list`
  ADD CONSTRAINT `stroge_list_ibfk_1` FOREIGN KEY (`DVD_Id`) REFERENCES `dvd` (`Id`),
  ADD CONSTRAINT `stroge_list_ibfk_2` FOREIGN KEY (`Member_Id`) REFERENCES `member` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

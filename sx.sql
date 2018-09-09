-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2018-09-09 15:18:00
-- 服务器版本： 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sx`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--

CREATE TABLE `admin` (
  `id` int(20) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `article`
--

CREATE TABLE `article` (
  `article_id` int(11) NOT NULL,
  `article_title` varchar(255) DEFAULT NULL,
  `article_content` longtext,
  `create_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `article`
--

INSERT INTO `article` (`article_id`, `article_title`, `article_content`, `create_time`) VALUES
(9, '好一朵美丽的茉莉花', '这是一篇好文章', '2018-09-05 08:15:33');

-- --------------------------------------------------------

--
-- 表的结构 `companyinfo`
--

CREATE TABLE `companyinfo` (
  `companyinfo_id` int(11) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `location` varchar(30) DEFAULT NULL,
  `companyinfo_desc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `companyinfo`
--

INSERT INTO `companyinfo` (`companyinfo_id`, `phone`, `email`, `location`, `companyinfo_desc`) VALUES
(2, '400+180844654654', 'dairy@gmail.com', '云南', '科技公司');

-- --------------------------------------------------------

--
-- 表的结构 `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `message_content` varchar(255) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `message`
--

INSERT INTO `message` (`message_id`, `name`, `phone`, `email`, `message_content`, `create_time`) VALUES
(1, 'dairy', '18887043153', '2997266712@qq.com', '您们公司真好', NULL),
(2, 'dairy', '18887043153', '2997266712@qq.com', '您们公司真好', '2018-09-05 06:58:36'),
(57, 'dairui', '121212', '29927@qq.com', '12121212121212', '2018-09-05 10:46:37'),
(58, 'dairui', '121212', '29927@qq.com', '12121212121212', '2018-09-05 10:46:39'),
(59, '29456', '1212', '299@qq.com', '12121', '2018-09-09 05:03:30');

-- --------------------------------------------------------

--
-- 表的结构 `notice`
--

CREATE TABLE `notice` (
  `notice_id` int(11) NOT NULL,
  `notice_title` varchar(255) DEFAULT NULL,
  `notice_content` longtext,
  `createtime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `productinfo`
--

CREATE TABLE `productinfo` (
  `productinfo_id` int(20) NOT NULL,
  `productinfo_name` varchar(20) NOT NULL,
  `productinfo_desc` longtext,
  `img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `productinfo`
--

INSERT INTO `productinfo` (`productinfo_id`, `productinfo_name`, `productinfo_desc`, `img`) VALUES
(1, '项目A', '在冷戰的史普托尼克（蘇聯的第一顆人造衛星）危機之前，項目管理還沒有用做一個獨立的概念。在危機之後,美國國防部需要加速軍事項目的進展以及發明完成這個目標的新的工具（模型）。 在1958年，美國發明瞭計劃評估和審查技術（PERT），作為的北極星導彈潛艇項目。與此同時，杜邦公司發明瞭一個類似的模型稱為關鍵路徑方法（CPM）。PERT後來被工作分解結構（WBS）所擴展。軍事任務的這種過程流和結構很快傳播到許多私人企業中。\n\n　　隨著時間的推移,更多的指導方法被髮明出來，這些方法可以用於形式上精確地說明項目是如何被管理的。這些方法包括項目管理知識體系（PMBOK），個體軟體過程（PSP），團隊軟體過程（TSP），IBM全球項目管理方法(WWPMM)，PRINCE2。這些技術試圖把開發小組的活動標準化，使其更容易地預測，管理和跟蹤。\n\n　　關鍵鏈是傳統的關鍵路徑方法的最新擴充。\n\n　　項目管理的的批判性研究發現: 許多基於PERT的模型不適合今天的多項目的公司環境。這些模型大多數適合於大規模、一次性、非常規的項目中。而當代管理中所有的活動都用項目術語表達。所以，為那些持續幾個星期的“項目”（更不如說是任務）使用複雜的模型在許多情形下會導致不必要的代價和低可操作性。因此，項目識別不同的輕量級的模型，比如軟體開發的極限編程和Scrum技術。為其他類型項目而進行的極限編程方法的一般化被稱為極限項目管理 。項目一詞最早於上個世紀50年代在漢語中出現，是指在一定的約束條件下（主要是限定時間、限定資源），具有明確目標的一次性任務', '/company//img/bg1.jpg'),
(2, '项目B', '在冷戰的史普托尼克（蘇聯的第一顆人造衛星）危機之前，項目管理還沒有用做一個獨立的概念。在危機之後,美國國防部需要加速軍事項目的進展以及發明完成這個目標的新的工具（模型）。 在1958年，美國發明瞭計劃評估和審查技術（PERT），作為的北極星導彈潛艇項目。與此同時，杜邦公司發明瞭一個類似的模型稱為關鍵路徑方法（CPM）。PERT後來被工作分解結構（WBS）所擴展。軍事任務的這種過程流和結構很快傳播到許多私人企業中。\n\n　　隨著時間的推移,更多的指導方法被髮明出來，這些方法可以用於形式上精確地說明項目是如何被管理的。這些方法包括項目管理知識體系（PMBOK），個體軟體過程（PSP），團隊軟體過程（TSP），IBM全球項目管理方法(WWPMM)，PRINCE2。這些技術試圖把開發小組的活動標準化，使其更容易地預測，管理和跟蹤。\n\n　　關鍵鏈是傳統的關鍵路徑方法的最新擴充。\n\n　　項目管理的的批判性研究發現: 許多基於PERT的模型不適合今天的多項目的公司環境。這些模型大多數適合於大規模、一次性、非常規的項目中。而當代管理中所有的活動都用項目術語表達。所以，為那些持續幾個星期的“項目”（更不如說是任務）使用複雜的模型在許多情形下會導致不必要的代價和低可操作性。因此，項目識別不同的輕量級的模型，比如軟體開發的極限編程和Scrum技術。為其他類型項目而進行的極限編程方法的一般化被稱為極限項目管理 。項目是一件事情、一項獨一無二的任務，也可以理解為是在一定的時間和一定的預算內所要達到的預期目的。項目側重於過程，它是一個動態的概念', '/company//img/bg1.jpg'),
(3, '項目C', '在冷戰的史普托尼克（蘇聯的第一顆人造衛星）危機之前，項目管理還沒有用做一個獨立的概念。在危機之後,美國國防部需要加速軍事項目的進展以及發明完成這個目標的新的工具（模型）。 在1958年，美國發明瞭計劃評估和審查技術（PERT），作為的北極星導彈潛艇項目。與此同時，杜邦公司發明瞭一個類似的模型稱為關鍵路徑方法（CPM）。PERT後來被工作分解結構（WBS）所擴展。軍事任務的這種過程流和結構很快傳播到許多私人企業中。\n\n　　隨著時間的推移,更多的指導方法被髮明出來，這些方法可以用於形式上精確地說明項目是如何被管理的。這些方法包括項目管理知識體系（PMBOK），個體軟體過程（PSP），團隊軟體過程（TSP），IBM全球項目管理方法(WWPMM)，PRINCE2。這些技術試圖把開發小組的活動標準化，使其更容易地預測，管理和跟蹤。\n\n　　關鍵鏈是傳統的關鍵路徑方法的最新擴充。\n\n　　項目管理的的批判性研究發現: 許多基於PERT的模型不適合今天的多項目的公司環境。這些模型大多數適合於大規模、一次性、非常規的項目中。而當代管理中所有的活動都用項目術語表達。所以，為那些持續幾個星期的“項目”（更不如說是任務）使用複雜的模型在許多情形下會導致不必要的代價和低可操作性。因此，項目識別不同的輕量級的模型，比如軟體開發的極限編程和Scrum技術。為其他類型項目而進行的極限編程方法的一般化被稱為極限項目管理 。進行工廠的現代化改造；主持一次會議等等這些在我們日常生活中經常可以遇到的一些事情都可以稱為項目。', '/company//img/bg1.jpg'),
(4, '項目D', '在冷戰的史普托尼克（蘇聯的第一顆人造衛星）危機之前，項目管理還沒有用做一個獨立的概念。在危機之後,美國國防部需要加速軍事項目的進展以及發明完成這個目標的新的工具（模型）。 在1958年，美國發明瞭計劃評估和審查技術（PERT），作為的北極星導彈潛艇項目。與此同時，杜邦公司發明瞭一個類似的模型稱為關鍵路徑方法（CPM）。PERT後來被工作分解結構（WBS）所擴展。軍事任務的這種過程流和結構很快傳播到許多私人企業中。\n\n　　隨著時間的推移,更多的指導方法被髮明出來，這些方法可以用於形式上精確地說明項目是如何被管理的。這些方法包括項目管理知識體系（PMBOK），個體軟體過程（PSP），團隊軟體過程（TSP），IBM全球項目管理方法(WWPMM)，PRINCE2。這些技術試圖把開發小組的活動標準化，使其更容易地預測，管理和跟蹤。\n\n　　關鍵鏈是傳統的關鍵路徑方法的最新擴充。\n\n　　項目管理的的批判性研究發現: 許多基於PERT的模型不適合今天的多項目的公司環境。這些模型大多數適合於大規模、一次性、非常規的項目中。而當代管理中所有的活動都用項目術語表達。所以，為那些持續幾個星期的“項目”（更不如說是任務）使用複雜的模型在許多情形下會導致不必要的代價和低可操作性。因此，項目識別不同的輕量級的模型，比如軟體開發的極限編程和Scrum技術。為其他類型項目而進行的極限編程方法的一般化被稱為極限項目管理 。如果說項目沒有其特殊性，項目管理也就失去了存在的意義。再來看看項目管理有哪些特殊性，其與日常管理有哪些區別。', '/company//img/bg1.jpg'),
(5, '項目E', '在冷戰的史普托尼克（蘇聯的第一顆人造衛星）危機之前，項目管理還沒有用做一個獨立的概念。在危機之後,美國國防部需要加速軍事項目的進展以及發明完成這個目標的新的工具（模型）。 在1958年，美國發明瞭計劃評估和審查技術（PERT），作為的北極星導彈潛艇項目。與此同時，杜邦公司發明瞭一個類似的模型稱為關鍵路徑方法（CPM）。PERT後來被工作分解結構（WBS）所擴展。軍事任務的這種過程流和結構很快傳播到許多私人企業中。\n\n　　隨著時間的推移,更多的指導方法被髮明出來，這些方法可以用於形式上精確地說明項目是如何被管理的。這些方法包括項目管理知識體系（PMBOK），個體軟體過程（PSP），團隊軟體過程（TSP），IBM全球項目管理方法(WWPMM)，PRINCE2。這些技術試圖把開發小組的活動標準化，使其更容易地預測，管理和跟蹤。\n\n　　關鍵鏈是傳統的關鍵路徑方法的最新擴充。\n\n　　項目管理的的批判性研究發現: 許多基於PERT的模型不適合今天的多項目的公司環境。這些模型大多數適合於大規模、一次性、非常規的項目中。而當代管理中所有的活動都用項目術語表達。所以，為那些持續幾個星期的“項目”（更不如說是任務）使用複雜的模型在許多情形下會導致不必要的代價和低可操作性。因此，項目識別不同的輕量級的模型，比如軟體開發的極限編程和Scrum技術。為其他類型項目而進行的極限編程方法的一般化被稱為極限項目管理 。項目與日常運作（Ongoing　Operations）有著本質的區別。項目是一項獨一無二的任務，而日常運作是連續不斷、周而複始的重覆活動，如食品廠每天製作蛋糕、郵遞員每天送報紙等活動都是反覆進行的日常運作。', '/company//img/bg1.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `user_id` int(20) NOT NULL,
  `user_name` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `state` int(2) NOT NULL DEFAULT '0',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `password`, `state`, `create_time`) VALUES
(1, 'dairy', '123', 1, '2018-09-04 08:51:56'),
(16, 'dairy1', '123', 1, '2018-09-05 09:19:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`article_id`);

--
-- Indexes for table `companyinfo`
--
ALTER TABLE `companyinfo`
  ADD PRIMARY KEY (`companyinfo_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`notice_id`);

--
-- Indexes for table `productinfo`
--
ALTER TABLE `productinfo`
  ADD PRIMARY KEY (`productinfo_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `article`
--
ALTER TABLE `article`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- 使用表AUTO_INCREMENT `companyinfo`
--
ALTER TABLE `companyinfo`
  MODIFY `companyinfo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- 使用表AUTO_INCREMENT `notice`
--
ALTER TABLE `notice`
  MODIFY `notice_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `productinfo`
--
ALTER TABLE `productinfo`
  MODIFY `productinfo_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 
-- 伺服器版本： 10.4.11-MariaDB
-- PHP 版本： 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `afterclass_db`
--

-- --------------------------------------------------------

--
-- 資料表結構 `學生`
--

CREATE TABLE `學生` (
  `學號` varchar(8) NOT NULL,
  `姓名` varchar(10) DEFAULT NULL,
  `系所` varchar(30) DEFAULT NULL,
  `年級` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `學生`
--

INSERT INTO `學生` (`學號`, `姓名`, `系所`, `年級`) VALUES
('D0708068', '黃子騰', '資訊工程學系', 2),
('D0746460', '張允庭', '資訊工程學系', 2),
('D0783030', '黃寶慧', '資訊工程學系', 2);

-- --------------------------------------------------------

--
-- 資料表結構 `活動`
--

CREATE TABLE `活動` (
  `活動代碼` varchar(15) NOT NULL,
  `活動名稱` varchar(15) NOT NULL,
  `活動時間` date DEFAULT NULL,
  `活動地點` varchar(10) DEFAULT NULL,
  `費用` int(11) DEFAULT NULL,
  `主辦社團代碼` varchar(3) DEFAULT NULL,
  `工作人員人數` int(11) DEFAULT NULL,
  `參加人員人數` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `活動_參加人員`
--

CREATE TABLE `活動_參加人員` (
  `活動代碼` varchar(15) NOT NULL,
  `學號` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `活動_工作人員`
--

CREATE TABLE `活動_工作人員` (
  `活動代碼` varchar(15) NOT NULL,
  `學號` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `社員`
--

CREATE TABLE `社員` (
  `學號` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `社員_社團`
--

CREATE TABLE `社員_社團` (
  `學號` varchar(8) NOT NULL,
  `社團代碼` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `社團`
--

CREATE TABLE `社團` (
  `代碼` varchar(3) NOT NULL,
  `名稱` varchar(20) NOT NULL,
  `性質` varchar(5) DEFAULT NULL,
  `社辦地點` varchar(10) DEFAULT NULL,
  `屆數` int(11) DEFAULT NULL,
  `指導老師` varchar(10) DEFAULT NULL,
  `社幹人數` int(11) DEFAULT NULL,
  `社員人數` int(11) DEFAULT NULL,
  `社費` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `社團`
--

INSERT INTO `社團` (`代碼`, `名稱`, `性質`, `社辦地點`, `屆數`, `指導老師`, `社幹人數`, `社員人數`, `社費`) VALUES
('A05', '普覺佛學社', '學藝性社團', NULL, NULL, NULL, NULL, NULL, NULL),
('A07', '日本文化研究社', '學藝性社團', NULL, NULL, NULL, NULL, NULL, NULL),
('A08', '逢甲學生團契', '學藝性社團', NULL, NULL, NULL, NULL, NULL, NULL),
('A09', '書法研究社', '學藝性社團', NULL, NULL, NULL, NULL, NULL, NULL),
('A11', '健言社', '學藝性社團', NULL, NULL, NULL, NULL, NULL, NULL),
('A12', '攝影社', '學藝性社團', NULL, NULL, NULL, NULL, NULL, NULL),
('A16', '航空模型研究社', '學藝性社團', NULL, NULL, NULL, NULL, NULL, NULL),
('A18', '中國醫學研究社', '學藝性社團', NULL, NULL, NULL, NULL, NULL, NULL),
('A19', '聖經真理研究社', '學藝性社團', NULL, NULL, NULL, NULL, NULL, NULL),
('A21', '花藝研習社', '學藝性社團', NULL, NULL, NULL, NULL, NULL, NULL),
('A24', '天文社', '學藝性社團', NULL, NULL, NULL, NULL, NULL, NULL),
('A25', '創意拼布社', '學藝性社團', NULL, NULL, NULL, NULL, NULL, NULL),
('A27', '動漫暨漫畫研習社', '學藝性社團', NULL, NULL, NULL, NULL, NULL, NULL),
('A33', '茶藝社', '學藝性社團', NULL, NULL, NULL, NULL, NULL, NULL),
('A37', '愛護水資源社', '學藝性社團', NULL, NULL, NULL, NULL, NULL, NULL),
('A38', '機動車輛研究社', '學藝性社團', NULL, NULL, NULL, NULL, NULL, NULL),
('A45', '國際經濟商管學會', '學藝性社團', NULL, NULL, NULL, NULL, NULL, NULL),
('A46', '青年領袖研習社', '學藝性社團', NULL, NULL, NULL, NULL, NULL, NULL),
('A49', '創業社', '學藝性社團', NULL, NULL, NULL, NULL, NULL, NULL),
('A51', '福智青年社', '學藝性社團', NULL, NULL, NULL, NULL, NULL, NULL),
('A52', '財富管理社', '學藝性社團', NULL, NULL, NULL, NULL, NULL, NULL),
('A56', '逢甲禪悅社', '學藝性社團', NULL, NULL, NULL, NULL, NULL, NULL),
('A59', '桌上遊戲研習社', '學藝性社團', NULL, NULL, NULL, NULL, NULL, NULL),
('A66', '黑客社', '學藝性社團', NULL, NULL, NULL, NULL, NULL, NULL),
('A68', '象棋社', '學藝性社團', NULL, NULL, NULL, NULL, NULL, NULL),
('A69', '圍棋社', '學藝性社團', NULL, NULL, NULL, NULL, NULL, NULL),
('A70', '公式紙牌社', '學藝性社團', NULL, NULL, NULL, NULL, NULL, NULL),
('A72', '咖啡研究社', '學藝性社團', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `社幹`
--

CREATE TABLE `社幹` (
  `學號` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `社幹_社團`
--

CREATE TABLE `社幹_社團` (
  `學號` varchar(8) NOT NULL,
  `社團代碼` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `社長`
--

CREATE TABLE `社長` (
  `學號` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `社長_社團`
--

CREATE TABLE `社長_社團` (
  `學號` varchar(8) NOT NULL,
  `社團代碼` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `學生`
--
ALTER TABLE `學生`
  ADD PRIMARY KEY (`學號`);

--
-- 資料表索引 `活動`
--
ALTER TABLE `活動`
  ADD PRIMARY KEY (`活動代碼`),
  ADD KEY `主辦社團代碼` (`主辦社團代碼`);

--
-- 資料表索引 `活動_參加人員`
--
ALTER TABLE `活動_參加人員`
  ADD PRIMARY KEY (`活動代碼`,`學號`),
  ADD KEY `學號` (`學號`);

--
-- 資料表索引 `活動_工作人員`
--
ALTER TABLE `活動_工作人員`
  ADD PRIMARY KEY (`活動代碼`,`學號`),
  ADD KEY `學號` (`學號`);

--
-- 資料表索引 `社員`
--
ALTER TABLE `社員`
  ADD PRIMARY KEY (`學號`);

--
-- 資料表索引 `社員_社團`
--
ALTER TABLE `社員_社團`
  ADD PRIMARY KEY (`學號`,`社團代碼`),
  ADD KEY `社團代碼` (`社團代碼`);

--
-- 資料表索引 `社團`
--
ALTER TABLE `社團`
  ADD PRIMARY KEY (`代碼`);

--
-- 資料表索引 `社幹`
--
ALTER TABLE `社幹`
  ADD PRIMARY KEY (`學號`);

--
-- 資料表索引 `社幹_社團`
--
ALTER TABLE `社幹_社團`
  ADD PRIMARY KEY (`學號`,`社團代碼`),
  ADD KEY `社團代碼` (`社團代碼`);

--
-- 資料表索引 `社長`
--
ALTER TABLE `社長`
  ADD PRIMARY KEY (`學號`);

--
-- 資料表索引 `社長_社團`
--
ALTER TABLE `社長_社團`
  ADD PRIMARY KEY (`學號`,`社團代碼`),
  ADD KEY `社團代碼` (`社團代碼`);

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `活動`
--
ALTER TABLE `活動`
  ADD CONSTRAINT `活動_ibfk_1` FOREIGN KEY (`主辦社團代碼`) REFERENCES `社團` (`代碼`);

--
-- 資料表的限制式 `活動_參加人員`
--
ALTER TABLE `活動_參加人員`
  ADD CONSTRAINT `活動_參加人員_ibfk_1` FOREIGN KEY (`活動代碼`) REFERENCES `活動` (`活動代碼`),
  ADD CONSTRAINT `活動_參加人員_ibfk_2` FOREIGN KEY (`學號`) REFERENCES `學生` (`學號`);

--
-- 資料表的限制式 `活動_工作人員`
--
ALTER TABLE `活動_工作人員`
  ADD CONSTRAINT `活動_工作人員_ibfk_1` FOREIGN KEY (`活動代碼`) REFERENCES `活動` (`活動代碼`),
  ADD CONSTRAINT `活動_工作人員_ibfk_2` FOREIGN KEY (`學號`) REFERENCES `學生` (`學號`);

--
-- 資料表的限制式 `社員`
--
ALTER TABLE `社員`
  ADD CONSTRAINT `社員_ibfk_1` FOREIGN KEY (`學號`) REFERENCES `學生` (`學號`);

--
-- 資料表的限制式 `社員_社團`
--
ALTER TABLE `社員_社團`
  ADD CONSTRAINT `社員_社團_ibfk_1` FOREIGN KEY (`學號`) REFERENCES `社員` (`學號`),
  ADD CONSTRAINT `社員_社團_ibfk_2` FOREIGN KEY (`社團代碼`) REFERENCES `社團` (`代碼`);

--
-- 資料表的限制式 `社幹`
--
ALTER TABLE `社幹`
  ADD CONSTRAINT `社幹_ibfk_1` FOREIGN KEY (`學號`) REFERENCES `學生` (`學號`);

--
-- 資料表的限制式 `社幹_社團`
--
ALTER TABLE `社幹_社團`
  ADD CONSTRAINT `社幹_社團_ibfk_1` FOREIGN KEY (`學號`) REFERENCES `社幹` (`學號`),
  ADD CONSTRAINT `社幹_社團_ibfk_2` FOREIGN KEY (`社團代碼`) REFERENCES `社團` (`代碼`);

--
-- 資料表的限制式 `社長`
--
ALTER TABLE `社長`
  ADD CONSTRAINT `社長_ibfk_1` FOREIGN KEY (`學號`) REFERENCES `學生` (`學號`);

--
-- 資料表的限制式 `社長_社團`
--
ALTER TABLE `社長_社團`
  ADD CONSTRAINT `社長_社團_ibfk_1` FOREIGN KEY (`學號`) REFERENCES `社長` (`學號`),
  ADD CONSTRAINT `社長_社團_ibfk_2` FOREIGN KEY (`社團代碼`) REFERENCES `社團` (`代碼`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

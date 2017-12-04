-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2017-08-14 11:23:31
-- 服务器版本： 10.0.17-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zealers`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `pwd` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `admin`
--

INSERT INTO `admin` (`id`, `username`, `pwd`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- 表的结构 `admin2`
--

CREATE TABLE `admin2` (
  `id` int(11) NOT NULL COMMENT '主键id',
  `username` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户名',
  `pwd` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '密码'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='这个管理员是管理配件的';

--
-- 转存表中的数据 `admin2`
--

INSERT INTO `admin2` (`id`, `username`, `pwd`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- 表的结构 `admin4`
--

CREATE TABLE `admin4` (
  `id` int(11) NOT NULL COMMENT '组件id',
  `username` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '名字',
  `pwd` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '密码'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `admin4`
--

INSERT INTO `admin4` (`id`, `username`, `pwd`) VALUES
(1, 'xiao', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- 表的结构 `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `version` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `volumn` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `network` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `sImage` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `bImage` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `quality` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `cart`
--

INSERT INTO `cart` (`id`, `version`, `color`, `volumn`, `network`, `sImage`, `bImage`, `price`, `quality`, `uid`) VALUES
(11, NULL, '黑色', NULL, NULL, 'uploadsPeijian/2017-08-13/m2Pm9iiQZb.jpg', 'uploadsPeijian/2017-08-13/jT042HqISr.jpg', 49, NULL, 9),
(18, NULL, '橙色', NULL, NULL, 'uploadsPeijian/2017-08-13/s0UwYdW4H8.jpg', 'uploadsPeijian/2017-08-13/lYIBijyROu.jpg', 29, NULL, 12),
(41, 'iPhone 7 Plus', '亮黑色', '128GB', '国行全网通', 'uploads/2017-08-09/D76cvECByW.jpg', 'uploads/2017-08-09/ePG353zwup.jpg', 5400, 'A级·99新', 7),
(46, 'iPhone 6s Plus', '银色', '128GB', '国行全网通', 'uploads/2017-08-09/Kq5a3iNq3Q.jpg', 'uploads/2017-08-09/HoNFaxhBhm.jpg', 5400, 'A级·99新', 9),
(47, 'iPhone 6s', '黑色', '128GB', '国行全网通', 'uploads/2017-08-09/hXvgiTeEhw.jpg', 'uploads/2017-08-09/0WPNrNuAua.jpg', 5400, 'A级·99新', 12),
(48, 'iPhone 7 ', '亮黑色', '128GB', '国行全网通', 'uploads/2017-08-09/X2K3kpXGf9.jpg', 'uploads/2017-08-09/9C3nUU6J23.jpg', 5400, 'A级·99新', 9),
(51, 'iPhone 7 Plus', '黑色', '128GB', '国行全网通', 'uploads/2017-08-09/wNXjmf1Vt4.jpg', 'uploads/2017-08-09/hzdJeJjVke.jpg', 0, 'A级·99新', 9);

-- --------------------------------------------------------

--
-- 表的结构 `ershou`
--

CREATE TABLE `ershou` (
  `id` int(11) NOT NULL,
  `version` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `quality` varchar(255) CHARACTER SET utf8 COLLATE utf8_estonian_ci DEFAULT NULL,
  `network` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `bImage` varchar(255) DEFAULT NULL,
  `sImage` varchar(255) DEFAULT NULL,
  `volumn` varchar(255) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL COMMENT '子级，用来连接父级的id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ershou`
--

INSERT INTO `ershou` (`id`, `version`, `color`, `quality`, `network`, `price`, `bImage`, `sImage`, `volumn`, `pid`) VALUES
(1, 'iPhone 7 Plus', '银色', 'A级·99新', '国行全网通', 5400, 'uploads/2017-08-09/6QLsxydU2B.jpg', 'uploads/2017-08-09/HXcUCZJFRh.jpg', '128GB', 1),
(40, 'iPhone 7 Plus', '金色', 'A级·99新', '国行全网通', 5400, 'uploads/2017-08-09/KZXYotfiLV.jpg', 'uploads/2017-08-09/AxgOibJwo2.jpg', '128GB', 1),
(41, 'iPhone 7 Plus', '亮黑色', 'A级·99新', '国行全网通', 5400, 'uploads/2017-08-09/ePG353zwup.jpg', 'uploads/2017-08-09/D76cvECByW.jpg', '128GB', 1),
(42, 'iPhone 7 Plus', '黑色', 'A级·99新', '国行全网通', 5400, 'uploads/2017-08-09/eTLODuC7vi.jpg', 'uploads/2017-08-09/SMNKOhOIa3.jpg', '128GB', 1),
(43, 'iPhone 7', '金色', 'A级·99新', '国行全网通', 5400, 'uploads/2017-08-09/tXRWkoEHC5.jpg', 'uploads/2017-08-09/v2hKv57YkD.jpg', '128GB', 1),
(44, 'iPhone 7', '亮黑色', 'A级·99新', '国行全网通', 5400, 'uploads/2017-08-09/DsYpvKUQG3.jpg', 'uploads/2017-08-09/inBTNKvdPb.jpg', '128GB', 1),
(45, 'iPhone 6 Plus', '金色', 'A级·99新', '国行全网通', 5400, 'uploads/2017-08-09/wm2Up7awE7.jpg', 'uploads/2017-08-09/XHcxleyLlk.jpg', '128GB', 1),
(46, 'iPhone 6s Plus', '银色', 'A级·99新', '国行全网通', 5400, 'uploads/2017-08-09/HoNFaxhBhm.jpg', 'uploads/2017-08-09/Kq5a3iNq3Q.jpg', '128GB', 1),
(47, 'iPhone 6s', '黑色', 'A级·99新', '国行全网通', 5400, 'uploads/2017-08-09/0WPNrNuAua.jpg', 'uploads/2017-08-09/hXvgiTeEhw.jpg', '128GB', 1),
(48, 'iPhone 7 ', '亮黑色', 'A级·99新', '国行全网通', 5400, 'uploads/2017-08-09/9C3nUU6J23.jpg', 'uploads/2017-08-09/X2K3kpXGf9.jpg', '128GB', 1),
(49, 'iPhone 6s', '银色', 'A级·99新', '国行全网通', 5400, 'uploads/2017-08-09/oBInF63ZHU.jpg', 'uploads/2017-08-09/r6unAGIiL2.jpg', '128GB', 1),
(51, 'iPhone 7 Plus', '黑色', 'A级·99新', '国行全网通', 0, 'uploads/2017-08-09/hzdJeJjVke.jpg', 'uploads/2017-08-09/wNXjmf1Vt4.jpg', '128GB', 1),
(52, 'iPhone 7 Plus', '黑色', 'A级：99新', '国行全网通', 5400, 'uploads/2017-08-09/jcW5ZQXHU4.jpg', 'uploads/2017-08-09/NVp9EeJSSi.jpg', '128GB', 1),
(53, 'iPhone 7 Plus', '金色', 'A级：99新', '国行全网通', 5400, 'uploads/2017-08-09/D0fkrhDis6.jpg', 'uploads/2017-08-09/bwxlmwIKcv.jpg', '128GB', 1),
(54, 'iPhone 7 Plus', '玫瑰金色', 'A级：99新', '国行全网通', 5400, 'uploads/2017-08-09/J3qWPw33JT.jpg', 'uploads/2017-08-09/w2kRlPTkJl.jpg', '128GB', 1),
(55, 'iPhone 7 Plus', '玫瑰金色', 'A级：99新', '国行全网通', 5400, 'uploads/2017-08-09/WOqnZlZlHu.jpg', 'uploads/2017-08-09/YYE5Yskmir.jpg', '128GB', 1),
(56, 'iPhone 7 Plus', '玫瑰金色', 'A级：99新', '国行全网通', 5400, 'uploads/2017-08-09/runCKOLadq.jpg', 'uploads/2017-08-09/Vs6cfZHZMN.jpg', '128GB', 1),
(57, 'iPhone 7 Plus', '玫瑰金色', 'A级：99新', '国行全网通', 5400, 'uploads/2017-08-09/8KroCsgU3m.jpg', 'uploads/2017-08-09/XPaKFKlevT.jpg', '128GB', 1),
(58, 'iPhone 7 Plus', '玫瑰金色', 'A级：99新', '国行全网通', 5400, 'uploads/2017-08-09/Ceu0V5N4Ei.jpg', 'uploads/2017-08-09/xtEYfJAi0g.jpg', '128GB', 1),
(59, 'iPhone 7 Plus', '玫瑰金色', 'A级：99新', '国行全网通', 5400, 'uploads/2017-08-09/e1D0wqblS5.jpg', 'uploads/2017-08-09/mPnZwXWNjf.jpg', '128GB', 1),
(60, 'iPhone 7 Plus', '玫瑰金色', 'A级：99新', '国行全网通', 5400, 'uploads/2017-08-09/4I47RpiWCq.jpg', 'uploads/2017-08-09/j193NmuPuU.jpg', '128GB', 1),
(61, 'iPhone 7 Plus', '玫瑰金色', 'A级：99新', '国行全网通', 5400, 'uploads/2017-08-09/uen9rzecgr.jpg', 'uploads/2017-08-09/IjcTK7jike.jpg', '128GB', 1),
(63, 'iPhone 7 Plus', '黑色', 'A级：99新', '国行全网通', 5400, 'uploads/2017-08-09/TsxmzXOkhA.jpg', 'uploads/2017-08-09/OWlWVxGMLj.jpg', '128GB', 1),
(64, 'iPhone 7 Plus', '玫瑰金色', 'A级：99新', '国行全网通', 5400, 'uploads/2017-08-09/4LYhVEV6N7.jpg', 'uploads/2017-08-09/TI0kSifbiL.jpg', '128GB', 1),
(65, 'iPhone 7 Plus', '玫瑰金色', 'A级：99新', '国行全网通', 5400, 'uploads/2017-08-09/TFYZWaOv6f.jpg', 'uploads/2017-08-09/VxSJnkhAZZ.jpg', '128GB', 1),
(66, 'iPhone 7 Plus', '玫瑰金色', 'A级·99新', '国行全网通', 5400, 'uploads/2017-08-09/yNUhsOs9ay.jpg', 'uploads/2017-08-09/eebA8HvXHK.jpg', '128GB', 1),
(67, 'iPhone 7 Plus', '玫瑰金色', 'A级·99新', '国行全网通', 5400, 'uploads/2017-08-09/tpYFxeMo4S.jpg', 'uploads/2017-08-09/KGqrt3VjtQ.jpg', '128GB', 1),
(68, 'iPhone 7 Plus', '玫瑰金色', 'A级·99新', '国行全网通', 5400, 'uploads/2017-08-09/dJDQbg6Rge.jpg', 'uploads/2017-08-09/xCdGqJJpth.jpg', '128GB', 1),
(69, 'iPhone 7 Plus', '玫瑰金色', 'A级·99新', '国行全网通', 5400, 'uploads/2017-08-09/TN5pTJsxuE.jpg', 'uploads/2017-08-09/2puCyqaTJW.jpg', '128GB', 1),
(70, 'iPhone 7 Plus', '玫瑰金色', 'A级·99新', '国行全网通', 5400, 'uploads/2017-08-09/I3UilmMiYO.jpg', 'uploads/2017-08-09/hDUEow8sKV.jpg', '128GB', 1),
(71, 'iPhone 7 Plus', '玫瑰金色', 'A级·99新', '国行全网通', 5400, 'uploads/2017-08-09/AWr6dyNTfd.jpg', 'uploads/2017-08-09/acAjDnRSPg.jpg', '128GB', 1),
(72, 'iPhone 7 Plus', '玫瑰金色', 'A级·99新', '国行全网通', 5400, 'uploads/2017-08-09/Z8k8edG8Ac.jpg', 'uploads/2017-08-09/mt6M2tEr5R.jpg', '128GB', 1),
(73, 'iPhone 7 Plus', '玫瑰金色', 'A级·99新', '国行全网通', 5400, 'uploads/2017-08-09/MgGdET9cRu.jpg', 'uploads/2017-08-09/W27M3yHaiV.jpg', '128GB', 1),
(74, 'iPhone 7 Plus', '玫瑰金色', 'A级·99新', '国行全网通', 5400, 'uploads/2017-08-09/1amnVRxUDG.jpg', 'uploads/2017-08-09/SD8gofjvW8.jpg', '128GB', 1),
(75, 'iPhone 7 Plus', '玫瑰金色', 'A级·99新', '国行全网通', 5400, 'uploads/2017-08-09/ClQ5n5dAsg.jpg', 'uploads/2017-08-09/jw4bFzHCzg.jpg', '128GB', 1),
(76, 'iPhone 7 Plus', '玫瑰金色', 'A级·99新', '国行全网通', 5400, 'uploads/2017-08-09/FiKG3wn6WF.jpg', 'uploads/2017-08-09/P3vv3LTrD6.jpg', '128GB', 1),
(77, 'iPhone 7 Plus', '玫瑰金色', 'A级·99新', '国行全网通', 0, 'uploads/2017-08-09/pOUHelpexK.jpg', 'uploads/2017-08-09/Hu7WhfSNy0.jpg', '128GB', 1),
(78, 'iPhone 7 Plus', '玫瑰金色', 'A级：99新', '国行全网通', 5400, 'uploads/2017-08-09/sFcPH1r996.jpg', 'uploads/2017-08-09/XM7hPjz6Im.jpg', '128GB', 1),
(79, 'iPhone 7 Plus', '玫瑰金色', 'A级：99新', '国行全网通', 5400, 'uploads/2017-08-09/oapueZF3xi.jpg', 'uploads/2017-08-09/PN6kwdLz07.jpg', '128GB', 1),
(80, 'iPhone 7 Plus', '玫瑰金色', 'A级：99新', '国行全网通', 5400, 'uploads/2017-08-09/ZBzDfVzExx.jpg', 'uploads/2017-08-09/MeKiSWshJT.jpg', '128GB', 1),
(81, 'iPhone 7 Plus', '玫瑰金色', 'A级：99新', '国行全网通', 5400, 'uploads/2017-08-09/KBqql4jOVc.jpg', 'uploads/2017-08-09/x543j1J1KL.jpg', '128GB', 1),
(82, 'iPhone 7 Plus', '玫瑰金色', 'A级：99新', '国行全网通', 5400, 'uploads/2017-08-09/lPvvRZ0g8h.jpg', 'uploads/2017-08-09/s6FDWHP1Tw.jpg', '128GB', 1),
(83, 'iPhone 7 Plus', '玫瑰金色', 'A级：99新', '国行全网通', 5400, 'uploads/2017-08-09/VEnvzwQa0h.jpg', 'uploads/2017-08-09/Kc2Nsn2OlY.jpg', '128GB', 1),
(84, 'iPhone 7 Plus', '玫瑰金色', 'A级：99新', '国行全网通', 5400, 'uploads/2017-08-09/dZTsT2Pa3C.jpg', 'uploads/2017-08-09/2hFznkQmiG.jpg', '128GB', 1),
(85, 'iPhone 7 Plus', '玫瑰金色', 'A级：99新', '国行全网通', 5400, 'uploads/2017-08-09/Y2urLBJb6F.jpg', 'uploads/2017-08-09/ycKFaAuapG.jpg', '128GB', 1),
(86, 'iPhone 7 Plus', '玫瑰金色', 'A级：99新', '国行全网通', 5400, 'uploads/2017-08-09/LTDw9nSrX5.jpg', 'uploads/2017-08-09/gKYENyQ8ed.jpg', '128GB', 1),
(87, 'iPhone 7 Plus', '玫瑰金色', 'A级：99新', '国行全网通', 5400, 'uploads/2017-08-09/lhvleIyng9.jpg', 'uploads/2017-08-09/NHev1WZMLo.jpg', '128GB', 1),
(88, 'iPhone 7 Plus', '玫瑰金色', 'A级：99新', '国行全网通', 5400, 'uploads/2017-08-09/nUE2HRmyaf.jpg', 'uploads/2017-08-09/PuzDErge6v.jpg', '128GB', 1),
(89, 'iPhone 7 Plus', '玫瑰金色', 'A级：99新', '国行全网通', 5400, 'uploads/2017-08-09/84QT3yNs8L.jpg', 'uploads/2017-08-09/zRJec56tRg.jpg', '128GB', 1),
(90, 'iPhone 7 Plus', '玫瑰金色', 'A级：99新', '国行全网通', 5400, 'uploads/2017-08-09/84QT3yNs8L.jpg', 'uploads/2017-08-09/jH8yZwTPA9.jpg', '128GB', 1),
(91, 'iPhone 7 Plus', '玫瑰金色', 'A级：99新', '国行全网通', 5400, 'uploads/2017-08-09/wt7GijgUUh.jpg', 'uploads/2017-08-09/1pzkHS9zjl.jpg', '128GB', 1),
(92, 'iPhone 7 Plus', '玫瑰金色', 'A级：99新', '国行全网通', 5400, 'uploads/2017-08-09/buN3xHzmBA.jpg', 'uploads/2017-08-09/ttthj7XWX0.jpg', '128GB', 1),
(93, 'iPhone 7 Plus', '玫瑰金色', 'A级：99新', '国行全网通', 5400, 'uploads/2017-08-09/TLwlSBG7gw.jpg', 'uploads/2017-08-09/3Y86GE7tZy.jpg', '128GB', 1),
(97, 'iPhone 6s Plus', '银色', 'A级·95新', '其他版本', 3500, 'uploads/2017-08-13/Ow5AYNVPdM.jpg', 'uploads/2017-08-13/D9qP9XkiKC.jpg', '64GB', 1),
(98, 'iPhone 6s Plus', '银色', 'A级·95新', '其他版本', 3500, 'uploads/2017-08-13/4fsydPDL0e.jpg', 'uploads/2017-08-13/MIkOkMThQN.jpg', '64GB', 1),
(99, 'iPhone 6s Plus', '银色', 'A级·95新', '其他版本', 3500, 'uploads/2017-08-13/GogPv9mWQR.jpg', 'uploads/2017-08-13/vm0Qu069Pv.jpg', '64GB', 1),
(108, 'iPhone 7', '黑色', 'A级·99新', '国行全网通', 5400, 'uploads/2017-08-14/7SusvCHhSz.jpg', 'uploads/2017-08-14/04QTSvPnFt.jpg', '128GB', 1);

-- --------------------------------------------------------

--
-- 表的结构 `peijian`
--

CREATE TABLE `peijian` (
  `id` int(11) NOT NULL COMMENT '主键id',
  `color` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '颜色',
  `jixing` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '机型',
  `pid` int(11) DEFAULT NULL,
  `sImage` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '小图',
  `bImage` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '大图',
  `price` int(11) DEFAULT NULL COMMENT '价格',
  `yangshi` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '定制硅胶软壳这样的'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `peijian`
--

INSERT INTO `peijian` (`id`, `color`, `jixing`, `pid`, `sImage`, `bImage`, `price`, `yangshi`) VALUES
(9, '黑色', 'iPhone 7 Plus', 2, 'uploadsPeijian/2017-08-13/dbRfmDr6u3.jpg', 'uploadsPeijian/2017-08-13/9B9l5XfvFD.jpg', 49, '定制硅胶彩壳'),
(10, '黑色', 'iPhone 7 Plus', 2, 'uploadsPeijian/2017-08-13/g4iK1KoyPl.jpg', 'uploadsPeijian/2017-08-13/cf6Mnfq6mV.jpg', 49, '定制硅胶彩壳'),
(11, '黑色', 'iPhone 7 Plus', 2, 'uploadsPeijian/2017-08-13/m2Pm9iiQZb.jpg', 'uploadsPeijian/2017-08-13/jT042HqISr.jpg', 49, '定制硅胶彩壳'),
(12, '黑色', 'iPhone 7 Plus', 2, 'uploadsPeijian/2017-08-13/0ixHawILU8.jpg', 'uploadsPeijian/2017-08-13/WUyqv60qOI.jpg', 49, '定制硅胶彩壳'),
(13, '黑色', 'iPhone 7 Plus', 2, 'uploadsPeijian/2017-08-13/qc1hKqpA1V.jpg', 'uploadsPeijian/2017-08-13/c7Ta0UTMpA.jpg', 49, '定制硅胶彩壳'),
(14, '黑色', 'iPhone 7 Plus', 2, 'uploadsPeijian/2017-08-13/NA9cCz57cz.jpg', 'uploadsPeijian/2017-08-13/u8BVPpHsjV.jpg', 49, '定制硅胶彩壳'),
(15, '黑色', 'iPhone 7 Plus', 2, 'uploadsPeijian/2017-08-13/DZ5OQjguvV.jpg', 'uploadsPeijian/2017-08-13/bndLTpOUV7.jpg', 49, '定制硅胶彩壳'),
(16, '黑色', 'iPhone 7 Plus', 2, 'uploadsPeijian/2017-08-13/mxy8QZqkuI.jpg', 'uploadsPeijian/2017-08-13/spVrmq87Yj.jpg', 49, '定制硅胶彩壳'),
(17, '黑色', 'iPhone 7 Plus', 2, 'uploadsPeijian/2017-08-13/rcHfa4200p.jpg', 'uploadsPeijian/2017-08-13/3f6EsQa3AR.jpg', 49, '定制硅胶彩壳'),
(18, '橙色', 'iPhone 7', 2, 'uploadsPeijian/2017-08-13/s0UwYdW4H8.jpg', 'uploadsPeijian/2017-08-13/lYIBijyROu.jpg', 29, '定制硅胶彩壳'),
(19, '橙色', 'iPhone 7', 2, 'uploadsPeijian/2017-08-13/yeEf22lMEF.jpg', 'uploadsPeijian/2017-08-13/eZt1KBFmT4.jpg', 29, '定制硅胶彩壳'),
(20, '橙色', 'iPhone 7', 2, 'uploadsPeijian/2017-08-13/9Y74IDjGNQ.jpg', 'uploadsPeijian/2017-08-13/620kYarxAu.jpg', 29, '定制硅胶彩壳'),
(21, '橙色', 'iPhone 7', 2, 'uploadsPeijian/2017-08-13/hjxEmjdT2Y.jpg', 'uploadsPeijian/2017-08-13/Cwk6PZ3vWQ.jpg', 29, '定制硅胶彩壳'),
(22, '橙色', 'iPhone 7', 2, 'uploadsPeijian/2017-08-13/u6Q9G72QI0.jpg', 'uploadsPeijian/2017-08-13/xCkm88iqEC.jpg', 29, '定制硅胶彩壳'),
(23, '橙色', 'iPhone 7', 2, 'uploadsPeijian/2017-08-13/IfUqgCMUI2.jpg', 'uploadsPeijian/2017-08-13/f25sPiPCWh.jpg', 29, '定制硅胶彩壳'),
(24, '橙色', 'iPhone 7', 2, 'uploadsPeijian/2017-08-13/cKfl0IPFP7.jpg', 'uploadsPeijian/2017-08-13/SSVzDOiruh.jpg', 29, '定制硅胶彩壳'),
(25, '橙色', 'iPhone 7', 2, 'uploadsPeijian/2017-08-13/f82LOpzq1g.jpg', 'uploadsPeijian/2017-08-13/S7LZ1E1yDi.jpg', 29, '定制硅胶彩壳'),
(26, '橙色', 'iPhone 7', 2, 'uploadsPeijian/2017-08-13/XKV584gXaa.jpg', 'uploadsPeijian/2017-08-13/w8IFUME3g2.jpg', 29, '定制硅胶彩壳'),
(27, '橙色', 'iPhone 7', 2, 'uploadsPeijian/2017-08-13/HYY9GdHywe.jpg', 'uploadsPeijian/2017-08-13/MdwzCKTjO2.jpg', 29, '定制硅胶彩壳'),
(28, '橙色', 'iPhone 7', 2, 'uploadsPeijian/2017-08-13/IXzqoHR1Gz.jpg', 'uploadsPeijian/2017-08-13/mx8lI5gCac.jpg', 29, '定制硅胶彩壳'),
(29, '橙色', 'iPhone 7', 2, 'uploadsPeijian/2017-08-13/Cp4b97aHnS.jpg', 'uploadsPeijian/2017-08-13/mHmYaFCQw0.jpg', 29, '定制硅胶彩壳'),
(30, '黑色', 'iPhone 7', 2, 'uploadsPeijian/2017-08-14/12nP1nLsfM.jpg', 'uploadsPeijian/2017-08-14/znKT9Rjvw2.jpg', 49, '定制硅胶彩壳');

-- --------------------------------------------------------

--
-- 表的结构 `quianxin`
--

CREATE TABLE `quianxin` (
  `id` int(11) NOT NULL,
  `version` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `volumn` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `quality` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `network` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `pid` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `sImage` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `bImage` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `quianxin`
--

INSERT INTO `quianxin` (`id`, `version`, `color`, `volumn`, `quality`, `network`, `price`, `pid`, `sImage`, `bImage`) VALUES
(1, '洛基亚', '黑白的', '32', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/mPfRMJHlTe.jpg', 'uploads/2017-08-13/P9d2UIM1nK.jpg'),
(2, 'iPhone 7', '黑色', '128GB', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/he1EOHzqZp.jpg', 'uploads/2017-08-13/hr7jm4OvD2.jpg'),
(3, 'iPhone 7', '黑色', '128GB', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/REPPtvonkj.jpg', 'uploads/2017-08-13/YmgVea5Ho1.jpg'),
(4, 'iPhone 7', '黑色', '128GB', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/vURFxojd8S.jpg', 'uploads/2017-08-13/B7BnDKCwKe.jpg'),
(5, 'iPhone 7', '黑色', '128GB', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/ZzAtoZk62U.jpg', 'uploads/2017-08-13/dncEdqfVIi.jpg'),
(6, 'iPhone 7', '银色', '128GB', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/OiFzSwQMUb.jpg', 'uploads/2017-08-13/RDQDhrPVuP.jpg'),
(7, 'iPhone 7', '银色', '128GB', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/WIYr0Kvy9e.jpg', 'uploads/2017-08-13/Qy0YduODFn.jpg'),
(8, 'iPhone 7', '银色', '128GB', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/b9pJdBrSjL.jpg', 'uploads/2017-08-13/LTuEjLlks1.jpg'),
(9, 'iPhone 7', '银色', '128GB', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/Im71eQoFHW.jpg', 'uploads/2017-08-13/4HoELueNFs.jpg'),
(10, 'iPhone 7', '银色', '128GB', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/6F16Un6tnc.jpg', 'uploads/2017-08-13/p5oXzksUMG.jpg'),
(11, 'iPhone 7', '银色', '128GB', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/QYo3FvmR8S.jpg', 'uploads/2017-08-13/h0j1YXYhPd.jpg'),
(12, 'iPhone 7', '银色', '128GB', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/J7daRO6c0v.jpg', 'uploads/2017-08-13/jwTVIogCwt.jpg'),
(13, 'iPhone 7', '银色', '128GB', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/XCXOqVKshZ.jpg', 'uploads/2017-08-13/O1hsRUMIjK.jpg'),
(14, 'iPhone 7', '亮黑色', '128GB', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/eZvEz1JT45.jpg', 'uploads/2017-08-13/yDe5mBZKLq.jpg'),
(15, 'iPhone 7', '亮黑色', '128GB', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/MZw1RM6vXi.jpg', 'uploads/2017-08-13/HLL1akAkoN.jpg'),
(16, 'iPhone 7', '亮黑色', '128GB', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/SR83s2Pmqq.jpg', 'uploads/2017-08-13/r8ma2Gk8nG.jpg'),
(17, 'iPhone 7', '亮黑色', '128GB', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/FUehm5FL7p.jpg', 'uploads/2017-08-13/kOeXCyuwi6.jpg'),
(18, 'iPhone 7', '亮黑色', '128GB', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/gB5KrClTpK.jpg', 'uploads/2017-08-13/xjjlQlw0D4.jpg'),
(19, 'iPhone 7', '亮黑色', '128GB', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/jwKPl1m9Qc.jpg', 'uploads/2017-08-13/FsI2QXFmJV.jpg'),
(20, 'iPhone 7', '亮黑色', '128GB', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/Kvl6GtbUHm.jpg', 'uploads/2017-08-13/eE0tdRM4kv.jpg'),
(21, 'iPhone 7', '亮黑色', '128GB', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/twAI6V7fSe.jpg', 'uploads/2017-08-13/UYSRPUcCIr.jpg'),
(22, 'iPhone 7 Plus', '亮黑色', '128GB', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/OptRqM8Xbd.jpg', 'uploads/2017-08-13/69NBvQ7mmz.jpg'),
(23, 'iPhone 7 Plus', '亮黑色', '128GB', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/EbUBpg1lMA.jpg', 'uploads/2017-08-13/FffEXN3qUY.jpg'),
(24, 'iPhone 7 Plus', '亮黑色', '128GB', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/Hgdw02kCG9.jpg', 'uploads/2017-08-13/XxNyoyW4YX.jpg'),
(25, 'iPhone 7 Plus', '亮黑色', '128GB', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/NYC3ewJCvX.jpg', 'uploads/2017-08-13/f11Jn2ZFKG.jpg'),
(26, 'iPhone 7 Plus', '亮黑色', '128GB', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/gXfUFZU8Qh.jpg', 'uploads/2017-08-13/UmZw7xBS8h.jpg'),
(27, 'iPhone 7 Plus', '亮黑色', '128GB', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/Orh0qep5Ng.jpg', 'uploads/2017-08-13/j2KUZ1TbCJ.jpg'),
(28, 'iPhone 7 Plus', '亮黑色', '128GB', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/NmANQuUZ10.jpg', 'uploads/2017-08-13/TMGnje4VdX.jpg'),
(29, 'iPhone 7 Plus', '亮黑色', '128GB', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/g9dWanSCVz.jpg', 'uploads/2017-08-13/CuJMgYaYaD.jpg'),
(30, 'iPhone 7 Plus', '亮黑色', '128GB', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/IKSAYGC8Rq.jpg', 'uploads/2017-08-13/Iy2oBscRKz.jpg'),
(31, 'iPhone 7 Plus', '亮黑色', '128GB', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/UMpyUxu5uH.jpg', 'uploads/2017-08-13/BsK2XrPFOn.jpg'),
(32, 'iPhone 7 Plus', '亮黑色', '128GB', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/2pb1PsGsNp.jpg', 'uploads/2017-08-13/bOhMjHEs3m.jpg'),
(33, 'iPhone 7 Plus', '亮黑色', '128GB', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/KEvuSGx5Bm.jpg', 'uploads/2017-08-13/uPivysL4qP.jpg'),
(34, 'iPhone 7 Plus', '亮黑色', '128GB', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/Pc7yQD1wCt.jpg', 'uploads/2017-08-13/r9Sz77byiS.jpg'),
(35, 'iPhone 7 Plus', '亮黑色', '128GB', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/yAgJVDsbab.jpg', 'uploads/2017-08-13/qFnTHwCuNX.jpg'),
(36, 'iPhone 7 Plus', '亮黑色', '128GB', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/GOkZShgnBN.jpg', 'uploads/2017-08-13/SVgFtlWiHo.jpg'),
(37, 'iPhone 7 Plus', '亮黑色', '128GB', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/t5mBfkmqAc.jpg', 'uploads/2017-08-13/nPyietp5bZ.jpg'),
(38, 'iPhone 7 Plus', '亮黑色', '128GB', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/e9csMyQ8Dz.jpg', 'uploads/2017-08-13/v5N8mSp0IB.jpg'),
(39, 'iPhone 7 Plus', '亮黑色', '128GB', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/a2jQooFzEb.jpg', 'uploads/2017-08-13/N23dLpHmVZ.jpg'),
(40, 'iPhone 7 Plus', '黑色', '128GB', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/rPCNIqN7H7.jpg', 'uploads/2017-08-13/yzssOgPFY6.jpg'),
(41, 'iPhone 7 Plus', '黑色', '128GB', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/mXrwcRmJZJ.jpg', 'uploads/2017-08-13/zOuYhziyVC.jpg'),
(42, 'iPhone 7 Plus', '黑色', '128GB', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/nldP5iHs5v.jpg', 'uploads/2017-08-13/2yQgm5yei1.jpg'),
(43, 'iPhone 7 Plus', '黑色', '128GB', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/QdLgq7OAb2.jpg', 'uploads/2017-08-13/IQ6rurJQMu.jpg'),
(44, 'iPhone 7 Plus', '黑色', '128GB', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/pk7xlNDzHN.jpg', 'uploads/2017-08-13/1ZxUFeivGf.jpg'),
(45, 'iPhone 7 Plus', '黑色', '128GB', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/W2WP8TgHFy.jpg', 'uploads/2017-08-13/PRWaqk9v42.jpg'),
(46, 'iPhone 7 Plus', '黑色', '128GB', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/1EuI0Eo9kn.jpg', 'uploads/2017-08-13/QN8WFcsAlg.jpg'),
(47, 'iPhone 7 Plus', '黑色', '128GB', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/75MnKhWvW1.jpg', 'uploads/2017-08-13/v0uPameSCV.jpg'),
(48, 'iPhone 7 Plus', '黑色', '128GB', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/hPPhr9mwp7.jpg', 'uploads/2017-08-13/ueIQaXPdCb.jpg'),
(49, 'iPhone 7 Plus', '黑色', '128GB', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/dhuvTB6n8V.jpg', 'uploads/2017-08-13/E1eJfoJywC.jpg'),
(50, 'iPhone 7 Plus', '银色', '128GB', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/kVWGM1LRHC.jpg', 'uploads/2017-08-13/512XILD30K.jpg'),
(51, 'iPhone 7 Plus', '银色', '128GB', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/kFv5fnPERf.jpg', 'uploads/2017-08-13/wws6fd33nu.jpg'),
(52, 'iPhone 7 Plus', '银色', '128GB', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/X1L1s2vtgM.jpg', 'uploads/2017-08-13/7nzO511Oyf.jpg'),
(53, 'iPhone 7 Plus', '银色', '128GB', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/Tgf6T57pEz.jpg', 'uploads/2017-08-13/Olo6ge41yl.jpg'),
(54, 'iPhone 7 Plus', '银色', '128GB', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/wfi34rTK2P.jpg', 'uploads/2017-08-13/tODMVPcBmp.jpg'),
(55, 'iPhone 7 Plus', '银色', '128GB', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/Jvy4xVs8rd.jpg', 'uploads/2017-08-13/j7L9vAWT3e.jpg'),
(56, 'iPhone 7 Plus', '银色', '128GB', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/OWxhKCQdUG.jpg', 'uploads/2017-08-13/IhRZ4Po1RT.jpg'),
(57, 'iPhone 7 Plus', '银色', '128GB', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/yNndP48Y7C.jpg', 'uploads/2017-08-13/1SB9xkT3Il.jpg'),
(58, 'iPhone 7 Plus', '银色', '128GB', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/ODaHSmx1ha.jpg', 'uploads/2017-08-13/bhzmzA1bmg.jpg'),
(59, 'iPhone 7 Plus', '银色', '128GB', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/q6u8Ths4Al.jpg', 'uploads/2017-08-13/SSfx3scvlc.jpg'),
(60, 'iPhone 7 Plus', '银色', '128GB', '全新', '全网通', 5000, '1', 'uploads/2017-08-13/PfuljZQBRH.jpg', 'uploads/2017-08-13/NiNr1j761s.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL COMMENT '主键id',
  `phone` varchar(255) DEFAULT NULL COMMENT '用户名',
  `pwd` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '密码'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `phone`, `pwd`) VALUES
(7, '12345678912', 'e10adc3949ba59abbe56e057f20f883e'),
(8, '12345678932', 'e10adc3949ba59abbe56e057f20f883e'),
(9, '12345678955', 'e10adc3949ba59abbe56e057f20f883e'),
(10, '15555536659', 'e10adc3949ba59abbe56e057f20f883e'),
(11, '11111111111', 'e10adc3949ba59abbe56e057f20f883e'),
(12, '18550154170', 'e10adc3949ba59abbe56e057f20f883e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin2`
--
ALTER TABLE `admin2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin4`
--
ALTER TABLE `admin4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ershou`
--
ALTER TABLE `ershou`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peijian`
--
ALTER TABLE `peijian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quianxin`
--
ALTER TABLE `quianxin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `admin2`
--
ALTER TABLE `admin2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `admin4`
--
ALTER TABLE `admin4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '组件id', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `ershou`
--
ALTER TABLE `ershou`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
--
-- AUTO_INCREMENT for table `peijian`
--
ALTER TABLE `peijian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id', AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `quianxin`
--
ALTER TABLE `quianxin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id', AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

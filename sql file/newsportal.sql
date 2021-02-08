-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Апр 18 2020 г., 18:37
-- Версия сервера: 10.1.37-MariaDB
-- Версия PHP: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `newsportal`
--

-- --------------------------------------------------------

--
-- Структура таблицы `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `AdminUserName` varchar(255) NOT NULL,
  `AdminPassword` varchar(255) NOT NULL,
  `AdminEmailId` varchar(255) NOT NULL,
  `Is_Active` int(11) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `AdminUserName`, `AdminPassword`, `AdminEmailId`, `Is_Active`, `CreationDate`, `UpdationDate`) VALUES
(1, 'admin', '$2y$12$i4LMfeFPQpGSNPTaccIkKuwxAkJ4PhBr3JND7FpXwWFjRvchQn17C', 'phpgurukulofficial@gmail.com', 1, '2018-05-27 17:51:00', '2018-10-24 18:21:07');

-- --------------------------------------------------------

--
-- Структура таблицы `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `Description` mediumtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(2, 'Ð¡Ð¿Ð¾Ñ€Ñ‚', 'Ð¡Ð¿Ð¾Ñ€Ñ‚ Ð² ÐÐ°Ñ€Ñ…Ð¾Ð·', '2018-06-06 10:28:09', '2018-06-30 18:41:07', 1),
(3, 'ÐÐºÐ°Ð´ÐµÐ¼Ð¸Ñ‡ÐµÑÐºÐ°Ñ Ð¼Ð¾Ð±Ð¸Ð»ÑŒÐ½Ð¾ÑÑ‚ÑŒ', 'Ð£Ñ‡ÐµÐ±Ð° Ð·Ð°Ð³Ñ€Ð°Ð½Ð¸Ñ†ÐµÐ¹', '2018-06-06 10:35:09', '2018-06-14 11:11:55', 1),
(5, 'Ð¡Ñ‚ÑƒÐ´ÐµÐ½Ñ‚Ñ‹', 'ÐÐ¾Ð²Ð¾ÑÑ‚Ð¸ Ð´Ð»Ñ ÑÑ‚ÑƒÐ´ÐµÐ½Ñ‚Ð¾Ð²', '2018-06-14 05:32:58', '2018-06-14 05:33:41', 1),
(6, 'ÐŸÐŸÐ¡', 'ÐÐ¾Ð²Ð¾ÑÑ‚Ð¸ Ð´Ð»Ñ ÐŸÐŸÐ¡', '2018-06-22 15:46:09', '0000-00-00 00:00:00', 1),
(7, 'PHD', 'ÐÐ¾Ð²Ð¾ÑÑ‚Ð¸ Ð´Ð»Ñ PHD', '2018-06-22 15:46:22', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `tblcomments`
--

CREATE TABLE `tblcomments` (
  `id` int(11) NOT NULL,
  `postId` char(11) DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `comment` mediumtext,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tblcomments`
--

INSERT INTO `tblcomments` (`id`, `postId`, `name`, `email`, `comment`, `postingDate`, `status`) VALUES
(1, '12', 'Anuj', 'anuj@gmail.com', 'Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.', '2018-11-21 11:06:22', 0),
(2, '12', 'Test user', 'test@gmail.com', 'This is sample text for testing.', '2018-11-21 11:25:56', 1),
(3, '7', 'ABC', 'abc@test.com', 'This is sample text for testing.', '2018-11-21 11:27:06', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `tblfiles`
--

CREATE TABLE `tblfiles` (
  `id` int(11) NOT NULL,
  `PostTitle` longtext CHARACTER SET latin1 NOT NULL,
  `PostUrl` mediumtext CHARACTER SET latin1 NOT NULL,
  `PostFile` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tblfiles`
--

INSERT INTO `tblfiles` (`id`, `PostTitle`, `PostUrl`, `PostFile`) VALUES
(1, 'Test01', 'Test01', 'b88f8cedcc69b7d9d26176a7971d3e8c.odt'),
(2, 'ÐžÐ±Ñ‰Ð¸Ðµ Ð´Ð¾ÐºÑƒÐ¼ÐµÐ½Ñ‚Ñ‹ Ð¿Ð¾ ÐžÐŸ', 'ÐžÐ±Ñ‰Ð¸Ðµ-Ð´Ð¾ÐºÑƒÐ¼ÐµÐ½Ñ‚Ñ‹-Ð¿Ð¾-ÐžÐŸ', 'b88f8cedcc69b7d9d26176a7971d3e8c.odt'),
(3, 'Ð”ÐžÐºÑƒÐ¼ÐµÐ½Ñ‚ Ð¿Ð¾ ÑÐ¾Ñ€ÐµÐ²Ð½Ð¾Ð²Ð°Ð½Ð¸ÑÐ¼', 'Ð”ÐžÐºÑƒÐ¼ÐµÐ½Ñ‚-Ð¿Ð¾-ÑÐ¾Ñ€ÐµÐ²Ð½Ð¾Ð²Ð°Ð½Ð¸ÑÐ¼', '601a63258b7a8007cfe6c776340462a5.odt'),
(5, 'Ð°Ñ€Ð°Ñ€', 'Ð°Ñ€Ð°Ñ€', 'ede353f45e866886c77edc5039c49ccfdocx'),
(6, 'test', 'test', '41429ab0536f6d4a7dd6a9efb7cee0a4docx');

-- --------------------------------------------------------

--
-- Структура таблицы `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext,
  `Description` longtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `PageTitle`, `Description`, `PostingDate`, `UpdationDate`) VALUES
(1, 'aboutus', 'ÐŸÐ¾Ñ€Ñ‚Ð°Ð» Narxoz', '<p align=\"center\"><font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif\"><span style=\"font-size: 26px;\"><span style=\"color: rgb(34, 34, 34); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: arial,sans-serif; font-size: 14px; font-style: normal; word-spacing: 0px; display: inline !important; white-space: normal; orphans: 2; widows: 2; float: none; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\"><b>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <font style=\"background-color: rgb(255, 255, 255);\">&nbsp;&nbsp; Ð£Ð½Ð¸Ð²ÐµÑ€ÑÐ¸Ñ‚ÐµÑ‚ ÐÐ°Ñ€Ñ…Ð¾Ð· â€” Ñ‡Ð°ÑÑ‚Ð½Ñ‹Ð¹ ÑƒÐ½Ð¸Ð²ÐµÑ€ÑÐ¸Ñ‚ÐµÑ‚ Ð² ÐšÐ°Ð·Ð°Ñ…ÑÑ‚Ð°Ð½Ðµ, Ð¾ÑÑƒÑ‰ÐµÑÑ‚Ð²Ð»ÑÑŽÑ‰Ð¸Ð¹ Ð¾Ð±ÑƒÑ‡ÐµÐ½Ð¸Ðµ Ð² Ð¾Ð±Ð»Ð°ÑÑ‚Ð¸ ÑÐºÐ¾Ð½Ð¾Ð¼Ð¸ÐºÐ¸, Ð±Ð¸Ð·Ð½ÐµÑÐ°, Ñ„Ð¸Ð½Ð°Ð½ÑÐ¾Ð² Ð¸ Ð¿Ñ€Ð°Ð²Ð°, &nbsp; Ñ€Ð°ÑÐ¿Ð¾Ð»Ð¾Ð¶ÐµÐ½Ð½Ñ‹Ð¹ Ð² Ð³Ð¾Ñ€Ð¾Ð´Ðµ ÐÐ»Ð¼Ð°Ñ‚Ñ‹.</font></b></span></span></font></p><font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif\"><span style=\"font-size: 26px;\"><span style=\"color: rgb(34, 34, 34); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: arial,sans-serif; font-size: 14px; word-spacing: 0px; display: inline !important; white-space: normal; orphans: 2; widows: 2; float: none; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\"><p style=\"margin: 0.5em 0px; color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><span>&nbsp;Ð’ </span>Ð¸ÑŽÐ»Ðµ 2019 Ð³Ð¾Ð´Ð° Ð±Ñ‹Ð²ÑˆÐ¸Ðµ Ð¿Ñ€ÐµÐ¿Ð¾Ð´Ð°Ð²Ð°Ñ‚ÐµÐ»Ð¸ Â«ÐÐ°Ñ€Ñ…Ð¾Ð·Ð°Â» Ð¾Ð±Ñ€Ð°Ñ‚Ð¸Ð»Ð¸ÑÑŒ Ñ ÐºÐ¾Ð»Ð»ÐµÐºÑ‚Ð¸Ð²Ð½Ð¾Ð¹ Ð¶Ð°Ð»Ð¾Ð±Ð¾Ð¹ Ðº ÐœÐ¸Ð½Ð¸ÑÑ‚Ñ€Ñƒ Ð¾Ð±Ñ€Ð°Ð·Ð¾Ð²Ð°Ð½Ð¸Ñ Ð¸ Ð½Ð°ÑƒÐºÐ¸ Ð Ðš, Ð² ÐºÐ¾Ñ‚Ð¾Ñ€Ð¾Ð¼ Ð¿Ð¾Ð´Ð²ÐµÑ€Ð³Ð»Ð¸ ÐºÑ€Ð¸Ñ‚Ð¸ÐºÐµ Ð´ÐµÑÑ‚ÐµÐ»ÑŒÐ½Ð¾ÑÑ‚ÑŒ Ñ€ÐµÐºÑ‚Ð¾Ñ€Ð° Ð’Ð£Ð—Ð°<span>&nbsp;</span><a title=\"Ð’Ð°Ñ…Ñ‚ÐµÐ»ÑŒ, Ð­Ð½Ð´Ñ€ÑŽ\" style=\"text-decoration: none; color: rgb(11, 0, 128); background: none;\" href=\"https://ru.wikipedia.org/wiki/%D0%92%D0%B0%D1%85%D1%82%D0%B5%D0%BB%D1%8C,_%D0%AD%D0%BD%D0%B4%D1%80%D1%8E\">Ð­Ð½Ð´Ñ€ÑŽ Ð’Ð°Ñ…Ñ‚ÐµÐ»Ñ</a>. Ð’ Ð¾Ð±Ñ€Ð°Ñ‰ÐµÐ½Ð¸Ð¸ Ð¿ÐµÐ´Ð°Ð³Ð¾Ð³Ð¸ ÑƒÐºÐ°Ð·Ð°Ð»Ð¸, Ñ‡Ñ‚Ð¾ Ð²Ð¾ Ð²Ñ€ÐµÐ¼Ñ Ð²ÑÑ‚Ñ€ÐµÑ‡Ð¸, Ñ€ÐµÐºÑ‚Ð¾Ñ€ Ð’Ð°Ñ…Ñ‚ÐµÐ»ÑŒ Ð² Ð±ÐµÑÑ‚Ð°ÐºÑ‚Ð½Ð¾Ð¹ Ñ„Ð¾Ñ€Ð¼Ðµ Ð·Ð°ÑÐ²Ð¸Ð» Ð¿Ñ€ÐµÐ¿Ð¾Ð´Ð°Ð²Ð°Ñ‚ÐµÐ»ÑÐ¼, Ñ‡Ñ‚Ð¾ Ð¾Ð½ Ð½Ð¸ Ñ ÐºÐµÐ¼ Ñ†ÐµÑ€ÐµÐ¼Ð¾Ð½Ð¸Ñ‚ÑŒÑÑ Ð½Ðµ ÑÐ¾Ð±Ð¸Ñ€Ð°ÐµÑ‚ÑÑ, Ð² Ñ‚Ð¾Ð¼ Ñ‡Ð¸ÑÐ»Ðµ Ð¸ Ñ ÐœÐžÐ Ð Ðš, Ñ‚Ð°Ðº ÐºÐ°Ðº Ñ‚Ð°ÐºÐ¾Ð³Ð¾ Ð²ÐµÐ´Ð¾Ð¼ÑÑ‚Ð²Ð° Ð½ÐµÑ‚ Ð² Ð¡Ð¨Ð. Ð­Ð½Ð´Ñ€ÑŽ Ð’Ð°Ñ…Ñ‚ÐµÐ»ÑŒ Ð·Ð°ÑÐ²Ð¸Ð», Ñ‡Ñ‚Ð¾ Ð¿Ñ€ÐµÐ¿Ð¾Ð´Ð°Ð²Ð°Ñ‚ÐµÐ»ÐµÐ¹<span>&nbsp;</span><a title=\"Ð ÑƒÑÑÐºÐ¸Ð¹ ÑÐ·Ñ‹Ðº\" style=\"text-decoration: none; color: rgb(11, 0, 128); background: none;\" href=\"https://ru.wikipedia.org/wiki/%D0%A0%D1%83%D1%81%D1%81%D0%BA%D0%B8%D0%B9_%D1%8F%D0%B7%D1%8B%D0%BA\">Ñ€ÑƒÑÑÐºÐ¾Ð³Ð¾</a><span>&nbsp;</span>Ð¸<span>&nbsp;</span><a title=\"ÐšÐ°Ð·Ð°Ñ…ÑÐºÐ¸Ð¹ ÑÐ·Ñ‹Ðº\" style=\"text-decoration: none; color: rgb(11, 0, 128); background: none;\" href=\"https://ru.wikipedia.org/wiki/%D0%9A%D0%B0%D0%B7%D0%B0%D1%85%D1%81%D0%BA%D0%B8%D0%B9_%D1%8F%D0%B7%D1%8B%D0%BA\">ÐºÐ°Ð·Ð°Ñ…ÑÐºÐ¾Ð³Ð¾ ÑÐ·Ñ‹ÐºÐ¾Ð²</a><span>&nbsp;</span>Ð¾Ð½ Ð½Ð°Ð´ÐµÐµÑ‚ÑÑ Ð½Ðµ ÑƒÐ²Ð¸Ð´ÐµÑ‚ÑŒ Ñ‡ÐµÑ€ÐµÐ· Ð±Ð»Ð¸Ð¶Ð°Ð¹ÑˆÐ¸Ðµ 10 Ð»ÐµÑ‚, Ð² ÑÐ²ÑÐ·Ð¸ Ñ Ð½ÐµÐ½Ð°Ð´Ð¾Ð±Ð½Ð¾ÑÑ‚ÑŒÑŽ ÑÑ‚Ð¸Ñ… Ð´Ð¸ÑÑ†Ð¸Ð¿Ð»Ð¸Ð½ Ð² Ð¿Ð¾Ð´Ð³Ð¾Ñ‚Ð¾Ð²ÐºÐµ ÑÐ¿ÐµÑ†Ð¸Ð°Ð»Ð¸ÑÑ‚Ð¾Ð² Ð´Ð»Ñ ÑÑ„ÐµÑ€Ñ‹ ÑÐºÐ¾Ð½Ð¾Ð¼Ð¸ÐºÐ¸ ÐšÐ°Ð·Ð°Ñ…ÑÑ‚Ð°Ð½Ð°. Ð¢Ð°ÐºÐ¶Ðµ Ð¸Ð¼ Ð±Ñ‹Ð»Ð¾ ÑÐºÐ°Ð·Ð°Ð½Ð¾, Ñ‡Ñ‚Ð¾ Ð¾Ð½ ÑÐ¾Ð¶Ð°Ð»ÐµÐµÑ‚ Ð¾ Ð¿Ñ€Ð¸ÐµÐ¼Ðµ Ð½Ð° 1 ÐºÑƒÑ€Ñ ÑÑ‚ÑƒÐ´ÐµÐ½Ñ‚Ð¾Ð² Ð½Ð° ÐºÐ°Ð·Ð°Ñ…ÑÐºÐ¾Ðµ Ð¾Ñ‚Ð´ÐµÐ»ÐµÐ½Ð¸Ðµ<sup><font color=\"#001001\">.</font></sup></p><p style=\"margin: 0.5em 0px; color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\"><sup></sup><font size=\"2\"></font><font color=\"#001001\"></font>Ð’ ÑÐ²Ð¾Ñ‘Ð¼ Ð¾Ð±Ñ€Ð°Ñ‰ÐµÐ½Ð¸Ð¸ Ð¿ÐµÐ´Ð°Ð³Ð¾Ð³Ð¸ Ð½Ð°Ð¿Ð¸ÑÐ°Ð»Ð¸ Ð¾ Ñ€ÐµÑ„Ð¾Ñ€Ð¼Ð°Ñ…, Ð¿Ñ€Ð¾Ð²Ð¾Ð´Ð¸Ð¼Ñ‹Ñ… Ñ€ÐµÐºÑ‚Ð¾Ñ€Ð¾Ð¼ Ð² Ð¾Ñ‚Ð½Ð¾ÑˆÐµÐ½Ð¸Ð¸ ÑƒÑ‡ÐµÐ±Ð½Ñ‹Ñ… Ð´Ð¸ÑÑ†Ð¸Ð¿Ð»Ð¸Ð½ Ð¸ Ð·Ð°Ð¿Ñ€ÐµÑ‚Ðµ Ð¸ÑÐ¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ð½Ð¸Ñ ÑƒÑ‡ÐµÐ±Ð½Ð¸ÐºÐ¾Ð². ÐžÐ½Ð¸ Ñ€Ð°ÑÑÐºÐ°Ð·Ð°Ð»Ð¸, Ñ‡Ñ‚Ð¾ Ð² Ñ€Ð°Ð¼ÐºÐ°Ñ… Ñ€ÐµÑ„Ð¾Ñ€Ð¼ Ð²ÑƒÐ·Ð°, ÐºÐ°Ñ„ÐµÐ´Ñ€Ð° Â«ÐžÐ±Ñ‰ÐµÐ¾Ð±Ñ€Ð°Ð·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÑŒÐ½Ñ‹Ñ… Ð´Ð¸ÑÑ†Ð¸Ð¿Ð»Ð¸Ð½Â» Ð±Ñ‹Ð»Ð° Ð¿ÐµÑ€ÐµÐ¸Ð¼ÐµÐ½Ð¾Ð²Ð°Ð½Ð° Ð² Â«ÐŸÑ€Ð¾Ð³Ñ€Ð°Ð¼Ð¼Ñƒ Ð¾Ð±Ñ‰ÐµÐ¾Ð±Ñ€Ð°Ð·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÑŒÐ½Ñ‹Ñ… Ð´Ð¸ÑÑ†Ð¸Ð¿Ð»Ð¸Ð½Â», Ð³Ð´Ðµ Ð²Ð¼ÐµÑÑ‚Ð¾ Ð¿Ñ€ÐµÐ¿Ð¾Ð´Ð°Ð²Ð°Ð½Ð¸Ñ ÑÐ°Ð¼Ð¾ÑÑ‚Ð¾ÑÑ‚ÐµÐ»ÑŒÐ½Ñ‹Ñ… Ð´Ð¸ÑÑ†Ð¸Ð¿Ð»Ð¸Ð½ ÐºÐ°Ðº Ñ„Ð¸Ð»Ð¾ÑÐ¾Ñ„Ð¸Ñ, Ð¿Ð¾Ð»Ð¸Ñ‚Ð¾Ð»Ð¾Ð³Ð¸Ñ, ÑÐ¾Ñ†Ð¸Ð¾Ð»Ð¾Ð³Ð¸Ñ Ð¸ Ð´Ñ€ÑƒÐ³Ð¸Ðµ, Ñ‚ÐµÐ¿ÐµÑ€ÑŒ Ð¿Ñ€ÐµÐ¿Ð¾Ð´Ð°ÐµÑ‚ÑÑ Ð¸Ð½Ñ‚ÐµÐ³Ñ€Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð½Ñ‹Ð¹ Ð¾Ð±ÑŠÐµÐ´Ð¸Ð½Ñ‘Ð½Ð½Ñ‹Ð¹ ÐºÑƒÑ€Ñ Ñ€Ð°Ð·Ð´ÐµÐ»ÐµÐ½Ð½Ñ‹Ð¹ Ð½Ð° Ð´Ð²Ð° Ð¼Ð¾Ð´ÑƒÐ»Ñ. 1-Ð¼Ð¾Ð´ÑƒÐ»ÑŒ ÑÐ¾ÑÑ‚Ð¾Ð¸Ñ‚ Ð¸Ð· 15 Ð»ÐµÐºÑ†Ð¸Ð¹ Â«Ð§ÐµÐ»Ð¾Ð²ÐµÐº Ð¸ Ð¼Ð¸Ñ€Â» Ñ ÑÐ»ÐµÐ¼ÐµÐ½Ñ‚Ð°Ð¼Ð¸ Ñ„Ð¸Ð»Ð¾ÑÐ¾Ñ„Ð¸Ð¸, ÐºÑƒÐ»ÑŒÑ‚ÑƒÑ€Ð¾Ð»Ð¾Ð³Ð¸Ð¸, Ñ€ÐµÐ»Ð¸Ð³Ð¸Ð¾Ð²ÐµÐ´ÐµÐ½Ð¸Ñ Ð¸ Ð½Ðµ Ð¾Ñ…Ð²Ð°Ñ‚Ñ‹Ð²Ð°ÐµÑ‚ Ñ‚Ð¸Ð¿Ð¾Ð²Ñ‹Ðµ Ð¿Ñ€Ð¾Ð³Ñ€Ð°Ð¼Ð¼Ñ‹. 2-Ð¹ Ð¼Ð¾Ð´ÑƒÐ»ÑŒ ÑÐ¾ÑÑ‚Ð¾Ð¸Ñ‚ Ð¸Ð· Ð¿Ñ€Ð°ÐºÑ‚Ð¸Ñ‡ÐµÑÐºÐ¸Ñ… Ð·Ð°Ð½ÑÑ‚Ð¸Ð¹, Ð½Ð° ÐºÐ¾Ñ‚Ð¾Ñ€Ñ‹Ñ… Ð¾Ð±ÑÑƒÐ¶Ð´Ð°ÑŽÑ‚ÑÑ Ð¾Ñ‚Ñ€Ñ‹Ð²ÐºÐ¸ Ð¸Ð· Ð¿Ñ€Ð¾Ð¸Ð·Ð²ÐµÐ´ÐµÐ½Ð¸Ð¹ Ñ€Ð°Ð·Ð½Ñ‹Ñ… Ð¼Ñ‹ÑÐ»Ð¸Ñ‚ÐµÐ»ÐµÐ¹ Ð¸ ÑƒÑ‡ÐµÐ½Ñ‹Ñ… Ð¾Ñ‚ Ð°Ð½Ñ‚Ð¸Ñ‡Ð½Ð¾ÑÑ‚Ð¸ Ð´Ð¾ Ð½Ð°ÑˆÐ¸Ñ… Ð´Ð½ÐµÐ¹, ÐºÐ¾Ñ‚Ð¾Ñ€Ñ‹Ðµ Ð¿Ð¾ Ð¼Ð½ÐµÐ½Ð¸ÑŽ Ð±Ñ‹Ð²ÑˆÐ¸Ñ… Ð¿ÐµÐ´Ð°Ð³Ð¾Ð³Ð¾Ð² Ð½Ðµ Ð²ÑÐµÐ³Ð´Ð° Ð»ÐµÐ³ÐºÐ¾ ÑƒÑÐ²Ð°Ð¸Ð²Ð°ÑŽÑ‚ÑÑ ÑÑ‚ÑƒÐ´ÐµÐ½Ñ‚Ð°Ð¼Ð¸. ÐŸÐµÐ´Ð°Ð³Ð¾Ð³Ð¸ Ð¾Ñ‚Ð¼ÐµÑ‡Ð°ÑŽÑ‚, Ñ‡Ñ‚Ð¾ Ð¿Ð¾ Ð½Ð¾Ð²Ð¾Ð¼Ñƒ ÐºÑƒÑ€ÑÑƒ Ð¾Ð±ÑƒÑ‡ÐµÐ½Ð¸Ñ, Ñ‡Ñ‚ÐµÐ½Ð¸Ðµ ÑƒÑ‡ÐµÐ±Ð½Ð¸ÐºÐ¾Ð² ÐºÐ°Ñ‚ÐµÐ³Ð¾Ñ€Ð¸Ñ‡ÐµÑÐºÐ¸ Ð·Ð°Ð¿Ñ€ÐµÑ‰Ð°ÐµÑ‚ÑÑ, ÑÑ‚ÑƒÐ´ÐµÐ½Ñ‚ Ð´Ð¾Ð»Ð¶ÐµÐ½ ÑÐ°Ð¼ Â«Ð´Ð¾Ð¹Ñ‚Ð¸ Ð´Ð¾ Ð²ÑÐµÐ³Ð¾Â»</p><p><b><i><u><sub><sup><strike><br></strike></sup></sub></u></i></b></p></span><p></p></span></font><p><b></b><i></i><u></u><sub></sub><sup></sup><strike></strike><br></p>', '2018-06-30 18:01:03', '2020-02-27 15:51:33'),
(2, 'contactus', 'ÐšÐ¾Ð½Ñ‚Ð°ÐºÑ‚Ñ‹', '<p><br></p><p><b>ÐÐ´Ñ€ÐµÑ :&nbsp; ÐÐ»Ð¼Ð°Ñ‚Ñ‹, Ð–Ð°Ð½Ð´Ð¾ÑÐ¾Ð²Ð° 55</b></p><p><b>ÐÐ¾Ð¼ÐµÑ€ Ñ‚ÐµÐ»ÐµÑ„Ð¾Ð½Ð°&nbsp; : </b>+7 727 23 24 23</p><p><b>Email&nbsp; : </b>narxoz@gmail.com</p>', '2018-06-30 18:01:36', '2020-02-27 15:19:47');

-- --------------------------------------------------------

--
-- Структура таблицы `tblpersonal`
--

CREATE TABLE `tblpersonal` (
  `id` int(11) NOT NULL,
  `PostTitle` longtext CHARACTER SET latin1 NOT NULL,
  `PostUrl` mediumtext CHARACTER SET latin1 NOT NULL,
  `PostFile` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tblpersonal`
--

INSERT INTO `tblpersonal` (`id`, `PostTitle`, `PostUrl`, `PostFile`) VALUES
(1, 'Ð”Ð¾ÐºÑƒÐ¼ÐµÐ½Ñ‚Ñ‹ Ð¿Ð¾ Ð¿ÐµÑ€ÑÐ¾Ð½Ð°Ð»Ð°Ð¼ Ð¾Ð±Ñ‰Ð¸Ðµ Ð´Ð°Ð½Ð½Ñ‹Ðµ', 'Ð”Ð¾ÐºÑƒÐ¼ÐµÐ½Ñ‚Ñ‹-Ð¿Ð¾-Ð¿ÐµÑ€ÑÐ¾Ð½Ð°Ð»Ð°Ð¼-Ð¾Ð±Ñ‰Ð¸Ðµ-Ð´Ð°Ð½Ð½Ñ‹Ðµ', 'b88f8cedcc69b7d9d26176a7971d3e8c.odt');

-- --------------------------------------------------------

--
-- Структура таблицы `tblphd`
--

CREATE TABLE `tblphd` (
  `id` int(11) NOT NULL,
  `PostTitle` longtext CHARACTER SET latin1 NOT NULL,
  `PostUrl` mediumtext CHARACTER SET latin1 NOT NULL,
  `PostFile` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tblphd`
--

INSERT INTO `tblphd` (`id`, `PostTitle`, `PostUrl`, `PostFile`) VALUES
(1, 'PHD Ð´Ð¾ÐºÑƒÐ¼ÐµÐ½Ñ‚Ñ‹ ', 'PHD-Ð´Ð¾ÐºÑƒÐ¼ÐµÐ½Ñ‚Ñ‹-', 'e2c0717ec9385b69d9aa784822409529.odt');

-- --------------------------------------------------------

--
-- Структура таблицы `tblposts`
--

CREATE TABLE `tblposts` (
  `id` int(11) NOT NULL,
  `PostTitle` longtext,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `PostDetails` longtext CHARACTER SET utf8,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `Is_Active` int(1) DEFAULT NULL,
  `PostUrl` mediumtext,
  `PostImage` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tblposts`
--

INSERT INTO `tblposts` (`id`, `PostTitle`, `CategoryId`, `SubCategoryId`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `PostUrl`, `PostImage`) VALUES
(7, 'ÐŸÑ€Ð¾Ð¹Ð´ÐµÑ‚ Ñ‚ÑƒÑ€Ð½Ð¸Ñ€', 2, 10, '<p>Ð‘Ð°ÑÐºÐµÑ‚</p>', '2018-06-30 18:49:23', '2020-02-27 16:08:56', 1, 'ÐŸÑ€Ð¾Ð¹Ð´ÐµÑ‚-Ñ‚ÑƒÑ€Ð½Ð¸Ñ€', '6bd5e568f3e8c127171c0dd8ce773354.jpg'),
(11, 'Ð¦ÐµÐ»ÑŒ', 6, 8, '<p><br></p>', '2018-06-30 19:10:36', '2020-02-27 15:30:04', 1, 'Ð¦ÐµÐ»ÑŒ', 'be0abadde98a98b472ff2fb0c98a86d1.jpg'),
(12, 'ÐžÐ¢ÐšÐ Ð«Ð¢Ð«Ð™ Ð£Ð ÐžÐš', 6, 7, '<p><br></p>', '2018-06-30 19:11:44', '2020-02-27 15:41:59', 1, 'ÐžÐ¢ÐšÐ Ð«Ð¢Ð«Ð™-Ð£Ð ÐžÐš', 'c1247dde742586a77b091458645ffb96.jpg'),
(13, 'Narxoz Insight', 3, 4, '<p><br></p>', '2020-02-25 17:00:21', '2020-02-27 15:27:30', 1, 'Narxoz-Insight', '469a6ec36c2e7f2138586a387448c935.jpg'),
(14, 'jsjs', 3, 4, '<p>shhsh</p>', '2020-04-18 09:39:55', '2020-04-18 09:56:38', 0, 'jsjs', 'c395064a2bf5c73cd17b67130034b1a0.png'),
(15, 'doc', 3, 5, '<p>djddjdj</p>', '2020-04-18 09:54:57', '2020-04-18 09:56:34', 0, 'doc', ''),
(16, 'Test01', 2, 10, '<p>hhdhhd</p>', '2020-04-18 09:57:10', '2020-04-18 10:33:11', 0, 'Test01', ''),
(17, 'Test01', 2, 10, '<p>hhdhhd</p>', '2020-04-18 09:57:54', '2020-04-18 10:33:08', 0, 'Test01', 'c395064a2bf5c73cd17b67130034b1a0.png'),
(18, 'test02', 3, 5, '<p>hdhdhd</p>', '2020-04-18 09:58:14', '2020-04-18 10:33:06', 0, 'test02', 'c395064a2bf5c73cd17b67130034b1a0.png'),
(19, 'Test01', 3, 4, '<p>ee</p>', '2020-04-18 10:11:40', '2020-04-18 10:33:03', 0, 'Test01', 'e2c0717ec9385b69d9aa784822409529.odt'),
(20, 'test04', 2, 10, '<p>yyy</p>', '2020-04-18 10:21:52', '2020-04-18 10:33:00', 0, 'test04', '3edf7e9f71b58ce61a03a4765e4fe15edocx'),
(21, 'tets', 3, 4, '<p>eeee</p>', '2020-04-18 10:28:45', '2020-04-18 10:32:57', 0, 'tets', '3edf7e9f71b58ce61a03a4765e4fe15e'),
(22, 'jdjjd', 2, 10, '<p>djdjdj</p>', '2020-04-18 10:30:51', '2020-04-18 10:32:54', 0, 'jdjjd', 'ede353f45e866886c77edc5039c49ccf'),
(23, 'rtrtr', 2, 10, '<p>fjjfjf</p>', '2020-04-18 10:33:57', '2020-04-18 11:15:37', 0, 'rtrtr', 'b88f8cedcc69b7d9d26176a7971d3e8c.odt'),
(24, 'dddd', 2, 10, '<p>dd</p>', '2020-04-18 11:08:04', '2020-04-18 11:15:35', 0, 'dddd', 'b88f8cedcc69b7d9d26176a7971d3e8c.odt');

-- --------------------------------------------------------

--
-- Структура таблицы `tblstudfile`
--

CREATE TABLE `tblstudfile` (
  `id` int(11) NOT NULL,
  `PostTitle` longtext CHARACTER SET latin1 NOT NULL,
  `PostUrl` mediumtext CHARACTER SET latin1 NOT NULL,
  `PostFile` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tblstudfile`
--

INSERT INTO `tblstudfile` (`id`, `PostTitle`, `PostUrl`, `PostFile`) VALUES
(1, 'Ð”Ð¾ÐºÑƒÐ¼ÐµÐ½Ñ‚Ñ‹ Ð¿Ð¾ ÑÑ‚ÑƒÐ´ÐµÐ½Ñ‚Ð°Ð¼ ', 'Ð”Ð¾ÐºÑƒÐ¼ÐµÐ½Ñ‚Ñ‹-Ð¿Ð¾-ÑÑ‚ÑƒÐ´ÐµÐ½Ñ‚Ð°Ð¼-', 'e2c0717ec9385b69d9aa784822409529.odt');

-- --------------------------------------------------------

--
-- Структура таблицы `tblsubcategory`
--

CREATE TABLE `tblsubcategory` (
  `SubCategoryId` int(11) NOT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `Subcategory` varchar(255) DEFAULT NULL,
  `SubCatDescription` mediumtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tblsubcategory`
--

INSERT INTO `tblsubcategory` (`SubCategoryId`, `CategoryId`, `Subcategory`, `SubCatDescription`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(3, 5, 'Ð‘Ð°ÐºÐ°Ð»Ð°Ð²Ñ€', 'Ð‘Ð°ÐºÐ°Ð»Ð°Ð²Ñ€', '2018-06-22 15:45:38', '0000-00-00 00:00:00', 1),
(4, 3, 'ÐŸÑ€Ð¸Ð±Ñ‹ÑˆÐ¸Ðµ', 'ÐŸÑ€Ð¸Ð±Ñ‹ÑˆÐ¸Ðµ\r\n', '2018-06-30 09:00:43', '0000-00-00 00:00:00', 1),
(5, 3, 'Ð£Ð±Ñ‹Ð²ÑˆÐ¸Ðµ', 'Ð£Ð±Ñ‹Ð²ÑˆÐ¸Ðµ', '2018-06-30 09:00:58', '0000-00-00 00:00:00', 1),
(6, 5, 'ÐœÐ°Ð³Ð¸ÑÑ‚Ñ€Ð°Ð½Ñ‚Ñ‹', 'ÐœÐ°Ð³Ð¸ÑÑ‚Ñ€Ð°Ð½Ñ‚Ñ‹', '2018-06-30 18:59:22', '0000-00-00 00:00:00', 1),
(7, 6, 'ÐŸÑ€ÐµÐ¿Ð¾Ð´Ð°Ð²Ð°Ñ‚ÐµÐ»ÑŒ ', 'ÐŸÑ€ÐµÐ¿Ð¾Ð´Ð°Ð²Ð°Ñ‚ÐµÐ»ÑŒ ', '2018-06-30 19:04:29', '0000-00-00 00:00:00', 1),
(8, 6, 'Ð¡Ð¾Ñ‚Ñ€ÑƒÐ´Ð½Ð¸ÐºÐ¸', 'Ð¡Ð¾Ñ‚Ñ€ÑƒÐ´Ð½Ð¸ÐºÐ¸', '2018-06-30 19:04:43', '0000-00-00 00:00:00', 1),
(10, 2, 'Ð‘Ð°ÑÐºÐµÑ‚', 'Ð‘Ð°ÑÐºÐµÑ‚', '2020-02-27 15:31:52', NULL, 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tblfiles`
--
ALTER TABLE `tblfiles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tblpersonal`
--
ALTER TABLE `tblpersonal`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tblphd`
--
ALTER TABLE `tblphd`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tblposts`
--
ALTER TABLE `tblposts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tblstudfile`
--
ALTER TABLE `tblstudfile`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD PRIMARY KEY (`SubCategoryId`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `tblcomments`
--
ALTER TABLE `tblcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `tblfiles`
--
ALTER TABLE `tblfiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `tblpersonal`
--
ALTER TABLE `tblpersonal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `tblphd`
--
ALTER TABLE `tblphd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `tblposts`
--
ALTER TABLE `tblposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `tblstudfile`
--
ALTER TABLE `tblstudfile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  MODIFY `SubCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 16 2019 г., 15:35
-- Версия сервера: 5.5.62-log
-- Версия PHP: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test_prokazan`
--

-- --------------------------------------------------------

--
-- Структура таблицы `add_cats`
--

CREATE TABLE `add_cats` (
  `id` mediumint(9) NOT NULL,
  `rate` mediumint(9) NOT NULL,
  `stat` int(1) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `add_nodes`
--

CREATE TABLE `add_nodes` (
  `id` mediumint(9) NOT NULL,
  `cat` mediumint(9) NOT NULL,
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `author` varchar(255) NOT NULL,
  `contacts` varchar(255) NOT NULL,
  `pics` text NOT NULL,
  `data` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `adverting_cats`
--

CREATE TABLE `adverting_cats` (
  `id` mediumint(9) NOT NULL,
  `rate` mediumint(9) NOT NULL,
  `stat` int(1) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `adverting_lenta`
--

CREATE TABLE `adverting_lenta` (
  `id` mediumint(9) NOT NULL,
  `import` varchar(255) NOT NULL COMMENT 'Метка импортированной новости (сайт и id)',
  `pid` mediumint(9) NOT NULL,
  `bid` mediumint(9) NOT NULL COMMENT 'id баннера из БС',
  `rate` mediumint(9) NOT NULL,
  `cat` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'категория',
  `data` varchar(15) NOT NULL,
  `astat` int(1) NOT NULL DEFAULT '0' COMMENT 'разрешить автопубликацию',
  `adata` varchar(15) NOT NULL DEFAULT '' COMMENT 'время автопубликации',
  `stat` int(1) NOT NULL DEFAULT '0',
  `likes` mediumint(9) NOT NULL DEFAULT '0',
  `dislikes` mediumint(9) NOT NULL DEFAULT '0',
  `seens` mediumint(9) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `lid` text NOT NULL,
  `text` text NOT NULL,
  `alttext` mediumtext NOT NULL,
  `endtext` text NOT NULL,
  `soctext` text NOT NULL,
  `pic` varchar(255) NOT NULL,
  `uid` mediumint(9) NOT NULL,
  `adv` text NOT NULL,
  `pay` text NOT NULL,
  `kw` varchar(255) NOT NULL,
  `ds` varchar(255) NOT NULL,
  `picxy` text NOT NULL,
  `picauth` varchar(255) NOT NULL,
  `realinfo` varchar(255) NOT NULL,
  `cens` varchar(255) NOT NULL,
  `comments` int(1) NOT NULL DEFAULT '0',
  `comcount` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'количество комментариев',
  `tags` text NOT NULL,
  `yarss` int(1) NOT NULL DEFAULT '0' COMMENT 'В яндекс',
  `mailrss` int(1) NOT NULL DEFAULT '0' COMMENT 'в мэйл',
  `tavto` int(1) NOT NULL DEFAULT '0' COMMENT 'в тизеры тавто',
  `onind` int(1) NOT NULL DEFAULT '0' COMMENT 'в телевизор',
  `spec` int(1) NOT NULL DEFAULT '0' COMMENT 'спец. размещение',
  `promo` int(1) NOT NULL DEFAULT '0' COMMENT 'коммерческая новость',
  `spromo` int(1) NOT NULL DEFAULT '0',
  `redak` int(1) NOT NULL DEFAULT '0' COMMENT 'Редакционная колонка',
  `gis` int(1) NOT NULL DEFAULT '0' COMMENT 'Отправить гисметео',
  `mailtizer` int(1) NOT NULL DEFAULT '0' COMMENT 'в тизер Mail',
  `showauthor` tinyint(1) NOT NULL DEFAULT '0',
  `zenyandex` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Отправить в zen.yandex'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `adverting_lenta1`
--

CREATE TABLE `adverting_lenta1` (
  `id` mediumint(9) NOT NULL,
  `import` varchar(255) NOT NULL COMMENT 'Метка импортированной новости (сайт и id)',
  `pid` mediumint(9) NOT NULL,
  `bid` mediumint(9) NOT NULL COMMENT 'id баннера из БС',
  `rate` mediumint(9) NOT NULL,
  `cat` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'категория',
  `data` varchar(15) NOT NULL,
  `astat` int(1) NOT NULL DEFAULT '0' COMMENT 'разрешить автопубликацию',
  `adata` varchar(15) NOT NULL DEFAULT '' COMMENT 'время автопубликации',
  `stat` int(1) NOT NULL DEFAULT '0',
  `likes` mediumint(9) NOT NULL DEFAULT '0',
  `dislikes` mediumint(9) NOT NULL DEFAULT '0',
  `seens` mediumint(9) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `lid` text NOT NULL,
  `text` text NOT NULL,
  `alttext` mediumtext NOT NULL,
  `endtext` text NOT NULL,
  `soctext` text NOT NULL,
  `pic` varchar(255) NOT NULL,
  `uid` mediumint(9) NOT NULL,
  `adv` text NOT NULL,
  `pay` text NOT NULL,
  `kw` varchar(255) NOT NULL,
  `ds` varchar(255) NOT NULL,
  `picxy` text NOT NULL,
  `picauth` varchar(255) NOT NULL,
  `realinfo` varchar(255) NOT NULL,
  `cens` varchar(255) NOT NULL,
  `comments` int(1) NOT NULL DEFAULT '0',
  `comcount` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'количество комментариев',
  `tags` text NOT NULL,
  `yarss` int(1) NOT NULL DEFAULT '0' COMMENT 'В яндекс',
  `mailrss` int(1) NOT NULL DEFAULT '0' COMMENT 'в мэйл',
  `tavto` int(1) NOT NULL DEFAULT '0' COMMENT 'в тизеры тавто',
  `onind` int(1) NOT NULL DEFAULT '0' COMMENT 'в телевизор',
  `spec` int(1) NOT NULL DEFAULT '0' COMMENT 'спец. размещение',
  `promo` int(1) NOT NULL DEFAULT '0' COMMENT 'коммерческая новость',
  `spromo` int(1) NOT NULL DEFAULT '0',
  `redak` int(1) NOT NULL DEFAULT '0' COMMENT 'Редакционная колонка',
  `gis` int(1) NOT NULL DEFAULT '0' COMMENT 'Отправить гисметео',
  `mailtizer` int(1) NOT NULL DEFAULT '0' COMMENT 'в тизер Mail'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `adverting_lenta222`
--

CREATE TABLE `adverting_lenta222` (
  `id` mediumint(9) NOT NULL,
  `import` varchar(255) NOT NULL COMMENT 'Метка импортированной новости (сайт и id)',
  `pid` mediumint(9) NOT NULL,
  `bid` mediumint(9) NOT NULL COMMENT 'id баннера из БС',
  `rate` mediumint(9) NOT NULL,
  `cat` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'категория',
  `data` varchar(15) NOT NULL,
  `astat` int(1) NOT NULL DEFAULT '0' COMMENT 'разрешить автопубликацию',
  `adata` varchar(15) NOT NULL DEFAULT '' COMMENT 'время автопубликации',
  `stat` int(1) NOT NULL DEFAULT '0',
  `likes` mediumint(9) NOT NULL DEFAULT '0',
  `dislikes` mediumint(9) NOT NULL DEFAULT '0',
  `seens` mediumint(9) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `lid` text NOT NULL,
  `text` text NOT NULL,
  `alttext` text NOT NULL,
  `endtext` text NOT NULL,
  `soctext` text NOT NULL,
  `pic` varchar(255) NOT NULL,
  `uid` mediumint(9) NOT NULL,
  `adv` text NOT NULL,
  `pay` text NOT NULL,
  `kw` varchar(255) NOT NULL,
  `ds` varchar(255) NOT NULL,
  `picxy` text NOT NULL,
  `picauth` varchar(255) NOT NULL,
  `realinfo` varchar(255) NOT NULL,
  `cens` varchar(255) NOT NULL,
  `comments` int(1) NOT NULL DEFAULT '0',
  `comcount` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'количество комментариев',
  `tags` text NOT NULL,
  `yarss` int(1) NOT NULL DEFAULT '0' COMMENT 'В яндекс',
  `mailrss` int(1) NOT NULL DEFAULT '0' COMMENT 'в мэйл',
  `tavto` int(1) NOT NULL DEFAULT '0' COMMENT 'в тизеры тавто',
  `onind` int(1) NOT NULL DEFAULT '0' COMMENT 'в телевизор',
  `spec` int(1) NOT NULL DEFAULT '0' COMMENT 'спец. размещение',
  `promo` int(1) NOT NULL DEFAULT '0' COMMENT 'коммерческая новость',
  `spromo` int(1) NOT NULL DEFAULT '0',
  `redak` int(1) NOT NULL DEFAULT '0' COMMENT 'Редакционная колонка',
  `gis` int(1) NOT NULL DEFAULT '0' COMMENT 'Отправить гисметео',
  `mailtizer` int(1) NOT NULL DEFAULT '0' COMMENT 'в тизер Mail'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `advertise_objects`
--

CREATE TABLE `advertise_objects` (
  `id` mediumint(9) NOT NULL,
  `uid` mediumint(9) NOT NULL COMMENT 'пользователь',
  `text` text NOT NULL,
  `phone` varchar(255) NOT NULL,
  `rid` mediumint(9) NOT NULL COMMENT 'раздел',
  `price` mediumint(9) NOT NULL COMMENT 'сумма',
  `stat` int(1) NOT NULL DEFAULT '0' COMMENT '1-оплачено, 0-неоплачено',
  `sets` varchar(255) NOT NULL,
  `data` varchar(255) NOT NULL,
  `datas` text NOT NULL COMMENT 'даты выхода',
  `dop` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `advertise_pays`
--

CREATE TABLE `advertise_pays` (
  `id` mediumint(9) NOT NULL,
  `uid` mediumint(9) NOT NULL DEFAULT '0',
  `oid` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'номер объявления',
  `price` varchar(25) NOT NULL,
  `fio` text NOT NULL,
  `text` text NOT NULL,
  `data` varchar(25) NOT NULL,
  `stat` int(1) NOT NULL DEFAULT '0' COMMENT '1 - оплачено, 0 - нет',
  `confirm` int(1) NOT NULL COMMENT '1 - платеж подтв, 2 - нет'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `advertise_razdels`
--

CREATE TABLE `advertise_razdels` (
  `id` int(11) NOT NULL,
  `rate` mediumint(9) NOT NULL,
  `name` varchar(255) NOT NULL COMMENT 'Название',
  `pid` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'Родитель (id)',
  `stat` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Вкл или Выкл',
  `price` varchar(255) NOT NULL COMMENT 'стоимость'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `advertise_users`
--

CREATE TABLE `advertise_users` (
  `id` mediumint(9) NOT NULL,
  `stat` int(1) NOT NULL DEFAULT '1',
  `login` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `ucode` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `afisha_cats`
--

CREATE TABLE `afisha_cats` (
  `id` mediumint(9) NOT NULL,
  `rate` mediumint(9) NOT NULL,
  `stat` int(1) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `afisha_lenta`
--

CREATE TABLE `afisha_lenta` (
  `id` mediumint(9) NOT NULL,
  `import` varchar(255) NOT NULL COMMENT 'Метка импортированной новости (сайт и id)',
  `pid` mediumint(9) NOT NULL,
  `bid` mediumint(9) NOT NULL COMMENT 'id баннера из БС',
  `rate` mediumint(9) NOT NULL,
  `cat` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'категория',
  `data` varchar(15) NOT NULL,
  `astat` int(1) NOT NULL DEFAULT '0' COMMENT 'разрешить автопубликацию',
  `adata` varchar(15) NOT NULL DEFAULT '' COMMENT 'время автопубликации',
  `stat` int(1) NOT NULL DEFAULT '0',
  `likes` mediumint(9) NOT NULL DEFAULT '0',
  `dislikes` mediumint(9) NOT NULL DEFAULT '0',
  `seens` mediumint(9) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `lid` text NOT NULL,
  `text` text NOT NULL,
  `alttext` longtext NOT NULL,
  `endtext` text NOT NULL,
  `soctext` text NOT NULL,
  `pic` varchar(255) NOT NULL,
  `uid` mediumint(9) NOT NULL,
  `adv` text NOT NULL,
  `pay` text NOT NULL,
  `kw` varchar(255) NOT NULL,
  `ds` varchar(255) NOT NULL,
  `picxy` text NOT NULL,
  `picauth` varchar(255) NOT NULL,
  `realinfo` varchar(255) NOT NULL,
  `cens` varchar(255) NOT NULL,
  `comments` int(1) NOT NULL DEFAULT '0',
  `comcount` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'количество комментариев',
  `tags` text NOT NULL,
  `yarss` int(1) NOT NULL DEFAULT '0' COMMENT 'В яндекс',
  `mailrss` int(1) NOT NULL DEFAULT '0' COMMENT 'в мэйл',
  `tavto` int(1) NOT NULL DEFAULT '0' COMMENT 'в тизеры тавто',
  `onind` int(1) NOT NULL DEFAULT '0' COMMENT 'в телевизор',
  `spec` int(1) NOT NULL DEFAULT '0' COMMENT 'спец. размещение',
  `promo` int(1) NOT NULL DEFAULT '0' COMMENT 'коммерческая новость',
  `spromo` int(1) NOT NULL DEFAULT '0',
  `redak` int(1) NOT NULL DEFAULT '0' COMMENT 'Редакционная колонка',
  `gis` int(1) NOT NULL DEFAULT '0' COMMENT 'Отправить гисметео',
  `mailtizer` int(1) NOT NULL DEFAULT '0' COMMENT 'в тизер Mail',
  `showauthor` tinyint(1) NOT NULL DEFAULT '0',
  `zenyandex` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Отправить в zen.yandex'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `auto_cats`
--

CREATE TABLE `auto_cats` (
  `id` mediumint(9) NOT NULL,
  `rate` mediumint(9) NOT NULL,
  `stat` int(1) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `auto_lenta`
--

CREATE TABLE `auto_lenta` (
  `id` mediumint(9) NOT NULL,
  `import` varchar(255) NOT NULL COMMENT 'Метка импортированной новости (сайт и id)',
  `pid` mediumint(9) NOT NULL,
  `bid` mediumint(9) NOT NULL COMMENT 'id баннера из БС',
  `rate` mediumint(9) NOT NULL,
  `cat` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'категория',
  `data` varchar(15) NOT NULL,
  `astat` int(1) NOT NULL DEFAULT '0' COMMENT 'разрешить автопубликацию',
  `adata` varchar(15) NOT NULL DEFAULT '' COMMENT 'время автопубликации',
  `stat` int(1) NOT NULL DEFAULT '0',
  `likes` mediumint(9) NOT NULL DEFAULT '0',
  `dislikes` mediumint(9) NOT NULL DEFAULT '0',
  `seens` mediumint(9) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `lid` text NOT NULL,
  `text` text NOT NULL,
  `alttext` text NOT NULL,
  `endtext` text NOT NULL,
  `soctext` text NOT NULL,
  `pic` varchar(255) NOT NULL,
  `uid` mediumint(9) NOT NULL,
  `adv` text NOT NULL,
  `pay` text NOT NULL,
  `kw` varchar(255) NOT NULL,
  `ds` varchar(255) NOT NULL,
  `picxy` text NOT NULL,
  `picauth` varchar(255) NOT NULL,
  `realinfo` varchar(255) NOT NULL,
  `cens` varchar(255) NOT NULL,
  `comments` int(1) NOT NULL DEFAULT '0',
  `comcount` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'количество комментариев',
  `tags` text NOT NULL,
  `yarss` int(1) NOT NULL DEFAULT '0' COMMENT 'В яндекс',
  `mailrss` int(1) NOT NULL DEFAULT '0' COMMENT 'в мэйл',
  `tavto` int(1) NOT NULL DEFAULT '0' COMMENT 'в тизеры тавто',
  `onind` int(1) NOT NULL DEFAULT '0' COMMENT 'в телевизор',
  `spec` int(1) NOT NULL DEFAULT '0' COMMENT 'спец. размещение',
  `promo` int(1) NOT NULL DEFAULT '0' COMMENT 'коммерческая новость',
  `spromo` int(1) NOT NULL DEFAULT '0',
  `redak` int(1) NOT NULL DEFAULT '0' COMMENT 'Редакционная колонка',
  `gis` int(1) NOT NULL DEFAULT '0' COMMENT 'Отправить гисметео',
  `mailtizer` int(1) NOT NULL DEFAULT '0' COMMENT 'в тизер Mail',
  `showauthor` tinyint(1) NOT NULL DEFAULT '0',
  `zenyandex` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Отправить в zen.yandex'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `brandsbattle_lenta`
--

CREATE TABLE `brandsbattle_lenta` (
  `id` mediumint(9) NOT NULL,
  `pid` mediumint(9) NOT NULL,
  `rate` mediumint(9) NOT NULL,
  `domain` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'категория',
  `data` varchar(15) NOT NULL COMMENT 'дата создания',
  `astat` int(1) NOT NULL DEFAULT '0' COMMENT 'разрешить автопубликацию',
  `adata` varchar(15) NOT NULL DEFAULT '' COMMENT 'дата автопубликации',
  `stat` int(1) NOT NULL DEFAULT '0',
  `likes` mediumint(9) NOT NULL DEFAULT '0',
  `dislikes` mediumint(9) NOT NULL DEFAULT '0',
  `seens` mediumint(9) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL COMMENT 'заголовок материала',
  `lid` text NOT NULL COMMENT 'лид материала',
  `text` text NOT NULL COMMENT 'основное содержание',
  `alttext` text NOT NULL COMMENT 'альтернативное содержание',
  `endtext` text NOT NULL COMMENT 'заключительный текст',
  `pic` varchar(255) NOT NULL COMMENT 'основная картинка',
  `uid` mediumint(9) NOT NULL,
  `adv` text NOT NULL,
  `pay` text NOT NULL,
  `kw` varchar(255) NOT NULL,
  `ds` varchar(255) NOT NULL,
  `picxy` text NOT NULL COMMENT 'координаты кропа основной картинки',
  `picauth` varchar(255) NOT NULL,
  `realinfo` varchar(255) NOT NULL COMMENT 'информационный источник',
  `cens` varchar(255) NOT NULL COMMENT 'возрастное ограничение',
  `comments` int(1) NOT NULL DEFAULT '0' COMMENT 'статус комментариев',
  `comcount` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'количество комментариев',
  `voting` int(1) NOT NULL DEFAULT '0' COMMENT 'статус голосования',
  `votingend` varchar(15) NOT NULL COMMENT 'дата окончания голосования',
  `votingmode` int(1) NOT NULL DEFAULT '1' COMMENT 'Режим голосования',
  `winnerscount` int(1) NOT NULL DEFAULT '1' COMMENT 'количество победителей',
  `tags` text NOT NULL COMMENT 'теги материала',
  `yarss` int(1) NOT NULL DEFAULT '0' COMMENT 'В яндекс',
  `mailrss` int(1) NOT NULL DEFAULT '0' COMMENT 'в мэйл',
  `tavto` int(1) NOT NULL DEFAULT '0' COMMENT 'в тизеры тавто',
  `onind` int(1) NOT NULL DEFAULT '0' COMMENT 'в телевизор',
  `spec` int(1) NOT NULL DEFAULT '0' COMMENT 'спец. размещение',
  `promo` int(1) NOT NULL DEFAULT '0' COMMENT 'коммерческая новость',
  `spromo` int(1) NOT NULL DEFAULT '0',
  `redak` int(1) NOT NULL DEFAULT '0' COMMENT 'Редакционная колонка',
  `gis` int(1) NOT NULL DEFAULT '0' COMMENT 'Отправить гисметео',
  `galka` int(1) NOT NULL DEFAULT '0' COMMENT 'Просто калка',
  `zenyandex` int(1) NOT NULL DEFAULT '0' COMMENT 'Отправить в zen.yandex'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `business_cats`
--

CREATE TABLE `business_cats` (
  `id` mediumint(9) NOT NULL,
  `rate` mediumint(9) NOT NULL,
  `stat` int(1) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `business_lenta`
--

CREATE TABLE `business_lenta` (
  `id` mediumint(9) NOT NULL,
  `import` varchar(255) NOT NULL COMMENT 'Метка импортированной новости (сайт и id)',
  `pid` mediumint(9) NOT NULL,
  `bid` mediumint(9) NOT NULL COMMENT 'id баннера из БС',
  `rate` mediumint(9) NOT NULL,
  `cat` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'категория',
  `data` varchar(15) NOT NULL,
  `astat` int(1) NOT NULL DEFAULT '0' COMMENT 'разрешить автопубликацию',
  `adata` varchar(15) NOT NULL DEFAULT '' COMMENT 'время автопубликации',
  `stat` int(1) NOT NULL DEFAULT '0',
  `likes` mediumint(9) NOT NULL DEFAULT '0',
  `dislikes` mediumint(9) NOT NULL DEFAULT '0',
  `seens` mediumint(9) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `lid` text NOT NULL,
  `text` text NOT NULL,
  `alttext` text NOT NULL,
  `endtext` text NOT NULL,
  `soctext` text NOT NULL,
  `pic` varchar(255) NOT NULL,
  `uid` mediumint(9) NOT NULL,
  `adv` text NOT NULL,
  `pay` text NOT NULL,
  `kw` varchar(255) NOT NULL,
  `ds` varchar(255) NOT NULL,
  `picxy` text NOT NULL,
  `picauth` varchar(255) NOT NULL,
  `realinfo` varchar(255) NOT NULL,
  `cens` varchar(255) NOT NULL,
  `comments` int(1) NOT NULL DEFAULT '0',
  `comcount` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'количество комментариев',
  `tags` text NOT NULL,
  `yarss` int(1) NOT NULL DEFAULT '0' COMMENT 'В яндекс',
  `mailrss` int(1) NOT NULL DEFAULT '0' COMMENT 'в мэйл',
  `tavto` int(1) NOT NULL DEFAULT '0' COMMENT 'в тизеры тавто',
  `onind` int(1) NOT NULL DEFAULT '0' COMMENT 'в телевизор',
  `spec` int(1) NOT NULL DEFAULT '0' COMMENT 'спец. размещение',
  `promo` int(1) NOT NULL DEFAULT '0' COMMENT 'коммерческая новость',
  `spromo` int(1) NOT NULL DEFAULT '0',
  `redak` int(1) NOT NULL DEFAULT '0' COMMENT 'Редакционная колонка',
  `gis` int(1) NOT NULL DEFAULT '0' COMMENT 'Отправить гисметео',
  `mailtizer` int(1) NOT NULL DEFAULT '0' COMMENT 'в тизер Mail',
  `showauthor` tinyint(1) NOT NULL DEFAULT '0',
  `zenyandex` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Отправить в zen.yandex'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `category150_lenta`
--

CREATE TABLE `category150_lenta` (
  `id` mediumint(9) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `pid` mediumint(9) NOT NULL,
  `bid` mediumint(9) NOT NULL COMMENT 'id баннера из БС',
  `import` varchar(255) NOT NULL COMMENT 'Метка импортированной новости (сайт и id)',
  `rate` mediumint(9) NOT NULL,
  `cat` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'категория',
  `data` varchar(15) NOT NULL,
  `astat` int(1) NOT NULL DEFAULT '0' COMMENT 'разрешить автопубликацию',
  `adata` varchar(15) NOT NULL DEFAULT '' COMMENT 'время автопубликации',
  `stat` int(1) NOT NULL DEFAULT '0',
  `seen` mediumint(9) NOT NULL,
  `likes` mediumint(9) NOT NULL,
  `dislikes` mediumint(9) NOT NULL,
  `seens` mediumint(9) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `lid` text NOT NULL,
  `text` text NOT NULL,
  `alttext` text NOT NULL,
  `endtext` text NOT NULL,
  `pic` varchar(255) NOT NULL,
  `uid` mediumint(9) NOT NULL,
  `adv` text NOT NULL,
  `pay` text NOT NULL,
  `kw` varchar(255) NOT NULL,
  `ds` varchar(255) NOT NULL,
  `picxy` text NOT NULL,
  `picauth` varchar(255) NOT NULL,
  `realinfo` varchar(255) NOT NULL,
  `cens` varchar(255) NOT NULL,
  `comments` int(1) NOT NULL DEFAULT '0',
  `comcount` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'количество комментариев',
  `tags` text NOT NULL,
  `yarss` int(1) NOT NULL DEFAULT '0' COMMENT 'В яндекс',
  `mailrss` int(1) NOT NULL DEFAULT '0' COMMENT 'в мэйл',
  `tavto` int(1) NOT NULL DEFAULT '0' COMMENT 'в тизеры тавто',
  `onind` int(1) NOT NULL DEFAULT '0' COMMENT 'в телевизор',
  `spec` int(1) NOT NULL DEFAULT '0' COMMENT 'спец. размещение',
  `promo` int(1) NOT NULL DEFAULT '0' COMMENT 'коммерческая новость',
  `spromo` varchar(1) NOT NULL,
  `redak` int(1) NOT NULL DEFAULT '0' COMMENT 'Редакционная колонка',
  `gis` int(1) NOT NULL DEFAULT '0' COMMENT 'Отправить гисметео',
  `mailtizer` int(1) NOT NULL DEFAULT '0' COMMENT 'в тизер Mail',
  `preview_mobile` tinyint(1) NOT NULL COMMENT 'Preview in mobile',
  `vk_np` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `category1829_cats`
--

CREATE TABLE `category1829_cats` (
  `id` mediumint(9) NOT NULL,
  `rate` mediumint(9) NOT NULL,
  `stat` int(1) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `category1829_lenta`
--

CREATE TABLE `category1829_lenta` (
  `id` mediumint(9) NOT NULL,
  `import` varchar(255) NOT NULL COMMENT 'Метка импортированной новости (сайт и id)',
  `pid` mediumint(9) NOT NULL,
  `bid` mediumint(9) NOT NULL COMMENT 'id баннера из БС',
  `rate` mediumint(9) NOT NULL,
  `cat` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'категория',
  `data` varchar(15) NOT NULL,
  `astat` int(1) NOT NULL DEFAULT '0' COMMENT 'разрешить автопубликацию',
  `adata` varchar(15) NOT NULL DEFAULT '' COMMENT 'время автопубликации',
  `stat` int(1) NOT NULL DEFAULT '0',
  `seens` int(1) NOT NULL DEFAULT '0',
  `likes` int(1) NOT NULL DEFAULT '0',
  `dislikes` int(1) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `lid` text NOT NULL,
  `text` text NOT NULL,
  `alttext` text NOT NULL,
  `endtext` text NOT NULL,
  `soctext` text NOT NULL,
  `pic` varchar(255) NOT NULL,
  `uid` mediumint(9) NOT NULL,
  `adv` text NOT NULL,
  `pay` text NOT NULL,
  `kw` varchar(255) NOT NULL,
  `ds` varchar(255) NOT NULL,
  `picxy` text NOT NULL,
  `picauth` varchar(255) NOT NULL,
  `realinfo` varchar(255) NOT NULL,
  `cens` varchar(255) NOT NULL,
  `comments` int(1) NOT NULL DEFAULT '0',
  `comcount` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'количество комментариев',
  `tags` text NOT NULL,
  `yarss` int(1) NOT NULL DEFAULT '0' COMMENT 'В яндекс',
  `mailrss` int(1) NOT NULL DEFAULT '0' COMMENT 'в мэйл',
  `tavto` int(1) NOT NULL DEFAULT '0' COMMENT 'в тизеры тавто',
  `onind` int(1) NOT NULL DEFAULT '0' COMMENT 'в телевизор',
  `spec` int(1) NOT NULL DEFAULT '0' COMMENT 'спец. размещение',
  `promo` int(1) NOT NULL DEFAULT '0' COMMENT 'коммерческая новость',
  `spromo` int(1) NOT NULL DEFAULT '0' COMMENT 'VIP коммерческая новость',
  `redak` int(1) NOT NULL DEFAULT '0' COMMENT 'Редакционная колонка',
  `gis` int(1) NOT NULL DEFAULT '0' COMMENT 'Отправить гисметео',
  `mailtizer` int(1) NOT NULL DEFAULT '0' COMMENT 'в тизер Mail'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `companies_actions`
--

CREATE TABLE `companies_actions` (
  `id` mediumint(9) NOT NULL,
  `rate` mediumint(9) NOT NULL,
  `stat` int(1) NOT NULL DEFAULT '0',
  `data` varchar(15) NOT NULL,
  `todata` varchar(15) NOT NULL,
  `pid` mediumint(9) NOT NULL,
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `pic` varchar(255) NOT NULL,
  `pics` text NOT NULL,
  `tags` text NOT NULL,
  `rest` text NOT NULL,
  `fas` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `companies_cats`
--

CREATE TABLE `companies_cats` (
  `id` mediumint(9) NOT NULL,
  `rate` mediumint(9) NOT NULL,
  `stat` int(1) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `pic` varchar(255) NOT NULL,
  `pid` mediumint(9) NOT NULL,
  `type` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `companies_contacts`
--

CREATE TABLE `companies_contacts` (
  `id` mediumint(9) NOT NULL,
  `adres` text NOT NULL,
  `urik` text NOT NULL,
  `phone` varchar(255) NOT NULL,
  `maps` varchar(255) NOT NULL,
  `worktime` text NOT NULL,
  `pid` mediumint(9) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `companies_items`
--

CREATE TABLE `companies_items` (
  `id` mediumint(9) NOT NULL,
  `rate` mediumint(9) NOT NULL,
  `stat` int(1) NOT NULL DEFAULT '0',
  `cats` varchar(255) NOT NULL COMMENT 'категория',
  `consultscats` varchar(255) NOT NULL,
  `data` varchar(15) NOT NULL,
  `todata` varchar(15) NOT NULL,
  `uid` mediumint(9) NOT NULL,
  `name` varchar(255) NOT NULL,
  `anonce` text NOT NULL,
  `text` text NOT NULL,
  `pic` varchar(255) NOT NULL,
  `site` varchar(255) NOT NULL,
  `vip` int(1) NOT NULL DEFAULT '0',
  `urik` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `companies_qa`
--

CREATE TABLE `companies_qa` (
  `id` mediumint(9) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `pic` varchar(255) NOT NULL,
  `pid` mediumint(9) NOT NULL DEFAULT '0',
  `cid` mediumint(9) NOT NULL DEFAULT '0',
  `rid` mediumint(9) NOT NULL,
  `data` varchar(15) NOT NULL,
  `pics` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `concurs_lenta`
--

CREATE TABLE `concurs_lenta` (
  `id` mediumint(9) NOT NULL,
  `pid` mediumint(9) NOT NULL,
  `rate` mediumint(9) NOT NULL,
  `domain` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'Домен',
  `data` varchar(15) NOT NULL COMMENT 'дата создания',
  `astat` int(1) NOT NULL DEFAULT '0' COMMENT 'разрешить автопубликацию',
  `adata` varchar(15) NOT NULL DEFAULT '' COMMENT 'дата автопубликации',
  `stat` int(1) NOT NULL DEFAULT '0',
  `likes` mediumint(9) NOT NULL DEFAULT '0',
  `dislikes` mediumint(9) NOT NULL DEFAULT '0',
  `seens` mediumint(9) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL COMMENT 'заголовок материала',
  `lid` text NOT NULL COMMENT 'лид материала',
  `text` text NOT NULL COMMENT 'основное содержание',
  `alttext` text NOT NULL COMMENT 'альтернативное содержание',
  `endtext` text NOT NULL COMMENT 'заключительный текст',
  `pic` varchar(255) NOT NULL COMMENT 'основная картинка',
  `uid` mediumint(9) NOT NULL,
  `adv` text NOT NULL,
  `pay` text NOT NULL,
  `kw` varchar(255) NOT NULL,
  `ds` varchar(255) NOT NULL,
  `picxy` text NOT NULL COMMENT 'координаты кропа основной картинки',
  `picauth` varchar(255) NOT NULL,
  `realinfo` varchar(255) NOT NULL COMMENT 'информационный источник',
  `cens` varchar(255) NOT NULL COMMENT 'возрастное ограничение',
  `comments` int(1) NOT NULL DEFAULT '0' COMMENT 'статус комментариев',
  `comcount` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'количество комментариев',
  `voting` int(1) NOT NULL DEFAULT '0' COMMENT 'статус голосования',
  `votingend` varchar(15) NOT NULL COMMENT 'дата окончания голосования',
  `elemsstyle` int(1) NOT NULL DEFAULT '3' COMMENT 'стиль номинантов в голосовании',
  `winnerscount` int(1) NOT NULL DEFAULT '1' COMMENT 'количество победителей',
  `tags` text NOT NULL COMMENT 'теги материала',
  `yarss` int(1) NOT NULL DEFAULT '0' COMMENT 'В яндекс',
  `mailrss` int(1) NOT NULL DEFAULT '0' COMMENT 'в мэйл',
  `tavto` int(1) NOT NULL DEFAULT '0' COMMENT 'в тизеры тавто',
  `onind` int(1) NOT NULL DEFAULT '0' COMMENT 'в телевизор',
  `spec` int(1) NOT NULL DEFAULT '0' COMMENT 'спец. размещение',
  `promo` int(1) NOT NULL DEFAULT '0' COMMENT 'коммерческая новость',
  `spromo` int(1) NOT NULL DEFAULT '0',
  `redak` int(1) NOT NULL DEFAULT '0' COMMENT 'Редакционная колонка',
  `gis` int(1) NOT NULL DEFAULT '0' COMMENT 'Отправить гисметео',
  `mailtizer` int(1) NOT NULL DEFAULT '0' COMMENT 'в тизер Mail'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `economy_cats`
--

CREATE TABLE `economy_cats` (
  `id` mediumint(9) NOT NULL,
  `rate` mediumint(9) NOT NULL,
  `stat` int(1) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `lid` text NOT NULL,
  `pic` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `economy_lenta`
--

CREATE TABLE `economy_lenta` (
  `id` mediumint(9) NOT NULL,
  `import` varchar(255) NOT NULL COMMENT 'Метка импортированной новости (сайт и id)',
  `pid` mediumint(9) NOT NULL,
  `bid` mediumint(9) NOT NULL COMMENT 'id баннера из БС',
  `rate` mediumint(9) NOT NULL,
  `cat` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'категория',
  `data` varchar(15) NOT NULL,
  `astat` int(1) NOT NULL DEFAULT '0' COMMENT 'разрешить автопубликацию',
  `adata` varchar(15) NOT NULL DEFAULT '' COMMENT 'время автопубликации',
  `stat` int(1) NOT NULL DEFAULT '0',
  `seens` int(1) NOT NULL DEFAULT '0',
  `likes` int(1) NOT NULL DEFAULT '0',
  `dislikes` int(1) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `lid` text NOT NULL,
  `text` text NOT NULL,
  `alttext` text NOT NULL,
  `endtext` text NOT NULL,
  `soctext` text NOT NULL,
  `pic` varchar(255) NOT NULL,
  `uid` mediumint(9) NOT NULL,
  `adv` text NOT NULL,
  `pay` text NOT NULL,
  `kw` varchar(255) NOT NULL,
  `ds` varchar(255) NOT NULL,
  `picxy` text NOT NULL,
  `picauth` varchar(255) NOT NULL,
  `realinfo` varchar(255) NOT NULL,
  `cens` varchar(255) NOT NULL,
  `comments` int(1) NOT NULL DEFAULT '0',
  `comcount` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'количество комментариев',
  `tags` text NOT NULL,
  `yarss` int(1) NOT NULL DEFAULT '0' COMMENT 'В яндекс',
  `mailrss` int(1) NOT NULL DEFAULT '0' COMMENT 'в мэйл',
  `tavto` int(1) NOT NULL DEFAULT '0' COMMENT 'в тизеры тавто',
  `onind` int(1) NOT NULL DEFAULT '0' COMMENT 'в телевизор',
  `spec` int(1) NOT NULL DEFAULT '0' COMMENT 'спец. размещение',
  `promo` int(1) NOT NULL DEFAULT '0' COMMENT 'коммерческая новость',
  `spromo` int(1) NOT NULL DEFAULT '0' COMMENT 'VIP коммерческая новость',
  `redak` int(1) NOT NULL DEFAULT '0' COMMENT 'Редакционная колонка',
  `gis` int(1) NOT NULL DEFAULT '0' COMMENT 'Отправить гисметео',
  `mailtizer` int(1) NOT NULL DEFAULT '0' COMMENT 'в тизер Mail'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `livestream_cats`
--

CREATE TABLE `livestream_cats` (
  `id` mediumint(9) NOT NULL,
  `rate` mediumint(9) NOT NULL,
  `stat` int(1) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `livestream_lenta`
--

CREATE TABLE `livestream_lenta` (
  `id` mediumint(9) NOT NULL,
  `stream_link` varchar(127) NOT NULL,
  `stream_iframe` varchar(255) NOT NULL DEFAULT '',
  `import` varchar(255) NOT NULL COMMENT 'Метка импортированной новости (сайт и id)',
  `pid` mediumint(9) NOT NULL,
  `bid` mediumint(9) NOT NULL COMMENT 'id баннера из БС',
  `rate` mediumint(9) NOT NULL,
  `cat` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'категория',
  `data` varchar(15) NOT NULL,
  `astat` int(1) NOT NULL DEFAULT '0' COMMENT 'разрешить автопубликацию',
  `adata` varchar(15) NOT NULL DEFAULT '' COMMENT 'время автопубликации',
  `stat` int(1) NOT NULL DEFAULT '0',
  `seens` int(1) NOT NULL DEFAULT '0',
  `likes` int(1) NOT NULL DEFAULT '0',
  `dislikes` int(1) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `lid` text NOT NULL,
  `text` text NOT NULL,
  `alttext` text NOT NULL,
  `endtext` text NOT NULL,
  `soctext` text NOT NULL,
  `pic` varchar(255) NOT NULL,
  `uid` mediumint(9) NOT NULL,
  `adv` text NOT NULL,
  `pay` text NOT NULL,
  `kw` varchar(255) NOT NULL,
  `ds` varchar(255) NOT NULL,
  `picxy` text NOT NULL,
  `picauth` varchar(255) NOT NULL,
  `realinfo` varchar(255) NOT NULL,
  `cens` varchar(255) NOT NULL,
  `comments` int(1) NOT NULL DEFAULT '0',
  `comcount` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'количество комментариев',
  `tags` text NOT NULL,
  `yarss` int(1) NOT NULL DEFAULT '0' COMMENT 'В яндекс',
  `mailrss` int(1) NOT NULL DEFAULT '0' COMMENT 'в мэйл',
  `tavto` int(1) NOT NULL DEFAULT '0' COMMENT 'в тизеры тавто',
  `onind` int(1) NOT NULL DEFAULT '0' COMMENT 'в телевизор',
  `spec` int(1) NOT NULL DEFAULT '0' COMMENT 'спец. размещение',
  `promo` int(1) NOT NULL DEFAULT '0' COMMENT 'коммерческая новость',
  `spromo` int(1) NOT NULL DEFAULT '0' COMMENT 'VIP коммерческая новость',
  `redak` int(1) NOT NULL DEFAULT '0' COMMENT 'Редакционная колонка',
  `gis` int(1) NOT NULL DEFAULT '0' COMMENT 'Отправить гисметео',
  `mailtizer` int(1) NOT NULL DEFAULT '0' COMMENT 'в тизер Mail',
  `showauthor` tinyint(1) NOT NULL DEFAULT '0',
  `start` varchar(15) NOT NULL,
  `end` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `live_cat`
--

CREATE TABLE `live_cat` (
  `id` mediumint(9) NOT NULL,
  `rate` mediumint(9) NOT NULL,
  `fid` mediumint(9) NOT NULL COMMENT 'Номер форума в _forum',
  `tcnt` mediumint(9) NOT NULL COMMENT 'количество тем в категории',
  `comcount` mediumint(9) NOT NULL COMMENT 'количество комментариев',
  `uid` mediumint(9) NOT NULL COMMENT 'Пользователь, обновивший тему',
  `stat` int(1) NOT NULL DEFAULT '1',
  `lock` int(1) NOT NULL DEFAULT '0',
  `add` int(1) NOT NULL DEFAULT '1' COMMENT 'разрешить темы пользователей',
  `data` varchar(25) NOT NULL,
  `update` varchar(25) NOT NULL,
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `pic` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Категории форума';

-- --------------------------------------------------------

--
-- Структура таблицы `live_forum`
--

CREATE TABLE `live_forum` (
  `id` mediumint(9) NOT NULL,
  `rate` mediumint(9) NOT NULL,
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `pic` varchar(255) NOT NULL,
  `stat` int(1) NOT NULL,
  `add` int(1) NOT NULL DEFAULT '1' COMMENT 'разрешить создавать темы пользователям'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Список форумов';

-- --------------------------------------------------------

--
-- Структура таблицы `live_lenta`
--

CREATE TABLE `live_lenta` (
  `id` mediumint(9) NOT NULL,
  `cid` mediumint(9) NOT NULL COMMENT 'id категории',
  `fid` mediumint(9) NOT NULL COMMENT 'id форума',
  `uid` mediumint(9) NOT NULL COMMENT 'id пользователя',
  `uname` varchar(64) NOT NULL DEFAULT '',
  `tags` varchar(255) NOT NULL,
  `stat` int(1) NOT NULL DEFAULT '1',
  `lock` int(1) NOT NULL DEFAULT '0' COMMENT 'закрепить тему',
  `comments` int(1) NOT NULL DEFAULT '0' COMMENT 'разрешить комментарии',
  `data` varchar(25) NOT NULL,
  `update` varchar(25) NOT NULL,
  `comcount` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'количество комментариев',
  `clast` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'id последнего комментария',
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `pic` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Список тем пользователей';

-- --------------------------------------------------------

--
-- Структура таблицы `ls_cats`
--

CREATE TABLE `ls_cats` (
  `id` mediumint(9) NOT NULL,
  `rate` mediumint(9) NOT NULL,
  `stat` int(1) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ls_lenta`
--

CREATE TABLE `ls_lenta` (
  `id` mediumint(9) NOT NULL,
  `import` varchar(255) NOT NULL COMMENT 'Метка импортированной новости (сайт и id)',
  `pid` mediumint(9) NOT NULL,
  `bid` mediumint(9) NOT NULL COMMENT 'id баннера',
  `rate` mediumint(9) NOT NULL,
  `cat` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'категория',
  `data` varchar(15) NOT NULL,
  `astat` int(1) NOT NULL DEFAULT '0' COMMENT 'разрешить автопубликацию',
  `adata` varchar(15) NOT NULL DEFAULT '' COMMENT 'время автопубликации',
  `stat` int(1) NOT NULL DEFAULT '0',
  `likes` mediumint(9) NOT NULL DEFAULT '0',
  `dislikes` mediumint(9) NOT NULL DEFAULT '0',
  `seens` mediumint(9) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `lid` text NOT NULL,
  `text` text NOT NULL,
  `alttext` longtext NOT NULL,
  `endtext` text NOT NULL,
  `soctext` text NOT NULL,
  `pic` varchar(255) NOT NULL,
  `uid` mediumint(9) NOT NULL,
  `adv` text NOT NULL,
  `pay` text NOT NULL,
  `kw` varchar(255) NOT NULL,
  `ds` varchar(255) NOT NULL,
  `picxy` text NOT NULL,
  `picauth` varchar(255) NOT NULL,
  `realinfo` varchar(255) NOT NULL,
  `cens` varchar(255) NOT NULL,
  `comments` int(1) NOT NULL DEFAULT '0',
  `comcount` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'количество комментариев',
  `tags` text NOT NULL,
  `yarss` int(1) NOT NULL DEFAULT '0' COMMENT 'В яндекс',
  `mailrss` int(1) NOT NULL DEFAULT '0' COMMENT 'в мэйл',
  `tavto` int(1) NOT NULL DEFAULT '0' COMMENT 'в тизеры тавто',
  `onind` int(1) NOT NULL DEFAULT '0' COMMENT 'в телевизор',
  `spec` int(1) NOT NULL DEFAULT '0' COMMENT 'спец. размещение',
  `promo` int(1) NOT NULL DEFAULT '0' COMMENT 'коммерческая новость',
  `spromo` int(1) NOT NULL DEFAULT '0',
  `redak` int(1) NOT NULL DEFAULT '0' COMMENT 'Редакционная колонка',
  `gis` int(1) NOT NULL DEFAULT '0' COMMENT 'Отправить гисметео',
  `mailtizer` int(1) NOT NULL DEFAULT '0' COMMENT 'в тизер Mail',
  `showauthor` tinyint(1) NOT NULL DEFAULT '0',
  `zenyandex` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Отправить в zen.yandex'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `news_cats`
--

CREATE TABLE `news_cats` (
  `id` mediumint(9) NOT NULL,
  `rate` mediumint(9) NOT NULL,
  `stat` int(1) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `news_lenta`
--

CREATE TABLE `news_lenta` (
  `id` mediumint(9) NOT NULL,
  `import` varchar(255) NOT NULL COMMENT 'Метка импортированной новости (сайт и id)',
  `pid` mediumint(9) NOT NULL,
  `bid` mediumint(9) NOT NULL COMMENT 'id баннера из БС',
  `rate` mediumint(9) NOT NULL,
  `cat` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'категория',
  `data` varchar(15) NOT NULL,
  `astat` int(1) NOT NULL DEFAULT '0' COMMENT 'разрешить автопубликацию',
  `adata` varchar(15) NOT NULL DEFAULT '' COMMENT 'время автопубликации',
  `stat` int(1) NOT NULL DEFAULT '0',
  `likes` mediumint(9) NOT NULL DEFAULT '0',
  `dislikes` mediumint(9) NOT NULL DEFAULT '0',
  `seens` int(5) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `lid` text NOT NULL,
  `text` text NOT NULL,
  `alttext` longtext NOT NULL,
  `endtext` text NOT NULL,
  `soctext` text NOT NULL,
  `pic` varchar(255) NOT NULL,
  `uid` mediumint(9) NOT NULL,
  `adv` text NOT NULL,
  `pay` text NOT NULL,
  `kw` varchar(255) NOT NULL,
  `ds` varchar(255) NOT NULL,
  `picxy` text NOT NULL,
  `picauth` varchar(255) NOT NULL,
  `realinfo` varchar(255) NOT NULL,
  `cens` varchar(255) NOT NULL,
  `comments` int(1) NOT NULL DEFAULT '0',
  `comcount` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'количество комментариев',
  `tags` text NOT NULL,
  `yarss` int(1) NOT NULL DEFAULT '0' COMMENT 'В яндекс',
  `mailrss` int(1) NOT NULL DEFAULT '0' COMMENT 'в мэйл',
  `tavto` int(1) NOT NULL DEFAULT '0' COMMENT 'в тизеры тавто',
  `onind` int(1) NOT NULL DEFAULT '0' COMMENT 'в телевизор',
  `spec` int(1) NOT NULL DEFAULT '0' COMMENT 'спец. размещение',
  `promo` int(1) NOT NULL DEFAULT '0' COMMENT 'коммерческая новость',
  `spromo` int(1) NOT NULL DEFAULT '0',
  `redak` int(1) NOT NULL DEFAULT '0' COMMENT 'Редакционная колонка',
  `gis` int(1) NOT NULL DEFAULT '0' COMMENT 'Отправить гисметео',
  `mailtizer` int(1) NOT NULL DEFAULT '0' COMMENT 'в тизер Mail',
  `showauthor` tinyint(1) NOT NULL DEFAULT '0',
  `zenyandex` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Отправить в zen.yandex'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `realestatenews_cats`
--

CREATE TABLE `realestatenews_cats` (
  `id` mediumint(9) NOT NULL,
  `rate` mediumint(9) NOT NULL,
  `stat` int(1) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `realestatenews_lenta`
--

CREATE TABLE `realestatenews_lenta` (
  `id` mediumint(9) NOT NULL,
  `import` varchar(255) NOT NULL COMMENT 'Метка импортированной новости (сайт и id)',
  `pid` mediumint(9) NOT NULL,
  `bid` mediumint(9) NOT NULL COMMENT 'id баннера из БС',
  `rate` mediumint(9) NOT NULL,
  `cat` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'категория',
  `data` varchar(15) NOT NULL,
  `astat` int(1) NOT NULL DEFAULT '0' COMMENT 'разрешить автопубликацию',
  `adata` varchar(15) NOT NULL DEFAULT '' COMMENT 'время автопубликации',
  `stat` int(1) NOT NULL DEFAULT '0',
  `likes` mediumint(9) NOT NULL DEFAULT '0',
  `dislikes` mediumint(9) NOT NULL DEFAULT '0',
  `seens` mediumint(9) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `lid` text NOT NULL,
  `text` text NOT NULL,
  `alttext` text NOT NULL,
  `endtext` text NOT NULL,
  `soctext` text NOT NULL,
  `pic` varchar(255) NOT NULL,
  `uid` mediumint(9) NOT NULL,
  `adv` text NOT NULL,
  `pay` text NOT NULL,
  `kw` varchar(255) NOT NULL,
  `ds` varchar(255) NOT NULL,
  `picxy` text NOT NULL,
  `picauth` varchar(255) NOT NULL,
  `realinfo` varchar(255) NOT NULL,
  `cens` varchar(255) NOT NULL,
  `comments` int(1) NOT NULL DEFAULT '0',
  `comcount` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'количество комментариев',
  `tags` text NOT NULL,
  `yarss` int(1) NOT NULL DEFAULT '0' COMMENT 'В яндекс',
  `mailrss` int(1) NOT NULL DEFAULT '0' COMMENT 'в мэйл',
  `tavto` int(1) NOT NULL DEFAULT '0' COMMENT 'в тизеры тавто',
  `onind` int(1) NOT NULL DEFAULT '0' COMMENT 'в телевизор',
  `spec` int(1) NOT NULL DEFAULT '0' COMMENT 'спец. размещение',
  `promo` int(1) NOT NULL DEFAULT '0' COMMENT 'коммерческая новость',
  `spromo` int(1) NOT NULL DEFAULT '0',
  `redak` int(1) NOT NULL DEFAULT '0' COMMENT 'Редакционная колонка',
  `gis` int(1) NOT NULL DEFAULT '0' COMMENT 'Отправить гисметео',
  `mailtizer` int(1) NOT NULL DEFAULT '0' COMMENT 'в тизер Mail',
  `showauthor` tinyint(1) NOT NULL DEFAULT '0',
  `zenyandex` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Отправить в zen.yandex'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `realestate_cats`
--

CREATE TABLE `realestate_cats` (
  `id` tinyint(3) UNSIGNED NOT NULL COMMENT 'Идентификатор категории',
  `rate` mediumint(9) NOT NULL COMMENT 'Порядок сортировки',
  `stat` int(1) NOT NULL DEFAULT '1' COMMENT '??',
  `name` varchar(255) NOT NULL COMMENT 'Название',
  `text` text NOT NULL COMMENT 'Текст'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Идентификатор категории';

-- --------------------------------------------------------

--
-- Структура таблицы `realestate_contacts`
--

CREATE TABLE `realestate_contacts` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Идентификатор ленты',
  `forum_theme` mediumint(9) NOT NULL DEFAULT '0',
  `site_url` varchar(255) DEFAULT NULL COMMENT 'Сайт',
  `phone` varchar(20) DEFAULT '' COMMENT 'Телефон',
  `email` varchar(255) DEFAULT NULL COMMENT 'Электронная почта',
  `address` varchar(255) DEFAULT NULL COMMENT 'Адрес жилищного комплекса',
  `soc_net_link1` varchar(255) DEFAULT NULL COMMENT 'социальная сеть 1',
  `soc_net_link2` varchar(255) DEFAULT NULL COMMENT 'социальная сеть 2',
  `soc_net_link3` varchar(255) DEFAULT NULL COMMENT 'социальная сеть 3',
  `price_list` varchar(255) DEFAULT NULL COMMENT 'Прайс-лист'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `realestate_lenta`
--

CREATE TABLE `realestate_lenta` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Идентификатор рубрики',
  `pid` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'Id родительской рубрики',
  `bid` mediumint(9) NOT NULL COMMENT 'id баннера из БС',
  `import` varchar(255) DEFAULT NULL COMMENT 'Метка импортированной новости (сайт и id)',
  `rate` mediumint(9) NOT NULL COMMENT 'Порядок сортировки',
  `cat` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'категория',
  `data` varchar(15) NOT NULL COMMENT 'Дата',
  `astat` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'разрешить автопубликацию',
  `adata` varchar(15) NOT NULL DEFAULT '' COMMENT 'время автопубликации',
  `stat` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(200) NOT NULL COMMENT 'Название',
  `lid` text NOT NULL,
  `text` text NOT NULL COMMENT 'Основной текст',
  `alttext` varchar(255) NOT NULL COMMENT 'Краткое описание',
  `endtext` text COMMENT 'Полное описание',
  `pic` varchar(255) DEFAULT NULL COMMENT 'Путь к изображению',
  `uid` int(10) UNSIGNED DEFAULT NULL COMMENT 'Id пользователя',
  `adv` text,
  `pay` text,
  `kw` varchar(255) NOT NULL COMMENT 'Meta keyword',
  `ds` varchar(255) NOT NULL COMMENT 'Mets description',
  `picxy` text COMMENT 'Опции изображения',
  `picauth` varchar(255) NOT NULL,
  `realinfo` varchar(255) NOT NULL,
  `cens` varchar(255) NOT NULL COMMENT 'Цензор',
  `comments` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Опции коментариев',
  `comcount` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'количество комментариев',
  `tags` text NOT NULL COMMENT 'Связка тегов',
  `yarss` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'В яндекс',
  `mailrss` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'в мэйл',
  `tavto` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'в тизеры тавто',
  `onind` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'в телевизор',
  `spec` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'спец. размещение',
  `promo` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'коммерческая новость',
  `redak` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Редакционная колонка',
  `gis` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Отправить гисметео',
  `mailtizer` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'в тизер Mail'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='superwiki-рубрики разделов';

-- --------------------------------------------------------

--
-- Структура таблицы `sport_cats`
--

CREATE TABLE `sport_cats` (
  `id` mediumint(9) NOT NULL,
  `rate` mediumint(9) NOT NULL,
  `stat` int(1) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `sport_lenta`
--

CREATE TABLE `sport_lenta` (
  `id` mediumint(9) NOT NULL,
  `import` varchar(255) NOT NULL COMMENT 'Метка импортированной новости (сайт и id)',
  `pid` mediumint(9) NOT NULL,
  `bid` mediumint(9) NOT NULL COMMENT 'id баннера из БС',
  `rate` mediumint(9) NOT NULL,
  `cat` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'категория',
  `data` varchar(15) NOT NULL,
  `astat` int(1) NOT NULL DEFAULT '0' COMMENT 'разрешить автопубликацию',
  `adata` varchar(15) NOT NULL DEFAULT '' COMMENT 'время автопубликации',
  `stat` int(1) NOT NULL DEFAULT '0',
  `likes` mediumint(9) NOT NULL DEFAULT '0',
  `dislikes` mediumint(9) NOT NULL DEFAULT '0',
  `seens` mediumint(9) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `lid` text NOT NULL,
  `text` text NOT NULL,
  `alttext` text NOT NULL,
  `endtext` text NOT NULL,
  `soctext` text NOT NULL,
  `pic` varchar(255) NOT NULL,
  `uid` mediumint(9) NOT NULL,
  `adv` text NOT NULL,
  `pay` text NOT NULL,
  `kw` varchar(255) NOT NULL,
  `ds` varchar(255) NOT NULL,
  `picxy` text NOT NULL,
  `picauth` varchar(255) NOT NULL,
  `realinfo` varchar(255) NOT NULL,
  `cens` varchar(255) NOT NULL,
  `comments` int(1) NOT NULL DEFAULT '0',
  `comcount` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'количество комментариев',
  `tags` text NOT NULL,
  `yarss` int(1) NOT NULL DEFAULT '0' COMMENT 'В яндекс',
  `mailrss` int(1) NOT NULL DEFAULT '0' COMMENT 'в мэйл',
  `tavto` int(1) NOT NULL DEFAULT '0' COMMENT 'в тизеры тавто',
  `onind` int(1) NOT NULL DEFAULT '0' COMMENT 'в телевизор',
  `spec` int(1) NOT NULL DEFAULT '0' COMMENT 'спец. размещение',
  `promo` int(1) NOT NULL DEFAULT '0' COMMENT 'коммерческая новость',
  `spromo` int(1) NOT NULL DEFAULT '0',
  `redak` int(1) NOT NULL DEFAULT '0' COMMENT 'Редакционная колонка',
  `gis` int(1) NOT NULL DEFAULT '0' COMMENT 'Отправить гисметео',
  `mailtizer` int(1) NOT NULL DEFAULT '0' COMMENT 'в тизер Mail',
  `showauthor` tinyint(1) NOT NULL DEFAULT '0',
  `zenyandex` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Отправить в zen.yandex'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wiki_cats`
--

CREATE TABLE `wiki_cats` (
  `id` tinyint(3) UNSIGNED NOT NULL COMMENT 'Идентификатор категории',
  `rate` mediumint(9) NOT NULL COMMENT 'Порядок сортировки',
  `stat` int(1) NOT NULL DEFAULT '1' COMMENT '??',
  `name` varchar(255) NOT NULL COMMENT 'Название',
  `text` text NOT NULL COMMENT 'Текст'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Идентификатор категории';

-- --------------------------------------------------------

--
-- Структура таблицы `wiki_lenta`
--

CREATE TABLE `wiki_lenta` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Идентификатор рубрики',
  `pid` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'Id родительской рубрики',
  `bid` mediumint(9) NOT NULL COMMENT 'id баннера из БС',
  `import` varchar(255) DEFAULT NULL COMMENT 'Метка импортированной новости (сайт и id)',
  `rate` mediumint(9) NOT NULL COMMENT 'Порядок сортировки',
  `cat` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'категория',
  `data` varchar(15) NOT NULL COMMENT 'Дата',
  `astat` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'разрешить автопубликацию',
  `adata` varchar(15) NOT NULL DEFAULT '' COMMENT 'время автопубликации',
  `stat` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(200) NOT NULL COMMENT 'Название',
  `lid` text NOT NULL,
  `text` text NOT NULL COMMENT 'Основной текст',
  `alttext` varchar(255) NOT NULL COMMENT 'Краткое описание',
  `endtext` text COMMENT 'Полное описание',
  `pic` varchar(255) DEFAULT NULL COMMENT 'Путь к изображению',
  `uid` int(10) UNSIGNED DEFAULT NULL COMMENT 'Id пользователя',
  `adv` text,
  `pay` text,
  `kw` varchar(255) NOT NULL COMMENT 'Meta keyword',
  `ds` varchar(255) NOT NULL COMMENT 'Mets description',
  `picxy` text COMMENT 'Опции изображения',
  `picauth` varchar(255) NOT NULL,
  `realinfo` varchar(255) NOT NULL,
  `cens` varchar(255) NOT NULL COMMENT 'Цензор',
  `comments` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Опции коментариев',
  `comcount` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'количество комментариев',
  `tags` text NOT NULL COMMENT 'Связка тегов',
  `yarss` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'В яндекс',
  `mailrss` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'в мэйл',
  `tavto` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'в тизеры тавто',
  `onind` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'в телевизор',
  `spec` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'спец. размещение',
  `promo` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'коммерческая новость',
  `redak` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Редакционная колонка',
  `gis` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Отправить гисметео',
  `mailtizer` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'в тизер Mail'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='wiki-рубрики разделов';

-- --------------------------------------------------------

--
-- Структура таблицы `world_cats`
--

CREATE TABLE `world_cats` (
  `id` mediumint(9) NOT NULL,
  `rate` mediumint(9) NOT NULL,
  `stat` int(1) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `world_lenta`
--

CREATE TABLE `world_lenta` (
  `id` mediumint(9) NOT NULL,
  `import` varchar(255) NOT NULL COMMENT 'Метка импортированной новости (сайт и id)',
  `pid` mediumint(9) NOT NULL,
  `bid` mediumint(9) NOT NULL COMMENT 'id баннера из БС',
  `rate` mediumint(9) NOT NULL,
  `cat` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'категория',
  `data` varchar(15) NOT NULL,
  `astat` int(1) NOT NULL DEFAULT '0' COMMENT 'разрешить автопубликацию',
  `adata` varchar(15) NOT NULL DEFAULT '' COMMENT 'время автопубликации',
  `stat` int(1) NOT NULL DEFAULT '0',
  `likes` mediumint(9) NOT NULL DEFAULT '0',
  `dislikes` mediumint(9) NOT NULL DEFAULT '0',
  `seens` mediumint(9) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `lid` text NOT NULL,
  `text` text NOT NULL,
  `alttext` text NOT NULL,
  `endtext` text NOT NULL,
  `soctext` text NOT NULL,
  `pic` varchar(255) NOT NULL,
  `uid` mediumint(9) NOT NULL,
  `adv` text NOT NULL,
  `pay` text NOT NULL,
  `kw` varchar(255) NOT NULL,
  `ds` varchar(255) NOT NULL,
  `picxy` text NOT NULL,
  `picauth` varchar(255) NOT NULL,
  `realinfo` varchar(255) NOT NULL,
  `cens` varchar(255) NOT NULL,
  `comments` int(1) NOT NULL DEFAULT '0',
  `comcount` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'количество комментариев',
  `tags` text NOT NULL,
  `yarss` int(1) NOT NULL DEFAULT '0' COMMENT 'В яндекс',
  `mailrss` int(1) NOT NULL DEFAULT '0' COMMENT 'в мэйл',
  `tavto` int(1) NOT NULL DEFAULT '0' COMMENT 'в тизеры тавто',
  `onind` int(1) NOT NULL DEFAULT '0' COMMENT 'в телевизор',
  `spec` int(1) NOT NULL DEFAULT '0' COMMENT 'спец. размещение',
  `promo` int(1) NOT NULL DEFAULT '0' COMMENT 'коммерческая новость',
  `spromo` int(1) NOT NULL DEFAULT '0',
  `redak` int(1) NOT NULL DEFAULT '0' COMMENT 'Редакционная колонка',
  `gis` int(1) NOT NULL DEFAULT '0' COMMENT 'Отправить гисметео',
  `mailtizer` int(1) NOT NULL DEFAULT '0' COMMENT 'в тизер Mail',
  `showauthor` tinyint(1) NOT NULL DEFAULT '0',
  `zenyandex` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Отправить в zen.yandex'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `_banners_items`
--

CREATE TABLE `_banners_items` (
  `id` mediumint(9) NOT NULL,
  `zid` mediumint(9) NOT NULL COMMENT 'номер заявки',
  `stat` int(1) NOT NULL,
  `prior` int(3) NOT NULL COMMENT 'Приоритет',
  `pid` mediumint(9) NOT NULL COMMENT 'Место размещения',
  `cid` mediumint(9) NOT NULL COMMENT 'Компания',
  `did` varchar(255) NOT NULL COMMENT 'Поддомен',
  `datafrom` varchar(15) NOT NULL,
  `datato` varchar(15) NOT NULL,
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `pic` varchar(255) NOT NULL,
  `flash` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `html5` text NOT NULL,
  `link` text NOT NULL,
  `link2` text NOT NULL,
  `link3` text NOT NULL,
  `outer` text NOT NULL COMMENT 'Внешний счетчик'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `_banners_orders`
--

CREATE TABLE `_banners_orders` (
  `id` mediumint(9) NOT NULL,
  `stat` int(1) NOT NULL,
  `zid` mediumint(9) NOT NULL COMMENT 'номер заявки',
  `pid` mediumint(9) NOT NULL COMMENT 'место размещения',
  `cid` mediumint(9) NOT NULL COMMENT 'компания',
  `did` varchar(255) NOT NULL COMMENT 'домен',
  `datafrom` varchar(15) NOT NULL,
  `datato` varchar(15) NOT NULL,
  `dataart` text NOT NULL COMMENT 'Даты выхода статей',
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `_banners_pos`
--

CREATE TABLE `_banners_pos` (
  `id` mediumint(9) NOT NULL,
  `name` varchar(255) NOT NULL COMMENT 'название',
  `stat` int(1) NOT NULL COMMENT 'статус',
  `width` varchar(10) NOT NULL COMMENT 'ширина',
  `height` varchar(10) NOT NULL COMMENT 'высота',
  `rotate` int(5) NOT NULL COMMENT 'в ротации',
  `rate` mediumint(9) NOT NULL COMMENT 'порядок'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `_banners_stat`
--

CREATE TABLE `_banners_stat` (
  `bid` mediumint(9) NOT NULL,
  `data` varchar(10) NOT NULL,
  `s` mediumint(9) NOT NULL,
  `us` mediumint(9) NOT NULL,
  `c` mediumint(9) NOT NULL,
  `uc` mediumint(9) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `_captions`
--

CREATE TABLE `_captions` (
  `page` varchar(255) NOT NULL COMMENT 'Адрес кэш страницы',
  `name` varchar(255) NOT NULL COMMENT 'Заголовок страницы',
  `data` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `_commentf`
--

CREATE TABLE `_commentf` (
  `id` mediumint(9) NOT NULL,
  `pid` mediumint(9) NOT NULL,
  `uid` mediumint(9) NOT NULL,
  `text` text NOT NULL,
  `pic` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Файлы комментариев';

-- --------------------------------------------------------

--
-- Структура таблицы `_comments`
--

CREATE TABLE `_comments` (
  `id` mediumint(9) NOT NULL,
  `link` varchar(255) NOT NULL,
  `pid` mediumint(9) NOT NULL,
  `uid` mediumint(9) NOT NULL,
  `uname` varchar(255) NOT NULL,
  `vkid` varchar(255) NOT NULL,
  `referer` varchar(255) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `from` varchar(5) NOT NULL,
  `data` varchar(25) NOT NULL,
  `likes` mediumint(9) NOT NULL DEFAULT '0',
  `dislikes` mediumint(9) NOT NULL DEFAULT '0',
  `stat` varchar(1) NOT NULL,
  `toid` mediumint(9) NOT NULL DEFAULT '0',
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Записи комментариев';

-- --------------------------------------------------------

--
-- Структура таблицы `_cron`
--

CREATE TABLE `_cron` (
  `id` mediumint(9) NOT NULL,
  `rate` mediumint(9) NOT NULL COMMENT 'Название задания',
  `stat` int(1) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL COMMENT 'путь к сприпту',
  `runtime` varchar(25) NOT NULL COMMENT 'время запуска',
  `lasttime` varchar(25) NOT NULL COMMENT 'последний запуск',
  `log` text NOT NULL COMMENT 'результат последнего запуска'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `_crosslink`
--

CREATE TABLE `_crosslink` (
  `id` mediumint(9) NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `_designs`
--

CREATE TABLE `_designs` (
  `name` varchar(255) NOT NULL COMMENT 'Название',
  `folder` varchar(255) NOT NULL COMMENT 'Название папки',
  `stat` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Основной или нет'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `_domains`
--

CREATE TABLE `_domains` (
  `id` mediumint(9) NOT NULL,
  `prefix` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL COMMENT 'название',
  `design` varchar(255) NOT NULL COMMENT 'сопоставленный дизайн из _design'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `_editors`
--

CREATE TABLE `_editors` (
  `id` bigint(40) NOT NULL,
  `stat` tinyint(1) NOT NULL,
  `photo` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(127) NOT NULL,
  `prof` varchar(127) NOT NULL,
  `uid` bigint(40) NOT NULL,
  `text` varchar(1023) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `_imagemaster`
--

CREATE TABLE `_imagemaster` (
  `id` mediumint(9) NOT NULL,
  `name` varchar(255) NOT NULL,
  `podlogpic` varchar(255) NOT NULL,
  `typepic` varchar(25) NOT NULL,
  `typeform` varchar(25) NOT NULL,
  `posit` varchar(1) NOT NULL,
  `posx` mediumint(9) NOT NULL DEFAULT '0',
  `posy` mediumint(9) NOT NULL DEFAULT '0',
  `round` mediumint(9) NOT NULL DEFAULT '0',
  `fontsize` mediumint(9) NOT NULL DEFAULT '20',
  `fontcolor` varchar(25) NOT NULL DEFAULT '000000',
  `fontfamily` varchar(255) NOT NULL DEFAULT 'Arial',
  `fontchars` mediumint(9) NOT NULL DEFAULT '21'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `_imports`
--

CREATE TABLE `_imports` (
  `id` mediumint(9) NOT NULL,
  `site` varchar(255) NOT NULL COMMENT 'откуда брать',
  `stat` int(1) NOT NULL DEFAULT '0' COMMENT '1-вкл, 0-выкл',
  `lenta_out` varchar(255) NOT NULL COMMENT 'лента донор',
  `lenta_out_cat` mediumint(9) NOT NULL COMMENT 'лента реципиент',
  `lenta_in` varchar(255) NOT NULL COMMENT '1-все, 0-по-выбору',
  `lenta_in_cat` mediumint(9) NOT NULL,
  `type` int(1) NOT NULL DEFAULT '0',
  `last` varchar(25) NOT NULL COMMENT 'последний запрос'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `_lentalog`
--

CREATE TABLE `_lentalog` (
  `link` varchar(255) NOT NULL,
  `id` mediumint(9) NOT NULL,
  `uid` mediumint(9) NOT NULL,
  `data` varchar(25) NOT NULL,
  `ip` varchar(25) NOT NULL,
  `text` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `_likes`
--

CREATE TABLE `_likes` (
  `id` mediumint(9) NOT NULL,
  `data` varchar(25) NOT NULL,
  `ip` varchar(30) NOT NULL,
  `like` int(1) NOT NULL DEFAULT '1' COMMENT '1-like,0-dislike',
  `pid` mediumint(9) NOT NULL,
  `link` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `_menuitem`
--

CREATE TABLE `_menuitem` (
  `id` int(11) NOT NULL,
  `nid` mediumint(9) NOT NULL COMMENT 'номер списка меню',
  `rate` mediumint(9) NOT NULL,
  `name` varchar(255) NOT NULL COMMENT 'Название',
  `link` varchar(255) NOT NULL COMMENT 'Ссылка',
  `pid` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'Родитель (id)',
  `stat` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Вкл или Выкл',
  `class` varchar(255) NOT NULL COMMENT 'Класс добавка к DIV'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `_menulist`
--

CREATE TABLE `_menulist` (
  `id` mediumint(9) NOT NULL COMMENT 'это nid в элементах меню',
  `stat` varchar(1) NOT NULL DEFAULT '0' COMMENT '1 - вкл, 0 - выкл',
  `name` varchar(255) NOT NULL,
  `link` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `_mistakes`
--

CREATE TABLE `_mistakes` (
  `id` mediumint(9) NOT NULL,
  `stat` int(1) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `comment` text NOT NULL,
  `data` varchar(12) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `_modules`
--

CREATE TABLE `_modules` (
  `id` mediumint(9) NOT NULL,
  `name` varchar(255) NOT NULL COMMENT 'Название',
  `lvl` varchar(1) NOT NULL COMMENT 'Уровень модуля',
  `module` varchar(255) NOT NULL COMMENT 'Папка и модуль ',
  `sql` text NOT NULL COMMENT 'SQL Запрос',
  `source` text NOT NULL COMMENT 'используемые таблицы',
  `text` text NOT NULL COMMENT 'Описание',
  `sets` text NOT NULL COMMENT 'Настройки по умолчанию'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Список доступных модулей';

-- --------------------------------------------------------

--
-- Структура таблицы `_pages`
--

CREATE TABLE `_pages` (
  `id` mediumint(9) NOT NULL,
  `uid` mediumint(9) NOT NULL,
  `stat` int(1) NOT NULL DEFAULT '0' COMMENT '1-Вкл, 0-Выкл',
  `main` varchar(1) NOT NULL COMMENT '1-стандарт, 0-пользовательский',
  `pid` mediumint(9) NOT NULL COMMENT 'Родитель ID',
  `rate` mediumint(9) NOT NULL COMMENT 'Rate sort',
  `domain` mediumint(9) NOT NULL COMMENT 'Домен 3 уровня',
  `design` varchar(50) NOT NULL COMMENT 'Дизайн',
  `module` varchar(255) NOT NULL COMMENT 'Тип модуля',
  `orderby` varchar(255) NOT NULL DEFAULT '0',
  `onpage` varchar(3) NOT NULL DEFAULT '30',
  `sets` text NOT NULL COMMENT 'Настройки модуля',
  `lvl` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Уровень',
  `link` varchar(255) NOT NULL COMMENT 'Ссылка',
  `inmap` varchar(1) NOT NULL DEFAULT '1' COMMENT 'Добавить в карту сайта',
  `hidden` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Спрятать модуль',
  `isindex` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Является ли главной страницей сайта',
  `data` varchar(25) NOT NULL COMMENT 'Дата создания',
  `name` varchar(255) NOT NULL COMMENT 'Полное имя',
  `shortname` varchar(255) NOT NULL COMMENT 'Короткое имя',
  `pretext` text NOT NULL,
  `text` text NOT NULL COMMENT 'Содержание',
  `tags` text NOT NULL,
  `kw` varchar(255) NOT NULL COMMENT 'Ключевые слова',
  `ds` varchar(255) NOT NULL COMMENT 'Дескрипшн'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Основная таблица страниц и разделов';

-- --------------------------------------------------------

--
-- Структура таблицы `_planes`
--

CREATE TABLE `_planes` (
  `id` mediumint(9) NOT NULL,
  `data` varchar(25) NOT NULL,
  `name` text NOT NULL,
  `auth` varchar(255) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `_rss`
--

CREATE TABLE `_rss` (
  `id` mediumint(9) NOT NULL,
  `virtlink` varchar(255) NOT NULL,
  `reallink` varchar(255) NOT NULL,
  `lasttime` int(12) NOT NULL,
  `sets` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `_search`
--

CREATE TABLE `_search` (
  `id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `data` int(12) NOT NULL,
  `stat` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `_settings`
--

CREATE TABLE `_settings` (
  `id` mediumint(9) NOT NULL,
  `stat` varchar(1) NOT NULL DEFAULT '0' COMMENT 'users-0, main-1, cache-2, 3 -socials',
  `type` varchar(5) NOT NULL DEFAULT 'var' COMMENT 'var - переменная, text - текст',
  `name` varchar(25) NOT NULL COMMENT 'Название переменной',
  `text` text NOT NULL,
  `value` text NOT NULL COMMENT 'Значение переменной'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `_shared`
--

CREATE TABLE `_shared` (
  `id` bigint(30) NOT NULL,
  `pid` bigint(30) NOT NULL COMMENT 'news id',
  `network` varchar(30) CHARACTER SET utf8 NOT NULL COMMENT 'social network name',
  `uid` bigint(30) NOT NULL COMMENT 'user id',
  `ip` varchar(40) CHARACTER SET utf8 NOT NULL COMMENT 'user ip'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `_tags`
--

CREATE TABLE `_tags` (
  `id` mediumint(9) NOT NULL,
  `name` varchar(255) NOT NULL,
  `stat` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `_tracker`
--

CREATE TABLE `_tracker` (
  `uid` mediumint(9) NOT NULL,
  `link` varchar(255) NOT NULL,
  `pid` mediumint(9) NOT NULL,
  `data` varchar(25) NOT NULL,
  `stat` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `_users`
--

CREATE TABLE `_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip` varchar(15) NOT NULL,
  `role` varchar(2) NOT NULL DEFAULT '0',
  `login` varchar(50) NOT NULL DEFAULT '',
  `nick` varchar(255) NOT NULL COMMENT '??????? ??? ??????',
  `pass` varchar(32) NOT NULL DEFAULT '',
  `referer` varchar(255) NOT NULL,
  `vkontakte` varchar(255) NOT NULL,
  `mailru` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `odnoklas` varchar(255) NOT NULL,
  `google` varchar(255) NOT NULL,
  `yandex` varchar(255) NOT NULL,
  `mail` varchar(320) DEFAULT '',
  `spectitle` varchar(255) NOT NULL,
  `signature` varchar(255) NOT NULL DEFAULT '',
  `created` int(11) NOT NULL DEFAULT '0',
  `lasttime` int(11) NOT NULL DEFAULT '0',
  `stat` tinyint(4) NOT NULL DEFAULT '0',
  `karma` int(11) NOT NULL DEFAULT '1',
  `avatar` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `_widget_ask`
--

CREATE TABLE `_widget_ask` (
  `id` mediumint(9) NOT NULL,
  `link` varchar(255) NOT NULL,
  `pid` mediumint(9) NOT NULL,
  `data` varchar(25) NOT NULL,
  `uid` mediumint(9) NOT NULL,
  `askname` varchar(255) NOT NULL,
  `asktext` text NOT NULL,
  `ansname` varchar(255) NOT NULL,
  `anstext` text NOT NULL,
  `anspic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `_widget_cards`
--

CREATE TABLE `_widget_cards` (
  `id` mediumint(9) NOT NULL,
  `link` varchar(255) NOT NULL,
  `pid` mediumint(9) NOT NULL,
  `rate` mediumint(9) NOT NULL,
  `num` varchar(255) NOT NULL,
  `name` text NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `_widget_contacts`
--

CREATE TABLE `_widget_contacts` (
  `id` mediumint(9) NOT NULL,
  `name` varchar(255) CHARACTER SET cp1251 NOT NULL,
  `pic` varchar(255) CHARACTER SET cp1251 NOT NULL,
  `address` varchar(255) CHARACTER SET cp1251 NOT NULL,
  `phone` varchar(255) CHARACTER SET cp1251 NOT NULL,
  `web` varchar(255) NOT NULL,
  `anonce` text CHARACTER SET cp1251 NOT NULL,
  `link` varchar(255) CHARACTER SET cp1251 NOT NULL,
  `pid` mediumint(9) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `_widget_eventmap`
--

CREATE TABLE `_widget_eventmap` (
  `id` mediumint(9) NOT NULL COMMENT 'ID события',
  `pid` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'ID родительской записи',
  `tid` mediumint(9) NOT NULL COMMENT 'тип события',
  `link` varchar(255) CHARACTER SET cp1251 NOT NULL COMMENT 'Ссылка на модуль-родитель записи',
  `period` int(3) NOT NULL,
  `data` varchar(15) CHARACTER SET cp1251 NOT NULL COMMENT 'Дата создания',
  `stat` int(1) NOT NULL COMMENT 'Статус события',
  `promo` int(1) NOT NULL COMMENT 'Закреплённое событие',
  `name` varchar(255) CHARACTER SET cp1251 NOT NULL COMMENT 'Название события',
  `text` text CHARACTER SET cp1251 NOT NULL COMMENT 'Описание события',
  `maps` varchar(255) CHARACTER SET cp1251 NOT NULL COMMENT 'Координаты',
  `pic` varchar(255) CHARACTER SET cp1251 NOT NULL COMMENT 'Фотография события',
  `icon` varchar(255) CHARACTER SET cp1251 NOT NULL COMMENT 'Иконка события'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `_widget_eventtype`
--

CREATE TABLE `_widget_eventtype` (
  `id` mediumint(9) NOT NULL,
  `name` varchar(255) CHARACTER SET cp1251 NOT NULL,
  `stat` varchar(1) CHARACTER SET cp1251 NOT NULL DEFAULT '1',
  `rate` mediumint(9) NOT NULL,
  `pic` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `_widget_insta`
--

CREATE TABLE `_widget_insta` (
  `id` varchar(50) NOT NULL,
  `stat` varchar(1) NOT NULL DEFAULT '1',
  `text` text NOT NULL,
  `data` varchar(10) NOT NULL,
  `likes` mediumint(9) NOT NULL DEFAULT '0',
  `piclink` varchar(255) NOT NULL,
  `picname` varchar(255) NOT NULL,
  `picpreview` varchar(255) NOT NULL,
  `picoriginal` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `userlink` varchar(50) NOT NULL,
  `useravatar` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `_widget_pics`
--

CREATE TABLE `_widget_pics` (
  `id` mediumint(9) NOT NULL,
  `pid` mediumint(9) NOT NULL COMMENT 'Id записи',
  `link` varchar(255) NOT NULL COMMENT 'link razdela',
  `pic` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `author` varchar(255) NOT NULL,
  `point` varchar(255) NOT NULL,
  `stat` int(1) NOT NULL DEFAULT '1',
  `data` varchar(12) NOT NULL,
  `rate` mediumint(9) NOT NULL,
  `picxy` text NOT NULL,
  `sets` varchar(255) NOT NULL COMMENT 'Любые настройки'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `_widget_questions`
--

CREATE TABLE `_widget_questions` (
  `id` mediumint(9) NOT NULL,
  `link` varchar(255) NOT NULL,
  `pid` mediumint(9) NOT NULL,
  `rate` mediumint(9) NOT NULL,
  `name` text NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `_widget_video`
--

CREATE TABLE `_widget_video` (
  `id` mediumint(9) NOT NULL,
  `link` varchar(255) NOT NULL,
  `pid` mediumint(9) NOT NULL,
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `_widget_vk`
--

CREATE TABLE `_widget_vk` (
  `vkid` varchar(255) NOT NULL,
  `stat` int(1) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `userlink` varchar(255) NOT NULL,
  `data` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `pic` varchar(255) NOT NULL,
  `tag` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `_widget_votes`
--

CREATE TABLE `_widget_votes` (
  `id` mediumint(9) NOT NULL,
  `link` varchar(255) NOT NULL COMMENT 'раздел сайта',
  `vid` mediumint(9) NOT NULL COMMENT 'id ответа',
  `uid` mediumint(9) NOT NULL COMMENT 'id пользователя или 0',
  `data` varchar(20) NOT NULL COMMENT 'дата: 20120115',
  `ip` varchar(20) NOT NULL,
  `pid` mediumint(9) NOT NULL COMMENT 'id вопроса'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `_widget_voting`
--

CREATE TABLE `_widget_voting` (
  `id` mediumint(9) NOT NULL,
  `pid` mediumint(9) NOT NULL COMMENT 'id записи',
  `link` varchar(255) NOT NULL COMMENT 'раздел записи',
  `vid` mediumint(9) NOT NULL COMMENT '0 - для вопроса, id_вопроса для ответа',
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `sets` text NOT NULL,
  `stat` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `add_cats`
--
ALTER TABLE `add_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `add_nodes`
--
ALTER TABLE `add_nodes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `adverting_cats`
--
ALTER TABLE `adverting_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `adverting_lenta`
--
ALTER TABLE `adverting_lenta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`),
  ADD KEY `stat` (`stat`),
  ADD KEY `data` (`data`),
  ADD KEY `uid` (`uid`),
  ADD KEY `onind` (`onind`),
  ADD KEY `promo` (`promo`),
  ADD KEY `spromo` (`spromo`),
  ADD KEY `redak` (`redak`);

--
-- Индексы таблицы `adverting_lenta1`
--
ALTER TABLE `adverting_lenta1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`),
  ADD KEY `stat` (`stat`),
  ADD KEY `data` (`data`),
  ADD KEY `uid` (`uid`),
  ADD KEY `onind` (`onind`),
  ADD KEY `promo` (`promo`),
  ADD KEY `spromo` (`spromo`),
  ADD KEY `redak` (`redak`);

--
-- Индексы таблицы `adverting_lenta222`
--
ALTER TABLE `adverting_lenta222`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`),
  ADD KEY `stat` (`stat`),
  ADD KEY `data` (`data`),
  ADD KEY `uid` (`uid`),
  ADD KEY `onind` (`onind`),
  ADD KEY `promo` (`promo`),
  ADD KEY `spromo` (`spromo`),
  ADD KEY `redak` (`redak`);

--
-- Индексы таблицы `advertise_objects`
--
ALTER TABLE `advertise_objects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data` (`data`),
  ADD KEY `uid` (`uid`);

--
-- Индексы таблицы `advertise_pays`
--
ALTER TABLE `advertise_pays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oid` (`oid`);

--
-- Индексы таблицы `advertise_razdels`
--
ALTER TABLE `advertise_razdels`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `advertise_users`
--
ALTER TABLE `advertise_users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `afisha_cats`
--
ALTER TABLE `afisha_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `afisha_lenta`
--
ALTER TABLE `afisha_lenta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`),
  ADD KEY `stat` (`stat`),
  ADD KEY `data` (`data`),
  ADD KEY `uid` (`uid`),
  ADD KEY `onind` (`onind`),
  ADD KEY `promo` (`promo`),
  ADD KEY `spromo` (`spromo`),
  ADD KEY `redak` (`redak`),
  ADD KEY `afisha_stat_onind` (`stat`,`data`,`onind`);

--
-- Индексы таблицы `auto_cats`
--
ALTER TABLE `auto_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `auto_lenta`
--
ALTER TABLE `auto_lenta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`),
  ADD KEY `uid` (`uid`),
  ADD KEY `stat` (`stat`),
  ADD KEY `data` (`data`),
  ADD KEY `onind` (`onind`),
  ADD KEY `promo` (`promo`),
  ADD KEY `spromo` (`spromo`),
  ADD KEY `redak` (`redak`);

--
-- Индексы таблицы `brandsbattle_lenta`
--
ALTER TABLE `brandsbattle_lenta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`),
  ADD KEY `data` (`data`),
  ADD KEY `stat` (`stat`),
  ADD KEY `uid` (`uid`),
  ADD KEY `onind` (`onind`),
  ADD KEY `promo` (`promo`),
  ADD KEY `spromo` (`spromo`),
  ADD KEY `redak` (`redak`);

--
-- Индексы таблицы `business_cats`
--
ALTER TABLE `business_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `business_lenta`
--
ALTER TABLE `business_lenta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`),
  ADD KEY `stat` (`stat`),
  ADD KEY `data` (`data`),
  ADD KEY `uid` (`uid`),
  ADD KEY `onind` (`onind`),
  ADD KEY `promo` (`promo`),
  ADD KEY `spromo` (`spromo`),
  ADD KEY `redak` (`redak`);

--
-- Индексы таблицы `category150_lenta`
--
ALTER TABLE `category150_lenta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`),
  ADD KEY `likes` (`likes`),
  ADD KEY `seen` (`seen`),
  ADD KEY `stat` (`stat`),
  ADD KEY `uid` (`uid`),
  ADD KEY `onind` (`onind`),
  ADD KEY `promo` (`promo`),
  ADD KEY `spromo` (`spromo`),
  ADD KEY `redak` (`redak`),
  ADD KEY `data` (`data`),
  ADD KEY `preview_mobile` (`preview_mobile`);

--
-- Индексы таблицы `category1829_cats`
--
ALTER TABLE `category1829_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `category1829_lenta`
--
ALTER TABLE `category1829_lenta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`);

--
-- Индексы таблицы `companies_actions`
--
ALTER TABLE `companies_actions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `companies_cats`
--
ALTER TABLE `companies_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `companies_contacts`
--
ALTER TABLE `companies_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `companies_items`
--
ALTER TABLE `companies_items`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `companies_qa`
--
ALTER TABLE `companies_qa`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `concurs_lenta`
--
ALTER TABLE `concurs_lenta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`),
  ADD KEY `data` (`data`),
  ADD KEY `stat` (`stat`),
  ADD KEY `uid` (`uid`),
  ADD KEY `onind` (`onind`),
  ADD KEY `promo` (`promo`),
  ADD KEY `spromo` (`spromo`),
  ADD KEY `redak` (`redak`);

--
-- Индексы таблицы `economy_cats`
--
ALTER TABLE `economy_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `economy_lenta`
--
ALTER TABLE `economy_lenta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`),
  ADD KEY `data` (`data`),
  ADD KEY `stat` (`stat`),
  ADD KEY `uid` (`uid`),
  ADD KEY `onind` (`onind`),
  ADD KEY `promo` (`promo`),
  ADD KEY `spromo` (`spromo`),
  ADD KEY `redak` (`redak`);

--
-- Индексы таблицы `livestream_cats`
--
ALTER TABLE `livestream_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `livestream_lenta`
--
ALTER TABLE `livestream_lenta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`);

--
-- Индексы таблицы `live_cat`
--
ALTER TABLE `live_cat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rate` (`rate`,`uid`),
  ADD KEY `fid` (`fid`),
  ADD KEY `update` (`update`),
  ADD KEY `stat` (`stat`),
  ADD KEY `update_2` (`update`);

--
-- Индексы таблицы `live_forum`
--
ALTER TABLE `live_forum`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `live_lenta`
--
ALTER TABLE `live_lenta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cid` (`cid`,`fid`,`stat`,`update`),
  ADD KEY `uid` (`uid`),
  ADD KEY `lock` (`lock`),
  ADD KEY `tags` (`tags`),
  ADD KEY `stat` (`stat`),
  ADD KEY `data` (`data`);

--
-- Индексы таблицы `ls_cats`
--
ALTER TABLE `ls_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `ls_lenta`
--
ALTER TABLE `ls_lenta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`),
  ADD KEY `stat` (`stat`),
  ADD KEY `data` (`data`),
  ADD KEY `uid` (`uid`),
  ADD KEY `onind` (`onind`),
  ADD KEY `promo` (`promo`),
  ADD KEY `spromo` (`spromo`),
  ADD KEY `redak` (`redak`);

--
-- Индексы таблицы `news_cats`
--
ALTER TABLE `news_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news_lenta`
--
ALTER TABLE `news_lenta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`),
  ADD KEY `onind` (`onind`),
  ADD KEY `promo` (`promo`),
  ADD KEY `stat` (`stat`),
  ADD KEY `data` (`data`),
  ADD KEY `uid` (`uid`),
  ADD KEY `spromo` (`spromo`),
  ADD KEY `redak` (`redak`);

--
-- Индексы таблицы `realestatenews_cats`
--
ALTER TABLE `realestatenews_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `realestatenews_lenta`
--
ALTER TABLE `realestatenews_lenta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`),
  ADD KEY `data` (`data`),
  ADD KEY `stat` (`stat`),
  ADD KEY `uid` (`uid`),
  ADD KEY `onind` (`onind`),
  ADD KEY `promo` (`promo`),
  ADD KEY `spromo` (`spromo`),
  ADD KEY `redak` (`redak`);

--
-- Индексы таблицы `realestate_cats`
--
ALTER TABLE `realestate_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `realestate_contacts`
--
ALTER TABLE `realestate_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `realestate_lenta`
--
ALTER TABLE `realestate_lenta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`),
  ADD KEY `FK__realestate_lenta__realestate_cats` (`cat`),
  ADD KEY `data` (`data`),
  ADD KEY `stat` (`stat`),
  ADD KEY `uid` (`uid`),
  ADD KEY `onind` (`onind`),
  ADD KEY `promo` (`promo`),
  ADD KEY `redak` (`redak`);

--
-- Индексы таблицы `sport_cats`
--
ALTER TABLE `sport_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sport_lenta`
--
ALTER TABLE `sport_lenta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`),
  ADD KEY `stat` (`stat`),
  ADD KEY `data` (`data`),
  ADD KEY `uid` (`uid`),
  ADD KEY `onind` (`onind`),
  ADD KEY `promo` (`promo`),
  ADD KEY `spromo` (`spromo`),
  ADD KEY `redak` (`redak`);

--
-- Индексы таблицы `wiki_cats`
--
ALTER TABLE `wiki_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wiki_lenta`
--
ALTER TABLE `wiki_lenta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`),
  ADD KEY `FK__wiki_lenta__wiki_cats` (`cat`),
  ADD KEY `data` (`data`),
  ADD KEY `stat` (`stat`),
  ADD KEY `uid` (`uid`),
  ADD KEY `onind` (`onind`),
  ADD KEY `promo` (`promo`),
  ADD KEY `redak` (`redak`);

--
-- Индексы таблицы `world_cats`
--
ALTER TABLE `world_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `world_lenta`
--
ALTER TABLE `world_lenta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`),
  ADD KEY `data` (`data`),
  ADD KEY `stat` (`stat`),
  ADD KEY `uid` (`uid`),
  ADD KEY `onind` (`onind`),
  ADD KEY `promo` (`promo`),
  ADD KEY `spromo` (`spromo`),
  ADD KEY `redak` (`redak`);

--
-- Индексы таблицы `_banners_items`
--
ALTER TABLE `_banners_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `stat` (`stat`,`pid`,`datafrom`,`datato`),
  ADD KEY `did` (`did`);

--
-- Индексы таблицы `_banners_orders`
--
ALTER TABLE `_banners_orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `_banners_pos`
--
ALTER TABLE `_banners_pos`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `_banners_stat`
--
ALTER TABLE `_banners_stat`
  ADD UNIQUE KEY `bid` (`bid`,`data`);

--
-- Индексы таблицы `_captions`
--
ALTER TABLE `_captions`
  ADD PRIMARY KEY (`page`);

--
-- Индексы таблицы `_commentf`
--
ALTER TABLE `_commentf`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`);

--
-- Индексы таблицы `_comments`
--
ALTER TABLE `_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link` (`link`),
  ADD KEY `pid` (`pid`);

--
-- Индексы таблицы `_cron`
--
ALTER TABLE `_cron`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stat` (`stat`);

--
-- Индексы таблицы `_crosslink`
--
ALTER TABLE `_crosslink`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link` (`link`);

--
-- Индексы таблицы `_designs`
--
ALTER TABLE `_designs`
  ADD PRIMARY KEY (`folder`);

--
-- Индексы таблицы `_domains`
--
ALTER TABLE `_domains`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `prefix` (`prefix`);

--
-- Индексы таблицы `_editors`
--
ALTER TABLE `_editors`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `_imagemaster`
--
ALTER TABLE `_imagemaster`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `_imports`
--
ALTER TABLE `_imports`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `_lentalog`
--
ALTER TABLE `_lentalog`
  ADD KEY `link` (`link`,`id`);

--
-- Индексы таблицы `_likes`
--
ALTER TABLE `_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `link` (`link`,`data`,`ip`);

--
-- Индексы таблицы `_menuitem`
--
ALTER TABLE `_menuitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nid` (`nid`);

--
-- Индексы таблицы `_menulist`
--
ALTER TABLE `_menulist`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `_mistakes`
--
ALTER TABLE `_mistakes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `_modules`
--
ALTER TABLE `_modules`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `_pages`
--
ALTER TABLE `_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link` (`link`);

--
-- Индексы таблицы `_planes`
--
ALTER TABLE `_planes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data` (`data`);

--
-- Индексы таблицы `_rss`
--
ALTER TABLE `_rss`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `_search`
--
ALTER TABLE `_search`
  ADD UNIQUE KEY `id` (`id`,`link`);

--
-- Индексы таблицы `_settings`
--
ALTER TABLE `_settings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `_shared`
--
ALTER TABLE `_shared`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pid` (`pid`,`network`,`uid`,`ip`);

--
-- Индексы таблицы `_tags`
--
ALTER TABLE `_tags`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `_tracker`
--
ALTER TABLE `_tracker`
  ADD UNIQUE KEY `uid` (`uid`,`link`,`pid`);

--
-- Индексы таблицы `_users`
--
ALTER TABLE `_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created` (`created`),
  ADD KEY `mail` (`mail`(255));

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `add_cats`
--
ALTER TABLE `add_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `add_nodes`
--
ALTER TABLE `add_nodes`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31429;

--
-- AUTO_INCREMENT для таблицы `adverting_cats`
--
ALTER TABLE `adverting_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `adverting_lenta`
--
ALTER TABLE `adverting_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2503;

--
-- AUTO_INCREMENT для таблицы `adverting_lenta1`
--
ALTER TABLE `adverting_lenta1`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1119;

--
-- AUTO_INCREMENT для таблицы `adverting_lenta222`
--
ALTER TABLE `adverting_lenta222`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1119;

--
-- AUTO_INCREMENT для таблицы `advertise_objects`
--
ALTER TABLE `advertise_objects`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19662;

--
-- AUTO_INCREMENT для таблицы `advertise_pays`
--
ALTER TABLE `advertise_pays`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29370;

--
-- AUTO_INCREMENT для таблицы `advertise_razdels`
--
ALTER TABLE `advertise_razdels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT для таблицы `advertise_users`
--
ALTER TABLE `advertise_users`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1744;

--
-- AUTO_INCREMENT для таблицы `afisha_cats`
--
ALTER TABLE `afisha_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `afisha_lenta`
--
ALTER TABLE `afisha_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=439;

--
-- AUTO_INCREMENT для таблицы `auto_cats`
--
ALTER TABLE `auto_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `auto_lenta`
--
ALTER TABLE `auto_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79825;

--
-- AUTO_INCREMENT для таблицы `brandsbattle_lenta`
--
ALTER TABLE `brandsbattle_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT для таблицы `business_cats`
--
ALTER TABLE `business_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `business_lenta`
--
ALTER TABLE `business_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72107;

--
-- AUTO_INCREMENT для таблицы `category150_lenta`
--
ALTER TABLE `category150_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1866;

--
-- AUTO_INCREMENT для таблицы `category1829_cats`
--
ALTER TABLE `category1829_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `category1829_lenta`
--
ALTER TABLE `category1829_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `companies_actions`
--
ALTER TABLE `companies_actions`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT для таблицы `companies_cats`
--
ALTER TABLE `companies_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT для таблицы `companies_contacts`
--
ALTER TABLE `companies_contacts`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT для таблицы `companies_items`
--
ALTER TABLE `companies_items`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=927;

--
-- AUTO_INCREMENT для таблицы `companies_qa`
--
ALTER TABLE `companies_qa`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1635;

--
-- AUTO_INCREMENT для таблицы `concurs_lenta`
--
ALTER TABLE `concurs_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `economy_cats`
--
ALTER TABLE `economy_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `economy_lenta`
--
ALTER TABLE `economy_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT для таблицы `livestream_cats`
--
ALTER TABLE `livestream_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `livestream_lenta`
--
ALTER TABLE `livestream_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `live_cat`
--
ALTER TABLE `live_cat`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT для таблицы `live_forum`
--
ALTER TABLE `live_forum`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `live_lenta`
--
ALTER TABLE `live_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `ls_cats`
--
ALTER TABLE `ls_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT для таблицы `ls_lenta`
--
ALTER TABLE `ls_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3072;

--
-- AUTO_INCREMENT для таблицы `news_cats`
--
ALTER TABLE `news_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `news_lenta`
--
ALTER TABLE `news_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131508;

--
-- AUTO_INCREMENT для таблицы `realestatenews_cats`
--
ALTER TABLE `realestatenews_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `realestatenews_lenta`
--
ALTER TABLE `realestatenews_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `realestate_cats`
--
ALTER TABLE `realestate_cats`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор категории', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `realestate_lenta`
--
ALTER TABLE `realestate_lenta`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор рубрики', AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT для таблицы `sport_cats`
--
ALTER TABLE `sport_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `sport_lenta`
--
ALTER TABLE `sport_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75354;

--
-- AUTO_INCREMENT для таблицы `wiki_cats`
--
ALTER TABLE `wiki_cats`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор категории', AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `wiki_lenta`
--
ALTER TABLE `wiki_lenta`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор рубрики', AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `world_cats`
--
ALTER TABLE `world_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `world_lenta`
--
ALTER TABLE `world_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2512;

--
-- AUTO_INCREMENT для таблицы `_banners_items`
--
ALTER TABLE `_banners_items`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2577;

--
-- AUTO_INCREMENT для таблицы `_banners_orders`
--
ALTER TABLE `_banners_orders`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2351;

--
-- AUTO_INCREMENT для таблицы `_banners_pos`
--
ALTER TABLE `_banners_pos`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT для таблицы `_commentf`
--
ALTER TABLE `_commentf`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12559;

--
-- AUTO_INCREMENT для таблицы `_comments`
--
ALTER TABLE `_comments`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1183888;

--
-- AUTO_INCREMENT для таблицы `_cron`
--
ALTER TABLE `_cron`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `_crosslink`
--
ALTER TABLE `_crosslink`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `_domains`
--
ALTER TABLE `_domains`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `_editors`
--
ALTER TABLE `_editors`
  MODIFY `id` bigint(40) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `_imagemaster`
--
ALTER TABLE `_imagemaster`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `_imports`
--
ALTER TABLE `_imports`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `_likes`
--
ALTER TABLE `_likes`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8388607;

--
-- AUTO_INCREMENT для таблицы `_menuitem`
--
ALTER TABLE `_menuitem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=329;

--
-- AUTO_INCREMENT для таблицы `_menulist`
--
ALTER TABLE `_menulist`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT 'это nid в элементах меню', AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `_mistakes`
--
ALTER TABLE `_mistakes`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3449;

--
-- AUTO_INCREMENT для таблицы `_modules`
--
ALTER TABLE `_modules`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `_pages`
--
ALTER TABLE `_pages`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1830;

--
-- AUTO_INCREMENT для таблицы `_planes`
--
ALTER TABLE `_planes`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1296;

--
-- AUTO_INCREMENT для таблицы `_rss`
--
ALTER TABLE `_rss`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `_settings`
--
ALTER TABLE `_settings`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT для таблицы `_shared`
--
ALTER TABLE `_shared`
  MODIFY `id` bigint(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4573;

--
-- AUTO_INCREMENT для таблицы `_tags`
--
ALTER TABLE `_tags`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT для таблицы `_users`
--
ALTER TABLE `_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31046;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `realestate_contacts`
--
ALTER TABLE `realestate_contacts`
  ADD CONSTRAINT `FK__realestate_contacts__realestate_lenta` FOREIGN KEY (`id`) REFERENCES `realestate_lenta` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `realestate_lenta`
--
ALTER TABLE `realestate_lenta`
  ADD CONSTRAINT `FK__realestate_lenta__realestate_cats` FOREIGN KEY (`cat`) REFERENCES `realestate_cats` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `wiki_lenta`
--
ALTER TABLE `wiki_lenta`
  ADD CONSTRAINT `FK__wiki_lenta__wiki_cats` FOREIGN KEY (`cat`) REFERENCES `wiki_cats` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

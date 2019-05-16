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
-- База данных: `test_ng`
--

-- --------------------------------------------------------

--
-- Структура таблицы `accidents_cats`
--

CREATE TABLE `accidents_cats` (
  `id` mediumint(9) NOT NULL,
  `rate` mediumint(9) NOT NULL,
  `stat` int(1) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `accidents_lenta`
--

CREATE TABLE `accidents_lenta` (
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
  `alttext` mediumtext,
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
  `alttext` mediumtext,
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
  `alias` varchar(255) NOT NULL,
  `pid` mediumint(9) NOT NULL,
  `bid` mediumint(9) NOT NULL COMMENT 'id баннера из БС',
  `import` varchar(255) NOT NULL COMMENT 'Метка импортированной новости (сайт и id)',
  `rate` mediumint(9) NOT NULL,
  `cat` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'категория',
  `data` varchar(15) NOT NULL,
  `datafrom` varchar(25) NOT NULL,
  `datato` varchar(25) NOT NULL,
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
  `alttext` mediumtext,
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
  `alttext` mediumtext,
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
-- Структура таблицы `blogs_cats`
--

CREATE TABLE `blogs_cats` (
  `id` mediumint(9) NOT NULL,
  `rate` mediumint(9) NOT NULL,
  `stat` int(1) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `blogs_lenta`
--

CREATE TABLE `blogs_lenta` (
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
  `alttext` mediumtext,
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
-- Структура таблицы `category129_cats`
--

CREATE TABLE `category129_cats` (
  `id` tinyint(3) UNSIGNED NOT NULL COMMENT 'Идентификатор категории',
  `rate` mediumint(9) NOT NULL COMMENT 'Порядок сортировки',
  `stat` int(1) NOT NULL DEFAULT '1' COMMENT '??',
  `name` varchar(255) NOT NULL COMMENT 'Название',
  `text` text NOT NULL COMMENT 'Текст'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Идентификатор категории';

-- --------------------------------------------------------

--
-- Структура таблицы `category129_contacts`
--

CREATE TABLE `category129_contacts` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Идентификатор ленты',
  `forum_theme` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'id темы на форуме',
  `site_url` varchar(255) DEFAULT NULL COMMENT 'Сайт',
  `phone` varchar(20) DEFAULT '' COMMENT 'Телефон',
  `email` varchar(255) DEFAULT NULL COMMENT 'Электронная почта',
  `address` varchar(255) DEFAULT NULL COMMENT 'Адрес жилищного комплекса',
  `soc_net_link1` varchar(255) DEFAULT NULL COMMENT 'социальная сеть 1',
  `soc_net_link2` varchar(255) DEFAULT NULL COMMENT 'социальная сеть 2',
  `soc_net_link3` varchar(255) DEFAULT NULL COMMENT 'социальная сеть 3',
  `price_list` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Прайс-лист'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `category129_lenta`
--

CREATE TABLE `category129_lenta` (
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
  `alttext` mediumtext,
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
-- Структура таблицы `category149_cats`
--

CREATE TABLE `category149_cats` (
  `id` mediumint(9) NOT NULL,
  `rate` mediumint(9) NOT NULL,
  `stat` int(1) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `category149_specprj`
--

CREATE TABLE `category149_specprj` (
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
  `dop` text NOT NULL,
  `tags` text NOT NULL
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
  `consultscats` varchar(255) NOT NULL COMMENT 'категория в консультациях',
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
  `seen` mediumint(9) NOT NULL,
  `likes` mediumint(9) NOT NULL,
  `dislikes` mediumint(9) NOT NULL,
  `seens` mediumint(9) NOT NULL,
  `name` varchar(255) NOT NULL COMMENT 'заголовок материала',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `lid` text NOT NULL COMMENT 'лид материала',
  `text` text NOT NULL COMMENT 'основное содержание',
  `alttext` mediumtext,
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
  `spromo` varchar(1) NOT NULL,
  `redak` int(1) NOT NULL DEFAULT '0' COMMENT 'Редакционная колонка',
  `gis` int(1) NOT NULL DEFAULT '0' COMMENT 'Отправить гисметео',
  `mailtizer` int(1) NOT NULL DEFAULT '0' COMMENT 'в тизер Mail',
  `preview_mobile` tinyint(1) NOT NULL COMMENT 'Preview in mobile'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `dosug_cats`
--

CREATE TABLE `dosug_cats` (
  `id` mediumint(9) NOT NULL,
  `rate` mediumint(9) NOT NULL,
  `stat` int(1) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `dosug_lenta`
--

CREATE TABLE `dosug_lenta` (
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
  `alttext` mediumtext,
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
-- Структура таблицы `globalnews_cats`
--

CREATE TABLE `globalnews_cats` (
  `id` mediumint(9) NOT NULL,
  `rate` mediumint(9) NOT NULL,
  `stat` int(1) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `globalnews_lenta`
--

CREATE TABLE `globalnews_lenta` (
  `id` mediumint(9) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `pid` mediumint(9) NOT NULL,
  `bid` mediumint(9) NOT NULL,
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
  `title` varchar(255) NOT NULL,
  `lid` text NOT NULL,
  `text` text NOT NULL,
  `alttext` mediumtext,
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
  `spromo` int(1) NOT NULL DEFAULT '0',
  `redak` int(1) NOT NULL DEFAULT '0' COMMENT 'Редакционная колонка',
  `gis` int(1) NOT NULL DEFAULT '0' COMMENT 'Отправить гисметео',
  `mailtizer` int(1) NOT NULL DEFAULT '0' COMMENT 'в тизер Mail',
  `preview_mobile` tinyint(1) NOT NULL COMMENT 'Preview in mobile',
  `vk_np` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `itogi_cats`
--

CREATE TABLE `itogi_cats` (
  `id` mediumint(9) NOT NULL,
  `rate` mediumint(9) NOT NULL,
  `stat` int(1) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `itogi_lenta`
--

CREATE TABLE `itogi_lenta` (
  `id` mediumint(9) NOT NULL,
  `pid` mediumint(9) NOT NULL,
  `bid` mediumint(9) NOT NULL COMMENT 'id баннера из БС',
  `alias` varchar(255) NOT NULL,
  `import` varchar(255) NOT NULL COMMENT 'Метка импортированной новости (сайт и id)',
  `rate` mediumint(9) NOT NULL,
  `cat` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'категория',
  `data` varchar(15) NOT NULL,
  `datafrom` varchar(25) NOT NULL,
  `datato` varchar(25) NOT NULL,
  `astat` int(1) NOT NULL DEFAULT '0' COMMENT 'разрешить автопубликацию',
  `adata` varchar(15) NOT NULL DEFAULT '' COMMENT 'время автопубликации',
  `stat` int(1) NOT NULL DEFAULT '0',
  `likes` mediumint(9) NOT NULL,
  `dislikes` mediumint(9) NOT NULL,
  `seens` mediumint(9) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `lid` text NOT NULL,
  `text` text NOT NULL,
  `alttext` mediumtext,
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
  `spromo` int(1) NOT NULL DEFAULT '0',
  `redak` int(1) NOT NULL DEFAULT '0' COMMENT 'Редакционная колонка',
  `gis` int(1) NOT NULL DEFAULT '0' COMMENT 'Отправить гисметео',
  `mailtizer` int(1) NOT NULL DEFAULT '0' COMMENT 'в тизер Mail',
  `preview_mobile` tinyint(1) NOT NULL COMMENT 'Preview in mobile',
  `vk_np` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `lifehistory_cats`
--

CREATE TABLE `lifehistory_cats` (
  `id` mediumint(9) NOT NULL,
  `rate` mediumint(9) NOT NULL,
  `stat` int(1) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `lifehistory_lenta`
--

CREATE TABLE `lifehistory_lenta` (
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
  `alttext` mediumtext,
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
  `preview_mobile` tinyint(1) NOT NULL COMMENT 'Preview in mobile'
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
  `uid` mediumint(9) NOT NULL,
  `comcount` mediumint(9) NOT NULL,
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
  `lock` int(1) NOT NULL DEFAULT '0',
  `stat` int(1) NOT NULL,
  `seen` mediumint(9) NOT NULL,
  `likes` mediumint(9) NOT NULL,
  `dislikes` mediumint(9) NOT NULL,
  `seens` mediumint(9) NOT NULL,
  `uname` varchar(255) NOT NULL,
  `add` int(1) NOT NULL DEFAULT '1' COMMENT 'разрешить комментарии',
  `data` varchar(25) NOT NULL,
  `update` varchar(25) NOT NULL,
  `comcount` mediumint(9) NOT NULL COMMENT 'количество комментариев',
  `comments` mediumint(9) NOT NULL COMMENT 'количество комментариев',
  `clast` mediumint(9) NOT NULL COMMENT 'id последнего комментария',
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `pic` varchar(255) NOT NULL,
  `preview_mobile` tinyint(1) NOT NULL COMMENT 'Preview in mobile'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Список тем пользователей';

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
  `alttext` mediumtext,
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
-- Структура таблицы `partners_cats`
--

CREATE TABLE `partners_cats` (
  `id` mediumint(9) NOT NULL,
  `rate` mediumint(9) NOT NULL,
  `stat` int(1) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `partners_lenta`
--

CREATE TABLE `partners_lenta` (
  `id` mediumint(9) NOT NULL,
  `pid` mediumint(9) NOT NULL,
  `bid` mediumint(9) NOT NULL COMMENT 'id баннера из БС',
  `alias` varchar(255) NOT NULL,
  `import` varchar(255) NOT NULL COMMENT 'Метка импортированной новости (сайт и id)',
  `rate` mediumint(9) NOT NULL,
  `cat` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'категория',
  `data` varchar(15) NOT NULL,
  `datafrom` varchar(25) NOT NULL,
  `datato` varchar(25) NOT NULL,
  `astat` int(1) NOT NULL DEFAULT '0' COMMENT 'разрешить автопубликацию',
  `adata` varchar(15) NOT NULL DEFAULT '' COMMENT 'время автопубликации',
  `stat` int(1) NOT NULL DEFAULT '0',
  `likes` mediumint(9) NOT NULL,
  `dislikes` mediumint(9) NOT NULL,
  `seens` mediumint(9) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `lid` text NOT NULL,
  `text` text NOT NULL,
  `alttext` mediumtext,
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
  `spromo` int(1) NOT NULL DEFAULT '0',
  `redak` int(1) NOT NULL DEFAULT '0' COMMENT 'Редакционная колонка',
  `gis` int(1) NOT NULL DEFAULT '0' COMMENT 'Отправить гисметео',
  `mailtizer` int(1) NOT NULL DEFAULT '0' COMMENT 'в тизер Mail',
  `preview_mobile` tinyint(1) NOT NULL COMMENT 'Preview in mobile',
  `vk_np` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `prj_cats`
--

CREATE TABLE `prj_cats` (
  `id` mediumint(9) NOT NULL,
  `rate` mediumint(9) NOT NULL,
  `stat` int(1) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `prj_specprj`
--

CREATE TABLE `prj_specprj` (
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
-- Структура таблицы `publishnews_cats`
--

CREATE TABLE `publishnews_cats` (
  `id` mediumint(9) NOT NULL,
  `rate` mediumint(9) NOT NULL,
  `stat` int(1) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `publishnews_lenta`
--

CREATE TABLE `publishnews_lenta` (
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
  `alttext` mediumtext,
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
  `preview_mobile` tinyint(1) NOT NULL COMMENT 'Preview in mobile'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `spravka_cats`
--

CREATE TABLE `spravka_cats` (
  `id` mediumint(9) NOT NULL,
  `rate` mediumint(9) NOT NULL,
  `stat` int(1) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `spravka_lenta`
--

CREATE TABLE `spravka_lenta` (
  `id` mediumint(9) NOT NULL,
  `pid` mediumint(9) NOT NULL,
  `bid` mediumint(9) NOT NULL COMMENT 'id баннера из БС',
  `alias` varchar(255) NOT NULL,
  `import` varchar(255) NOT NULL COMMENT 'Метка импортированной новости (сайт и id)',
  `rate` mediumint(9) NOT NULL,
  `cat` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'категория',
  `data` varchar(15) NOT NULL,
  `datafrom` varchar(25) NOT NULL,
  `datato` varchar(25) NOT NULL,
  `astat` int(1) NOT NULL DEFAULT '0' COMMENT 'разрешить автопубликацию',
  `adata` varchar(15) NOT NULL DEFAULT '' COMMENT 'время автопубликации',
  `stat` int(1) NOT NULL DEFAULT '0',
  `likes` mediumint(9) NOT NULL,
  `dislikes` mediumint(9) NOT NULL,
  `seens` mediumint(9) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `lid` text NOT NULL,
  `text` text NOT NULL,
  `alttext` mediumtext,
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
  `spromo` int(1) NOT NULL DEFAULT '0',
  `redak` int(1) NOT NULL DEFAULT '0' COMMENT 'Редакционная колонка',
  `gis` int(1) NOT NULL DEFAULT '0' COMMENT 'Отправить гисметео',
  `mailtizer` int(1) NOT NULL DEFAULT '0' COMMENT 'в тизер Mail',
  `preview_mobile` tinyint(1) NOT NULL COMMENT 'Preview in mobile'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `working_cats`
--

CREATE TABLE `working_cats` (
  `id` mediumint(9) NOT NULL,
  `rate` mediumint(9) NOT NULL,
  `stat` int(1) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `working_lenta`
--

CREATE TABLE `working_lenta` (
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
  `alttext` mediumtext NOT NULL,
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
  `dataart` text NOT NULL,
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
  `title` varchar(255) NOT NULL,
  `kw` varchar(255) NOT NULL COMMENT 'ключевые слова страницы',
  `ds` varchar(255) NOT NULL COMMENT 'описание страницы',
  `data` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
  `likes` mediumint(9) NOT NULL,
  `dislikes` mediumint(9) NOT NULL,
  `uname` varchar(255) NOT NULL,
  `referer` varchar(255) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `from` varchar(5) NOT NULL,
  `data` varchar(25) NOT NULL,
  `stat` varchar(1) NOT NULL,
  `toid` mediumint(9) NOT NULL DEFAULT '0',
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Записи комментариев';

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
-- Структура таблицы `_fastlink`
--

CREATE TABLE `_fastlink` (
  `id` mediumint(9) NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `_menulist`
--

CREATE TABLE `_menulist` (
  `id` mediumint(9) NOT NULL COMMENT 'это nid в элементах меню',
  `stat` varchar(1) NOT NULL DEFAULT '0' COMMENT '1 - вкл, 0 - выкл',
  `name` varchar(255) NOT NULL,
  `link` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
-- Структура таблицы `_tags`
--

CREATE TABLE `_tags` (
  `id` mediumint(9) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `_users`
--

CREATE TABLE `_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip` varchar(15) NOT NULL,
  `role` varchar(2) NOT NULL DEFAULT '0',
  `login` varchar(50) NOT NULL DEFAULT '',
  `nick` varchar(255) NOT NULL COMMENT 'ник',
  `pass` varchar(32) NOT NULL DEFAULT '',
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
-- Структура таблицы `_widget_contacts`
--

CREATE TABLE `_widget_contacts` (
  `id` mediumint(9) NOT NULL,
  `name` varchar(255) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `anonce` text NOT NULL,
  `link` varchar(255) NOT NULL,
  `pid` mediumint(9) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `_widget_eventmap`
--

CREATE TABLE `_widget_eventmap` (
  `id` mediumint(9) NOT NULL,
  `pid` mediumint(9) NOT NULL DEFAULT '0',
  `tid` mediumint(9) NOT NULL,
  `link` varchar(255) NOT NULL,
  `data` varchar(15) NOT NULL,
  `period` int(3) NOT NULL,
  `stat` int(1) NOT NULL,
  `promo` int(1) NOT NULL,
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `maps` varchar(255) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `_widget_eventtype`
--

CREATE TABLE `_widget_eventtype` (
  `id` mediumint(9) NOT NULL,
  `name` varchar(255) NOT NULL,
  `stat` varchar(1) NOT NULL DEFAULT '1',
  `rate` mediumint(9) NOT NULL,
  `pic` varchar(255) NOT NULL
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
-- Индексы таблицы `accidents_cats`
--
ALTER TABLE `accidents_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `accidents_lenta`
--
ALTER TABLE `accidents_lenta`
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
-- Индексы таблицы `advertise_objects`
--
ALTER TABLE `advertise_objects`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `advertise_pays`
--
ALTER TABLE `advertise_pays`
  ADD PRIMARY KEY (`id`);

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
-- Индексы таблицы `blogs_cats`
--
ALTER TABLE `blogs_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `blogs_lenta`
--
ALTER TABLE `blogs_lenta`
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
-- Индексы таблицы `category129_cats`
--
ALTER TABLE `category129_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `category129_contacts`
--
ALTER TABLE `category129_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `category129_lenta`
--
ALTER TABLE `category129_lenta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`),
  ADD KEY `FK__category129_lenta__category129_cats` (`cat`);

--
-- Индексы таблицы `category149_cats`
--
ALTER TABLE `category149_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `category149_specprj`
--
ALTER TABLE `category149_specprj`
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
  ADD KEY `seen` (`seens`),
  ADD KEY `likes` (`likes`),
  ADD KEY `seen_2` (`seen`),
  ADD KEY `stat` (`stat`),
  ADD KEY `uid` (`uid`),
  ADD KEY `onind` (`onind`),
  ADD KEY `promo` (`promo`),
  ADD KEY `spromo` (`spromo`),
  ADD KEY `redak` (`redak`),
  ADD KEY `data` (`data`),
  ADD KEY `preview_mobile` (`preview_mobile`);

--
-- Индексы таблицы `dosug_cats`
--
ALTER TABLE `dosug_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `dosug_lenta`
--
ALTER TABLE `dosug_lenta`
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
-- Индексы таблицы `globalnews_cats`
--
ALTER TABLE `globalnews_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `globalnews_lenta`
--
ALTER TABLE `globalnews_lenta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`),
  ADD KEY `seens` (`seens`),
  ADD KEY `stat` (`stat`),
  ADD KEY `uid` (`uid`),
  ADD KEY `onind` (`onind`),
  ADD KEY `promo` (`promo`),
  ADD KEY `spromo` (`spromo`),
  ADD KEY `redak` (`redak`),
  ADD KEY `data` (`data`),
  ADD KEY `preview_mobile` (`preview_mobile`);

--
-- Индексы таблицы `itogi_cats`
--
ALTER TABLE `itogi_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `itogi_lenta`
--
ALTER TABLE `itogi_lenta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`),
  ADD KEY `likes` (`likes`),
  ADD KEY `stat` (`stat`),
  ADD KEY `uid` (`uid`),
  ADD KEY `onind` (`onind`),
  ADD KEY `promo` (`promo`),
  ADD KEY `spromo` (`spromo`),
  ADD KEY `redak` (`redak`),
  ADD KEY `data` (`data`),
  ADD KEY `preview_mobile` (`preview_mobile`);

--
-- Индексы таблицы `lifehistory_cats`
--
ALTER TABLE `lifehistory_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `lifehistory_lenta`
--
ALTER TABLE `lifehistory_lenta`
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
-- Индексы таблицы `live_cat`
--
ALTER TABLE `live_cat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rate` (`rate`,`uid`),
  ADD KEY `fid` (`fid`),
  ADD KEY `update` (`update`);

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
  ADD KEY `seen` (`seens`),
  ADD KEY `likes` (`likes`),
  ADD KEY `seen_2` (`seen`),
  ADD KEY `stat` (`stat`),
  ADD KEY `data` (`data`),
  ADD KEY `preview_mobile` (`preview_mobile`);

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
-- Индексы таблицы `partners_cats`
--
ALTER TABLE `partners_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `partners_lenta`
--
ALTER TABLE `partners_lenta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`),
  ADD KEY `likes` (`likes`),
  ADD KEY `stat` (`stat`),
  ADD KEY `uid` (`uid`),
  ADD KEY `onind` (`onind`),
  ADD KEY `promo` (`promo`),
  ADD KEY `spromo` (`spromo`),
  ADD KEY `redak` (`redak`),
  ADD KEY `data` (`data`),
  ADD KEY `preview_mobile` (`preview_mobile`);

--
-- Индексы таблицы `prj_cats`
--
ALTER TABLE `prj_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `prj_specprj`
--
ALTER TABLE `prj_specprj`
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
-- Индексы таблицы `publishnews_cats`
--
ALTER TABLE `publishnews_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `publishnews_lenta`
--
ALTER TABLE `publishnews_lenta`
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
-- Индексы таблицы `spravka_cats`
--
ALTER TABLE `spravka_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `spravka_lenta`
--
ALTER TABLE `spravka_lenta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`),
  ADD KEY `likes` (`likes`),
  ADD KEY `stat` (`stat`),
  ADD KEY `uid` (`uid`),
  ADD KEY `onind` (`onind`),
  ADD KEY `promo` (`promo`),
  ADD KEY `spromo` (`spromo`),
  ADD KEY `redak` (`redak`),
  ADD KEY `data` (`data`),
  ADD KEY `preview_mobile` (`preview_mobile`);

--
-- Индексы таблицы `working_cats`
--
ALTER TABLE `working_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `working_lenta`
--
ALTER TABLE `working_lenta`
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
-- Индексы таблицы `_fastlink`
--
ALTER TABLE `_fastlink`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link` (`link`);

--
-- Индексы таблицы `_imagemaster`
--
ALTER TABLE `_imagemaster`
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
  ADD KEY `pid` (`pid`);

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
  ADD PRIMARY KEY (`id`);

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
-- Индексы таблицы `_widget_contacts`
--
ALTER TABLE `_widget_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `_widget_eventmap`
--
ALTER TABLE `_widget_eventmap`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tid` (`tid`),
  ADD KEY `stat` (`stat`);

--
-- Индексы таблицы `_widget_eventtype`
--
ALTER TABLE `_widget_eventtype`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `_widget_pics`
--
ALTER TABLE `_widget_pics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`link`),
  ADD KEY `link` (`link`);

--
-- Индексы таблицы `_widget_video`
--
ALTER TABLE `_widget_video`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link` (`link`,`pid`),
  ADD KEY `pid` (`pid`);

--
-- Индексы таблицы `_widget_votes`
--
ALTER TABLE `_widget_votes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vid` (`vid`,`uid`,`pid`),
  ADD KEY `link` (`link`);

--
-- Индексы таблицы `_widget_voting`
--
ALTER TABLE `_widget_voting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `accidents_cats`
--
ALTER TABLE `accidents_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `accidents_lenta`
--
ALTER TABLE `accidents_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1280;

--
-- AUTO_INCREMENT для таблицы `add_cats`
--
ALTER TABLE `add_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `add_nodes`
--
ALTER TABLE `add_nodes`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58707;

--
-- AUTO_INCREMENT для таблицы `adverting_cats`
--
ALTER TABLE `adverting_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `adverting_lenta`
--
ALTER TABLE `adverting_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `advertise_objects`
--
ALTER TABLE `advertise_objects`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=800;

--
-- AUTO_INCREMENT для таблицы `advertise_pays`
--
ALTER TABLE `advertise_pays`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=800;

--
-- AUTO_INCREMENT для таблицы `advertise_razdels`
--
ALTER TABLE `advertise_razdels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT для таблицы `advertise_users`
--
ALTER TABLE `advertise_users`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=800;

--
-- AUTO_INCREMENT для таблицы `afisha_cats`
--
ALTER TABLE `afisha_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `afisha_lenta`
--
ALTER TABLE `afisha_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=482;

--
-- AUTO_INCREMENT для таблицы `auto_cats`
--
ALTER TABLE `auto_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `auto_lenta`
--
ALTER TABLE `auto_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1865;

--
-- AUTO_INCREMENT для таблицы `blogs_cats`
--
ALTER TABLE `blogs_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `blogs_lenta`
--
ALTER TABLE `blogs_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT для таблицы `category129_cats`
--
ALTER TABLE `category129_cats`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор категории', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `category129_lenta`
--
ALTER TABLE `category129_lenta`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор рубрики';

--
-- AUTO_INCREMENT для таблицы `category149_cats`
--
ALTER TABLE `category149_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `category149_specprj`
--
ALTER TABLE `category149_specprj`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `companies_actions`
--
ALTER TABLE `companies_actions`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `companies_cats`
--
ALTER TABLE `companies_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `companies_contacts`
--
ALTER TABLE `companies_contacts`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `companies_items`
--
ALTER TABLE `companies_items`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `companies_qa`
--
ALTER TABLE `companies_qa`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `concurs_lenta`
--
ALTER TABLE `concurs_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT для таблицы `dosug_cats`
--
ALTER TABLE `dosug_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `dosug_lenta`
--
ALTER TABLE `dosug_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=980;

--
-- AUTO_INCREMENT для таблицы `globalnews_cats`
--
ALTER TABLE `globalnews_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `globalnews_lenta`
--
ALTER TABLE `globalnews_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=535;

--
-- AUTO_INCREMENT для таблицы `itogi_cats`
--
ALTER TABLE `itogi_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `itogi_lenta`
--
ALTER TABLE `itogi_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=774;

--
-- AUTO_INCREMENT для таблицы `lifehistory_cats`
--
ALTER TABLE `lifehistory_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `lifehistory_lenta`
--
ALTER TABLE `lifehistory_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT для таблицы `live_cat`
--
ALTER TABLE `live_cat`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT для таблицы `live_forum`
--
ALTER TABLE `live_forum`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `live_lenta`
--
ALTER TABLE `live_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=482;

--
-- AUTO_INCREMENT для таблицы `news_cats`
--
ALTER TABLE `news_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `news_lenta`
--
ALTER TABLE `news_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22070;

--
-- AUTO_INCREMENT для таблицы `partners_cats`
--
ALTER TABLE `partners_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `partners_lenta`
--
ALTER TABLE `partners_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=321;

--
-- AUTO_INCREMENT для таблицы `prj_cats`
--
ALTER TABLE `prj_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `prj_specprj`
--
ALTER TABLE `prj_specprj`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=610;

--
-- AUTO_INCREMENT для таблицы `publishnews_cats`
--
ALTER TABLE `publishnews_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `publishnews_lenta`
--
ALTER TABLE `publishnews_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=467;

--
-- AUTO_INCREMENT для таблицы `spravka_cats`
--
ALTER TABLE `spravka_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `spravka_lenta`
--
ALTER TABLE `spravka_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT для таблицы `working_cats`
--
ALTER TABLE `working_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `working_lenta`
--
ALTER TABLE `working_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `_banners_items`
--
ALTER TABLE `_banners_items`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=604;

--
-- AUTO_INCREMENT для таблицы `_banners_orders`
--
ALTER TABLE `_banners_orders`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=586;

--
-- AUTO_INCREMENT для таблицы `_banners_pos`
--
ALTER TABLE `_banners_pos`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT для таблицы `_commentf`
--
ALTER TABLE `_commentf`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1068;

--
-- AUTO_INCREMENT для таблицы `_comments`
--
ALTER TABLE `_comments`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36100;

--
-- AUTO_INCREMENT для таблицы `_cron`
--
ALTER TABLE `_cron`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `_crosslink`
--
ALTER TABLE `_crosslink`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `_domains`
--
ALTER TABLE `_domains`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `_fastlink`
--
ALTER TABLE `_fastlink`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=282;

--
-- AUTO_INCREMENT для таблицы `_imagemaster`
--
ALTER TABLE `_imagemaster`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `_likes`
--
ALTER TABLE `_likes`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173119;

--
-- AUTO_INCREMENT для таблицы `_menuitem`
--
ALTER TABLE `_menuitem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=509;

--
-- AUTO_INCREMENT для таблицы `_menulist`
--
ALTER TABLE `_menulist`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT 'это nid в элементах меню', AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `_mistakes`
--
ALTER TABLE `_mistakes`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2164;

--
-- AUTO_INCREMENT для таблицы `_modules`
--
ALTER TABLE `_modules`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `_pages`
--
ALTER TABLE `_pages`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT для таблицы `_planes`
--
ALTER TABLE `_planes`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `_rss`
--
ALTER TABLE `_rss`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `_settings`
--
ALTER TABLE `_settings`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT для таблицы `_tags`
--
ALTER TABLE `_tags`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=495;

--
-- AUTO_INCREMENT для таблицы `_users`
--
ALTER TABLE `_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6137;

--
-- AUTO_INCREMENT для таблицы `_widget_contacts`
--
ALTER TABLE `_widget_contacts`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `_widget_eventmap`
--
ALTER TABLE `_widget_eventmap`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `_widget_eventtype`
--
ALTER TABLE `_widget_eventtype`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `_widget_pics`
--
ALTER TABLE `_widget_pics`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11376;

--
-- AUTO_INCREMENT для таблицы `_widget_video`
--
ALTER TABLE `_widget_video`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=745;

--
-- AUTO_INCREMENT для таблицы `_widget_votes`
--
ALTER TABLE `_widget_votes`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205142;

--
-- AUTO_INCREMENT для таблицы `_widget_voting`
--
ALTER TABLE `_widget_voting`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1344;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `category129_contacts`
--
ALTER TABLE `category129_contacts`
  ADD CONSTRAINT `FK__category129_contacts__category129_lenta` FOREIGN KEY (`id`) REFERENCES `category129_lenta` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `category129_lenta`
--
ALTER TABLE `category129_lenta`
  ADD CONSTRAINT `FK__category129_lenta__category129_cats` FOREIGN KEY (`cat`) REFERENCES `category129_cats` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

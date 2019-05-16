
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

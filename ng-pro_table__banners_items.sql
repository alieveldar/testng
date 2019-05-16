
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

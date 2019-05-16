
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

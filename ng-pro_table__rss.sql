
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

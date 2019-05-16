
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

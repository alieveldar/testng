
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

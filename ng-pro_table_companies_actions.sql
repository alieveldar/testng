
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

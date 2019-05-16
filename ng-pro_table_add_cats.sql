
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

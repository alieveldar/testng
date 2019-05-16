
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

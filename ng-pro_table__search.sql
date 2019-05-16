
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

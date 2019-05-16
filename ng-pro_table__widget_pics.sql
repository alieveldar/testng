
-- --------------------------------------------------------

--
-- Структура таблицы `_widget_pics`
--

CREATE TABLE `_widget_pics` (
  `id` mediumint(9) NOT NULL,
  `pid` mediumint(9) NOT NULL COMMENT 'Id записи',
  `link` varchar(255) NOT NULL COMMENT 'link razdela',
  `pic` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `author` varchar(255) NOT NULL,
  `point` varchar(255) NOT NULL,
  `stat` int(1) NOT NULL DEFAULT '1',
  `data` varchar(12) NOT NULL,
  `rate` mediumint(9) NOT NULL,
  `picxy` text NOT NULL,
  `sets` varchar(255) NOT NULL COMMENT 'Любые настройки'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

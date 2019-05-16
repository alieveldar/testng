
-- --------------------------------------------------------

--
-- Структура таблицы `_widget_eventtype`
--

CREATE TABLE `_widget_eventtype` (
  `id` mediumint(9) NOT NULL,
  `name` varchar(255) NOT NULL,
  `stat` varchar(1) NOT NULL DEFAULT '1',
  `rate` mediumint(9) NOT NULL,
  `pic` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

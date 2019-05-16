
-- --------------------------------------------------------

--
-- Структура таблицы `_widget_video`
--

CREATE TABLE `_widget_video` (
  `id` mediumint(9) NOT NULL,
  `link` varchar(255) NOT NULL,
  `pid` mediumint(9) NOT NULL,
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

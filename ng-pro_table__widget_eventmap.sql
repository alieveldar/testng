
-- --------------------------------------------------------

--
-- Структура таблицы `_widget_eventmap`
--

CREATE TABLE `_widget_eventmap` (
  `id` mediumint(9) NOT NULL,
  `pid` mediumint(9) NOT NULL DEFAULT '0',
  `tid` mediumint(9) NOT NULL,
  `link` varchar(255) NOT NULL,
  `data` varchar(15) NOT NULL,
  `period` int(3) NOT NULL,
  `stat` int(1) NOT NULL,
  `promo` int(1) NOT NULL,
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `maps` varchar(255) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

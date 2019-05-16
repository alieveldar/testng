
-- --------------------------------------------------------

--
-- Структура таблицы `_widget_ask`
--

CREATE TABLE `_widget_ask` (
  `id` mediumint(9) NOT NULL,
  `link` varchar(255) NOT NULL,
  `pid` mediumint(9) NOT NULL,
  `data` varchar(25) NOT NULL,
  `uid` mediumint(9) NOT NULL,
  `askname` varchar(255) NOT NULL,
  `asktext` text NOT NULL,
  `ansname` varchar(255) NOT NULL,
  `anstext` text NOT NULL,
  `anspic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

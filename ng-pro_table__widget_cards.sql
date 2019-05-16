
-- --------------------------------------------------------

--
-- Структура таблицы `_widget_cards`
--

CREATE TABLE `_widget_cards` (
  `id` mediumint(9) NOT NULL,
  `link` varchar(255) NOT NULL,
  `pid` mediumint(9) NOT NULL,
  `rate` mediumint(9) NOT NULL,
  `num` varchar(255) NOT NULL,
  `name` text NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Структура таблицы `_widget_contacts`
--

CREATE TABLE `_widget_contacts` (
  `id` mediumint(9) NOT NULL,
  `name` varchar(255) CHARACTER SET cp1251 NOT NULL,
  `pic` varchar(255) CHARACTER SET cp1251 NOT NULL,
  `address` varchar(255) CHARACTER SET cp1251 NOT NULL,
  `phone` varchar(255) CHARACTER SET cp1251 NOT NULL,
  `web` varchar(255) NOT NULL,
  `anonce` text CHARACTER SET cp1251 NOT NULL,
  `link` varchar(255) CHARACTER SET cp1251 NOT NULL,
  `pid` mediumint(9) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

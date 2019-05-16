
-- --------------------------------------------------------

--
-- Структура таблицы `_planes`
--

CREATE TABLE `_planes` (
  `id` mediumint(9) NOT NULL,
  `data` varchar(25) NOT NULL,
  `name` text NOT NULL,
  `auth` varchar(255) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

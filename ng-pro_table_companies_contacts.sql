
-- --------------------------------------------------------

--
-- Структура таблицы `companies_contacts`
--

CREATE TABLE `companies_contacts` (
  `id` mediumint(9) NOT NULL,
  `adres` text NOT NULL,
  `urik` text NOT NULL,
  `phone` varchar(255) NOT NULL,
  `maps` varchar(255) NOT NULL,
  `worktime` text NOT NULL,
  `pid` mediumint(9) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

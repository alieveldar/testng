
-- --------------------------------------------------------

--
-- Структура таблицы `companies_qa`
--

CREATE TABLE `companies_qa` (
  `id` mediumint(9) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `pic` varchar(255) NOT NULL,
  `pid` mediumint(9) NOT NULL DEFAULT '0',
  `cid` mediumint(9) NOT NULL DEFAULT '0',
  `rid` mediumint(9) NOT NULL,
  `data` varchar(15) NOT NULL,
  `pics` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

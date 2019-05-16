
-- --------------------------------------------------------

--
-- Структура таблицы `add_nodes`
--

CREATE TABLE `add_nodes` (
  `id` mediumint(9) NOT NULL,
  `cat` mediumint(9) NOT NULL,
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `author` varchar(255) NOT NULL,
  `contacts` varchar(255) NOT NULL,
  `pics` text NOT NULL,
  `data` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

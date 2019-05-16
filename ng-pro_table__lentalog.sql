
-- --------------------------------------------------------

--
-- Структура таблицы `_lentalog`
--

CREATE TABLE `_lentalog` (
  `link` varchar(255) NOT NULL,
  `id` mediumint(9) NOT NULL,
  `uid` mediumint(9) NOT NULL,
  `data` varchar(25) NOT NULL,
  `ip` varchar(25) NOT NULL,
  `text` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

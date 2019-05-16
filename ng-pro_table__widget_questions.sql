
-- --------------------------------------------------------

--
-- Структура таблицы `_widget_questions`
--

CREATE TABLE `_widget_questions` (
  `id` mediumint(9) NOT NULL,
  `link` varchar(255) NOT NULL,
  `pid` mediumint(9) NOT NULL,
  `rate` mediumint(9) NOT NULL,
  `name` text NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Структура таблицы `advertise_users`
--

CREATE TABLE `advertise_users` (
  `id` mediumint(9) NOT NULL,
  `stat` int(1) NOT NULL DEFAULT '1',
  `login` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `ucode` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Структура таблицы `_cron`
--

CREATE TABLE `_cron` (
  `id` mediumint(9) NOT NULL,
  `rate` mediumint(9) NOT NULL COMMENT 'Название задания',
  `stat` int(1) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL COMMENT 'путь к сприпту',
  `runtime` varchar(25) NOT NULL COMMENT 'время запуска',
  `lasttime` varchar(25) NOT NULL COMMENT 'последний запуск',
  `log` text NOT NULL COMMENT 'результат последнего запуска'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

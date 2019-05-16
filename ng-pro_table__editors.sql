
-- --------------------------------------------------------

--
-- Структура таблицы `_editors`
--

CREATE TABLE `_editors` (
  `id` bigint(40) NOT NULL,
  `stat` tinyint(1) NOT NULL,
  `photo` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(127) NOT NULL,
  `prof` varchar(127) NOT NULL,
  `uid` bigint(40) NOT NULL,
  `text` varchar(1023) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

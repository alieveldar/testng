
-- --------------------------------------------------------

--
-- Структура таблицы `_imports`
--

CREATE TABLE `_imports` (
  `id` mediumint(9) NOT NULL,
  `site` varchar(255) NOT NULL COMMENT 'откуда брать',
  `stat` int(1) NOT NULL DEFAULT '0' COMMENT '1-вкл, 0-выкл',
  `lenta_out` varchar(255) NOT NULL COMMENT 'лента донор',
  `lenta_out_cat` mediumint(9) NOT NULL COMMENT 'лента реципиент',
  `lenta_in` varchar(255) NOT NULL COMMENT '1-все, 0-по-выбору',
  `lenta_in_cat` mediumint(9) NOT NULL,
  `type` int(1) NOT NULL DEFAULT '0',
  `last` varchar(25) NOT NULL COMMENT 'последний запрос'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

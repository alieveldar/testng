
-- --------------------------------------------------------

--
-- Структура таблицы `advertise_pays`
--

CREATE TABLE `advertise_pays` (
  `id` mediumint(9) NOT NULL,
  `uid` mediumint(9) NOT NULL DEFAULT '0',
  `oid` mediumint(9) NOT NULL DEFAULT '0' COMMENT 'номер объявления',
  `price` varchar(25) NOT NULL,
  `fio` text NOT NULL,
  `text` text NOT NULL,
  `data` varchar(25) NOT NULL,
  `stat` int(1) NOT NULL DEFAULT '0' COMMENT '1 - оплачено, 0 - нет',
  `confirm` int(1) NOT NULL COMMENT '1 - платеж подтв, 2 - нет'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

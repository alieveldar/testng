
-- --------------------------------------------------------

--
-- Структура таблицы `advertise_objects`
--

CREATE TABLE `advertise_objects` (
  `id` mediumint(9) NOT NULL,
  `uid` mediumint(9) NOT NULL COMMENT 'пользователь',
  `text` text NOT NULL,
  `phone` varchar(255) NOT NULL,
  `rid` mediumint(9) NOT NULL COMMENT 'раздел',
  `price` mediumint(9) NOT NULL COMMENT 'сумма',
  `stat` int(1) NOT NULL DEFAULT '0' COMMENT '1-оплачено, 0-неоплачено',
  `sets` varchar(255) NOT NULL,
  `data` varchar(255) NOT NULL,
  `datas` text NOT NULL COMMENT 'даты выхода',
  `dop` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

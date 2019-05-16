
-- --------------------------------------------------------

--
-- Структура таблицы `_shared`
--

CREATE TABLE `_shared` (
  `id` bigint(30) NOT NULL,
  `pid` bigint(30) NOT NULL COMMENT 'news id',
  `network` varchar(30) CHARACTER SET utf8 NOT NULL COMMENT 'social network name',
  `uid` bigint(30) NOT NULL COMMENT 'user id',
  `ip` varchar(40) CHARACTER SET utf8 NOT NULL COMMENT 'user ip'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

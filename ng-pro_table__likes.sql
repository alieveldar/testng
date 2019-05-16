
-- --------------------------------------------------------

--
-- Структура таблицы `_likes`
--

CREATE TABLE `_likes` (
  `id` mediumint(9) NOT NULL,
  `data` varchar(25) NOT NULL,
  `ip` varchar(30) NOT NULL,
  `like` int(1) NOT NULL DEFAULT '1' COMMENT '1-like,0-dislike',
  `pid` mediumint(9) NOT NULL,
  `link` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Структура таблицы `_widget_insta`
--

CREATE TABLE `_widget_insta` (
  `id` varchar(50) NOT NULL,
  `stat` varchar(1) NOT NULL DEFAULT '1',
  `text` text NOT NULL,
  `data` varchar(10) NOT NULL,
  `likes` mediumint(9) NOT NULL DEFAULT '0',
  `piclink` varchar(255) NOT NULL,
  `picname` varchar(255) NOT NULL,
  `picpreview` varchar(255) NOT NULL,
  `picoriginal` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `userlink` varchar(50) NOT NULL,
  `useravatar` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Структура таблицы `_widget_vk`
--

CREATE TABLE `_widget_vk` (
  `vkid` varchar(255) NOT NULL,
  `stat` int(1) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `userlink` varchar(255) NOT NULL,
  `data` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `pic` varchar(255) NOT NULL,
  `tag` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

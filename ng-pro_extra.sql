
--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `accidents_cats`
--
ALTER TABLE `accidents_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `accidents_lenta`
--
ALTER TABLE `accidents_lenta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`),
  ADD KEY `likes` (`likes`),
  ADD KEY `seen` (`seen`),
  ADD KEY `stat` (`stat`),
  ADD KEY `uid` (`uid`),
  ADD KEY `onind` (`onind`),
  ADD KEY `promo` (`promo`),
  ADD KEY `spromo` (`spromo`),
  ADD KEY `redak` (`redak`),
  ADD KEY `data` (`data`),
  ADD KEY `preview_mobile` (`preview_mobile`);

--
-- Индексы таблицы `add_cats`
--
ALTER TABLE `add_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `add_nodes`
--
ALTER TABLE `add_nodes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `adverting_cats`
--
ALTER TABLE `adverting_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `adverting_lenta`
--
ALTER TABLE `adverting_lenta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`),
  ADD KEY `likes` (`likes`),
  ADD KEY `seen` (`seen`),
  ADD KEY `stat` (`stat`),
  ADD KEY `uid` (`uid`),
  ADD KEY `onind` (`onind`),
  ADD KEY `promo` (`promo`),
  ADD KEY `spromo` (`spromo`),
  ADD KEY `redak` (`redak`),
  ADD KEY `data` (`data`),
  ADD KEY `preview_mobile` (`preview_mobile`);

--
-- Индексы таблицы `advertise_objects`
--
ALTER TABLE `advertise_objects`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `advertise_pays`
--
ALTER TABLE `advertise_pays`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `advertise_razdels`
--
ALTER TABLE `advertise_razdels`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `advertise_users`
--
ALTER TABLE `advertise_users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `afisha_cats`
--
ALTER TABLE `afisha_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `afisha_lenta`
--
ALTER TABLE `afisha_lenta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`),
  ADD KEY `likes` (`likes`),
  ADD KEY `seen` (`seen`),
  ADD KEY `stat` (`stat`),
  ADD KEY `uid` (`uid`),
  ADD KEY `onind` (`onind`),
  ADD KEY `promo` (`promo`),
  ADD KEY `spromo` (`spromo`),
  ADD KEY `redak` (`redak`),
  ADD KEY `data` (`data`),
  ADD KEY `preview_mobile` (`preview_mobile`);

--
-- Индексы таблицы `auto_cats`
--
ALTER TABLE `auto_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `auto_lenta`
--
ALTER TABLE `auto_lenta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`),
  ADD KEY `likes` (`likes`),
  ADD KEY `seen` (`seen`),
  ADD KEY `stat` (`stat`),
  ADD KEY `uid` (`uid`),
  ADD KEY `onind` (`onind`),
  ADD KEY `promo` (`promo`),
  ADD KEY `spromo` (`spromo`),
  ADD KEY `redak` (`redak`),
  ADD KEY `data` (`data`),
  ADD KEY `preview_mobile` (`preview_mobile`);

--
-- Индексы таблицы `blogs_cats`
--
ALTER TABLE `blogs_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `blogs_lenta`
--
ALTER TABLE `blogs_lenta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`),
  ADD KEY `likes` (`likes`),
  ADD KEY `seen` (`seen`),
  ADD KEY `stat` (`stat`),
  ADD KEY `uid` (`uid`),
  ADD KEY `onind` (`onind`),
  ADD KEY `promo` (`promo`),
  ADD KEY `spromo` (`spromo`),
  ADD KEY `redak` (`redak`),
  ADD KEY `data` (`data`),
  ADD KEY `preview_mobile` (`preview_mobile`);

--
-- Индексы таблицы `category129_cats`
--
ALTER TABLE `category129_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `category129_contacts`
--
ALTER TABLE `category129_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `category129_lenta`
--
ALTER TABLE `category129_lenta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`),
  ADD KEY `FK__category129_lenta__category129_cats` (`cat`);

--
-- Индексы таблицы `category149_cats`
--
ALTER TABLE `category149_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `category149_specprj`
--
ALTER TABLE `category149_specprj`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`),
  ADD KEY `likes` (`likes`),
  ADD KEY `seen` (`seen`),
  ADD KEY `stat` (`stat`),
  ADD KEY `uid` (`uid`),
  ADD KEY `onind` (`onind`),
  ADD KEY `promo` (`promo`),
  ADD KEY `spromo` (`spromo`),
  ADD KEY `redak` (`redak`),
  ADD KEY `data` (`data`),
  ADD KEY `preview_mobile` (`preview_mobile`);

--
-- Индексы таблицы `companies_actions`
--
ALTER TABLE `companies_actions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `companies_cats`
--
ALTER TABLE `companies_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `companies_contacts`
--
ALTER TABLE `companies_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `companies_items`
--
ALTER TABLE `companies_items`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `companies_qa`
--
ALTER TABLE `companies_qa`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `concurs_lenta`
--
ALTER TABLE `concurs_lenta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`),
  ADD KEY `seen` (`seens`),
  ADD KEY `likes` (`likes`),
  ADD KEY `seen_2` (`seen`),
  ADD KEY `stat` (`stat`),
  ADD KEY `uid` (`uid`),
  ADD KEY `onind` (`onind`),
  ADD KEY `promo` (`promo`),
  ADD KEY `spromo` (`spromo`),
  ADD KEY `redak` (`redak`),
  ADD KEY `data` (`data`),
  ADD KEY `preview_mobile` (`preview_mobile`);

--
-- Индексы таблицы `dosug_cats`
--
ALTER TABLE `dosug_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `dosug_lenta`
--
ALTER TABLE `dosug_lenta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`),
  ADD KEY `likes` (`likes`),
  ADD KEY `seen` (`seen`),
  ADD KEY `stat` (`stat`),
  ADD KEY `uid` (`uid`),
  ADD KEY `onind` (`onind`),
  ADD KEY `promo` (`promo`),
  ADD KEY `spromo` (`spromo`),
  ADD KEY `redak` (`redak`),
  ADD KEY `data` (`data`),
  ADD KEY `preview_mobile` (`preview_mobile`);

--
-- Индексы таблицы `globalnews_cats`
--
ALTER TABLE `globalnews_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `globalnews_lenta`
--
ALTER TABLE `globalnews_lenta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`),
  ADD KEY `seens` (`seens`),
  ADD KEY `stat` (`stat`),
  ADD KEY `uid` (`uid`),
  ADD KEY `onind` (`onind`),
  ADD KEY `promo` (`promo`),
  ADD KEY `spromo` (`spromo`),
  ADD KEY `redak` (`redak`),
  ADD KEY `data` (`data`),
  ADD KEY `preview_mobile` (`preview_mobile`);

--
-- Индексы таблицы `itogi_cats`
--
ALTER TABLE `itogi_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `itogi_lenta`
--
ALTER TABLE `itogi_lenta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`),
  ADD KEY `likes` (`likes`),
  ADD KEY `stat` (`stat`),
  ADD KEY `uid` (`uid`),
  ADD KEY `onind` (`onind`),
  ADD KEY `promo` (`promo`),
  ADD KEY `spromo` (`spromo`),
  ADD KEY `redak` (`redak`),
  ADD KEY `data` (`data`),
  ADD KEY `preview_mobile` (`preview_mobile`);

--
-- Индексы таблицы `lifehistory_cats`
--
ALTER TABLE `lifehistory_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `lifehistory_lenta`
--
ALTER TABLE `lifehistory_lenta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`),
  ADD KEY `likes` (`likes`),
  ADD KEY `seen` (`seen`),
  ADD KEY `stat` (`stat`),
  ADD KEY `uid` (`uid`),
  ADD KEY `onind` (`onind`),
  ADD KEY `promo` (`promo`),
  ADD KEY `spromo` (`spromo`),
  ADD KEY `redak` (`redak`),
  ADD KEY `data` (`data`),
  ADD KEY `preview_mobile` (`preview_mobile`);

--
-- Индексы таблицы `live_cat`
--
ALTER TABLE `live_cat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rate` (`rate`,`uid`),
  ADD KEY `fid` (`fid`),
  ADD KEY `update` (`update`);

--
-- Индексы таблицы `live_forum`
--
ALTER TABLE `live_forum`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `live_lenta`
--
ALTER TABLE `live_lenta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cid` (`cid`,`fid`,`stat`,`update`),
  ADD KEY `uid` (`uid`),
  ADD KEY `seen` (`seens`),
  ADD KEY `likes` (`likes`),
  ADD KEY `seen_2` (`seen`),
  ADD KEY `stat` (`stat`),
  ADD KEY `data` (`data`),
  ADD KEY `preview_mobile` (`preview_mobile`);

--
-- Индексы таблицы `news_cats`
--
ALTER TABLE `news_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news_lenta`
--
ALTER TABLE `news_lenta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`),
  ADD KEY `likes` (`likes`),
  ADD KEY `seen` (`seen`),
  ADD KEY `stat` (`stat`),
  ADD KEY `uid` (`uid`),
  ADD KEY `onind` (`onind`),
  ADD KEY `promo` (`promo`),
  ADD KEY `spromo` (`spromo`),
  ADD KEY `redak` (`redak`),
  ADD KEY `data` (`data`),
  ADD KEY `preview_mobile` (`preview_mobile`);

--
-- Индексы таблицы `partners_cats`
--
ALTER TABLE `partners_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `partners_lenta`
--
ALTER TABLE `partners_lenta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`),
  ADD KEY `likes` (`likes`),
  ADD KEY `stat` (`stat`),
  ADD KEY `uid` (`uid`),
  ADD KEY `onind` (`onind`),
  ADD KEY `promo` (`promo`),
  ADD KEY `spromo` (`spromo`),
  ADD KEY `redak` (`redak`),
  ADD KEY `data` (`data`),
  ADD KEY `preview_mobile` (`preview_mobile`);

--
-- Индексы таблицы `prj_cats`
--
ALTER TABLE `prj_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `prj_specprj`
--
ALTER TABLE `prj_specprj`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`),
  ADD KEY `likes` (`likes`),
  ADD KEY `seen` (`seen`),
  ADD KEY `stat` (`stat`),
  ADD KEY `uid` (`uid`),
  ADD KEY `onind` (`onind`),
  ADD KEY `promo` (`promo`),
  ADD KEY `spromo` (`spromo`),
  ADD KEY `redak` (`redak`),
  ADD KEY `data` (`data`),
  ADD KEY `preview_mobile` (`preview_mobile`);

--
-- Индексы таблицы `publishnews_cats`
--
ALTER TABLE `publishnews_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `publishnews_lenta`
--
ALTER TABLE `publishnews_lenta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`),
  ADD KEY `likes` (`likes`),
  ADD KEY `seen` (`seen`),
  ADD KEY `stat` (`stat`),
  ADD KEY `uid` (`uid`),
  ADD KEY `onind` (`onind`),
  ADD KEY `promo` (`promo`),
  ADD KEY `spromo` (`spromo`),
  ADD KEY `redak` (`redak`),
  ADD KEY `data` (`data`),
  ADD KEY `preview_mobile` (`preview_mobile`);

--
-- Индексы таблицы `spravka_cats`
--
ALTER TABLE `spravka_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `spravka_lenta`
--
ALTER TABLE `spravka_lenta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`),
  ADD KEY `likes` (`likes`),
  ADD KEY `stat` (`stat`),
  ADD KEY `uid` (`uid`),
  ADD KEY `onind` (`onind`),
  ADD KEY `promo` (`promo`),
  ADD KEY `spromo` (`spromo`),
  ADD KEY `redak` (`redak`),
  ADD KEY `data` (`data`),
  ADD KEY `preview_mobile` (`preview_mobile`);

--
-- Индексы таблицы `working_cats`
--
ALTER TABLE `working_cats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `working_lenta`
--
ALTER TABLE `working_lenta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`stat`,`name`,`uid`),
  ADD KEY `likes` (`likes`),
  ADD KEY `seen` (`seen`),
  ADD KEY `stat` (`stat`),
  ADD KEY `uid` (`uid`),
  ADD KEY `onind` (`onind`),
  ADD KEY `promo` (`promo`),
  ADD KEY `spromo` (`spromo`),
  ADD KEY `redak` (`redak`),
  ADD KEY `data` (`data`),
  ADD KEY `preview_mobile` (`preview_mobile`);

--
-- Индексы таблицы `_banners_items`
--
ALTER TABLE `_banners_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `stat` (`stat`,`pid`,`datafrom`,`datato`),
  ADD KEY `did` (`did`);

--
-- Индексы таблицы `_banners_orders`
--
ALTER TABLE `_banners_orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `_banners_pos`
--
ALTER TABLE `_banners_pos`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `_banners_stat`
--
ALTER TABLE `_banners_stat`
  ADD UNIQUE KEY `bid` (`bid`,`data`);

--
-- Индексы таблицы `_captions`
--
ALTER TABLE `_captions`
  ADD PRIMARY KEY (`page`);

--
-- Индексы таблицы `_commentf`
--
ALTER TABLE `_commentf`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`);

--
-- Индексы таблицы `_comments`
--
ALTER TABLE `_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link` (`link`),
  ADD KEY `pid` (`pid`);

--
-- Индексы таблицы `_cron`
--
ALTER TABLE `_cron`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stat` (`stat`);

--
-- Индексы таблицы `_crosslink`
--
ALTER TABLE `_crosslink`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link` (`link`);

--
-- Индексы таблицы `_designs`
--
ALTER TABLE `_designs`
  ADD PRIMARY KEY (`folder`);

--
-- Индексы таблицы `_domains`
--
ALTER TABLE `_domains`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `prefix` (`prefix`);

--
-- Индексы таблицы `_fastlink`
--
ALTER TABLE `_fastlink`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link` (`link`);

--
-- Индексы таблицы `_imagemaster`
--
ALTER TABLE `_imagemaster`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `_lentalog`
--
ALTER TABLE `_lentalog`
  ADD KEY `link` (`link`,`id`);

--
-- Индексы таблицы `_likes`
--
ALTER TABLE `_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`);

--
-- Индексы таблицы `_menuitem`
--
ALTER TABLE `_menuitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nid` (`nid`);

--
-- Индексы таблицы `_menulist`
--
ALTER TABLE `_menulist`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `_mistakes`
--
ALTER TABLE `_mistakes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `_modules`
--
ALTER TABLE `_modules`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `_pages`
--
ALTER TABLE `_pages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `_planes`
--
ALTER TABLE `_planes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data` (`data`);

--
-- Индексы таблицы `_rss`
--
ALTER TABLE `_rss`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `_search`
--
ALTER TABLE `_search`
  ADD UNIQUE KEY `id` (`id`,`link`);

--
-- Индексы таблицы `_settings`
--
ALTER TABLE `_settings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `_tags`
--
ALTER TABLE `_tags`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `_tracker`
--
ALTER TABLE `_tracker`
  ADD UNIQUE KEY `uid` (`uid`,`link`,`pid`);

--
-- Индексы таблицы `_users`
--
ALTER TABLE `_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created` (`created`),
  ADD KEY `mail` (`mail`(255));

--
-- Индексы таблицы `_widget_contacts`
--
ALTER TABLE `_widget_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `_widget_eventmap`
--
ALTER TABLE `_widget_eventmap`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tid` (`tid`),
  ADD KEY `stat` (`stat`);

--
-- Индексы таблицы `_widget_eventtype`
--
ALTER TABLE `_widget_eventtype`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `_widget_pics`
--
ALTER TABLE `_widget_pics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`link`),
  ADD KEY `link` (`link`);

--
-- Индексы таблицы `_widget_video`
--
ALTER TABLE `_widget_video`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link` (`link`,`pid`),
  ADD KEY `pid` (`pid`);

--
-- Индексы таблицы `_widget_votes`
--
ALTER TABLE `_widget_votes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vid` (`vid`,`uid`,`pid`),
  ADD KEY `link` (`link`);

--
-- Индексы таблицы `_widget_voting`
--
ALTER TABLE `_widget_voting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `accidents_cats`
--
ALTER TABLE `accidents_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `accidents_lenta`
--
ALTER TABLE `accidents_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1280;

--
-- AUTO_INCREMENT для таблицы `add_cats`
--
ALTER TABLE `add_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `add_nodes`
--
ALTER TABLE `add_nodes`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58707;

--
-- AUTO_INCREMENT для таблицы `adverting_cats`
--
ALTER TABLE `adverting_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `adverting_lenta`
--
ALTER TABLE `adverting_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `advertise_objects`
--
ALTER TABLE `advertise_objects`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=800;

--
-- AUTO_INCREMENT для таблицы `advertise_pays`
--
ALTER TABLE `advertise_pays`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=800;

--
-- AUTO_INCREMENT для таблицы `advertise_razdels`
--
ALTER TABLE `advertise_razdels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT для таблицы `advertise_users`
--
ALTER TABLE `advertise_users`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=800;

--
-- AUTO_INCREMENT для таблицы `afisha_cats`
--
ALTER TABLE `afisha_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `afisha_lenta`
--
ALTER TABLE `afisha_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=482;

--
-- AUTO_INCREMENT для таблицы `auto_cats`
--
ALTER TABLE `auto_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `auto_lenta`
--
ALTER TABLE `auto_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1865;

--
-- AUTO_INCREMENT для таблицы `blogs_cats`
--
ALTER TABLE `blogs_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `blogs_lenta`
--
ALTER TABLE `blogs_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT для таблицы `category129_cats`
--
ALTER TABLE `category129_cats`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор категории', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `category129_lenta`
--
ALTER TABLE `category129_lenta`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор рубрики';

--
-- AUTO_INCREMENT для таблицы `category149_cats`
--
ALTER TABLE `category149_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `category149_specprj`
--
ALTER TABLE `category149_specprj`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `companies_actions`
--
ALTER TABLE `companies_actions`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `companies_cats`
--
ALTER TABLE `companies_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `companies_contacts`
--
ALTER TABLE `companies_contacts`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `companies_items`
--
ALTER TABLE `companies_items`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `companies_qa`
--
ALTER TABLE `companies_qa`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `concurs_lenta`
--
ALTER TABLE `concurs_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT для таблицы `dosug_cats`
--
ALTER TABLE `dosug_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `dosug_lenta`
--
ALTER TABLE `dosug_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=980;

--
-- AUTO_INCREMENT для таблицы `globalnews_cats`
--
ALTER TABLE `globalnews_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `globalnews_lenta`
--
ALTER TABLE `globalnews_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=535;

--
-- AUTO_INCREMENT для таблицы `itogi_cats`
--
ALTER TABLE `itogi_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `itogi_lenta`
--
ALTER TABLE `itogi_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=774;

--
-- AUTO_INCREMENT для таблицы `lifehistory_cats`
--
ALTER TABLE `lifehistory_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `lifehistory_lenta`
--
ALTER TABLE `lifehistory_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT для таблицы `live_cat`
--
ALTER TABLE `live_cat`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT для таблицы `live_forum`
--
ALTER TABLE `live_forum`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `live_lenta`
--
ALTER TABLE `live_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=482;

--
-- AUTO_INCREMENT для таблицы `news_cats`
--
ALTER TABLE `news_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `news_lenta`
--
ALTER TABLE `news_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22070;

--
-- AUTO_INCREMENT для таблицы `partners_cats`
--
ALTER TABLE `partners_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `partners_lenta`
--
ALTER TABLE `partners_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=321;

--
-- AUTO_INCREMENT для таблицы `prj_cats`
--
ALTER TABLE `prj_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `prj_specprj`
--
ALTER TABLE `prj_specprj`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=610;

--
-- AUTO_INCREMENT для таблицы `publishnews_cats`
--
ALTER TABLE `publishnews_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `publishnews_lenta`
--
ALTER TABLE `publishnews_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=467;

--
-- AUTO_INCREMENT для таблицы `spravka_cats`
--
ALTER TABLE `spravka_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `spravka_lenta`
--
ALTER TABLE `spravka_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT для таблицы `working_cats`
--
ALTER TABLE `working_cats`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `working_lenta`
--
ALTER TABLE `working_lenta`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `_banners_items`
--
ALTER TABLE `_banners_items`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=604;

--
-- AUTO_INCREMENT для таблицы `_banners_orders`
--
ALTER TABLE `_banners_orders`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=586;

--
-- AUTO_INCREMENT для таблицы `_banners_pos`
--
ALTER TABLE `_banners_pos`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT для таблицы `_commentf`
--
ALTER TABLE `_commentf`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1068;

--
-- AUTO_INCREMENT для таблицы `_comments`
--
ALTER TABLE `_comments`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36100;

--
-- AUTO_INCREMENT для таблицы `_cron`
--
ALTER TABLE `_cron`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `_crosslink`
--
ALTER TABLE `_crosslink`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `_domains`
--
ALTER TABLE `_domains`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `_fastlink`
--
ALTER TABLE `_fastlink`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=282;

--
-- AUTO_INCREMENT для таблицы `_imagemaster`
--
ALTER TABLE `_imagemaster`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `_likes`
--
ALTER TABLE `_likes`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173119;

--
-- AUTO_INCREMENT для таблицы `_menuitem`
--
ALTER TABLE `_menuitem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=509;

--
-- AUTO_INCREMENT для таблицы `_menulist`
--
ALTER TABLE `_menulist`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT 'это nid в элементах меню', AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `_mistakes`
--
ALTER TABLE `_mistakes`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2164;

--
-- AUTO_INCREMENT для таблицы `_modules`
--
ALTER TABLE `_modules`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `_pages`
--
ALTER TABLE `_pages`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT для таблицы `_planes`
--
ALTER TABLE `_planes`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `_rss`
--
ALTER TABLE `_rss`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `_settings`
--
ALTER TABLE `_settings`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT для таблицы `_tags`
--
ALTER TABLE `_tags`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=495;

--
-- AUTO_INCREMENT для таблицы `_users`
--
ALTER TABLE `_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6137;

--
-- AUTO_INCREMENT для таблицы `_widget_contacts`
--
ALTER TABLE `_widget_contacts`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `_widget_eventmap`
--
ALTER TABLE `_widget_eventmap`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `_widget_eventtype`
--
ALTER TABLE `_widget_eventtype`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `_widget_pics`
--
ALTER TABLE `_widget_pics`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11376;

--
-- AUTO_INCREMENT для таблицы `_widget_video`
--
ALTER TABLE `_widget_video`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=745;

--
-- AUTO_INCREMENT для таблицы `_widget_votes`
--
ALTER TABLE `_widget_votes`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205142;

--
-- AUTO_INCREMENT для таблицы `_widget_voting`
--
ALTER TABLE `_widget_voting`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1344;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `category129_contacts`
--
ALTER TABLE `category129_contacts`
  ADD CONSTRAINT `FK__category129_contacts__category129_lenta` FOREIGN KEY (`id`) REFERENCES `category129_lenta` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `category129_lenta`
--
ALTER TABLE `category129_lenta`
  ADD CONSTRAINT `FK__category129_lenta__category129_cats` FOREIGN KEY (`cat`) REFERENCES `category129_cats` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

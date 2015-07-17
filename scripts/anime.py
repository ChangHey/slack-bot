# -*- coding: utf-8 -*-
import feedparser

__id = ""

pipes_url = 'http://pipes.yahoo.com/pipes/'
pipes_qs = 'pipe.run?_id='+__id+'&_render=rss'
feed_url = pipes_url + pipes_qs
feed = feedparser.parse(feed_url)
for item in feed['items']:
    print item.title.encode('utf-8')

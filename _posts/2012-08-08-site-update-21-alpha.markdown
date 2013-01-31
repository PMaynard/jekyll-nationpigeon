--- 
wordpress_id: 879
author_login: pete
layout: post
comments: 
- author: F. Rabbit
  date: Wed Aug 08 14:56:03 +0100 2012
  id: 7240
  content: |-
    I am liking the new theme (although the last one was awesome).
    
    My two tiny suggestions are: make the more/less link have cursor: pointer. Secondly the top three boxes seem a little empty, maybe taking a bit of the spacing out below the links?
  date_gmt: Wed Aug 08 14:56:03 +0100 2012
  author_email: flabbyrabbit@gmail.com
  author_url: ""
- author: Pete
  date: Wed Aug 08 16:09:18 +0100 2012
  id: 7242
  content: |-
    Done the mouse pointer.
    The spacing at the top is a bit more tricky. 
    
    If I have posts with long titles, it has a tendency to extend out site of the box. I could do with some sort of auto align.
    
    Thanks for the pointers ^_^
  date_gmt: Wed Aug 08 16:09:18 +0100 2012
  author_email: pgm987@gmail.com
  author_url: http://nationpigeon.com
author: Pete
title: Site Update 21-Alpha
excerpt: |-
  Surprise, a new shiny theme has appeared!
  <a href="http://nationpigeon.com/site-update-21-alpha/"><img src="http://nationpigeon.com/wp-content/uploads/2012/08/SiteUpdateAlphaExcerpt.jpg" /></a>
published: true
tags: 
- PHP
- site update
- CSS
- wordpress
- Git
- web development
date: 2012-08-08 14:38:37 +01:00
categories: 
- Systemless
author_email: pgm987@gmail.com
wordpress_url: http://nationpigeon.com/?p=879
author_url: http://nationpigeon.com
status: publish
---
Surprise, a new shiny theme has appeared!

I have spent the past few days working on the design you currently see. It is based on the previous theme which I have been using for the past two years or so. A big thank you to Ulysses for creating the <a href="http://ulyssesonline.com/2008/07/03/black-green-theme/" target="_BLANK">original theme</a>. I have put a little link in the footer for you. Although my recreation of Ulysses's theme is not of the same quality, I believe it has some potential.

As some form of thank you to the open source community, which I rely on every single day, I have released the <a href="https://github.com/PMaynard/pigeon-alpha" target="_BLANK">source</a> under GPLv3. So if you feel it would look better with X or a little less of Y, then get on GitHub and fork it. I plan to continue tweaking, adding and removing bits. Once I'm happy with it I shall put it in the Wordpress Theme archive. I also need to get around to writing up an about page.

Some of my favorite bits are:
<ul>
	<li>Syntax highlighter</li>
	<li>Widget sidebar</li>
	<li>JQuery toggle bit</li>
</ul>

I have tidied up some posts and sorted out some categories. You might notice a new category called 'Systemless' this will house posts which don't fit in to any specific area. Also depending on how good your display is, you'll notice that the nation pigeon banner at the top has a black background and stands out, fortunately my display is not great and I can't see it, but the .psd file exists. Check out the <a href="http://nationpigeon.com/new-banner/" target="_BLANK">new banner</a> post.

<h1>Break Down</h1>
I will now cover some of the best bits of the theme and how they were achieved.

The top section of the site shows the latest five posts from three categories.
<pre class="brush: php">&nbsp;
<h1>Programming</h1>
<ul>
<?php $my_query = new WP_Query('cat=11&amp;showposts=5'); ?>
<?php while ($my_query->have_posts()) : $my_query->the_post(); ?>
<li><a href="<?php the_permalink() ?>" title="Permanent Link to: <?php the_title_attribute(); ?>"><?php the_title(); ?></a></li>
<?php endwhile; ?>
</ul></pre>
The above code snippet shows exactly how it is done. The <a href="http://codex.wordpress.org/" target="_BLANK">Wordpress Codex</a> has a lot of information regarding this sort of thing. But the most useful page I found was this <a href="http://codex.wordpress.org/The_Loop" target="_BLANK">one</a> which explains how Wordpress's loop works. Note, because these are outside the main loop, you have to create your own loop query and iterate though it.
Further down that page it also explains how to work with multiple loops, this is how it is possible to display the latest post in full, rather than just the excerpt.

The snippet below shows the JQuery toggle sliders. This will later be replaced with a CSS image instead of text. This will prevent the juddering.
<pre class="brush: js"><div id="morebutton">MORE</div>
<!-- Show/Hide More -->
<script type="text/javascript">
$("#morebutton").click(function () {
var target = $(this);
$("#more").slideToggle('slow', function() {
target .text((target.text() == "MORE")?"LESS":"MORE") // Thanks Flabby.
});
});
</script></pre>
I really like my search box, it will only clear when you want it to and won't clear when you have text in it. I often find sites which have an annoying tendency to clear anything entered in the form.
<pre class="brush: js"><input type="text" name="s" id="quicksearch" 
value="<?php echo (is_search() ? the_search_query() : '&nbsp;&nbsp; Search'); ?>" 
onclick="if(this.value=='&nbsp;&nbsp; Search')this.value='';" 
onblur="if(this.value=='')this.value='&nbsp;&nbsp; Search';" /></pre>

That's about it on the fanciness of the design.

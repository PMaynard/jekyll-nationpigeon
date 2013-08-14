---
comments: true
date: 2012-08-08 14:38:37
layout: post
slug: site-update-21-alpha
title: Site Update 21-Alpha
wordpress_id: 879
categories:
- Systemless
tags:
- CSS
- Git
- PHP
- site update
- web development
- wordpress
---

Surprise, a new shiny theme has appeared!

I have spent the past few days working on the design you currently see. It is based on the previous theme which I have been using for the past two years or so. A big thank you to Ulysses for creating the [original theme](http://ulyssesonline.com/2008/07/03/black-green-theme/). I have put a little link in the footer for you. Although my recreation of Ulysses's theme is not of the same quality, I believe it has some potential.

As some form of thank you to the open source community, which I rely on every single day, I have released the [source](https://github.com/PMaynard/pigeon-alpha) under GPLv3. So if you feel it would look better with X or a little less of Y, then get on GitHub and fork it. I plan to continue tweaking, adding and removing bits. Once I'm happy with it I shall put it in the Wordpress Theme archive. I also need to get around to writing up an about page.

Some of my favorite bits are:



	
- Syntax highlighter


- Widget sidebar


- JQuery toggle bit



I have tidied up some posts and sorted out some categories. You might notice a new category called 'Systemless' this will house posts which don't fit in to any specific area. Also depending on how good your display is, you'll notice that the nation pigeon banner at the top has a black background and stands out, fortunately my display is not great and I can't see it, but the .psd file exists. Check out the [new banner](http://nationpigeon.com/new-banner/) post.



# Break Down


I will now cover some of the best bits of the theme and how they were achieved.

The top section of the site shows the latest five posts from three categories.

    
     
    <h1>Programming</h1>
    <ul>
    <?php $my_query = new WP_Query('cat=11&showposts=5'); ?>
    <?php while ($my_query->have_posts()) : $my_query->the_post(); ?>
    <li><a href="<?php the_permalink() ?>" title="Permanent Link to: <?php the_title_attribute(); ?>"><?php the_title(); ?></a></li>
    <?php endwhile; ?>
    </ul>


The above code snippet shows exactly how it is done. The [Wordpress Codex](http://codex.wordpress.org/) has a lot of information regarding this sort of thing. But the most useful page I found was this [one](http://codex.wordpress.org/The_Loop) which explains how Wordpress's loop works. Note, because these are outside the main loop, you have to create your own loop query and iterate though it.
Further down that page it also explains how to work with multiple loops, this is how it is possible to display the latest post in full, rather than just the excerpt.

The snippet below shows the JQuery toggle sliders. This will later be replaced with a CSS image instead of text. This will prevent the juddering.

    
    <div id="morebutton">MORE</div>
    <!-- Show/Hide More -->
    <script type="text/javascript">
    $("#morebutton").click(function () {
    var target = $(this);
    $("#more").slideToggle('slow', function() {
    target .text((target.text() == "MORE")?"LESS":"MORE") // Thanks Flabby.
    });
    });
    </script>


I really like my search box, it will only clear when you want it to and won't clear when you have text in it. I often find sites which have an annoying tendency to clear anything entered in the form.

    
    <input type="text" name="s" id="quicksearch" 
    value="<?php echo (is_search() ? the_search_query() : '   Search'); ?>" 
    onclick="if(this.value=='   Search')this.value='';" 
    onblur="if(this.value=='')this.value='   Search';" />



That's about it on the fanciness of the design.

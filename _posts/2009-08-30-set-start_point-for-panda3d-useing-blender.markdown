--- 
wordpress_id: 253
author_login: pete
layout: post
comments: []

author: Pete
title: Set start_point for Panda3D useing Blender
published: true
tags: 
- modeling
- game dev
- 3D Programming
- tutorial
- blender
date: 2009-08-30 23:01:52 +01:00
categories: 
- Programming
author_email: pgm987@gmail.com
wordpress_url: http://www.nationpigeon.com/?p=253
author_url: http://nationpigeon.com
status: publish
---
How to create a start point position for your maps/models useing blender and Panda3D.  When I was following the Roaming Ralph sample code I was unable to recreate the world model to use the start point value.  This is how to do it.

<strong>Step One:</strong>
Create a Vertex or plane, any thing, in the place where you want your start_point to be.

<strong>Step Two:</strong>
Make sure that you are in Object Mode not edit.  Press F7 which will take youto the Object Panel (See Left) and change the name of the object to "start_point" (See Right)

<a href="http://www.nationpigeon.com/wordpress/wp-content/uploads/2009/08/Step2.png"><img title="Step2" src="http://www.nationpigeon.com/wordpress/wp-content/uploads/2009/08/Step2.png" alt="Step2" width="288" height="141" /></a><a href="http://www.nationpigeon.com/wordpress/wp-content/uploads/2009/08/Step3.png"><img class="alignright size-full wp-image-257" title="Step3" src="http://www.nationpigeon.com/wordpress/wp-content/uploads/2009/08/Step3.png" alt="Step3" width="273" height="110" /></a>

<strong>Step Three:</strong>
Export useing chiken to egg, and check to see if it worked by pressing "Shift + L", check the command line to see if it says something like,&nbsp;       PandaNode start_point T:m(pos -6.71705 9.45356 5.36108)

You should now be able to get the position of the start point by doing something like this. self.environ.find("**/start_point").getPos()

With help from <a href="http://www.panda3d.org/phpbb2/viewtopic.php?t=3385&amp;start=0&amp;postdays=0&amp;postorder=asc&amp;highlight=startpoint" target="_blank">here</a> and <a href="http://www.panda3d.org/phpbb2/viewtopic.php?t=4274&amp;highlight=startpoint" target="_blank">here</a>. Hope this helps someone. Comments welcome ^_^

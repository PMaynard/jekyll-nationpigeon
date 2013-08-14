---
comments: true
date: 2009-08-30 23:01:52
layout: post
slug: set-start_point-for-panda3d-useing-blender
title: Set start_point for Panda3D useing Blender
wordpress_id: 253
categories:
- Programming
tags:
- 3D Programming
- blender
- game dev
- modeling
- tutorial
---

How to create a start point position for your maps/models useing blender and Panda3D.  When I was following the Roaming Ralph sample code I was unable to recreate the world model to use the start point value.  This is how to do it.

### Step One
Create a Vertex or plane, any thing, in the place where you want your start_point to be.

### Step Two
Make sure that you are in Object Mode not edit.  Press F7 which will take youto the Object Panel (See Left) and change the name of the object to "start_point" (See Right)

[![Step2](/uploads/2009/08/Step2.png)](/uploads/2009/08/Step2.png)

[![Step3](/uploads/2009/08/Step3.png)](/uploads/2009/08/Step3.png)

### Step Three
Export useing chiken to egg, and check to see if it worked by pressing "Shift + L", check the command line to see if it says something like,        `PandaNode start_point T:m(pos -6.71705 9.45356 5.36108)`

You should now be able to get the position of the start point by doing something like this. `self.environ.find("**/start_point").getPos()`

With help from [here](http://www.panda3d.org/phpbb2/viewtopic.php?t=3385&start=0&postdays=0&postorder=asc&highlight=startpoint) and [here](http://www.panda3d.org/phpbb2/viewtopic.php?t=4274&highlight=startpoint). Hope this helps someone. Comments welcome ^_^

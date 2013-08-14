---
comments: true
date: 2008-04-29 19:56:34
layout: post
slug: disk-storage
title: Disk Storage
wordpress_id: 73
categories:
- Systemless
tags:
- Disk Storage
---

Disk storage can be anything from a CD ROM to a floppy disk or Hard disk.  The general term for any physical storage unit is volume.  Disks are divided in tracks, these tracks are not a physical division as on a record and their position is fixed by the Read/Write head.  The tracks are numbered, then subdivided into sectors.  Sectors are normally the same size on each track and throughout the disk, sectors are numbered by inserting the sector number into the sector header.  All blank disks need to be formatted this involves writing to each sector some basic housekeeping information, when formatting the number of sectors and tracks are set by the formatting program.

Data stored on disks as files is a collection of binary data that may be a program, database, ASCII text or word processing file if we assume that they are all stored in the same way then we can say that a file is a logical unit of storage and its logical organisation is determined by the program or users that created the file.  The logical file structure is independent of the physical file structure.  When we save a file to a disk we need to be able to access it as and when required, a typical file would spread out more than one allocation unit.  In general a new file starts a new allocation unit and any space that is left is filled with null data.  Most file store systems have a reserved area where we can not write data to, and then data block areas which we write to.

A good performance disk would have a short seek time, rotational delay and data transfer time.  Seek time is the time for the read/write heads to get to the required track and sector.  Rotational delay is the time for the required sector to more around and position its self under the read/write head, and the data transfer time is the time that is taken to transfer the data from the disk allocation unit and the system memory.  To improve performance we can enable interleaving, this means that the sectors will have logical numbers and will be arranged in non-non-contiguous way.  Although most modern disk do not require interleaving because of the increase in the size of the buffer, which is now able large enough to allow all sectors in a block to be read at once with out any delay between sectors.

The most logical way to store a file would be to store it contiguously, this is means that we store each file in consecutive allocation units on the disk.  This will allow the system to easily read the whole file.  This is fine until the file needs to be extended because by the time you have written another file to the disk there will be no free space after the original file.  This way of storing data files is the best way in terms of speed of accessing the data file.  The system decids where to save the data file by one of these three ways:

1. Best Fit - Find the area with the closest amount of free space required
2. First Fit – use the first available area on the disk where the file will fit
3. Worst Fit – Put the file into the biggest available space on the disk

Another way to store data is non-contiguous which allows files to be spread out over the disk rather than stored contiguously, this means that the system will be able to use allocation units on the disk in any order or location.  One way of  doing this is to sort it using an indexed method, because the system can use any order and location to store the data it needs a way to find the next sector this is done by recording in an index a list of the allocation units that each file has been given, this allows the file to be accessed reasonably efficiently.

---
date: 2017-01-08 12:31
layout: post
slug: pdflatex-runs-out-of-memory
title: pdflatex runs out of memory
categories:
- linux
- latex
---
Error with pdflatex which complains about memory, something like this: 

	9287453 words of memory out of 18000000

Use *lualatex* - apparently it is meant to handle memory better.

Then increase the allocated memory by editing ```/etc/texmf/texmf.d/00debian.cnf``` to include:

	main_memory=9000000 
	extra_mem_bot=9000000 
	font_mem_size=9000000 
	pool_size=9000000 
	buf_size=9000000

Update all the things, not sure which of these are needed: 

        fmtutil-sys --all
        update-texmf
	texhash

If it is still not working, check you have the luatex package installed:

	apt-get install texlive-luatex

This was on Ubuntu 16.10.

## References
- <https://github.com/matlab2tikz/matlab2tikz/wiki/TeX-capacity-exceeded,-sorry>
- <https://olezfdtd.wordpress.com/2010/03/16/extending-latex-memory>
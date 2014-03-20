---
comments: false
date: 2014-03-20 16:12:47
layout: post
slug: latex-install-class
title: 'LaTeX Install .cls'
categories:
- Linux
- LaTeX
---
Installing a LaTeX class in three simple steps.

    locate article.cls
    
Copy your .cls file to the same directory.

    sudo cp yourclsfile.cls /usr/share/rest/of/the/path/from/above
    
Update the kpathsea database.

    sudo texhash

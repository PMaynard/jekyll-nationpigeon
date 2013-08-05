---
layout: post
slug: script-to-get-http-headers
title: Script to get HTTP Headers
categories:
- Programming
tags:
- Python
- HTTP
- HTTP Headers
---

The below script uses [urllib2](http://docs.python.org/2/library/urllib2.html) to connect to the given URL(s) then prints out the [HTTP headers](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html).

*http-server-header.py*
{% highlight python %}
#:/bin/python
import urllib2, sys

if len(sys.argv) == 1:
	print "Please feed me a URL...\n\n<3\n"
	sys.exit(0)

for url in sys.argv[1:]:
	r = urllib2.urlopen(url)
	print 'URL: ' + url + '\n' + str(r.info())
{% endhighlight %}

An example of it working is shown below. From a "security through obscurity" view, you'd want to conceal your HTTP server information.

	$ python ~/http-server-header.py http://nationpigeon.com
	URL: http://nationpigeon.com
	Server: nginx/1.2.1
	Date: Mon, 05 Aug 2013 01:10:19 GMT
	Content-Type: text/html
	Content-Length: 650
	Last-Modified: Mon, 29 Jul 2013 08:46:57 GMT
	Connection: close
	Accept-Ranges: bytes
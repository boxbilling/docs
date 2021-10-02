.. _faq:

Frequently Asked Questions
====================

Check these already asked questions before submitting new ticket. It is very 
likely it has already been answered.

Do I still need to buy PRO license if I use open source BoxBilling?
----------------------------------------------------------------------------

No. Beginning from 4.22 release, you don't need to obtain any kind of license keys to use BoxBilling. We chose to make BoxBilling completely free starting with the 4.22 release.

How can I access BoxBilling admin area?
----------------------------------------------------------------------------

BoxBilling admin area is located at url: http://www.yourdomain.com/index.php?_url=/bb-admin.  This link can be changed in ``bb-config.php`` file by editing value of ``admin_area_prefix``.

I have modified theme file but changes did not appear. Why?
----------------------------------------------------------------------------

Set BB_DEBUG to TRUE in ``bb-config.php`` file

What are the differences between Pro and Free versions of BoxBilling?
----------------------------------------------------------------------------

See differences at order page http://www.boxbilling.com/order

Blank page or Error 500
----------------------------------------------------------------------------

Missing or disabled cURL extension
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

BoxBilling uses cURL a lot - it's enabled in PHP by default, but sometimes it's 
either not present or it's blacklisted in php.ini

Use phpinfo() or php.ini check whether cURL extension is enabled.
If curl_exec is within disabled_functions list, 
remove it from the list.

Cache folder is not writable
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

bb-data/cache folder is not writable. BoxBilling keeps compiled templates in 
this directory, if it's not writable it may result in this error.
To fix that: CHMOD 777 bb-data/cache

Low memory_limit
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Blank page may occur on some server environments, where PHP does not 
handle garbage collection properly. Increase *memory_limit* in *php.ini* to 
reasonable value - over 128MB is always safe or upgrade PHP to latest version.


I get an error: Call to undefined function gettext() in ...
----------------------------------------------------------------------------

Make sure you server has **gettext** extension enabled. Contact your hosting 
provider to enable it for you.

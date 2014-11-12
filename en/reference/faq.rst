.. _faq:

Faq
====================

Check these already asked questions before submitting new ticket. It is very 
likely it has already been answered.

Do I still need to buy PRO license if I use open source BoxBilling?
----------------------------------------------------------------------------

Yes.

How to obtain license key?
----------------------------------------------------------------------------

Get license at http://www.boxbilling.com/order

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

Missing or disabled curl extension
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

BoxBilling use curl a lot - its by default enabled in php, but sometimes its 
either not present or its in list of disabled_functions in php.ini

Using phpinfo() or php.ini check whether curl extension is enabled, 
if not recompile php. If curl_exec is within disabled_functions list, 
remove it from php.ini

Cache folder is not writable
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

bb-data/cache folder is not writable. BoxBilling keeps compiled templates in 
this directory, if its not writable it may result with blank page error.
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

Installation
============

This guide will help you install BoxBilling on your server.

System requirements
-------------------------------

Environment on which you are going to install BoxBilling should meet
these prerequisites:

* Linux OS
* PHP >=5.3.3 or later with extensions

    * PDO MySQL
    * curl
    * mbstring
    * zlib
    * ftp
    * gettext
    * mcrypt

* MySQL Version 4.1.* or later
* Apache mod_rewrite module enabled, for SEO urls only

It is recommended to install BoxBilling on VPS server with APC cache enabled
for best performance and security reasons.


Installation guide
-------------------------------

To start BoxBilling installation download latest version from `download page`_

After download is complete extract all files on your computer and
upload them via FTP to your server.

Using web installer
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Web installer is a convenient way to install BoxBilling and it should be used
in most cases. This guide is based assuming that you have uploaded all
files to subfolder **billing**

Access installation setup via the browser,
by opening www.yourdomain.com/billing/install

#. You will need to tick "I agree to the license" to continue the installation.
#. In the next screen a "Pre-Installation check" will recheck if the system (hosting account) does meet the minimum requirements for installation. Most often you will need to login to your account via a file manager (or FTP manager) and set the required permissions (chmod 777) on these files and folders.
#. In the next step you will need to setup access to the MySQL database. Enter an existing database and user (with all permissions granted). If you have any trouble setting up a MySQL database and user, please consult your hosting provider. For example, if you are hosting on cPanel powered hosting, you can setup database and users via the cPanel > MySQL area.
#. Enter the e-mail and credentials for the administrator account. A greeting letter will be sent to the administrator e-mail account upon successful installation of BoxBilling.
#. Even though BoxBilling is free it requires to `obtain license key`_  in order to work.
#. Finish installation with confirming that all the information is correct.

After installation is complete
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#. Remove www.yourdomain.com/billing/install directory completely
#. Change *billing/bb-config.php* file permissions to 644 if necessary 
#. Setup cron job to run every five minutes.

.. code-block:: php

    */5 * * * * php install/path/bb-cron.php

Installation is complete and you can visit admin area at http://www.yourdomain.com/bb-admin.php

Changing application timezone
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

By default BoxBilling installs with "America/New_York" timezone. To change this
open **bb-config.php** file and edit line with preferred timezone.

.. code-block:: php

      'timezone'    =>  'UTC',

All available timezones are listed at http://php.net/manual/en/timezones.php

Enabling search engine friendly URL's
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

When SEO urls are not enabled all BoxBilling urls will have **index.php** prefix.
To enable search engine friendly urls follows these steps:

* Rename htaccess.txt (file which comes with installation) to *.htaccess*
* Open **bb-config.php** file and set **BB_SEF_URLS** to true

.. code-block:: php

    'sef_urls'  => true,


.. note::

    SEO urls will also be enabled for admin area. Old links will stop working.


Debugging and error logging
-------------------------------

Enable BoxBilling debug mode in **bb-config.php** file:

.. code-block:: php

    'debug'     => true,

This will show errors on your site and provides more debugging information.
If you set BB_DEBUG to FALSE it will still log all errors log file. 
It can be accessed at *bb-data/log/php_error.log*

nginx host configuration
-------------------------------

.. code-block:: guess

    location ~ bb-admin\.php {
            if (!-e $request_filename) {
                    rewrite ^(.+)$ /bb-admin.php?$1 last;
            }
    }

    location / {
            if (!-e $request_filename) {
                    rewrite ^(.+)$ /index.php?$1 last;
            }
    }


Directory structure explanation
-------------------------------

bb-data
    Directory where BoxBilling cache, logs and uploaded data is stored

bb-library
    Directory for system files and payment/registrar adapters

bb-locale
    Directory for interface translations

bb-modules
    Directory for modules/extensions

bb-themes
    Directory for client and admin area themes

install
    BoxBilling web installer. Can be safely removed after installation

index.php
    Main BoxBilling file where all requests are gathered

.. _`download page`: http://www.boxbilling.com/download
.. _`obtain license key`: http://www.boxbilling.com/order
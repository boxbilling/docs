Updating BoxBilling
===============================================================================

To track BoxBilling development milestones please visit our github page at
https://github.com/boxbilling/BoxBilling


Automatic updates
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

When BoxBilling new version is released you will be notified in admin area dashboard.

To check if new version is available to update go to **Extensions > Overview -> Update** section

If there is new version available you can try using automatic updater.

.. note::

    PHP extensions *ftp* and *zip* should be available for this to work

.. note::

    Do not interrupt automatic update process as it may lead to unexpected results.


Manual update
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#. Download latest version from `download page`_
#. Extract files at your computer
#. Upload (overwrite) extracted files via FTP
#. Execute update file http://www.yourdomain.com/bb-update.php on your browser

.. note::

    Please make full backups of your current installation before proceeding.


Updating with console
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Geeky method to update BoxBilling. Create **update.sh** script in 
your BoxBilling installation directory.

.. code-block:: guess

    #!/bin/sh

    UPDATE_URL="http://www.boxbilling.com/version/latest_update.zip"

    wget -O update.zip -q $UPDATE_URL
    unzip -o update.zip
    php bb-update.php
    rm -rf update.zip
    rm -rf bb-data/cache/*



.. _`download page`: http://www.boxbilling.com/version/latest.zip
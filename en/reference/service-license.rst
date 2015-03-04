.. _service-license:

Selling licenses
====================

BoxBilling provides an easy way to sell licenses for your software.
Your software can make callbacks to BoxBillings licensing server for 
validation.  

License product
----------------------------------------------------------------------------

License product configuration requires these settings to be entered:

Plugin
    License plugin class name. Provide your own plugin to control how license
    keys are generated and validated. More information at
    :ref:`service-license-plugin`.

Prefix
    License prefix that will be used when generating key. Leave blank
    to ignore this option.

Length
    License key length. Default license plugin will generate selected length
    license key and add prefix.

Validate IP:
    Select if you want license key to be validate by callback IP

Validate Hostname:
    Select if you want license key to be validate by callback hostname

Validate Version:
    Select if you want license key to be validate by callback version.
    Callback must provide currently installed version for licensing server.

Validate Path:
    Select if you want license key to be validate by callback IP
    Callback must provide current installation path for licensing server.

.. _service-license-plugin:

License plugin
----------------------------------------------------------------------------

BoxBilling gives you ability to provide your own license generation script.

* License plugin is PHP class **PluginName** in **Box\Mod\Servicelicense\Plugin** namespace with one method **generate**
* License plugins are located at **bb-modules/Servicelicense/Plugin** folder
* Default plugin at **bb-modules/Servicelicense/Plugin/Simple.php**
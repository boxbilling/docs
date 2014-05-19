.. _service-hosting:

Selling hosting services
========================================


Hosting servers
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Servers are used to create shared hosting and reseller accounts. To manage your
servers go to *Configuration -> Servers*

.. _supported-server-managers:

Supported server managers
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

* cPanel/Whm

.. note::

    To create your own server manager see :ref:`extension-server-manager` section.

Adding new Server
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Server must be configured in BoxBilling to sell shared or reseller hosting accounts.

Follow these steps to create new server:

* Go to *Configuration -> Hosting plans and servers -> New server* tab

Servers has these conguration parameters:

Name
    Give name to your server for your own reference.

Hostname
    Your server hostname. Used to connect and generate link to control panel.
    Can also be IP address if does not have assigned hostname.

IP Address
    Your server ip address, ie: 213.129.14.55
    This is the most important server setting. API uses this IP to connect to
    server manager.

Assigned IP Addresses:
    List the IP Addresses assigned to the server here, t
    hese are used to check which domains in BoxBilling are pointing to your server.

Server access
    If you are reseller on server choose *I am reseller on this server and cannot
    setup other reseller accounts* option. Choose this option if you are not sure
    when you are reseller or not.
    Choose *I have root access on this server and can setup other reseller accounts*
    when you are root on server.

Enable/Disable
    Disabled servers will not be listed in drop down menus.

Nameservers
    Primary/Secondary/Tertiary/Quaternary Nameservers -
    these are the nameservers for this server,
    eg. ns1.yourdomain.com and ns2.yourdomain.com -
    used in welcome email and when registering domains

Server Manager
    Type of server manager installed on server.

Server Manager username
    Username to connect to server manager API. Usually name you use to connect to
    your control panel. (root/reseller)

Server Manager password
    Password for user to connect to server manager API.
    Leave this field blank for cPanel/Whm manager.

Access Hash
    Used only with cPanel/Whm manager instead of password.
    This is also known as "Remote access key" you can find it at WHM.

How to configure Kloxo server
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

API port
    Port of connection to your API

Login
    Username of Kloxo API

Password
    Password of Kloxo API

After server configuration is complete and you can connect to server make sure
you meet these requirements:

Resource plan and DNS template on Kloxo server are the same as Boxbilling product
(change spaces in product name to underscore). Boxbilling can't edit or
create new resource plans and DNS templates in Kloxo, so all limits and
nameservers must be set in Kloxo.

* To setup Resource plan go to your **Kloxo server -> Administration -> Resource Plans -> Add Resource Plan**.
* To setup DNS template go to your **Kloxo server -> Resources -> DNS Templates -> Add DNS Template**.

.. _service-domain:

Selling domains
================================================================================

Configure domain
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Before you can offer domains registration for your clients, you will need to
setup and attach a domain registrar to top level domain.

You can either use a **Email** one (the domains are not setup via BoxBilling on
such a case, and you will need to register them at your registrar manually), or
use a supported domain registrar.

Currently we support these domain registrars:

* ResellerClub

To create your own domain registrar see :ref:`extension-domain-registrar` section.

Domain pricing
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

All domain management and setup can be done via *Configuration > Domain registration*
page under your Administration area.

After you have setup your domain registrar, you will be able to setup new TLD's
(top level domains) via *Configuration > Domain registration > New TLD* tab.

You should set domain prices for actions of registration, renewal and transfer.
Your domain renewal price most of the time is the same as the registration price
and domain transfer fee is by default 0 (unless you wish to charge for this action).

The Operations list shows the allowed operations that the client will be able
to perform on the domain, so feel free to untick any operations you wish to
reserve for the administrators only.

Domain registrars
================================================================================

ResellerClub
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Configuration
--------------------------------------------------------------------------------

* Login to the ResellerClub control panel (the url will be in the email you
  received when you signed up with them) and then go to Settings > Personal
  Information > Primary Profile - the value you need to note is the Reseller ID.
* Still in the ResellerClub control panel, go to Settings -> API and enter the
  IP address of the server where BoxBilling is installed to authorize it for API access
* Now, login to your BoxBilling Administration Area
  Go to Configuration > Domain Registration > Registrars > ResellerClub
  Enter the Reseller ID noted above and password you set when you signed up.
* Then click *Update*
* And that's it, BoxBilling will now be able to communicate with your ResellerClub
  account to automate domain registration & management for your clients.

Common issues
--------------------------------------------------------------------------------

An unexpected error has occurred
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

This usually indicates that the login details are missing,
please ensure these have been entered under **Configuration > Domain registration
> Registrars > ResellerClub**.

CURL Error: 7 - couldn't connect to host
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

This error message indicates that you haven't yet allowed your servers IP to
access your ResellerClub account via the API.
have to do this in the Settings > API section of the LogicBoxes control panel
before you can use the integration.

The IP you need to authorize is typically the main shared IP of the server,
usually most easily found from the IP your BoxBilling license is assigned to,
but if you're unsure or neither of those IPs work, then ResellerClub can
assist and advise you of the IP they see your connection tests as
coming from via a support ticket.
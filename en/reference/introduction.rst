Introduction
========================================

BoxBilling is a free billing & client management software

* Supports automated billing, invoicing, product provisioning
* Automatically create hosting accounts as soon as the payment is received, suspend when account becomes overdue, terminate when a specified amount of time passes.
* Enable multiple currencies, accept one time and recurring payments
* BoxBilling is perfectly created to sell shared and reseller hosting accounts, software licenses and downloadable products or any recurrent billing product.
* Helpdesk, knowledge base, news and announcements system.
* Intuitive Web 2.0 AJAX powered interface with 100% usability score!
* Client area can be `translated in to any language`_.

Automation
--------------------------

* Product creation for hosting accounts, domains, licenses, and downloadable products can be done automatically after the successful payment is received or even with no payment received.
* Product creation can be also executed after the administrator approval.
* Order can be automatically suspended is no payment was received for X days and unsuspended as soon the late payment will be collected.
* Client area password can be automatically reset without the by the client itself.
* Control panel password can be reset by the client itself without need to logon on to control panel (depends on server manager used). *Great if client forgets the hosting account control panel password.*
* Payment reminders can be configured to be sent until the order will be terminated or late payment will be collected.
* A custom event hook script can be executed on order activation / suspension / reactivation / cancellation so you can setup custom products easily and interrupt workflow as you need

Billing
--------------------------

* Automated invoicing allows billing your customers easily.
* You can add/edit/delete any products and prices to any invoice.
* You can setup any custom one time payments for your clients.
* You can create custom invoices for your clients with.
* Automated payment processing is available for all supported gateways. All you need is to configure payment gateway and BoxBilling will do the rest.
* You can integrate any unsupported payment gateway by inserting your own HTML or Javascript code at the payment page. 

Products
--------------------------

* Ability to sell any kind of e-products, not just hosting, domains, servers, licensing or downloadable products.
* Ability to give product name, description, image.
* Setup one time payments.
* Setup recurring payments to be billed: Monthly, quarterly, semiannually, annually, biannually and triennially.
* Ability to setup products that do not require payments (free) such as free hosting free downloads.
* Domains can be chosen to be registered for free with any type or product. You can setup domain pricing for transfers, registrations, renewals.
* You can choose how product is activated: as soon order is places, after the successful payment, or manually by the administrator.
* Ability to setup custom fields to collect additional information from the client during the order placement process.
* Developer Friendly: Hook into BoxBilling events with your php script
* Modify email templates being sent during order status changes. You can setup custom emails for specific product in any product group.

Hosting Products
--------------------------

* Easy server setup: provide IP, server type, username / password combination and everything else such as account creation will be done automatically.
* Server access roles: BoxBilling will work perfectly no matter if you have root access or just a reseller account.
* Disk space, bandwidth, additional features and function can be fully customized for each hosting plan.
* Full integration and automation is available with BoxBilling extensions, such as cPanel, Plesk, DirectAdmin and others.
* Even if your hosting control panel is not supported you can use BoxBilling to track your orders and clients, just processes account creations / terminations on your server side manually.

Licensing
--------------------------

* License your own applications.
* Validate licenses by calling back to your BoxBilling installation. BoxBilling return is your customer license is still active or is there any problem.
* Distribute your software at the same time (you don’t need to upload your downloadable products anywhere else).
* You can license as many different applications as you want. There are no limits on either the number of clients you can have or licenses you can issue.
* Each license can be attached to specific IPs, domain names, email addresses, software installation paths. These details can be saved when application first calls BoxBilling or your client can specify these values during signup. If application will later call from a different IP, domain or email system will return “license invalid” error. You can modify any of these values later, or allow dynamic IPs, domains, installation paths etc. to work for the same license key.
* A very simple API for license validation is provided and can be integrated even by newbie.
* A custom license generation script can be used to generate license key. Gives you ability to validate license using your algorithm instead of callbacking licensing server.

Downloadable products
--------------------------

* Upload as much products as you want.
* Products can be uploaded to the unreadable directory on the server so only authorized and paid user can download it.

Custom Products
--------------------------

* You can setup any type of products not just web hosting.
* Unique order activation / suspension / reactivation / termination emails can send for any product.
* System can execute any custom PHP code on order activation, suspension, reactivation, and cancelation by using event listeners.

Taxation
--------------------------

* Setup tax rules depending on country and state.
* Give your tax rule a name, to be displayed for client.
* Even custom invoice items can be chosen to be taxed or not.

Invoicing
--------------------------

* Use BoxBilling just for invoices.
* Perfect for companies to issue custom invoices, notify client and collect money.
* Create custom invoice event without any product setup. You decide what you bill for.

Support
--------------------------

* Integrated helpdesk allows you to communicate with clients easily.
* Multiple helpdesk departments are supported so requests can be distributed through along your staff.
* Knowledge base suggestions are automatically displayed for your customers so they can get some question answered even without need to open a ticket.
* Predefined replies can be inserted by the click of mouse and supports system, order and client details variable parsing. That saves a lot time for you and allows sending personalized predefined answers.
* News & Announcements system allows you to inform your clients about what is going at the moment and notify about upcoming events.
* Knowledge base allows defining the answers for the most frequently asked questions.

Customization
--------------------------

* Custom client area themes can be easily integrated into BoxBilling.
* Admin and client views and themes can be also fully customized by editing template files.
* Languages can be fully modified; we are using power of crowdsourcing so that BoxBilling would be `available in multiple languages`_.

.. _`translated in to any language`: https://www.transifex.com/projects/p/boxbilling/
.. _`available in multiple languages`: https://www.transifex.com/projects/p/boxbilling/
Configure
============================================

This guide will help you to get started with BoxBilling. To configure
required settings in order to successfully use BoxBilling.

All configurations are made in BoxBillings admin area.

Setup your company information
--------------------------------------------------------------------

Company information appears in client area, emails, invoices.

To change company information go to **Configuration > General Settings** section

You will be able to change your company details and your logo.

Decide what is your default currency
--------------------------------------------------------------------

BoxBilling is multi-currency software. It can handle orders and invoices
in any defined currency.

It is very important to setup default currency before your first sale.
Your income is going to be calculated in this currency. Changing default currency
when you have active orders is not recommended as it may lead to unexpected results.

Currencies are managed at **Configuration > Currencies** section

BoxBilling default currency is USD, but it can be changed to any other.

More about currency management at :ref:`section-currency` section.

Configure payment gateways
--------------------------------------------------------------------

Configuring payment gateways is an essential part of your business. Clients will
not be able to send you money if you have not configured payment gateways properly.

Gateways are configured at *Configuration > Payment gateways* section.

Enabled payment gateways are listed in the table.
Click on payment gateway *edit* button and configuration window will appear. 
Each gateway has its own configuration parameters.

You can change the name of payment method instead of using default one.
Some payment gateways do not accept all currencies, so you have to define,
which currencies are acceptable. If invoice currency do not match assigned currency,
gateway will not be offered as payment method.

Only enabled gateways will be offered for clients to pay for invoice.

BoxBilling supports these payment gateways:

* Custom
* PayPal
* Authorize.net
* 2Checkout
* WebToPay
* AlertPay
* and more.

.. note::

    All payment gateways are open source, so you can change or fix them for your needs.
    BoxBilling is constantly integrating new payment gateways. Submit support ticket
    to request new payment gateway integration.

To create your own payment gateway see :ref:`extension-payment-gateway` section.

Configuring Custom Payment gateway
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Custom payment gateway is a way to provide your clients custom information on
how they can send you money.

This is useful if none of the provided payment gateways suits your needs.

In order to setup custom payment gateways, please select "Custom" from the list,
and a new Pop-up window will be displayed.

You will need to paste full HTML code in the pop up window. You can use *{{ invoice.* }}*
tags inside this html code. This code will be displayed when client chooses to
pay for invoice with Custom payment gateway.

.. note::

    Test mode is used for administrators to test if gateway is functioning
    as it is expected without need to spend real money. Not all payment
    gateways supports this feature.

Email templates
--------------------------------------------------------------------

E-mail templates can be edited via the **Configuration > Email templates**.

All templated e-mails are listed in the tree view box, and you can select any of them by clicking on it.

In order to enable/disable email template go to **Template Settings** tab in email template editing page and toggle **Enabled** parameter.

Each e-mail template has a Subject and Content that you can edit.

Please notice that all dynamic fields are conveniently listed for you in **Variables** tab, sorted by their type. Feel free to use any of them in your template.

When you have made your changes to the e-mail template, do not forget to save it by clicking **Update** at the bottom of page. You can also click on **Preview** button which will render template and show how it will look for client.


Staff members
--------------------------------------------------------------------

Staff management is one of the most useful modules of BoxBilling. Even though 
it looks simple it is really powerful.

You can set permissions to modules for each particular staff member and assign them to group for easier management.

Add new Staff / Admin group
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Firstly, you will need to setup a new staff group via *Add new staff group*. 
Just enter a new group name and press *Create*.

Add new Staff / Administrator
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You can create new administration / support members via the *Configuration > Manage staff* area.
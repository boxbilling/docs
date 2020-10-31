Currency
========================================

.. _section-currency:

How currency logic works on BoxBilling
------------------------------------------------------------------------------

* Customers select a main currency
* Product pricing is displayed according to main currency
* Customers receive invoices AND statements in their main currency
* BoxBilling receives payments in the invoice currency (via the appropriate Gateway)
* Money from payments is deposited into the appropriate currency account with your bank

*Nothing* is converted by BoxBilling or the payment processor -
that's administrators job to sort this out using payment gateways

This does mean administrators have to create multiple bank accounts (one for each currency)
and sign up for multiple payment gateways and possibly means more work pricing products.
But it gives us full control over exchange rate fluctuations, gives a better experience
for customers and is cheaper for them to purchase as they aren't having
to pay currency conversion rates on credit card payments.

It is administrators responsibility to activate payment gateways which supports
appropriate currencies.

Every payment gateway can be configured what currencies it accepts. If invoice
currency is not accepted by payment gateway then this gateway is not shown as
an option for payment.

Customers currency
------------------------------------------------------------------------------

* Customers currency is set after first order. Once it is set it can not be changed.
* Customers can create new profile for account management in other currency.

Adding a new currency
------------------------------------------------------------------------------

To add new currency go to *Configuration > Payments > Currencies tab*.
You can add a new currency by clicking *Add new currency*. 
A pop-up window will be displayed where you will be able to select
currency symbol (from the drop down box), display format and set the
currency rate manually.

Change currency format
------------------------------------------------------------------------------

Currency format can be easily change in currency management page.

.. only:: html

    .. raw:: html

        <img src="http://i.imgur.com/B37dY.png" alt="Screen">


Automated currency rate update
------------------------------------------------------------------------------

If you have trouble tracking the currency rate, or if you have multiple currencies
in your panel, you can use the automatic currency rate update setting.
It will update the currency rate automatically for all listed currencies.
Just press *Update currency rates* button and it will be done for you.

.. note::

    Currency rates are taken form google.com
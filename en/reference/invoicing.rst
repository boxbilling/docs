Invoicing
====================

Invoices are managed at *Admin area > Invoices* section

Checking current invoices
----------------------------------------------------------------------------

The overview page shows all the recently generated invoices sorted by date.
Clicking on invoice line will open invoice details.

Changing invoice status
----------------------------------------------------------------------------

It is possible that you have agreed to pay invoice
in cash or somehow else and you need to mark the invoice as paid. To change invoice
status from *pending payment* to *paid* manually, go to invoice details page
and click on "Mark as paid".

Find a specific invoice
----------------------------------------------------------------------------

If you need to find a specific invoice, you can use the *Invoices > Advanced search*
page. You can search by invoice ID, date, client name and invoice status.

Invoice details
----------------------------------------------------------------------------

When you click on an invoice you will see extended information about including
invoice date, client the invoice was generated to, and the list of transactions
involved.

Issuing a custom invoice
----------------------------------------------------------------------------

You can issue custom invoice for a client if he needs something specific.
You can do this by navigating to *Clients -> Overview*, click on the client
you want to issue invoice for, press Invoices tab and then click on 
*Issue custom invoice*.

Transactions
----------------------------------------------------------------------------

You can check the transactions via the *Invoices > Transactions*

This is the list of actual transactions attached to your invoices. The amount of
transactions do not necessarily match the amount of invoices, as some of them
are made on subscription, and some invoices are generated without any payment required.

Transactions are logged when instant payment notification from payment gateway is received.

Refunds automation
----------------------------------------------------------------------------

BoxBilling can handle refunds in 2 different ways. After refund transaction
from payment gateway is received BoxBilling can perform one of these tasks:

* Generate new invoice with negative refund amount continuing paid invoice numbering.
  Refund amount must match refundable invoice amount.
* Generate credit note (credit memorandum) with refundable amount referencing the original invoice. 
  Credit note does not continue paid invoices numbering. Has unique numbering series
  and new sequence.
* Do nothing. Leaving ability for administrator to manage refund manually.

.. note::

    If you want to refund custom amount you can create custom invoice with negative
    amount.

Invoice statuses
----------------------------------------------------------------------------

Invoices has these statuses:

* paid     - Invoice is paid. All paid invoices has a numbering sequence. 
* unpaid   - Proforma invoice.
* refunded - refund invoice. 
* canceled - use canceled status to imitate invoice as deleted, but keep 
  record in database. Useful if you need to keep invoice order intact.
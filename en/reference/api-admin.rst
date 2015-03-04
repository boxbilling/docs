Admin API
==============================================================================

This document is the API specification for BoxBilling

Activity
------------------------------------------------------------------------------

System activity messages management


admin/activity/log_get_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get list of activity messages



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->activity_log_get_list($params);

    .. code-block:: html

        {{ admin.activity_log_get_list() }}

    .. code-block:: javascript

        bb.post("admin/activity/log_get_list", {})

admin/activity/log
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Add message to log



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:m: **string**   - Message text

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:admin_id: **int**   - admin id
:client_id: **int**   - client id
:priority: **string**   - log priority

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->activity_log($params);

    .. code-block:: html

        {{ admin.activity_log() }}

    .. code-block:: javascript

        bb.post("admin/activity/log", {})

admin/activity/log_email
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Add email to log



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->activity_log_email($params);

    .. code-block:: html

        {{ admin.activity_log_email() }}

    .. code-block:: javascript

        bb.post("admin/activity/log_email", {})

admin/activity/log_delete
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Remove activity message



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - Message ID

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->activity_log_delete($params);

    .. code-block:: html

        {{ admin.activity_log_delete() }}

    .. code-block:: javascript

        bb.post("admin/activity/log_delete", {})

Cart
------------------------------------------------------------------------------

Shopping cart management


admin/cart/get_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get list of currently active carts.
Carts are removed after checkout.



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->cart_get_list($params);

    .. code-block:: html

        {{ admin.cart_get_list() }}

    .. code-block:: javascript

        bb.post("admin/cart/get_list", {})

admin/cart/get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get shopping cart contents by id



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - shopping cart id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->cart_get($params);

    .. code-block:: html

        {{ admin.cart_get() }}

    .. code-block:: javascript

        bb.post("admin/cart/get", {})

admin/cart/batch_expire
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Remove shopping carts that are older than a week and was not ordered



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->cart_batch_expire($params);

    .. code-block:: html

        {{ admin.cart_batch_expire() }}

    .. code-block:: javascript

        bb.post("admin/cart/batch_expire", {})

Client
------------------------------------------------------------------------------

Client management


admin/client/get_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get list of clients



Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:status: **string**   - Filters client by status. Available options: active, suspended, canceled

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->client_get_list($params);

    .. code-block:: html

        {{ admin.client_get_list() }}

    .. code-block:: javascript

        bb.post("admin/client/get_list", {})

admin/client/get_pairs
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get clients index



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->client_get_pairs($params);

    .. code-block:: html

        {{ admin.client_get_pairs() }}

    .. code-block:: javascript

        bb.post("admin/client/get_pairs", {})

admin/client/get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get client by id or email. Email is also unique in database



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - client ID

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:email: **string**   - client email

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->client_get($params);

    .. code-block:: html

        {{ admin.client_get() }}

    .. code-block:: javascript

        bb.post("admin/client/get", {})

admin/client/login
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Login to clients area with client id



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - client ID

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->client_login($params);

    .. code-block:: html

        {{ admin.client_login() }}

    .. code-block:: javascript

        bb.post("admin/client/login", {})

admin/client/create
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Creates new client



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:email: **string**   - client email, must not be registered on system
:first_name: **string**   - client first name

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:password: **string**   - client password
:auth_type: **string**   - client authorization type. Default null
:last_name: **string**   - client last name
:aid: **string**   - alternative ID. If you import clients from other systems you can use this field to store foreign system ID
:group_id: **string**   - client group id
:status: **string**   - client status: "active, suspended, canceled"
:created_at: **string**   - ISO 8601 date for client creation date
:last_name: **string**   - last name
:aid: **string**   - Alternative id. Usually used by import tools.
:gender: **string**   - Gender - values: male|female
:country: **string**   - Country
:city: **string**   - city
:birthday: **string**   - Birthday
:company: **string**   - Company
:company_vat: **string**   - Company VAT number
:company_number: **string**   - Company number
:type: **string**   - Identifies client type: company or individual
:address_1: **string**   - Address line 1
:address_2: **string**   - Address line 2
:postcode: **string**   - zip or postcode
:state: **string**   - country state
:phone: **string**   - Phone number
:phone_cc: **string**   - Phone country code
:document_type: **string**   - Related document type, ie: passport, driving license
:document_nr: **string**   - Related document number, ie: passport number: LC45698122
:notes: **string**   - Notes about client. Visible for admin only
:lang: **string**   - Client language
:custom_1: **string**   - Custom field 1
:custom_2: **string**   - Custom field 2
:custom_3: **string**   - Custom field 3
:custom_4: **string**   - Custom field 4
:custom_5: **string**   - Custom field 5
:custom_6: **string**   - Custom field 6
:custom_7: **string**   - Custom field 7
:custom_8: **string**   - Custom field 8
:custom_9: **string**   - Custom field 9
:custom_10: **string**   - Custom field 10

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->client_create($params);

    .. code-block:: html

        {{ admin.client_create() }}

    .. code-block:: javascript

        bb.post("admin/client/create", {})

admin/client/delete
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Deletes client from system



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **string**   - client ID

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->client_delete($params);

    .. code-block:: html

        {{ admin.client_delete() }}

    .. code-block:: javascript

        bb.post("admin/client/delete", {})

admin/client/update
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Update client profile



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **string**   - client ID

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:email: **string**   - client email
:first_name: **string**   - client first_name
:last_name: **string**   - client last_name
:status: **string**   - client status
:last_name: **string**   - last name
:aid: **string**   - Alternative id. Usually used by import tools.
:gender: **string**   - Gender - values: male|female
:country: **string**   - Country
:city: **string**   - city
:birthday: **string**   - Birthday
:company: **string**   - Company
:company_vat: **string**   - Company VAT number
:company_number: **string**   - Company number
:type: **string**   - Identifies client type: company or individual
:address_1: **string**   - Address line 1
:address_2: **string**   - Address line 2
:postcode: **string**   - zip or postcode
:state: **string**   - country state
:phone: **string**   - Phone number
:phone_cc: **string**   - Phone country code
:document_type: **string**   - Related document type, ie: passport, driving license
:document_nr: **string**   - Related document number, ie: passport number: LC45698122
:lang: **string**   - Client language
:notes: **string**   - Notes about client. Visible for admin only
:custom_1: **string**   - Custom field 1
:custom_2: **string**   - Custom field 2
:custom_3: **string**   - Custom field 3
:custom_4: **string**   - Custom field 4
:custom_5: **string**   - Custom field 5
:custom_6: **string**   - Custom field 6
:custom_7: **string**   - Custom field 7
:custom_8: **string**   - Custom field 8
:custom_9: **string**   - Custom field 9
:custom_10: **string**   - Custom field 10

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->client_update($params);

    .. code-block:: html

        {{ admin.client_update() }}

    .. code-block:: javascript

        bb.post("admin/client/update", {})

admin/client/change_password
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Change client password



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - Client ID
:password: **string**   - new client password
:password_confirm: **string**   - repeat same new client password

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->client_change_password($params);

    .. code-block:: html

        {{ admin.client_change_password() }}

    .. code-block:: javascript

        bb.post("admin/client/change_password", {})

admin/client/balance_get_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Returns list of client payments



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->client_balance_get_list($params);

    .. code-block:: html

        {{ admin.client_balance_get_list() }}

    .. code-block:: javascript

        bb.post("admin/client/balance_get_list", {})

admin/client/balance_delete
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Remove ro from clients balance



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - Balance line id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->client_balance_delete($params);

    .. code-block:: html

        {{ admin.client_balance_delete() }}

    .. code-block:: javascript

        bb.post("admin/client/balance_delete", {})

admin/client/balance_add_funds
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Adds funds to clients balance



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - Client ID
:amount: **int**   - Amount of clients currency to added to balance
:description: **int**   - Description of this transaction

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:type: **string**   - Related item type
:rel_id: **string**   - Related item id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->client_balance_add_funds($params);

    .. code-block:: html

        {{ admin.client_balance_add_funds() }}

    .. code-block:: javascript

        bb.post("admin/client/balance_add_funds", {})

admin/client/batch_expire_password_reminders
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Remove password reminders which were not confirmed in 2 hours



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->client_batch_expire_password_reminders($params);

    .. code-block:: html

        {{ admin.client_batch_expire_password_reminders() }}

    .. code-block:: javascript

        bb.post("admin/client/batch_expire_password_reminders", {})

admin/client/login_history_get_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get list of clients logins history



Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:client_id: **int**   - filter by client

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->client_login_history_get_list($params);

    .. code-block:: html

        {{ admin.client_login_history_get_list() }}

    .. code-block:: javascript

        bb.post("admin/client/login_history_get_list", {})

admin/client/login_history_delete
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Remove log entry form clients logins history



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - Log entry ID

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->client_login_history_delete($params);

    .. code-block:: html

        {{ admin.client_login_history_delete() }}

    .. code-block:: javascript

        bb.post("admin/client/login_history_delete", {})

admin/client/get_statuses
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Return client statuses with counter.



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->client_get_statuses($params);

    .. code-block:: html

        {{ admin.client_get_statuses() }}

    .. code-block:: javascript

        bb.post("admin/client/get_statuses", {})

admin/client/group_get_pairs
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Return client groups. Id and title pairs



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->client_group_get_pairs($params);

    .. code-block:: html

        {{ admin.client_group_get_pairs() }}

    .. code-block:: javascript

        bb.post("admin/client/group_get_pairs", {})

admin/client/group_create
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Create new clients group



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:title: **string**   - New group title

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->client_group_create($params);

    .. code-block:: html

        {{ admin.client_group_create() }}

    .. code-block:: javascript

        bb.post("admin/client/group_create", {})

admin/client/group_update
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Update client group



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - client group ID

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:title: **string**   - new group title

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->client_group_update($params);

    .. code-block:: html

        {{ admin.client_group_update() }}

    .. code-block:: javascript

        bb.post("admin/client/group_update", {})

admin/client/group_delete
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Delete client group



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - client group ID

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->client_group_delete($params);

    .. code-block:: html

        {{ admin.client_group_delete() }}

    .. code-block:: javascript

        bb.post("admin/client/group_delete", {})

admin/client/group_get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get client group details



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - client group ID

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->client_group_get($params);

    .. code-block:: html

        {{ admin.client_group_get() }}

    .. code-block:: javascript

        bb.post("admin/client/group_get", {})

Cron
------------------------------------------------------------------------------

Cron management 


admin/cron/info
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Returns cron job information. When it was last executed, where cron job
file is located.



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->cron_info($params);

    .. code-block:: html

        {{ admin.cron_info() }}

    .. code-block:: javascript

        bb.post("admin/cron/info", {})

admin/cron/run
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Run cron



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->cron_run($params);

    .. code-block:: html

        {{ admin.cron_run() }}

    .. code-block:: javascript

        bb.post("admin/cron/run", {})

Currency
------------------------------------------------------------------------------

Currency management 


admin/currency/get_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get list of available currencies on system



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->currency_get_list($params);

    .. code-block:: html

        {{ admin.currency_get_list() }}

    .. code-block:: javascript

        bb.post("admin/currency/get_list", {})

admin/currency/get_pairs
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get code title pairs of currencies



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->currency_get_pairs($params);

    .. code-block:: html

        {{ admin.currency_get_pairs() }}

    .. code-block:: javascript

        bb.post("admin/currency/get_pairs", {})

admin/currency/get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Return currency details by cde



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:code: **string**   - currency code USD

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->currency_get($params);

    .. code-block:: html

        {{ admin.currency_get() }}

    .. code-block:: javascript

        bb.post("admin/currency/get", {})

admin/currency/get_default
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Return default system currency



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->currency_get_default($params);

    .. code-block:: html

        {{ admin.currency_get_default() }}

    .. code-block:: javascript

        bb.post("admin/currency/get_default", {})

admin/currency/create
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Add new currency to system



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:code: **string**   - currency ISO 4217 code
:format: **string**   - must have {{price}} tag. 

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:title: **string**   - custom currency title

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->currency_create($params);

    .. code-block:: html

        {{ admin.currency_create() }}

    .. code-block:: javascript

        bb.post("admin/currency/create", {})

admin/currency/update
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Updates system currency settings



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:code: **string**   - currency ISO 4217 code

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:title: **string**   - new currency title
:format: **string**   - new currency format
:conversion_rate: **float**   - new currency conversion rate

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->currency_update($params);

    .. code-block:: html

        {{ admin.currency_update() }}

    .. code-block:: javascript

        bb.post("admin/currency/update", {})

admin/currency/update_rates
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Automatically update all currency rates by Google exchange rates



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->currency_update_rates($params);

    .. code-block:: html

        {{ admin.currency_update_rates() }}

    .. code-block:: javascript

        bb.post("admin/currency/update_rates", {})

admin/currency/delete
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Remove currency. Default currency can not be removed.



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:code: **string**   - currency ISO 4217 code

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->currency_delete($params);

    .. code-block:: html

        {{ admin.currency_delete() }}

    .. code-block:: javascript

        bb.post("admin/currency/delete", {})

admin/currency/set_default
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Set default currency. If you have active orders or invoices
not recalculation on profits and refunds are made.



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:code: **string**   - currency ISO 4217 code

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->currency_set_default($params);

    .. code-block:: html

        {{ admin.currency_set_default() }}

    .. code-block:: javascript

        bb.post("admin/currency/set_default", {})

Email
------------------------------------------------------------------------------

Email logs and templates management 


admin/email/email_get_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get list of sent emails



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->email_email_get_list($params);

    .. code-block:: html

        {{ admin.email_email_get_list() }}

    .. code-block:: javascript

        bb.post("admin/email/email_get_list", {})

admin/email/email_get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get sent email details



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - email ID

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->email_email_get($params);

    .. code-block:: html

        {{ admin.email_email_get() }}

    .. code-block:: javascript

        bb.post("admin/email/email_get", {})

admin/email/send
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Email send



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:to: **string**   - email to
:to_name: **string**   - to name
:from_name: **string**   - from name
:from: **string**   - from email
:subject: **string**   - from email
:content: **string**   - from email

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:client_id: **int**   - log this message to client history

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->email_send($params);

    .. code-block:: html

        {{ admin.email_send() }}

    .. code-block:: javascript

        bb.post("admin/email/send", {})

admin/email/email_resend
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Resend email



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - email ID

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->email_email_resend($params);

    .. code-block:: html

        {{ admin.email_email_resend() }}

    .. code-block:: javascript

        bb.post("admin/email/email_resend", {})

admin/email/email_delete
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Delete sent email from logs



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - email ID

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->email_email_delete($params);

    .. code-block:: html

        {{ admin.email_email_delete() }}

    .. code-block:: javascript

        bb.post("admin/email/email_delete", {})

admin/email/template_get_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Return list of email templates



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->email_template_get_list($params);

    .. code-block:: html

        {{ admin.email_template_get_list() }}

    .. code-block:: javascript

        bb.post("admin/email/template_get_list", {})

admin/email/template_get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get email template full details



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - template id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->email_template_get($params);

    .. code-block:: html

        {{ admin.email_template_get() }}

    .. code-block:: javascript

        bb.post("admin/email/template_get", {})

admin/email/template_delete
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Delete email template



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - email template ID

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->email_template_delete($params);

    .. code-block:: html

        {{ admin.email_template_delete() }}

    .. code-block:: javascript

        bb.post("admin/email/template_delete", {})

admin/email/template_create
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Create new email template. Creating new email template can be 
combined with custom event hook.



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:action_code: **string**   - template action code
:subject: **string**   - Email subject
:content: **string**   - Email body

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->email_template_create($params);

    .. code-block:: html

        {{ admin.email_template_create() }}

    .. code-block:: javascript

        bb.post("admin/email/template_create", {})

admin/email/template_update
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Update email template



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - template id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->email_template_update($params);

    .. code-block:: html

        {{ admin.email_template_update() }}

    .. code-block:: javascript

        bb.post("admin/email/template_update", {})

admin/email/template_send
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Send email template to email, client or staff members. If template with code does not exist, 
it will be created. Default email template file must exist at mod_example/html_email/mod_example_code.phtml file



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:code: **string**   - Template code to send. Must be mod_%s_%s structure

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:to_staff: **string**   - True to send to all active staff members. Default false
:to_client: **string**   - Set client ID to send email to client. Default null
:to: **string**   - receivers email
:from: **string**   - from email. Default - company email
:from_name: **string**   - from name. Default - company name
:default_subject: **string**   - Default email subject if template does not exist
:default_template: **string**   - Default email content if template does not exist
:default_description: **string**   - Default template description if template does not exist.
:custom: **mixed**   - All parameters passed to this method are also available in email template: {{ custom }}

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->email_template_send($params);

    .. code-block:: html

        {{ admin.email_template_send() }}

    .. code-block:: javascript

        bb.post("admin/email/template_send", {})

admin/email/template_reset
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Reset email template to default



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:code: **string**   - template code

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->email_template_reset($params);

    .. code-block:: html

        {{ admin.email_template_reset() }}

    .. code-block:: javascript

        bb.post("admin/email/template_reset", {})

admin/email/template_render
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Generates email template preview



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - template id

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:_tpl: **string**   - string to be rendered. Default is email template.

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->email_template_render($params);

    .. code-block:: html

        {{ admin.email_template_render() }}

    .. code-block:: javascript

        bb.post("admin/email/template_render", {})

admin/email/batch_template_generate
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Generate email templates according to enabled extensions



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->email_batch_template_generate($params);

    .. code-block:: html

        {{ admin.email_batch_template_generate() }}

    .. code-block:: javascript

        bb.post("admin/email/batch_template_generate", {})

admin/email/batch_template_disable
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Disable all email templates at once.



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->email_batch_template_disable($params);

    .. code-block:: html

        {{ admin.email_batch_template_disable() }}

    .. code-block:: javascript

        bb.post("admin/email/batch_template_disable", {})

admin/email/batch_template_enable
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Enable all email templates at once



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->email_batch_template_enable($params);

    .. code-block:: html

        {{ admin.email_batch_template_enable() }}

    .. code-block:: javascript

        bb.post("admin/email/batch_template_enable", {})

admin/email/send_test
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Sends test email to admins



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:data: **type**   

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->email_send_test($params);

    .. code-block:: html

        {{ admin.email_send_test() }}

    .. code-block:: javascript

        bb.post("admin/email/send_test", {})

Example
------------------------------------------------------------------------------

Example module Admin API

API can be access only by admins


admin/example/get_something
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Return list of example objects



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->example_get_something($params);

    .. code-block:: html

        {{ admin.example_get_something() }}

    .. code-block:: javascript

        bb.post("admin/example/get_something", {})

Extension
------------------------------------------------------------------------------

admin/extension/get_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get list of active and inactive extensions on system



Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:installed: **bool**   - return installed only extensions
:active: **bool**   - return installed and core extensions
:has_settings: **bool**   - return extensions with configuration pages only
:search: **string**   - filter extensions by search keyword
:type: **string**   - filter extensions by type

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->extension_get_list($params);

    .. code-block:: html

        {{ admin.extension_get_list() }}

    .. code-block:: javascript

        bb.post("admin/extension/get_list", {})

admin/extension/get_latest
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get list of extensions from extensions.boxbilling.com
which can be installed on current version of BoxBilling



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:type: **string**   - mod, gateway ...

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->extension_get_latest($params);

    .. code-block:: html

        {{ admin.extension_get_latest() }}

    .. code-block:: javascript

        bb.post("admin/extension/get_latest", {})

admin/extension/get_navigation
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get admin area navigation



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->extension_get_navigation($params);

    .. code-block:: html

        {{ admin.extension_get_navigation() }}

    .. code-block:: javascript

        bb.post("admin/extension/get_navigation", {})

admin/extension/languages
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get list of available languages on the system



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->extension_languages($params);

    .. code-block:: html

        {{ admin.extension_languages() }}

    .. code-block:: javascript

        bb.post("admin/extension/languages", {})

admin/extension/update_core
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Update BoxBilling core



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->extension_update_core($params);

    .. code-block:: html

        {{ admin.extension_update_core() }}

    .. code-block:: javascript

        bb.post("admin/extension/update_core", {})

admin/extension/update
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Update existing extension



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:type: **string**   - extensions type: mod, theme, gateway ...
:id: **string**   - extension id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->extension_update($params);

    .. code-block:: html

        {{ admin.extension_update() }}

    .. code-block:: javascript

        bb.post("admin/extension/update", {})

admin/extension/activate
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Activate existing extension



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:type: **string**   - extensions type: mod, theme, gateway ...
:id: **string**   - extension id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->extension_activate($params);

    .. code-block:: html

        {{ admin.extension_activate() }}

    .. code-block:: javascript

        bb.post("admin/extension/activate", {})

admin/extension/deactivate
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Deactivate existing extension



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:type: **string**   - extensions type: mod, theme, gateway ...
:id: **string**   - extension id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->extension_deactivate($params);

    .. code-block:: html

        {{ admin.extension_deactivate() }}

    .. code-block:: javascript

        bb.post("admin/extension/deactivate", {})

admin/extension/uninstall
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Completely remove extension from BoxBilling



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:type: **string**   - extensions type: mod, theme, gateway ...
:id: **string**   - extension id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->extension_uninstall($params);

    .. code-block:: html

        {{ admin.extension_uninstall() }}

    .. code-block:: javascript

        bb.post("admin/extension/uninstall", {})

admin/extension/install
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Install new extension from extensions site



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:type: **string**   - extensions type: mod, theme, gateway ...
:id: **string**   - extension id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->extension_install($params);

    .. code-block:: html

        {{ admin.extension_install() }}

    .. code-block:: javascript

        bb.post("admin/extension/install", {})

admin/extension/config_get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Universal method for BoxBilling extensions 
to retrieve configuration from database

It is recommended to store your extension configuration
using this method. Automatic decryption is available

Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:ext: **string**   - extension name, ie: mod_news

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->extension_config_get($params);

    .. code-block:: html

        {{ admin.extension_config_get() }}

    .. code-block:: javascript

        bb.post("admin/extension/config_get", {})

admin/extension/config_save
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Universal method for BoxBilling extensions 
to update or save extension configuration to database

Always pass all configuration parameters to this method.

Config is automatically encrypted and stored in database

Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:ext: **string**   - extension name, ie: mod_news

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:any: **string**   - Any variable passed to this method is config parameter

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->extension_config_save($params);

    .. code-block:: html

        {{ admin.extension_config_save() }}

    .. code-block:: javascript

        bb.post("admin/extension/config_save", {})

Filemanager
------------------------------------------------------------------------------

File manager

All paths are relative to BoxBilling installation path
Files under BoxBilling installation path can not be managed


admin/filemanager/save_file
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Save file contents



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:path: **string**   - path to the file
:data: **string**   - new file contents

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->filemanager_save_file($params);

    .. code-block:: html

        {{ admin.filemanager_save_file() }}

    .. code-block:: javascript

        bb.post("admin/filemanager/save_file", {})

admin/filemanager/new_item
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Create new file or directory



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:path: **string**   - item save path
:type: **string**   - item type: dir|file

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->filemanager_new_item($params);

    .. code-block:: html

        {{ admin.filemanager_new_item() }}

    .. code-block:: javascript

        bb.post("admin/filemanager/new_item", {})

admin/filemanager/move_file
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Move/Rename file



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:path: **string**   - filepath to file which is going to be moved
:to: **string**   - new folder path. Do not include basename

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->filemanager_move_file($params);

    .. code-block:: html

        {{ admin.filemanager_move_file() }}

    .. code-block:: javascript

        bb.post("admin/filemanager/move_file", {})

admin/filemanager/get_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get list of files in folder



Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:path: **string**   - directory path to be listed

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->filemanager_get_list($params);

    .. code-block:: html

        {{ admin.filemanager_get_list() }}

    .. code-block:: javascript

        bb.post("admin/filemanager/get_list", {})

Formbuilder
------------------------------------------------------------------------------

Manage custom orders forms


admin/formbuilder/get_pairs
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get available order forms



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->formbuilder_get_pairs($params);

    .. code-block:: html

        {{ admin.formbuilder_get_pairs() }}

    .. code-block:: javascript

        bb.post("admin/formbuilder/get_pairs", {})

admin/formbuilder/create
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Create or Update custom order form for product



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:title: **string**   - order form title

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->formbuilder_create($params);

    .. code-block:: html

        {{ admin.formbuilder_create() }}

    .. code-block:: javascript

        bb.post("admin/formbuilder/create", {})

admin/formbuilder/get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get custom order form details for product



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:product_id: **int**   - Product id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->formbuilder_get($params);

    .. code-block:: html

        {{ admin.formbuilder_get() }}

    .. code-block:: javascript

        bb.post("admin/formbuilder/get", {})

admin/formbuilder/copy
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Duplicate form



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - form id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->formbuilder_copy($params);

    .. code-block:: html

        {{ admin.formbuilder_copy() }}

    .. code-block:: javascript

        bb.post("admin/formbuilder/copy", {})

admin/formbuilder/import
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Import form settings



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:form: **string**   - form data encoded in JSON format

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->formbuilder_import($params);

    .. code-block:: html

        {{ admin.formbuilder_import() }}

    .. code-block:: javascript

        bb.post("admin/formbuilder/import", {})

admin/formbuilder/delete
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Delete form



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - form id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->formbuilder_delete($params);

    .. code-block:: html

        {{ admin.formbuilder_delete() }}

    .. code-block:: javascript

        bb.post("admin/formbuilder/delete", {})

admin/formbuilder/update
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Update form



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - form id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->formbuilder_update($params);

    .. code-block:: html

        {{ admin.formbuilder_update() }}

    .. code-block:: javascript

        bb.post("admin/formbuilder/update", {})

admin/formbuilder/addfield
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Add new field to form



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - form id
:type: **int**   - form field type
:label: **string**   - form field label

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->formbuilder_addfield($params);

    .. code-block:: html

        {{ admin.formbuilder_addfield() }}

    .. code-block:: javascript

        bb.post("admin/formbuilder/addfield", {})

Forum
------------------------------------------------------------------------------

Forum management 


admin/forum/get_pairs
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get pairs of forums



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->forum_get_pairs($params);

    .. code-block:: html

        {{ admin.forum_get_pairs() }}

    .. code-block:: javascript

        bb.post("admin/forum/get_pairs", {})

admin/forum/get_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get paginated list of forums



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->forum_get_list($params);

    .. code-block:: html

        {{ admin.forum_get_list() }}

    .. code-block:: javascript

        bb.post("admin/forum/get_list", {})

admin/forum/get_categories
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get forums list grouped by category name



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->forum_get_categories($params);

    .. code-block:: html

        {{ admin.forum_get_categories() }}

    .. code-block:: javascript

        bb.post("admin/forum/get_categories", {})

admin/forum/get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get forum details



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - forum id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->forum_get($params);

    .. code-block:: html

        {{ admin.forum_get() }}

    .. code-block:: javascript

        bb.post("admin/forum/get", {})

admin/forum/create
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Create new forum



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:title: **string**   - new forum title

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:category: **string**   - new forum category

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->forum_create($params);

    .. code-block:: html

        {{ admin.forum_create() }}

    .. code-block:: javascript

        bb.post("admin/forum/create", {})

admin/forum/update
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Update existing forum



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - forum id

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:category: **string**   - new forum category
:title: **string**   - new forum title
:status: **string**   - new forum status
:slug: **string**   - new forum slug
:description: **string**   - new forum description
:priority: **string**   - new forum priority

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->forum_update($params);

    .. code-block:: html

        {{ admin.forum_update() }}

    .. code-block:: javascript

        bb.post("admin/forum/update", {})

admin/forum/update_priority
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Change forums sorting order



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:priority: **array**   - forum id => priority pairs

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->forum_update_priority($params);

    .. code-block:: html

        {{ admin.forum_update_priority() }}

    .. code-block:: javascript

        bb.post("admin/forum/update_priority", {})

admin/forum/delete
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Remove forum with all topics



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - forum id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->forum_delete($params);

    .. code-block:: html

        {{ admin.forum_delete() }}

    .. code-block:: javascript

        bb.post("admin/forum/delete", {})

admin/forum/topic_get_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get paginated list of topics



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->forum_topic_get_list($params);

    .. code-block:: html

        {{ admin.forum_topic_get_list() }}

    .. code-block:: javascript

        bb.post("admin/forum/topic_get_list", {})

admin/forum/topic_get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get topic details



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - topic id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->forum_topic_get($params);

    .. code-block:: html

        {{ admin.forum_topic_get() }}

    .. code-block:: javascript

        bb.post("admin/forum/topic_get", {})

admin/forum/topic_delete
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Remove topic



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - topic id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->forum_topic_delete($params);

    .. code-block:: html

        {{ admin.forum_topic_delete() }}

    .. code-block:: javascript

        bb.post("admin/forum/topic_delete", {})

admin/forum/topic_create
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Create new topic



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:forum_id: **int**   - forum id
:title: **string**   - topic title
:message: **string**   - topic message

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:status: **string**   - initial topic status

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->forum_topic_create($params);

    .. code-block:: html

        {{ admin.forum_topic_create() }}

    .. code-block:: javascript

        bb.post("admin/forum/topic_create", {})

admin/forum/topic_update
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Update forum topic



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - topic id

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:title: **string**   - topic title
:message: **string**   - topic message
:status: **string**   - topic status
:slug: **string**   - topic slug
:views: **int**   - topic views count
:sticky: **bool**   - topic sticky flag

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->forum_topic_update($params);

    .. code-block:: html

        {{ admin.forum_topic_update() }}

    .. code-block:: javascript

        bb.post("admin/forum/topic_update", {})

admin/forum/message_get_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get topic messages list



Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:forum_topic_id: **int**   - topic id
:client_id: **int**   - filter by client id
:with_points: **bool**   - get messages with points only

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->forum_message_get_list($params);

    .. code-block:: html

        {{ admin.forum_message_get_list() }}

    .. code-block:: javascript

        bb.post("admin/forum/message_get_list", {})

admin/forum/message_get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get forum topic message



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - message id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->forum_message_get($params);

    .. code-block:: html

        {{ admin.forum_message_get() }}

    .. code-block:: javascript

        bb.post("admin/forum/message_get", {})

admin/forum/message_update
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Update forum topic message



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - message id

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:message: **string**   - topic message

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->forum_message_update($params);

    .. code-block:: html

        {{ admin.forum_message_update() }}

    .. code-block:: javascript

        bb.post("admin/forum/message_update", {})

admin/forum/message_delete
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Delete topic message



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - message id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->forum_message_delete($params);

    .. code-block:: html

        {{ admin.forum_message_delete() }}

    .. code-block:: javascript

        bb.post("admin/forum/message_delete", {})

admin/forum/message_create
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Post new message to topic



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:forum_topic_id: **int**   - forum topic id
:message: **string**   - topic message

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->forum_message_create($params);

    .. code-block:: html

        {{ admin.forum_message_create() }}

    .. code-block:: javascript

        bb.post("admin/forum/message_create", {})

admin/forum/points_deduct
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Decline post. Post will be considered as not worth the points.



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - message id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->forum_points_deduct($params);

    .. code-block:: html

        {{ admin.forum_points_deduct() }}

    .. code-block:: javascript

        bb.post("admin/forum/points_deduct", {})

admin/forum/points_update
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Update total points for client



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:client_id: **int**   - client id
:amount: **float**   - new points total

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->forum_points_update($params);

    .. code-block:: html

        {{ admin.forum_points_update() }}

    .. code-block:: javascript

        bb.post("admin/forum/points_update", {})

admin/forum/profile_get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Client forum profile



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:client_id: **int**   - client id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->forum_profile_get($params);

    .. code-block:: html

        {{ admin.forum_profile_get() }}

    .. code-block:: javascript

        bb.post("admin/forum/profile_get", {})

Hook
------------------------------------------------------------------------------

Hooks management module


admin/hook/get_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get paginated list of hooks



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->hook_get_list($params);

    .. code-block:: html

        {{ admin.hook_get_list() }}

    .. code-block:: javascript

        bb.post("admin/hook/get_list", {})

admin/hook/call
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Invoke hook with params



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:event: **string**   - event name, ie: onEventBeforeInvoiceIsDue

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:params: **array**   - what params are passed to event method $event->getParams()

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->hook_call($params);

    .. code-block:: html

        {{ admin.hook_call() }}

    .. code-block:: javascript

        bb.post("admin/hook/call", {})

admin/hook/batch_connect
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Reinstall and activate all existing hooks from module or all 
activated modules. Does not connect already connected event



Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:mod: **string**   - module name to connect hooks

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->hook_batch_connect($params);

    .. code-block:: html

        {{ admin.hook_batch_connect() }}

    .. code-block:: javascript

        bb.post("admin/hook/batch_connect", {})

Invoice
------------------------------------------------------------------------------

Invoice management API


admin/invoice/get_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Returns paginated list of invoices



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->invoice_get_list($params);

    .. code-block:: html

        {{ admin.invoice_get_list() }}

    .. code-block:: javascript

        bb.post("admin/invoice/get_list", {})

admin/invoice/get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get invoice details



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - invoice id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->invoice_get($params);

    .. code-block:: html

        {{ admin.invoice_get() }}

    .. code-block:: javascript

        bb.post("admin/invoice/get", {})

admin/invoice/mark_as_paid
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Sets invoce status to paid. This method differs from invoice update method
in a way that it sends notification to Events system, so emails are sent.

Also this will try to automatically apply payment if clients balance is
available

Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - invoice id

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:execute: **bool**   - execute related tasks on invoice items. Default false.

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->invoice_mark_as_paid($params);

    .. code-block:: html

        {{ admin.invoice_mark_as_paid() }}

    .. code-block:: javascript

        bb.post("admin/invoice/mark_as_paid", {})

admin/invoice/prepare
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Prepare invoice for editing and updating.
Uses clients details, such as currency assigned to client.

If client currency is not defined, sets default currency for client

Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:client_id: **int**   - Client id. Client must have defined currency on profile.

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:approve: **bool**   - set true to approve invoice after preparation. Defaults to false
:gateway_id: **int**   - Selected payment gateway id
:items: **array**   - list of invoice lines. One line is array of line parameters
:text_1: **string**   - text to be displayed before invoice items table
:text_2: **string**   - text to be displayed after invoice items table

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->invoice_prepare($params);

    .. code-block:: html

        {{ admin.invoice_prepare() }}

    .. code-block:: javascript

        bb.post("admin/invoice/prepare", {})

admin/invoice/approve
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Approve invoice.



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - invoice id
:use_credits: **bool**   - default = false

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->invoice_approve($params);

    .. code-block:: html

        {{ admin.invoice_approve() }}

    .. code-block:: javascript

        bb.post("admin/invoice/approve", {})

admin/invoice/refund
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Add refunds



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - invoice id

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:note: **string**   - note for refund

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->invoice_refund($params);

    .. code-block:: html

        {{ admin.invoice_refund() }}

    .. code-block:: javascript

        bb.post("admin/invoice/refund", {})

admin/invoice/update
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Update invoice details



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - invoice id

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:paid_at: **string**   - Invoice payment date (Y-m-d) or empty to remove
:due_at: **string**   - Invoice due date (Y-m-d)or empty to remove
:created_at: **string**   - Invoice issue date (Y-m-d) or empty to remove
:serie: **string**   - Invoice serie
:nr: **string**   - Invoice number
:status: **string**   - Invoice status: paid|unpaid
:taxrate: **string**   - Invoice tax rate
:taxname: **string**   - Invoice tax name
:approved: **bool**   - flag to set invoice as approved. Approved invoices are visible to clients
:notes: **string**   - notes
:gateway_id: **int**   - selected payment method - gateway id
:new_item: **array**   - [title] [price]
:text_1: **string**   - Custom invoice text 1
:text_2: **string**   - Custom invoice text 1
:seller_company: **string**   - Seller company name
:seller_company_vat: **string**   - Seller company VAT number
:seller_company_number: **string**   - Seller company number
:seller_address: **string**   - Seller address
:seller_phone: **string**   - Seller phone
:seller_email: **string**   - Seller email
:buyer_first_name: **string**   - Buyer first name
:buyer_last_name: **string**   - Buyer last name
:buyer_company: **string**   - Buyer company name
:buyer_company_vat: **string**   - Buyer company VAT number
:buyer_company_number: **string**   - Buyer company number
:buyer_address: **string**   - Buyer address
:buyer_city: **string**   - Buyer city
:buyer_state: **string**   - Buyer state
:buyer_country: **string**   - Buyer country
:buyer_zip: **string**   - Buyer zip
:buyer_phone: **string**   - Buyer phone 
:buyer_email: **string**   - Buyer email

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->invoice_update($params);

    .. code-block:: html

        {{ admin.invoice_update() }}

    .. code-block:: javascript

        bb.post("admin/invoice/update", {})

admin/invoice/item_delete
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Remove one line from invoice



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - invoice line id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->invoice_item_delete($params);

    .. code-block:: html

        {{ admin.invoice_item_delete() }}

    .. code-block:: javascript

        bb.post("admin/invoice/item_delete", {})

admin/invoice/delete
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Delete invoice



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - Invoice id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->invoice_delete($params);

    .. code-block:: html

        {{ admin.invoice_delete() }}

    .. code-block:: javascript

        bb.post("admin/invoice/delete", {})

admin/invoice/renewal_invoice
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Generates new invoice for order. If unpaid invoice for selected order
already exists, new invoice will not be generated, and existing invoice id

is returned

Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - ID of order to generate new invoice for

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:due_days: **int**   - Days number until invoice is due

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->invoice_renewal_invoice($params);

    .. code-block:: html

        {{ admin.invoice_renewal_invoice() }}

    .. code-block:: javascript

        bb.post("admin/invoice/renewal_invoice", {})

admin/invoice/batch_pay_with_credits
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Use credits to pay for invoices
if credits are available in clients balance



Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:client_id: **int**   - cover only one client invoices

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->invoice_batch_pay_with_credits($params);

    .. code-block:: html

        {{ admin.invoice_batch_pay_with_credits() }}

    .. code-block:: javascript

        bb.post("admin/invoice/batch_pay_with_credits", {})

admin/invoice/batch_generate
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Generate invoices for expiring orders



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->invoice_batch_generate($params);

    .. code-block:: html

        {{ admin.invoice_batch_generate() }}

    .. code-block:: javascript

        bb.post("admin/invoice/batch_generate", {})

admin/invoice/batch_activate_paid
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Action to activate paid invoices lines



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->invoice_batch_activate_paid($params);

    .. code-block:: html

        {{ admin.invoice_batch_activate_paid() }}

    .. code-block:: javascript

        bb.post("admin/invoice/batch_activate_paid", {})

admin/invoice/batch_send_reminders
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Send buyer reminders about upcoming payment



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->invoice_batch_send_reminders($params);

    .. code-block:: html

        {{ admin.invoice_batch_send_reminders() }}

    .. code-block:: javascript

        bb.post("admin/invoice/batch_send_reminders", {})

admin/invoice/batch_invoke_due_event
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Calls due events on unpaid and approved invoices.
Attach custom event hooks events:


onEventBeforeInvoiceIsDue - event receives params: id and days_left
onEventAfterInvoiceIsDue - event receives params: id and days_passed

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:once_per_day: **bool**   - default true. Pass false if you want to execute this action more than once per day 

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->invoice_batch_invoke_due_event($params);

    .. code-block:: html

        {{ admin.invoice_batch_invoke_due_event() }}

    .. code-block:: javascript

        bb.post("admin/invoice/batch_invoke_due_event", {})

admin/invoice/send_reminder
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Send payment reminder notification for client.
Calls event hook, so you can attach your custom notification code



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - invoice id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->invoice_send_reminder($params);

    .. code-block:: html

        {{ admin.invoice_send_reminder() }}

    .. code-block:: javascript

        bb.post("admin/invoice/send_reminder", {})

admin/invoice/get_statuses
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Return invoice statuses with counter



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->invoice_get_statuses($params);

    .. code-block:: html

        {{ admin.invoice_get_statuses() }}

    .. code-block:: javascript

        bb.post("admin/invoice/get_statuses", {})

admin/invoice/transaction_process_all
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Process all received transactions



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->invoice_transaction_process_all($params);

    .. code-block:: html

        {{ admin.invoice_transaction_process_all() }}

    .. code-block:: javascript

        bb.post("admin/invoice/transaction_process_all", {})

admin/invoice/transaction_process
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Process selected transaction



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - Transaction id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->invoice_transaction_process($params);

    .. code-block:: html

        {{ admin.invoice_transaction_process() }}

    .. code-block:: javascript

        bb.post("admin/invoice/transaction_process", {})

admin/invoice/transaction_update
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Update transaction details



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - transaction id

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:invoice_id: **int**   - new invoice id
:txn_id: **string**   - transaction id on payment gateway
:txn_status: **string**   - transaction status on payment gateway
:gateway_id: **int**   - Payment gateway ID on BoxBilling
:amount: **float**   - Transaction amount
:currency: **string**   - Currency code. Must be available on BoxBilling
:type: **string**   - Currency code. Must be available on BoxBilling
:status: **string**   - Transaction status on BoxBilling
:validate_ipn: **bool**   - Flag to enable and disable IPN validation for this transaction
:note: **string**   - Custom note

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->invoice_transaction_update($params);

    .. code-block:: html

        {{ admin.invoice_transaction_update() }}

    .. code-block:: javascript

        bb.post("admin/invoice/transaction_update", {})

admin/invoice/transaction_create
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Create custom transaction



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:bb_invoice_id: **int**   - BoxBilling invoice id
:bb_gateway_id: **int**   - BoxBilling gateway id

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:get: **array**   - $_GET data
:post: **array**   - $_POST data
:server: **array**   - $_SERVER data
:http_raw_post_data: **array**   - file_get_contents("php://input")
:txn_id: **string**   - transaction id on payment gateway
:skip_validation: **bool**   - makes params bb_invoice_id and bb_gateway_id optional

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->invoice_transaction_create($params);

    .. code-block:: html

        {{ admin.invoice_transaction_create() }}

    .. code-block:: javascript

        bb.post("admin/invoice/transaction_create", {})

admin/invoice/transaction_delete
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Remove transaction



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - Transaction id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->invoice_transaction_delete($params);

    .. code-block:: html

        {{ admin.invoice_transaction_delete() }}

    .. code-block:: javascript

        bb.post("admin/invoice/transaction_delete", {})

admin/invoice/transaction_get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get transaction details



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - Transaction id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->invoice_transaction_get($params);

    .. code-block:: html

        {{ admin.invoice_transaction_get() }}

    .. code-block:: javascript

        bb.post("admin/invoice/transaction_get", {})

admin/invoice/transaction_get_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get paginated list of transactions



Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:txn_id: **string**   - search for transactions by transaction id on payment gateway

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->invoice_transaction_get_list($params);

    .. code-block:: html

        {{ admin.invoice_transaction_get_list() }}

    .. code-block:: javascript

        bb.post("admin/invoice/transaction_get_list", {})

admin/invoice/transaction_get_statuses
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Return transactions statuses with counter



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->invoice_transaction_get_statuses($params);

    .. code-block:: html

        {{ admin.invoice_transaction_get_statuses() }}

    .. code-block:: javascript

        bb.post("admin/invoice/transaction_get_statuses", {})

admin/invoice/transaction_get_statuses_pairs
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get available transaction statuses



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->invoice_transaction_get_statuses_pairs($params);

    .. code-block:: html

        {{ admin.invoice_transaction_get_statuses_pairs() }}

    .. code-block:: javascript

        bb.post("admin/invoice/transaction_get_statuses_pairs", {})

admin/invoice/transaction_statuses
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get available transaction statuses



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->invoice_transaction_statuses($params);

    .. code-block:: html

        {{ admin.invoice_transaction_statuses() }}

    .. code-block:: javascript

        bb.post("admin/invoice/transaction_statuses", {})

admin/invoice/transaction_gateway_statuses
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get available transaction statuses on gateways



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->invoice_transaction_gateway_statuses($params);

    .. code-block:: html

        {{ admin.invoice_transaction_gateway_statuses() }}

    .. code-block:: javascript

        bb.post("admin/invoice/transaction_gateway_statuses", {})

admin/invoice/transaction_types
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get available transaction types



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->invoice_transaction_types($params);

    .. code-block:: html

        {{ admin.invoice_transaction_types() }}

    .. code-block:: javascript

        bb.post("admin/invoice/transaction_types", {})

admin/invoice/gateway_get_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get available gateways



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->invoice_gateway_get_list($params);

    .. code-block:: html

        {{ admin.invoice_gateway_get_list() }}

    .. code-block:: javascript

        bb.post("admin/invoice/gateway_get_list", {})

admin/invoice/gateway_get_pairs
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get available gateways pairs



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->invoice_gateway_get_pairs($params);

    .. code-block:: html

        {{ admin.invoice_gateway_get_pairs() }}

    .. code-block:: javascript

        bb.post("admin/invoice/gateway_get_pairs", {})

admin/invoice/gateway_get_available
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Return existing module but not activated



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:: **none**   

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->invoice_gateway_get_available($params);

    .. code-block:: html

        {{ admin.invoice_gateway_get_available() }}

    .. code-block:: javascript

        bb.post("admin/invoice/gateway_get_available", {})

admin/invoice/gateway_install
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Install available payment gateway



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:: **code**   - available payment gateway code

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->invoice_gateway_install($params);

    .. code-block:: html

        {{ admin.invoice_gateway_install() }}

    .. code-block:: javascript

        bb.post("admin/invoice/gateway_install", {})

admin/invoice/gateway_get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get gateway details



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - gateway id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->invoice_gateway_get($params);

    .. code-block:: html

        {{ admin.invoice_gateway_get() }}

    .. code-block:: javascript

        bb.post("admin/invoice/gateway_get", {})

admin/invoice/gateway_copy
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Copy gateway from existing one



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - id of gateway to be copied

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->invoice_gateway_copy($params);

    .. code-block:: html

        {{ admin.invoice_gateway_copy() }}

    .. code-block:: javascript

        bb.post("admin/invoice/gateway_copy", {})

admin/invoice/gateway_update
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Change gateway settings



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - gateway id

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:title: **string**   - gateway title
:config: **array**   - gateway config array
:accepted_currencies: **array**   - list of currencies this gateway supports
:enabled: **bool**   - flag to enable or disable gateway
:allow_single: **bool**   - flag to enable or disable single payment option
:allow_recurrent: **bool**   - flag to enable or disable recurrent payment option
:test_mode: **bool**   - flag to enable or disable test mode for gateway

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->invoice_gateway_update($params);

    .. code-block:: html

        {{ admin.invoice_gateway_update() }}

    .. code-block:: javascript

        bb.post("admin/invoice/gateway_update", {})

admin/invoice/gateway_delete
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Remove payment gateway from system



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - gateway id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->invoice_gateway_delete($params);

    .. code-block:: html

        {{ admin.invoice_gateway_delete() }}

    .. code-block:: javascript

        bb.post("admin/invoice/gateway_delete", {})

admin/invoice/subscription_get_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get list of subscribtions



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->invoice_subscription_get_list($params);

    .. code-block:: html

        {{ admin.invoice_subscription_get_list() }}

    .. code-block:: javascript

        bb.post("admin/invoice/subscription_get_list", {})

admin/invoice/subscription_create
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Add new subscription



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:client_id: **int**   - client id
:gateway_id: **int**   - payment gateway id
:currency: **string**   - currency

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:sid: **string**   - subscription id on payment gateway
:status: **string**   - status: active|canceled
:period: **string**   - example: 1W - every week, 2M - every 2 months
:amount: **string**   - billed amount
:rel_type: **string**   - related item type
:rel_id: **string**   - related item id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->invoice_subscription_create($params);

    .. code-block:: html

        {{ admin.invoice_subscription_create() }}

    .. code-block:: javascript

        bb.post("admin/invoice/subscription_create", {})

admin/invoice/subscription_update
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Update subscription options



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - subscription id

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:status: **int**   - subscription status
:sid: **string**   - subscription id on payment gateway
:period: **string**   - subscription period code
:amount: **string**   - subscription amount
:currency: **string**   - subscription currency

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->invoice_subscription_update($params);

    .. code-block:: html

        {{ admin.invoice_subscription_update() }}

    .. code-block:: javascript

        bb.post("admin/invoice/subscription_update", {})

admin/invoice/subscription_get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get subscription details.



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - subscription id
:sid: **string**   - subscription id on payment gateway - required if id is not passed

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->invoice_subscription_get($params);

    .. code-block:: html

        {{ admin.invoice_subscription_get() }}

    .. code-block:: javascript

        bb.post("admin/invoice/subscription_get", {})

admin/invoice/subscription_delete
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Remove subscription



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - subscription id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->invoice_subscription_delete($params);

    .. code-block:: html

        {{ admin.invoice_subscription_delete() }}

    .. code-block:: javascript

        bb.post("admin/invoice/subscription_delete", {})

admin/invoice/tax_delete
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Remove tax rule



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - tax id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->invoice_tax_delete($params);

    .. code-block:: html

        {{ admin.invoice_tax_delete() }}

    .. code-block:: javascript

        bb.post("admin/invoice/tax_delete", {})

admin/invoice/tax_create
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Create new tax rule



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:name: **string**   - tax name
:taxrate: **flaot**   - tax rate

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->invoice_tax_create($params);

    .. code-block:: html

        {{ admin.invoice_tax_create() }}

    .. code-block:: javascript

        bb.post("admin/invoice/tax_create", {})

admin/invoice/tax_get_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get list of taxes



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->invoice_tax_get_list($params);

    .. code-block:: html

        {{ admin.invoice_tax_get_list() }}

    .. code-block:: javascript

        bb.post("admin/invoice/tax_get_list", {})

admin/invoice/tax_setup_eu
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Automatically setup the EU VAT tax rules for you for all EU Member States.
This action will delete any existing tax rules and configure the VAT rates

for all EU countries.

Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:name: **string**   - VAT label
:taxrate: **string**   - VAT rate

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->invoice_tax_setup_eu($params);

    .. code-block:: html

        {{ admin.invoice_tax_setup_eu() }}

    .. code-block:: javascript

        bb.post("admin/invoice/tax_setup_eu", {})

Kb
------------------------------------------------------------------------------

Knowledge base API


admin/kb/article_get_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get paginated list of knowledge base articles



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->kb_article_get_list($params);

    .. code-block:: html

        {{ admin.kb_article_get_list() }}

    .. code-block:: javascript

        bb.post("admin/kb/article_get_list", {})

admin/kb/article_get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get knowledge base article



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - knowledge base article ID

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->kb_article_get($params);

    .. code-block:: html

        {{ admin.kb_article_get() }}

    .. code-block:: javascript

        bb.post("admin/kb/article_get", {})

admin/kb/article_create
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Create new knowledge base article



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:kb_article_category_id: **int**   - knowledge base category ID
:title: **string**   - knowledge base article title

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:status: **string**   - knowledge base article status
:content: **string**   - knowledge base article content

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->kb_article_create($params);

    .. code-block:: html

        {{ admin.kb_article_create() }}

    .. code-block:: javascript

        bb.post("admin/kb/article_create", {})

admin/kb/article_update
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Update knowledge base article



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - knowledge base article ID

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:title: **string**   - knowledge base article title
:kb_article_category_id: **int**   - knowledge base category ID
:slug: **string**   - knowledge base article slug
:status: **string**   - knowledge base article status
:content: **string**   - knowledge base article content
:views: **int**   - knowledge base article views counter

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->kb_article_update($params);

    .. code-block:: html

        {{ admin.kb_article_update() }}

    .. code-block:: javascript

        bb.post("admin/kb/article_update", {})

admin/kb/article_delete
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Delete knowledge base article



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - knowledge base article ID

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->kb_article_delete($params);

    .. code-block:: html

        {{ admin.kb_article_delete() }}

    .. code-block:: javascript

        bb.post("admin/kb/article_delete", {})

admin/kb/category_get_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get paginated list of knowledge base categories



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->kb_category_get_list($params);

    .. code-block:: html

        {{ admin.kb_category_get_list() }}

    .. code-block:: javascript

        bb.post("admin/kb/category_get_list", {})

admin/kb/category_get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get knowledge base category



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - knowledge base category ID

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->kb_category_get($params);

    .. code-block:: html

        {{ admin.kb_category_get() }}

    .. code-block:: javascript

        bb.post("admin/kb/category_get", {})

admin/kb/category_create
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Create new knowledge base category



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:title: **string**   - knowledge base category title

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:description: **string**   - knowledge base category description

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->kb_category_create($params);

    .. code-block:: html

        {{ admin.kb_category_create() }}

    .. code-block:: javascript

        bb.post("admin/kb/category_create", {})

admin/kb/category_update
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Update knowledge base category



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - knowledge base category ID

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:title: **string**   - knowledge base category title
:slug: **string**   - knowledge base category slug
:description: **string**   - knowledge base category description

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->kb_category_update($params);

    .. code-block:: html

        {{ admin.kb_category_update() }}

    .. code-block:: javascript

        bb.post("admin/kb/category_update", {})

admin/kb/category_delete
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Delete knowledge base category



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - knowledge base category ID

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->kb_category_delete($params);

    .. code-block:: html

        {{ admin.kb_category_delete() }}

    .. code-block:: javascript

        bb.post("admin/kb/category_delete", {})

admin/kb/category_get_pairs
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get knowledge base categories id, title pairs



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->kb_category_get_pairs($params);

    .. code-block:: html

        {{ admin.kb_category_get_pairs() }}

    .. code-block:: javascript

        bb.post("admin/kb/category_get_pairs", {})

Massmailer
------------------------------------------------------------------------------

admin/massmailer/get_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get paginated list of active mail messages



Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:status: **string**   - filter list by status
:search: **string**   - search query to search for mail messages

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->massmailer_get_list($params);

    .. code-block:: html

        {{ admin.massmailer_get_list() }}

    .. code-block:: javascript

        bb.post("admin/massmailer/get_list", {})

admin/massmailer/get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get mail message by id



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - mail message ID

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->massmailer_get($params);

    .. code-block:: html

        {{ admin.massmailer_get() }}

    .. code-block:: javascript

        bb.post("admin/massmailer/get", {})

admin/massmailer/update
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Update mail message



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - mail message id

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:subject: **string**   - mail message title
:content: **string**   - mail message content
:status: **string**   - mail message status
:from_name: **string**   - mail message email from name
:from_email: **string**   - mail message email from email
:filter: **array**   - filter parameters to select clients

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->massmailer_update($params);

    .. code-block:: html

        {{ admin.massmailer_update() }}

    .. code-block:: javascript

        bb.post("admin/massmailer/update", {})

admin/massmailer/create
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Create mail message



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:subject: **string**   - mail message subject

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:content: **string**   - mail message content

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->massmailer_create($params);

    .. code-block:: html

        {{ admin.massmailer_create() }}

    .. code-block:: javascript

        bb.post("admin/massmailer/create", {})

admin/massmailer/send_test
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Send test mail message by ID to client



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - mail message ID

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->massmailer_send_test($params);

    .. code-block:: html

        {{ admin.massmailer_send_test() }}

    .. code-block:: javascript

        bb.post("admin/massmailer/send_test", {})

admin/massmailer/send
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Send mail message by ID



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - mail message ID

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->massmailer_send($params);

    .. code-block:: html

        {{ admin.massmailer_send() }}

    .. code-block:: javascript

        bb.post("admin/massmailer/send", {})

admin/massmailer/copy
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Copy mail message by ID



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - mail message ID

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->massmailer_copy($params);

    .. code-block:: html

        {{ admin.massmailer_copy() }}

    .. code-block:: javascript

        bb.post("admin/massmailer/copy", {})

admin/massmailer/receivers
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get message receivers list



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - mail message ID

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->massmailer_receivers($params);

    .. code-block:: html

        {{ admin.massmailer_receivers() }}

    .. code-block:: javascript

        bb.post("admin/massmailer/receivers", {})

admin/massmailer/delete
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Delete mail message by ID



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - mail message ID

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->massmailer_delete($params);

    .. code-block:: html

        {{ admin.massmailer_delete() }}

    .. code-block:: javascript

        bb.post("admin/massmailer/delete", {})

admin/massmailer/preview
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Generate preview text



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - message id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->massmailer_preview($params);

    .. code-block:: html

        {{ admin.massmailer_preview() }}

    .. code-block:: javascript

        bb.post("admin/massmailer/preview", {})

News
------------------------------------------------------------------------------

News management


admin/news/get_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get paginated list of active news items



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->news_get_list($params);

    .. code-block:: html

        {{ admin.news_get_list() }}

    .. code-block:: javascript

        bb.post("admin/news/get_list", {})

admin/news/get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get news item by ID



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - news item ID

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->news_get($params);

    .. code-block:: html

        {{ admin.news_get() }}

    .. code-block:: javascript

        bb.post("admin/news/get", {})

admin/news/update
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Update news item.



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - news item ID

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:title: **string**   - news item title
:slug: **string**   - news item slug
:content: **string**   - news item content
:status: **string**   - news item status

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->news_update($params);

    .. code-block:: html

        {{ admin.news_update() }}

    .. code-block:: javascript

        bb.post("admin/news/update", {})

admin/news/create
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Creat new news item.



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:title: **string**   - news item title

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:content: **string**   - news item content
:status: **string**   - news item status

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->news_create($params);

    .. code-block:: html

        {{ admin.news_create() }}

    .. code-block:: javascript

        bb.post("admin/news/create", {})

admin/news/delete
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Delete news item by ID



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - news item ID

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->news_delete($params);

    .. code-block:: html

        {{ admin.news_delete() }}

    .. code-block:: javascript

        bb.post("admin/news/delete", {})

Notification
------------------------------------------------------------------------------

Notifications center management.

Notifications are important messages for staff messages to get informed
about important events on BoxBilling.

For example cron job can inform staff members 


admin/notification/get_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get paginated list of notifications



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->notification_get_list($params);

    .. code-block:: html

        {{ admin.notification_get_list() }}

    .. code-block:: javascript

        bb.post("admin/notification/get_list", {})

admin/notification/get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get notification message



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - message id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->notification_get($params);

    .. code-block:: html

        {{ admin.notification_get() }}

    .. code-block:: javascript

        bb.post("admin/notification/get", {})

admin/notification/add
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Add new notification message



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:message: **string**   - message text

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->notification_add($params);

    .. code-block:: html

        {{ admin.notification_add() }}

    .. code-block:: javascript

        bb.post("admin/notification/add", {})

admin/notification/delete
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Remove notification message



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - message id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->notification_delete($params);

    .. code-block:: html

        {{ admin.notification_delete() }}

    .. code-block:: javascript

        bb.post("admin/notification/delete", {})

admin/notification/delete_all
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Remove all notification messages



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->notification_delete_all($params);

    .. code-block:: html

        {{ admin.notification_delete_all() }}

    .. code-block:: javascript

        bb.post("admin/notification/delete_all", {})

Order
------------------------------------------------------------------------------

Orders management


admin/order/get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get order details



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - Order id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->order_get($params);

    .. code-block:: html

        {{ admin.order_get() }}

    .. code-block:: javascript

        bb.post("admin/order/get", {})

admin/order/get_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Return paginated list of orders



Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:date_from: **string**   - show only order places after this date
:date_to: **string**   - show only order places till this date

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->order_get_list($params);

    .. code-block:: html

        {{ admin.order_get_list() }}

    .. code-block:: javascript

        bb.post("admin/order/get_list", {})

admin/order/create
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Place new order for client. Admin is able to order disabled products.



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:client_id: **int**   - Client id
:product_id: **int**   - Product id to be ordered

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:config: **array**   - Depending on product type, you may need to pass product configuration options
:quantity: **int**   - Quantity of products to order. Default 1
:price: **float**   - Overridden unit price in default currency. Default is product price for selected period.
:group_id: **string**   - Order group id. Assign order to be as an addon for other order
:currency: **string**   - Order currency. If not passed, default is used
:title: **string**   - Order title. If not passed, product title is used
:activate: **bool**   - activate immediately
:invoice_option: **string**   - Options: "no-invoice", "issue-invoice"; Default: no-invoice
:created_at: **string**   - date when order was created. Default: now
:updated_at: **string**   - date when order was updated. Default: now

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->order_create($params);

    .. code-block:: html

        {{ admin.order_create() }}

    .. code-block:: javascript

        bb.post("admin/order/create", {})

admin/order/update
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Update order settings



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - Order id

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:period: **string**   - Order billing period, ie: 1Y
:expires_at: **string**   - Order expiration date, ie: 2022-12-29
:activated_at: **string**   - Order activation date, ie: 2022-12-29
:title: **string**   - new order title
:price: **string**   - new order price, new invoice will be issued with this amount
:status: **string**   - manual orders status change. Does not perform action on service
:notes: **string**   - order notes
:meta: **array**   - list of meta properties

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->order_update($params);

    .. code-block:: html

        {{ admin.order_update() }}

    .. code-block:: javascript

        bb.post("admin/order/update", {})

admin/order/activate
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Activate order depending on current status.



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - Order id

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:force: **bool**   - Skip order status checking. Force activate even active order

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->order_activate($params);

    .. code-block:: html

        {{ admin.order_activate() }}

    .. code-block:: javascript

        bb.post("admin/order/activate", {})

admin/order/renew
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Activate order depending on current status.



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - Order id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->order_renew($params);

    .. code-block:: html

        {{ admin.order_renew() }}

    .. code-block:: javascript

        bb.post("admin/order/renew", {})

admin/order/suspend
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Suspend order



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - Order id

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:reason: **string**   - Suspendation reason message
:skip_event: **bool**   - Skip calling event hooks

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->order_suspend($params);

    .. code-block:: html

        {{ admin.order_suspend() }}

    .. code-block:: javascript

        bb.post("admin/order/suspend", {})

admin/order/unsuspend
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Unsuspend suspended order



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - Order id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->order_unsuspend($params);

    .. code-block:: html

        {{ admin.order_unsuspend() }}

    .. code-block:: javascript

        bb.post("admin/order/unsuspend", {})

admin/order/cancel
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Cancel order



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - Order id

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:skip_event: **bool**   - Skip calling event hooks

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->order_cancel($params);

    .. code-block:: html

        {{ admin.order_cancel() }}

    .. code-block:: javascript

        bb.post("admin/order/cancel", {})

admin/order/uncancel
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Uncancel canceled order



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - Order id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->order_uncancel($params);

    .. code-block:: html

        {{ admin.order_uncancel() }}

    .. code-block:: javascript

        bb.post("admin/order/uncancel", {})

admin/order/delete
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Delete order



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - Order id

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:delete_addons: **bool**   - Remove addons also. Default false.

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->order_delete($params);

    .. code-block:: html

        {{ admin.order_delete() }}

    .. code-block:: javascript

        bb.post("admin/order/delete", {})

admin/order/batch_suspend_expired
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Suspend all expired orders.



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->order_batch_suspend_expired($params);

    .. code-block:: html

        {{ admin.order_batch_suspend_expired() }}

    .. code-block:: javascript

        bb.post("admin/order/batch_suspend_expired", {})

admin/order/update_config
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Update order config



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - Order id
:config: **array**   - list of key value pairs of configuration fields

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->order_update_config($params);

    .. code-block:: html

        {{ admin.order_update_config() }}

    .. code-block:: javascript

        bb.post("admin/order/update_config", {})

admin/order/service
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get order service data



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - Order id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->order_service($params);

    .. code-block:: html

        {{ admin.order_service() }}

    .. code-block:: javascript

        bb.post("admin/order/service", {})

admin/order/status_history_get_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get paginated order statuses history list



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - Order id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->order_status_history_get_list($params);

    .. code-block:: html

        {{ admin.order_status_history_get_list() }}

    .. code-block:: javascript

        bb.post("admin/order/status_history_get_list", {})

admin/order/status_history_add
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Add order status history change



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - Order id
:status: **string**   - order status

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->order_status_history_add($params);

    .. code-block:: html

        {{ admin.order_status_history_add() }}

    .. code-block:: javascript

        bb.post("admin/order/status_history_add", {})

admin/order/status_history_delete
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Remove order status history item



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - History line id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->order_status_history_delete($params);

    .. code-block:: html

        {{ admin.order_status_history_delete() }}

    .. code-block:: javascript

        bb.post("admin/order/status_history_delete", {})

admin/order/get_statuses
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Return order statuses codes with counter



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->order_get_statuses($params);

    .. code-block:: html

        {{ admin.order_get_statuses() }}

    .. code-block:: javascript

        bb.post("admin/order/get_statuses", {})

admin/order/get_invoice_options
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Return available invoice options



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->order_get_invoice_options($params);

    .. code-block:: html

        {{ admin.order_get_invoice_options() }}

    .. code-block:: javascript

        bb.post("admin/order/get_invoice_options", {})

admin/order/get_status_pairs
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Return order statuses codes with titles



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->order_get_status_pairs($params);

    .. code-block:: html

        {{ admin.order_get_status_pairs() }}

    .. code-block:: javascript

        bb.post("admin/order/get_status_pairs", {})

admin/order/addons
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Return order addons list



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - Order id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->order_addons($params);

    .. code-block:: html

        {{ admin.order_addons() }}

    .. code-block:: javascript

        bb.post("admin/order/addons", {})

Product
------------------------------------------------------------------------------

Products management 


admin/product/get_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get paginated list of products



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->product_get_list($params);

    .. code-block:: html

        {{ admin.product_get_list() }}

    .. code-block:: javascript

        bb.post("admin/product/get_list", {})

admin/product/get_pairs
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get product pair. Id -> title values



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->product_get_pairs($params);

    .. code-block:: html

        {{ admin.product_get_pairs() }}

    .. code-block:: javascript

        bb.post("admin/product/get_pairs", {})

admin/product/get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get product details



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - product id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->product_get($params);

    .. code-block:: html

        {{ admin.product_get() }}

    .. code-block:: javascript

        bb.post("admin/product/get", {})

admin/product/get_types
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get installed product types



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->product_get_types($params);

    .. code-block:: html

        {{ admin.product_get_types() }}

    .. code-block:: javascript

        bb.post("admin/product/get_types", {})

admin/product/prepare
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Create new product. Set default values depending on type



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:title: **string**   - product title
:type: **string**   - product type

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:product_category_id: **string**   - category id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->product_prepare($params);

    .. code-block:: html

        {{ admin.product_prepare() }}

    .. code-block:: javascript

        bb.post("admin/product/prepare", {})

admin/product/update
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Update prodcut settings.



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - product id

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:pricing: **array**   - product pricing configuration
:config: **array**   - product configuration options depending on type
:upgrades: **array**   - array of upgradable products
:addons: **array**   - array of addon products
:product_category_id: **int**   - product category id
:title: **string**   - product title
:description: **string**   - detailed product description
:icon_url: **string**   - product icon
:status: **string**   - product status
:slug: **string**   - product slug. Used to create unique link to order page
:setup: **string**   - product setup option. Define when order must be activated.
:hidden: **bool**   - product visibility flag
:stock_control: **bool**   - product stock control flag.
:allow_quantity_select: **bool**   - client can select product quantity on order form flag
:quantity_in_stock: **bool**   - quantity available for sale. When out of stock, new order can not be placed.

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->product_update($params);

    .. code-block:: html

        {{ admin.product_update() }}

    .. code-block:: javascript

        bb.post("admin/product/update", {})

admin/product/update_priority
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Change products sorting order



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:priority: **array**   - id => number key value pairs to define sort order for all products

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->product_update_priority($params);

    .. code-block:: html

        {{ admin.product_update_priority() }}

    .. code-block:: javascript

        bb.post("admin/product/update_priority", {})

admin/product/update_config
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Convenience method to update product config only



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - product id

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:config: **array**   - product config key value array

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->product_update_config($params);

    .. code-block:: html

        {{ admin.product_update_config() }}

    .. code-block:: javascript

        bb.post("admin/product/update_config", {})

admin/product/addon_get_pairs
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get available addons



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->product_addon_get_pairs($params);

    .. code-block:: html

        {{ admin.product_addon_get_pairs() }}

    .. code-block:: javascript

        bb.post("admin/product/addon_get_pairs", {})

admin/product/addon_create
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Create new addon



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:title: **string**   - addon title

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->product_addon_create($params);

    .. code-block:: html

        {{ admin.product_addon_create() }}

    .. code-block:: javascript

        bb.post("admin/product/addon_create", {})

admin/product/addon_get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get addon details



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - addon id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->product_addon_get($params);

    .. code-block:: html

        {{ admin.product_addon_get() }}

    .. code-block:: javascript

        bb.post("admin/product/addon_get", {})

admin/product/addon_update
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Addon update



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - addon id

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:pricing: **array**   - product pricing configuration
:config: **array**   - product configuration options depending on type
:upgrades: **array**   - array of upgradable products
:addons: **array**   - array of addon products
:product_category_id: **int**   - product category id
:title: **string**   - product title
:description: **string**   - detailed product description
:icon_url: **string**   - product icon
:status: **string**   - product status
:slug: **string**   - product slug. Used to create unique link to order page
:setup: **string**   - product setup option. Define when order must be activated.
:hidden: **bool**   - product visibility flag
:stock_control: **bool**   - product stock control flag.
:allow_quantity_select: **bool**   - client can select product quantity on order form flag
:quantity_in_stock: **bool**   - quantity available for sale. When out of stock, new order can not be placed.

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->product_addon_update($params);

    .. code-block:: html

        {{ admin.product_addon_update() }}

    .. code-block:: javascript

        bb.post("admin/product/addon_update", {})

admin/product/addon_delete
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Remove addon



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - addon id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->product_addon_delete($params);

    .. code-block:: html

        {{ admin.product_addon_delete() }}

    .. code-block:: javascript

        bb.post("admin/product/addon_delete", {})

admin/product/delete
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Remove product



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - addon id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->product_delete($params);

    .. code-block:: html

        {{ admin.product_delete() }}

    .. code-block:: javascript

        bb.post("admin/product/delete", {})

admin/product/category_get_pairs
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get product category pairs



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->product_category_get_pairs($params);

    .. code-block:: html

        {{ admin.product_category_get_pairs() }}

    .. code-block:: javascript

        bb.post("admin/product/category_get_pairs", {})

admin/product/category_update
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Method to update category



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - category id

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:title: **string**   - category title
:icon_url: **string**   - icon url
:description: **string**   - description

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->product_category_update($params);

    .. code-block:: html

        {{ admin.product_category_update() }}

    .. code-block:: javascript

        bb.post("admin/product/category_update", {})

admin/product/category_get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get category details



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->product_category_get($params);

    .. code-block:: html

        {{ admin.product_category_get() }}

    .. code-block:: javascript

        bb.post("admin/product/category_get", {})

admin/product/category_create
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Create new product category



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:title: **string**   - new category title

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:icon_url: **string**   - icon url
:description: **string**   - description

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->product_category_create($params);

    .. code-block:: html

        {{ admin.product_category_create() }}

    .. code-block:: javascript

        bb.post("admin/product/category_create", {})

admin/product/category_delete
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Remove product category



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - category id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->product_category_delete($params);

    .. code-block:: html

        {{ admin.product_category_delete() }}

    .. code-block:: javascript

        bb.post("admin/product/category_delete", {})

admin/product/promo_get_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get product promo codes list



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->product_promo_get_list($params);

    .. code-block:: html

        {{ admin.product_promo_get_list() }}

    .. code-block:: javascript

        bb.post("admin/product/promo_get_list", {})

admin/product/promo_create
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Create new promo code



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:code: **string**   - promo code
:type: **string**   - promo code type: percentage|absolute
:value: **string**   - promo code value. Percents or discount amount in currency

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:products: **array**   - list of product ids for which this promo code applies
:periods: **array**   - list of period codes
:active: **bool**   - flag to enable/disable promo code
:freesetup: **bool**   - flag to enable/disable free setup price
:once_per_client: **bool**   - flag to enable/disable promo code usage once per client
:recurring: **bool**   - is available for all recurring orders not for first order only
:maxuses: **int**   - how many times this promo code can be used
:start_at: **string**   - date (Y-m-d) when will this promo code be active
:end_at: **string**   - date (Y-m-d) when this promo code expires

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->product_promo_create($params);

    .. code-block:: html

        {{ admin.product_promo_create() }}

    .. code-block:: javascript

        bb.post("admin/product/promo_create", {})

admin/product/promo_get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get promo code details



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - promo code id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->product_promo_get($params);

    .. code-block:: html

        {{ admin.product_promo_get() }}

    .. code-block:: javascript

        bb.post("admin/product/promo_get", {})

admin/product/promo_update
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Promo code update



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - promo code id

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:code: **string**   - promo code
:type: **string**   - promo code type: percentage|absolute
:value: **string**   - promo code value. Percents or discount amount in currency
:products: **array**   - list of product ids for which this promo code applies
:periods: **array**   - list of period codes
:active: **bool**   - flag to enable/disable promo code
:freesetup: **bool**   - flag to enable/disable free setup price
:once_per_client: **bool**   - flag to enable/disable promo code usage once per client
:recurring: **bool**   - is available for all recurring orders not for first order only
:maxuses: **int**   - how many times this promo code can be used
:start_at: **string**   - date (Y-m-d) when will this promo code be active
:end_at: **string**   - date (Y-m-d) when this promo code expires
:used: **int**   - how many times this promo code was already used

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->product_promo_update($params);

    .. code-block:: html

        {{ admin.product_promo_update() }}

    .. code-block:: javascript

        bb.post("admin/product/promo_update", {})

admin/product/promo_delete
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Delete promo code



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - promo code id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->product_promo_delete($params);

    .. code-block:: html

        {{ admin.product_promo_delete() }}

    .. code-block:: javascript

        bb.post("admin/product/promo_delete", {})

Profile
------------------------------------------------------------------------------

Admin profile management


admin/profile/get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Returns currently logged in staff member profile information



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->profile_get($params);

    .. code-block:: html

        {{ admin.profile_get() }}

    .. code-block:: javascript

        bb.post("admin/profile/get", {})

admin/profile/logout
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Clear session data and logout from system



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->profile_logout($params);

    .. code-block:: html

        {{ admin.profile_logout() }}

    .. code-block:: javascript

        bb.post("admin/profile/logout", {})

admin/profile/update
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Update currently logged in staff member details



Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:email: **string**   - new email
:name: **string**   - new name
:signature: **string**   - new signature

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->profile_update($params);

    .. code-block:: html

        {{ admin.profile_update() }}

    .. code-block:: javascript

        bb.post("admin/profile/update", {})

admin/profile/generate_api_key
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Generates new API token for currently logged in staff member



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->profile_generate_api_key($params);

    .. code-block:: html

        {{ admin.profile_generate_api_key() }}

    .. code-block:: javascript

        bb.post("admin/profile/generate_api_key", {})

admin/profile/change_password
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Change password for currently logged in staff member



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:password: **string**   - new password
:password_confirm: **string**   - repeat new password

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->profile_change_password($params);

    .. code-block:: html

        {{ admin.profile_change_password() }}

    .. code-block:: javascript

        bb.post("admin/profile/change_password", {})

Queue
------------------------------------------------------------------------------

Queue is a powerfull tool to execute long running tasks in the background.


admin/queue/get_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Returns paginated list of queues



Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:mod: **string**   - filter results by mod
:name: **string**   - filter results by name

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->queue_get_list($params);

    .. code-block:: html

        {{ admin.queue_get_list() }}

    .. code-block:: javascript

        bb.post("admin/queue/get_list", {})

admin/queue/get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get queue details



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:queue: **string**   - queue name, ie: massemails

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->queue_get($params);

    .. code-block:: html

        {{ admin.queue_get() }}

    .. code-block:: javascript

        bb.post("admin/queue/get", {})

admin/queue/message_delete
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Remove message from queue



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:int: **type**   - message id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->queue_message_delete($params);

    .. code-block:: html

        {{ admin.queue_message_delete() }}

    .. code-block:: javascript

        bb.post("admin/queue/message_delete", {})

admin/queue/message_add
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Add message to queue to be executed later



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:queue: **string**   - unique queue name, ie: massemails
:mod: **string**   - module name, ie: massmailer

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:execute_at: **string**   - Message execution time. Schedule message to be executed later, ie: 2022-12-29 14:53:51
:params: **mixed**   - queue message params. Any serializable param
:handler: **string**   - function handler. Static function name in extensions service class - default $queue name
:interval: **int**   - Interval to execute messages in the queue. Default 30
:max: **int**   - Maximum amount of messages to be executed per interval. Default 25

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->queue_message_add($params);

    .. code-block:: html

        {{ admin.queue_message_add() }}

    .. code-block:: javascript

        bb.post("admin/queue/message_add", {})

admin/queue/execute
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Execute queue.
For example: Send 25 emails every 30 seconds until complete

Executing queue is locked until finished.

Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:queue: **string**   - queue name to be executed

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:max: **int**   - Maximum amount of messages to be executed per interval. Default is queue max amount
:interval: **int**   - interval in seconds for message to be executed. Default is queue timeout
:until_complete: **bool**   - Execute until all messages in queue are executed. Default true

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->queue_execute($params);

    .. code-block:: html

        {{ admin.queue_execute() }}

    .. code-block:: javascript

        bb.post("admin/queue/execute", {})

Redirect
------------------------------------------------------------------------------

Redirects management


admin/redirect/get_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get list of redirects



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->redirect_get_list($params);

    .. code-block:: html

        {{ admin.redirect_get_list() }}

    .. code-block:: javascript

        bb.post("admin/redirect/get_list", {})

admin/redirect/get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get redirect by id



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - int

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->redirect_get($params);

    .. code-block:: html

        {{ admin.redirect_get() }}

    .. code-block:: javascript

        bb.post("admin/redirect/get", {})

admin/redirect/create
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Create new redirect



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:path: **string**   - redirect path
:target: **string**   - redirect target

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->redirect_create($params);

    .. code-block:: html

        {{ admin.redirect_create() }}

    .. code-block:: javascript

        bb.post("admin/redirect/create", {})

admin/redirect/update
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Update redirect



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - redirect id

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:path: **string**   - redirect path
:target: **string**   - redirect target

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->redirect_update($params);

    .. code-block:: html

        {{ admin.redirect_update() }}

    .. code-block:: javascript

        bb.post("admin/redirect/update", {})

admin/redirect/delete
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Delete redirect



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - redirect id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->redirect_delete($params);

    .. code-block:: html

        {{ admin.redirect_delete() }}

    .. code-block:: javascript

        bb.post("admin/redirect/delete", {})

Serviceboxbillinglicense
------------------------------------------------------------------------------

BoxBilling license management


admin/serviceboxbillinglicense/config_update
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Update module configuration



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - order id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->serviceboxbillinglicense_config_update($params);

    .. code-block:: html

        {{ admin.serviceboxbillinglicense_config_update() }}

    .. code-block:: javascript

        bb.post("admin/serviceboxbillinglicense/config_update", {})

admin/serviceboxbillinglicense/config_get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get module configuration



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - order id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->serviceboxbillinglicense_config_get($params);

    .. code-block:: html

        {{ admin.serviceboxbillinglicense_config_get() }}

    .. code-block:: javascript

        bb.post("admin/serviceboxbillinglicense/config_get", {})

admin/serviceboxbillinglicense/order_info
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get detailed license order info



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - order id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->serviceboxbillinglicense_order_info($params);

    .. code-block:: html

        {{ admin.serviceboxbillinglicense_order_info() }}

    .. code-block:: javascript

        bb.post("admin/serviceboxbillinglicense/order_info", {})

admin/serviceboxbillinglicense/order_reset
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Reset license information. Usually used when moving BoxBilling to
new server.



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - order id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->serviceboxbillinglicense_order_reset($params);

    .. code-block:: html

        {{ admin.serviceboxbillinglicense_order_reset() }}

    .. code-block:: javascript

        bb.post("admin/serviceboxbillinglicense/order_reset", {})

admin/serviceboxbillinglicense/become_partner
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Convenience method to become partner. After you become BoxBilling
partner you are able to sell licenses.



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->serviceboxbillinglicense_become_partner($params);

    .. code-block:: html

        {{ admin.serviceboxbillinglicense_become_partner() }}

    .. code-block:: javascript

        bb.post("admin/serviceboxbillinglicense/become_partner", {})

admin/serviceboxbillinglicense/test_connection
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Test connection to BoxBilling server. Used to test your configuration.



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->serviceboxbillinglicense_test_connection($params);

    .. code-block:: html

        {{ admin.serviceboxbillinglicense_test_connection() }}

    .. code-block:: javascript

        bb.post("admin/serviceboxbillinglicense/test_connection", {})

admin/serviceboxbillinglicense/update
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Update existing order service
This method used to change service data if order setup fails

or have changed on remote server

Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - order id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->serviceboxbillinglicense_update($params);

    .. code-block:: html

        {{ admin.serviceboxbillinglicense_update() }}

    .. code-block:: javascript

        bb.post("admin/serviceboxbillinglicense/update", {})

Servicecentovacast
------------------------------------------------------------------------------

CentovaCast management


admin/servicecentovacast/servers
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Return centovacast servers



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicecentovacast_servers($params);

    .. code-block:: html

        {{ admin.servicecentovacast_servers() }}

    .. code-block:: javascript

        bb.post("admin/servicecentovacast/servers", {})

admin/servicecentovacast/server_pairs
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get server pairs



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicecentovacast_server_pairs($params);

    .. code-block:: html

        {{ admin.servicecentovacast_server_pairs() }}

    .. code-block:: javascript

        bb.post("admin/servicecentovacast/server_pairs", {})

admin/servicecentovacast/server_add
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Add new centovacast server



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:data: **type**   

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicecentovacast_server_add($params);

    .. code-block:: html

        {{ admin.servicecentovacast_server_add() }}

    .. code-block:: javascript

        bb.post("admin/servicecentovacast/server_add", {})

admin/servicecentovacast/server_get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get server



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - server id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicecentovacast_server_get($params);

    .. code-block:: html

        {{ admin.servicecentovacast_server_get() }}

    .. code-block:: javascript

        bb.post("admin/servicecentovacast/server_get", {})

admin/servicecentovacast/server_update
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Update server



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - server id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicecentovacast_server_update($params);

    .. code-block:: html

        {{ admin.servicecentovacast_server_update() }}

    .. code-block:: javascript

        bb.post("admin/servicecentovacast/server_update", {})

admin/servicecentovacast/server_delete
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Remove server



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - server id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicecentovacast_server_delete($params);

    .. code-block:: html

        {{ admin.servicecentovacast_server_delete() }}

    .. code-block:: javascript

        bb.post("admin/servicecentovacast/server_delete", {})

admin/servicecentovacast/server_connection
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Test connection to server



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - server id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicecentovacast_server_connection($params);

    .. code-block:: html

        {{ admin.servicecentovacast_server_connection() }}

    .. code-block:: javascript

        bb.post("admin/servicecentovacast/server_connection", {})

admin/servicecentovacast/update
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Update existing order service



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicecentovacast_update($params);

    .. code-block:: html

        {{ admin.servicecentovacast_update() }}

    .. code-block:: javascript

        bb.post("admin/servicecentovacast/update", {})

admin/servicecentovacast/getaccount
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Retrieves the configuration for a CentovaCast client account. 
If server-side streaming source support is enabled,

the configuration for the streaming source is returned as well.

Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - order id

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:try: **bool**   - do not throw an exception, return error message as a result

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicecentovacast_getaccount($params);

    .. code-block:: html

        {{ admin.servicecentovacast_getaccount() }}

    .. code-block:: javascript

        bb.post("admin/servicecentovacast/getaccount", {})

admin/servicecentovacast/info
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Returns the state (up or down) of one or more CentovaCast streaming 
server accounts. This can be used to monitor streams to see if any

have crashed. (Note that CentovaCast's cron job automatically monitors 
and restarts crashed streaming servers as well.)

Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - order id

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:try: **bool**   - do not throw an exception, return error message as a result

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicecentovacast_info($params);

    .. code-block:: html

        {{ admin.servicecentovacast_info() }}

    .. code-block:: javascript

        bb.post("admin/servicecentovacast/info", {})

admin/servicecentovacast/reconfigure
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Updates the settings for an existing client streaming server 
account in CentovaCast.



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - order id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicecentovacast_reconfigure($params);

    .. code-block:: html

        {{ admin.servicecentovacast_reconfigure() }}

    .. code-block:: javascript

        bb.post("admin/servicecentovacast/reconfigure", {})

Servicecustom
------------------------------------------------------------------------------

Custom service management


admin/servicecustom/update
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Update custom service configuration



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicecustom_update($params);

    .. code-block:: html

        {{ admin.servicecustom_update() }}

    .. code-block:: javascript

        bb.post("admin/servicecustom/update", {})

admin/servicecustom/__call
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Universal method to call method from plugin
Pass any other params and they will be passed to plugin



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - ID of the order

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicecustom___call($params);

    .. code-block:: html

        {{ admin.servicecustom___call() }}

    .. code-block:: javascript

        bb.post("admin/servicecustom/__call", {})

Servicedomain
------------------------------------------------------------------------------

Domain order management 


admin/servicedomain/update
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Update domain service. 
Does not send actions to domain registar. Used to sync domain details

on BoxBilling

Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - domain order id

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:ns1: **string**   - 1 Nameserver hostname, ie: ns1.mydomain.com
:ns2: **string**   - 2 Nameserver hostname, ie: ns2.mydomain.com
:ns3: **string**   - 3 Nameserver hostname, ie: ns3.mydomain.com
:ns4: **string**   - 4 Nameserver hostname, ie: ns4.mydomain.com
:private: **bool**   - flag to define if domain privacy protection is enabled/disabled
:locked: **bool**   - flag to define if domain is locked or not

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicedomain_update($params);

    .. code-block:: html

        {{ admin.servicedomain_update() }}

    .. code-block:: javascript

        bb.post("admin/servicedomain/update", {})

admin/servicedomain/update_nameservers
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Update domain nameservers



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - domain order id
:ns1: **string**   - 1 Nameserver hostname, ie: ns1.mydomain.com
:ns2: **string**   - 2 Nameserver hostname, ie: ns2.mydomain.com

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:ns3: **string**   - 3 Nameserver hostname, ie: ns3.mydomain.com
:ns4: **string**   - 4 Nameserver hostname, ie: ns4.mydomain.com

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicedomain_update_nameservers($params);

    .. code-block:: html

        {{ admin.servicedomain_update_nameservers() }}

    .. code-block:: javascript

        bb.post("admin/servicedomain/update_nameservers", {})

admin/servicedomain/update_contacts
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Update domain contact details



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - domain order id
:contact: **array**   - Contact array must contain these fields: first_name, last_name, email, company, address1, address2, country, city, state, postcode, phone_cc, phone

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicedomain_update_contacts($params);

    .. code-block:: html

        {{ admin.servicedomain_update_contacts() }}

    .. code-block:: javascript

        bb.post("admin/servicedomain/update_contacts", {})

admin/servicedomain/enable_privacy_protection
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Enable domain privacy protection



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - domain order id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicedomain_enable_privacy_protection($params);

    .. code-block:: html

        {{ admin.servicedomain_enable_privacy_protection() }}

    .. code-block:: javascript

        bb.post("admin/servicedomain/enable_privacy_protection", {})

admin/servicedomain/disable_privacy_protection
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Disable domain privacy protection



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - domain order id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicedomain_disable_privacy_protection($params);

    .. code-block:: html

        {{ admin.servicedomain_disable_privacy_protection() }}

    .. code-block:: javascript

        bb.post("admin/servicedomain/disable_privacy_protection", {})

admin/servicedomain/get_transfer_code
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get domain transfer code



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - domain order id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicedomain_get_transfer_code($params);

    .. code-block:: html

        {{ admin.servicedomain_get_transfer_code() }}

    .. code-block:: javascript

        bb.post("admin/servicedomain/get_transfer_code", {})

admin/servicedomain/lock
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Lock domain



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - domain order id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicedomain_lock($params);

    .. code-block:: html

        {{ admin.servicedomain_lock() }}

    .. code-block:: javascript

        bb.post("admin/servicedomain/lock", {})

admin/servicedomain/unlock
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Unlock domain



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - domain order id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicedomain_unlock($params);

    .. code-block:: html

        {{ admin.servicedomain_unlock() }}

    .. code-block:: javascript

        bb.post("admin/servicedomain/unlock", {})

admin/servicedomain/tld_get_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get paginated top level domains list



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicedomain_tld_get_list($params);

    .. code-block:: html

        {{ admin.servicedomain_tld_get_list() }}

    .. code-block:: javascript

        bb.post("admin/servicedomain/tld_get_list", {})

admin/servicedomain/tld_get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get top level domain details



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:tld: **string**   - top level domain, ie: .com

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicedomain_tld_get($params);

    .. code-block:: html

        {{ admin.servicedomain_tld_get() }}

    .. code-block:: javascript

        bb.post("admin/servicedomain/tld_get", {})

admin/servicedomain/tld_delete
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Delete top level domain



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:tld: **string**   - top level domain, ie: .com

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicedomain_tld_delete($params);

    .. code-block:: html

        {{ admin.servicedomain_tld_delete() }}

    .. code-block:: javascript

        bb.post("admin/servicedomain/tld_delete", {})

admin/servicedomain/tld_create
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Add new top level domain



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:tld: **string**   - top level domain, ie: .com
:tld_registrar_id: **int**   - domain registrar id
:price_registration: **float**   - registration price
:price_renew: **float**   - renewal price
:price_transfer: **float**   - transfer price

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicedomain_tld_create($params);

    .. code-block:: html

        {{ admin.servicedomain_tld_create() }}

    .. code-block:: javascript

        bb.post("admin/servicedomain/tld_create", {})

admin/servicedomain/tld_update
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Update top level domain



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:tld: **string**   - top level domain, ie: .com

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:tld_registrar_id: **int**   - domain registrar id
:price_registration: **float**   - registration price
:price_renew: **float**   - renewal price
:price_transfer: **float**   - transfer price

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicedomain_tld_update($params);

    .. code-block:: html

        {{ admin.servicedomain_tld_update() }}

    .. code-block:: javascript

        bb.post("admin/servicedomain/tld_update", {})

admin/servicedomain/registrar_get_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get paginated registars list



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicedomain_registrar_get_list($params);

    .. code-block:: html

        {{ admin.servicedomain_registrar_get_list() }}

    .. code-block:: javascript

        bb.post("admin/servicedomain/registrar_get_list", {})

admin/servicedomain/registrar_get_pairs
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get registrars pairs



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicedomain_registrar_get_pairs($params);

    .. code-block:: html

        {{ admin.servicedomain_registrar_get_pairs() }}

    .. code-block:: javascript

        bb.post("admin/servicedomain/registrar_get_pairs", {})

admin/servicedomain/registrar_get_available
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get available registars for install



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicedomain_registrar_get_available($params);

    .. code-block:: html

        {{ admin.servicedomain_registrar_get_available() }}

    .. code-block:: javascript

        bb.post("admin/servicedomain/registrar_get_available", {})

admin/servicedomain/registrar_install
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Install domain registrar



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:code: **string**   - registrar code

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicedomain_registrar_install($params);

    .. code-block:: html

        {{ admin.servicedomain_registrar_install() }}

    .. code-block:: javascript

        bb.post("admin/servicedomain/registrar_install", {})

admin/servicedomain/registrar_delete
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Uninstall domain registrar



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - registrar id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicedomain_registrar_delete($params);

    .. code-block:: html

        {{ admin.servicedomain_registrar_delete() }}

    .. code-block:: javascript

        bb.post("admin/servicedomain/registrar_delete", {})

admin/servicedomain/registrar_copy
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Copy domain registrar



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - registrar id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicedomain_registrar_copy($params);

    .. code-block:: html

        {{ admin.servicedomain_registrar_copy() }}

    .. code-block:: javascript

        bb.post("admin/servicedomain/registrar_copy", {})

admin/servicedomain/registrar_get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get domain registrar details



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - registrar id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicedomain_registrar_get($params);

    .. code-block:: html

        {{ admin.servicedomain_registrar_get() }}

    .. code-block:: javascript

        bb.post("admin/servicedomain/registrar_get", {})

admin/servicedomain/batch_sync_expiration_dates
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Sync domain expiration dates with registrars.
This action is run once a month



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicedomain_batch_sync_expiration_dates($params);

    .. code-block:: html

        {{ admin.servicedomain_batch_sync_expiration_dates() }}

    .. code-block:: javascript

        bb.post("admin/servicedomain/batch_sync_expiration_dates", {})

admin/servicedomain/registrar_update
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Update domain registrar



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - registrar id

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:title: **string**   - registar title
:config: **array**   - registar configuration array

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicedomain_registrar_update($params);

    .. code-block:: html

        {{ admin.servicedomain_registrar_update() }}

    .. code-block:: javascript

        bb.post("admin/servicedomain/registrar_update", {})

Servicedownloadable
------------------------------------------------------------------------------

Downloadable service management


admin/servicedownloadable/upload
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Upload file to product. Uses $_FILES array so make sure your form is
enctype="multipart/form-data"



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - product id
:file_data: **file**   - <input type="file" name="file_data" /> field content

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicedownloadable_upload($params);

    .. code-block:: html

        {{ admin.servicedownloadable_upload() }}

    .. code-block:: javascript

        bb.post("admin/servicedownloadable/upload", {})

admin/servicedownloadable/update
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Update downloadable product order with new file.
This will change only this order file.


Uses $_FILES array so make sure your form is
enctype="multipart/form-data"

Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - order id
:file_data: **file**   - <input type="file" name="file_data" /> field content

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicedownloadable_update($params);

    .. code-block:: html

        {{ admin.servicedownloadable_update() }}

    .. code-block:: javascript

        bb.post("admin/servicedownloadable/update", {})

Servicehosting
------------------------------------------------------------------------------

Hosting service management 


admin/servicehosting/change_plan
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Change hosting account plan



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - Hosting account order id
:plan_id: **int**   - New hosting plan id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicehosting_change_plan($params);

    .. code-block:: html

        {{ admin.servicehosting_change_plan() }}

    .. code-block:: javascript

        bb.post("admin/servicehosting/change_plan", {})

admin/servicehosting/change_username
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Change hosting account username



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - Hosting account order id
:username: **string**   - New username

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicehosting_change_username($params);

    .. code-block:: html

        {{ admin.servicehosting_change_username() }}

    .. code-block:: javascript

        bb.post("admin/servicehosting/change_username", {})

admin/servicehosting/change_ip
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Change hosting account ip



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - Hosting account order id
:username: **string**   - New username

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicehosting_change_ip($params);

    .. code-block:: html

        {{ admin.servicehosting_change_ip() }}

    .. code-block:: javascript

        bb.post("admin/servicehosting/change_ip", {})

admin/servicehosting/change_domain
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Change hosting account domain



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - Hosting account order id
:tld: **string**   - Top level domain value, ie: .com
:sld: **string**   - Second level domain value, ie: domainname

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicehosting_change_domain($params);

    .. code-block:: html

        {{ admin.servicehosting_change_domain() }}

    .. code-block:: javascript

        bb.post("admin/servicehosting/change_domain", {})

admin/servicehosting/change_password
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Change hosting account password.



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - Hosting account order id
:password: **string**   - New account password
:password_confirm: **string**   - Must be same value as password field

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicehosting_change_password($params);

    .. code-block:: html

        {{ admin.servicehosting_change_password() }}

    .. code-block:: javascript

        bb.post("admin/servicehosting/change_password", {})

admin/servicehosting/sync
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Synchronize account with server values.



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - Hosting account order id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicehosting_sync($params);

    .. code-block:: html

        {{ admin.servicehosting_sync() }}

    .. code-block:: javascript

        bb.post("admin/servicehosting/sync", {})

admin/servicehosting/update
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Update account information on BoxBilling database.
This does not send actions to real account on hosting server.



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - Hosting account order id

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:username: **string**   - Hosting account username
:ip: **string**   - Hosting account ip

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicehosting_update($params);

    .. code-block:: html

        {{ admin.servicehosting_update() }}

    .. code-block:: javascript

        bb.post("admin/servicehosting/update", {})

admin/servicehosting/manager_get_pairs
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get list of available server managers on system



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicehosting_manager_get_pairs($params);

    .. code-block:: html

        {{ admin.servicehosting_manager_get_pairs() }}

    .. code-block:: javascript

        bb.post("admin/servicehosting/manager_get_pairs", {})

admin/servicehosting/server_get_pairs
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get list of available hosting servers on system



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicehosting_server_get_pairs($params);

    .. code-block:: html

        {{ admin.servicehosting_server_get_pairs() }}

    .. code-block:: javascript

        bb.post("admin/servicehosting/server_get_pairs", {})

admin/servicehosting/server_get_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get paginated list of servers



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicehosting_server_get_list($params);

    .. code-block:: html

        {{ admin.servicehosting_server_get_list() }}

    .. code-block:: javascript

        bb.post("admin/servicehosting/server_get_list", {})

admin/servicehosting/server_create
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Create new hosting server



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:name: **string**   - server name
:ip: **string**   - server ip
:manager: **string**   - server manager code

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:hostname: **string**   - server hostname
:ns1: **string**   - default nameserver 1
:ns2: **string**   - default nameserver 2
:ns3: **string**   - default nameserver 3
:ns4: **string**   - default nameserver 4
:username: **string**   - server API login username
:password: **string**   - server API login password
:accesshash: **string**   - server API login access hash 
:port: **string**   - server API port
:secure: **bool**   - flag to define wheather to use secure connection (https) to server or not (http)
:active: **bool**   - flag to enable/disable server

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicehosting_server_create($params);

    .. code-block:: html

        {{ admin.servicehosting_server_create() }}

    .. code-block:: javascript

        bb.post("admin/servicehosting/server_create", {})

admin/servicehosting/server_get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get server details



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - server id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicehosting_server_get($params);

    .. code-block:: html

        {{ admin.servicehosting_server_get() }}

    .. code-block:: javascript

        bb.post("admin/servicehosting/server_get", {})

admin/servicehosting/server_delete
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Delete server



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - server id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicehosting_server_delete($params);

    .. code-block:: html

        {{ admin.servicehosting_server_delete() }}

    .. code-block:: javascript

        bb.post("admin/servicehosting/server_delete", {})

admin/servicehosting/server_update
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Update server configuration



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - server id

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:hostname: **string**   - server hostname
:ns1: **string**   - default nameserver 1
:ns2: **string**   - default nameserver 2
:ns3: **string**   - default nameserver 3
:ns4: **string**   - default nameserver 4
:username: **string**   - server API login username
:password: **string**   - server API login password
:accesshash: **string**   - server API login access hash 
:port: **string**   - server API port
:secure: **bool**   - flag to define whether to use secure connection (https) to server or not (http)
:active: **bool**   - flag to enable/disable server

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicehosting_server_update($params);

    .. code-block:: html

        {{ admin.servicehosting_server_update() }}

    .. code-block:: javascript

        bb.post("admin/servicehosting/server_update", {})

admin/servicehosting/server_test_connection
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Test connection to server



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - server id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicehosting_server_test_connection($params);

    .. code-block:: html

        {{ admin.servicehosting_server_test_connection() }}

    .. code-block:: javascript

        bb.post("admin/servicehosting/server_test_connection", {})

admin/servicehosting/hp_get_pairs
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get hoting plan pairs



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicehosting_hp_get_pairs($params);

    .. code-block:: html

        {{ admin.servicehosting_hp_get_pairs() }}

    .. code-block:: javascript

        bb.post("admin/servicehosting/hp_get_pairs", {})

admin/servicehosting/hp_get_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get hostin plans paginated list



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicehosting_hp_get_list($params);

    .. code-block:: html

        {{ admin.servicehosting_hp_get_list() }}

    .. code-block:: javascript

        bb.post("admin/servicehosting/hp_get_list", {})

admin/servicehosting/hp_delete
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Delete hosting plan



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - hosting plan id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicehosting_hp_delete($params);

    .. code-block:: html

        {{ admin.servicehosting_hp_delete() }}

    .. code-block:: javascript

        bb.post("admin/servicehosting/hp_delete", {})

admin/servicehosting/hp_get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get hosting plan details



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - hosting plan id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicehosting_hp_get($params);

    .. code-block:: html

        {{ admin.servicehosting_hp_get() }}

    .. code-block:: javascript

        bb.post("admin/servicehosting/hp_get", {})

admin/servicehosting/hp_update
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Update hosting plan details



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - hosting plan id

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:name: **string**   - hosting plan name. Used as identifier on server

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicehosting_hp_update($params);

    .. code-block:: html

        {{ admin.servicehosting_hp_update() }}

    .. code-block:: javascript

        bb.post("admin/servicehosting/hp_update", {})

admin/servicehosting/hp_create
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Update hosting plan details



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:name: **string**   - hosting plan name. Used as identifier on server

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicehosting_hp_create($params);

    .. code-block:: html

        {{ admin.servicehosting_hp_create() }}

    .. code-block:: javascript

        bb.post("admin/servicehosting/hp_create", {})

Servicelicense
------------------------------------------------------------------------------

Service license management 


admin/servicelicense/plugin_get_pairs
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get available licensing plugins



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:data: **type**   

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicelicense_plugin_get_pairs($params);

    .. code-block:: html

        {{ admin.servicelicense_plugin_get_pairs() }}

    .. code-block:: javascript

        bb.post("admin/servicelicense/plugin_get_pairs", {})

admin/servicelicense/update
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Update license parameters. Set which validation rules must be applied
for license



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - License irder id

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:plugin: **string**   - New license plugin name
:validate_ip: **bool**   - True to validate IP; False - to allow all IPs for this license
:validate_host: **bool**   - True to validate hostname; False - to allow all hostnames for this license
:validate_path: **bool**   - True to validate install paths; False - to allow all paths for this license
:validate_version: **bool**   - True to validate version; False - to allow all versions for this license
:ips: **array**   - List of allowed IPs for this license 
:hosts: **array**   - List of allowed hosts for this license 
:paths: **array**   - List of allowed paths for this license 
:versions: **array**   - List of allowed versions for this license 

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicelicense_update($params);

    .. code-block:: html

        {{ admin.servicelicense_update() }}

    .. code-block:: javascript

        bb.post("admin/servicelicense/update", {})

admin/servicelicense/reset
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Reset license validation rules.



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - License service order id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicelicense_reset($params);

    .. code-block:: html

        {{ admin.servicelicense_reset() }}

    .. code-block:: javascript

        bb.post("admin/servicelicense/reset", {})

Servicesolusvm
------------------------------------------------------------------------------

Solusvm management


admin/servicesolusvm/cluster_config_update
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Update master server configuration



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:cluster_id: **int**   - cluster ID

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicesolusvm_cluster_config_update($params);

    .. code-block:: html

        {{ admin.servicesolusvm_cluster_config_update() }}

    .. code-block:: javascript

        bb.post("admin/servicesolusvm/cluster_config_update", {})

admin/servicesolusvm/cluster_config
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Return master server configuration



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:cluster_id: **int**   - id of master server default = 1

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicesolusvm_cluster_config($params);

    .. code-block:: html

        {{ admin.servicesolusvm_cluster_config() }}

    .. code-block:: javascript

        bb.post("admin/servicesolusvm/cluster_config", {})

admin/servicesolusvm/get_virtualization_types
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Return virtualization types solusVM supports



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicesolusvm_get_virtualization_types($params);

    .. code-block:: html

        {{ admin.servicesolusvm_get_virtualization_types() }}

    .. code-block:: javascript

        bb.post("admin/servicesolusvm/get_virtualization_types", {})

admin/servicesolusvm/get_nodes
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Return nodes available on solusvm master server



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:by: **string**   - list nodes by id or by name, default - name
:type: **string**   - virtualization type

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicesolusvm_get_nodes($params);

    .. code-block:: html

        {{ admin.servicesolusvm_get_nodes() }}

    .. code-block:: javascript

        bb.post("admin/servicesolusvm/get_nodes", {})

admin/servicesolusvm/get_plans
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Return plans available on solusvm master server



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:type: **string**   - virtualization type

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicesolusvm_get_plans($params);

    .. code-block:: html

        {{ admin.servicesolusvm_get_plans() }}

    .. code-block:: javascript

        bb.post("admin/servicesolusvm/get_plans", {})

admin/servicesolusvm/get_templates
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Return templates available on solusvm master server



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:type: **string**   - virtualization type

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicesolusvm_get_templates($params);

    .. code-block:: html

        {{ admin.servicesolusvm_get_templates() }}

    .. code-block:: javascript

        bb.post("admin/servicesolusvm/get_templates", {})

admin/servicesolusvm/reboot
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Reboot VPS



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - order id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicesolusvm_reboot($params);

    .. code-block:: html

        {{ admin.servicesolusvm_reboot() }}

    .. code-block:: javascript

        bb.post("admin/servicesolusvm/reboot", {})

admin/servicesolusvm/boot
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Boot VPS



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - order id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicesolusvm_boot($params);

    .. code-block:: html

        {{ admin.servicesolusvm_boot() }}

    .. code-block:: javascript

        bb.post("admin/servicesolusvm/boot", {})

admin/servicesolusvm/shutdown
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Shutdown VPS



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - order id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicesolusvm_shutdown($params);

    .. code-block:: html

        {{ admin.servicesolusvm_shutdown() }}

    .. code-block:: javascript

        bb.post("admin/servicesolusvm/shutdown", {})

admin/servicesolusvm/status
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get status VPS



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - order id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicesolusvm_status($params);

    .. code-block:: html

        {{ admin.servicesolusvm_status() }}

    .. code-block:: javascript

        bb.post("admin/servicesolusvm/status", {})

admin/servicesolusvm/info
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Retrieve more information about vps from sulusvm server



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - order id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicesolusvm_info($params);

    .. code-block:: html

        {{ admin.servicesolusvm_info() }}

    .. code-block:: javascript

        bb.post("admin/servicesolusvm/info", {})

admin/servicesolusvm/set_root_password
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Change root password for VPS



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - order id
:password: **string**   - new password

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicesolusvm_set_root_password($params);

    .. code-block:: html

        {{ admin.servicesolusvm_set_root_password() }}

    .. code-block:: javascript

        bb.post("admin/servicesolusvm/set_root_password", {})

admin/servicesolusvm/set_plan
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Change VPS plan



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - order id
:plan: **string**   - new plan name

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicesolusvm_set_plan($params);

    .. code-block:: html

        {{ admin.servicesolusvm_set_plan() }}

    .. code-block:: javascript

        bb.post("admin/servicesolusvm/set_plan", {})

admin/servicesolusvm/set_hostname
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Change VPS hostname



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - order id
:hostname: **string**   - new hostname for vps

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicesolusvm_set_hostname($params);

    .. code-block:: html

        {{ admin.servicesolusvm_set_hostname() }}

    .. code-block:: javascript

        bb.post("admin/servicesolusvm/set_hostname", {})

admin/servicesolusvm/rebuild
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Rebuild vps operating system with new template



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - order id
:template: **string**   - new template

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicesolusvm_rebuild($params);

    .. code-block:: html

        {{ admin.servicesolusvm_rebuild() }}

    .. code-block:: javascript

        bb.post("admin/servicesolusvm/rebuild", {})

admin/servicesolusvm/addip
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Assign new IP from the pool



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - order id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicesolusvm_addip($params);

    .. code-block:: html

        {{ admin.servicesolusvm_addip() }}

    .. code-block:: javascript

        bb.post("admin/servicesolusvm/addip", {})

admin/servicesolusvm/network_disable
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Disable network



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - order id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicesolusvm_network_disable($params);

    .. code-block:: html

        {{ admin.servicesolusvm_network_disable() }}

    .. code-block:: javascript

        bb.post("admin/servicesolusvm/network_disable", {})

admin/servicesolusvm/network_enable
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Enable network



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - order id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicesolusvm_network_enable($params);

    .. code-block:: html

        {{ admin.servicesolusvm_network_enable() }}

    .. code-block:: javascript

        bb.post("admin/servicesolusvm/network_enable", {})

admin/servicesolusvm/tun_disable
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Disable tun



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - order id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicesolusvm_tun_disable($params);

    .. code-block:: html

        {{ admin.servicesolusvm_tun_disable() }}

    .. code-block:: javascript

        bb.post("admin/servicesolusvm/tun_disable", {})

admin/servicesolusvm/tun_enable
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Enable tun



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - order id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicesolusvm_tun_enable($params);

    .. code-block:: html

        {{ admin.servicesolusvm_tun_enable() }}

    .. code-block:: javascript

        bb.post("admin/servicesolusvm/tun_enable", {})

admin/servicesolusvm/pae_enable
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Disable PAE



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - order id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicesolusvm_pae_enable($params);

    .. code-block:: html

        {{ admin.servicesolusvm_pae_enable() }}

    .. code-block:: javascript

        bb.post("admin/servicesolusvm/pae_enable", {})

admin/servicesolusvm/pae_disable
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Enable PAE



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - order id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicesolusvm_pae_disable($params);

    .. code-block:: html

        {{ admin.servicesolusvm_pae_disable() }}

    .. code-block:: javascript

        bb.post("admin/servicesolusvm/pae_disable", {})

admin/servicesolusvm/client_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

List clients on SolusVM server



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:skip: **bool**   - skip imported clients, default - false

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicesolusvm_client_list($params);

    .. code-block:: html

        {{ admin.servicesolusvm_client_list() }}

    .. code-block:: javascript

        bb.post("admin/servicesolusvm/client_list", {})

admin/servicesolusvm/node_virtualservers
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

List virtual server on SolusVM server



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:node_id: **bool**   - node id to list virtul servers
:skip: **bool**   - skip imported servers, default - false

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicesolusvm_node_virtualservers($params);

    .. code-block:: html

        {{ admin.servicesolusvm_node_virtualservers() }}

    .. code-block:: javascript

        bb.post("admin/servicesolusvm/node_virtualservers", {})

admin/servicesolusvm/import_servers
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Import selected servers to BoxBilling



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicesolusvm_import_servers($params);

    .. code-block:: html

        {{ admin.servicesolusvm_import_servers() }}

    .. code-block:: javascript

        bb.post("admin/servicesolusvm/import_servers", {})

admin/servicesolusvm/import_clients
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Import selected clients to BoxBilling



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicesolusvm_import_clients($params);

    .. code-block:: html

        {{ admin.servicesolusvm_import_clients() }}

    .. code-block:: javascript

        bb.post("admin/servicesolusvm/import_clients", {})

admin/servicesolusvm/test_connection
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Test connection to master server



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - order id

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:return: **string**   - if value = bool - does not return error but returns bool value

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicesolusvm_test_connection($params);

    .. code-block:: html

        {{ admin.servicesolusvm_test_connection() }}

    .. code-block:: javascript

        bb.post("admin/servicesolusvm/test_connection", {})

admin/servicesolusvm/update
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Update existing order service
This method used to change clients data if order setup fails

or you have changed data on solusVM server and you need to sync with
BoxBilling database

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->servicesolusvm_update($params);

    .. code-block:: html

        {{ admin.servicesolusvm_update() }}

    .. code-block:: javascript

        bb.post("admin/servicesolusvm/update", {})

Serviceyouhosting
------------------------------------------------------------------------------

Youhosting service management


admin/serviceyouhosting/sync
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Synchronize order with YouHosting account details



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - Order id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->serviceyouhosting_sync($params);

    .. code-block:: html

        {{ admin.serviceyouhosting_sync() }}

    .. code-block:: javascript

        bb.post("admin/serviceyouhosting/sync", {})

admin/serviceyouhosting/get_plans
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Return plans



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->serviceyouhosting_get_plans($params);

    .. code-block:: html

        {{ admin.serviceyouhosting_get_plans() }}

    .. code-block:: javascript

        bb.post("admin/serviceyouhosting/get_plans", {})

admin/serviceyouhosting/cpanel_url
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get login to cpanel url



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->serviceyouhosting_cpanel_url($params);

    .. code-block:: html

        {{ admin.serviceyouhosting_cpanel_url() }}

    .. code-block:: javascript

        bb.post("admin/serviceyouhosting/cpanel_url", {})

admin/serviceyouhosting/import_accounts
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Import YouHosting accounts as BoxBilling orders

Import clients before calling this action

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->serviceyouhosting_import_accounts($params);

    .. code-block:: html

        {{ admin.serviceyouhosting_import_accounts() }}

    .. code-block:: javascript

        bb.post("admin/serviceyouhosting/import_accounts", {})

admin/serviceyouhosting/import_clients
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Import clients from YouHosting to BoxBilling



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->serviceyouhosting_import_clients($params);

    .. code-block:: html

        {{ admin.serviceyouhosting_import_clients() }}

    .. code-block:: javascript

        bb.post("admin/serviceyouhosting/import_clients", {})

Staff
------------------------------------------------------------------------------

Staff management 


admin/staff/get_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get paginated list of staff members



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->staff_get_list($params);

    .. code-block:: html

        {{ admin.staff_get_list() }}

    .. code-block:: javascript

        bb.post("admin/staff/get_list", {})

admin/staff/get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get staff member by id



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - staff member ID

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->staff_get($params);

    .. code-block:: html

        {{ admin.staff_get() }}

    .. code-block:: javascript

        bb.post("admin/staff/get", {})

admin/staff/update
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Update staff member



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - staff member ID

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:email: **string**   - new email
:name: **string**   - new name
:status: **string**   - new status
:signature: **string**   - new signature
:admin_group_id: **int**   - new group id 

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->staff_update($params);

    .. code-block:: html

        {{ admin.staff_update() }}

    .. code-block:: javascript

        bb.post("admin/staff/update", {})

admin/staff/delete
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Completely delete staff member. Removes all related acitivity from logs



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - staff member ID

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->staff_delete($params);

    .. code-block:: html

        {{ admin.staff_delete() }}

    .. code-block:: javascript

        bb.post("admin/staff/delete", {})

admin/staff/change_password
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Change staff member password



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - staff member ID
:password: **string**   - new staff member password
:password_confirm: **string**   - repeat new staff member password 

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->staff_change_password($params);

    .. code-block:: html

        {{ admin.staff_change_password() }}

    .. code-block:: javascript

        bb.post("admin/staff/change_password", {})

admin/staff/create
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Create new staff member



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:email: **string**   - email of new staff member
:password: **string**   - password of new staff member
:name: **string**   - name of new staff member
:admin_group_id: **string**   - admin group id of new staff member

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:signature: **string**   - signature of new staff member

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->staff_create($params);

    .. code-block:: html

        {{ admin.staff_create() }}

    .. code-block:: javascript

        bb.post("admin/staff/create", {})

admin/staff/permissions_get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Return staff member permissions



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - staff member id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->staff_permissions_get($params);

    .. code-block:: html

        {{ admin.staff_permissions_get() }}

    .. code-block:: javascript

        bb.post("admin/staff/permissions_get", {})

admin/staff/permissions_update
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Update staff member permissions



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - staff member id
:permissions: **array**   - staff member permissions

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->staff_permissions_update($params);

    .. code-block:: html

        {{ admin.staff_permissions_update() }}

    .. code-block:: javascript

        bb.post("admin/staff/permissions_update", {})

admin/staff/group_get_pairs
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Return pairs of staff member groups



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->staff_group_get_pairs($params);

    .. code-block:: html

        {{ admin.staff_group_get_pairs() }}

    .. code-block:: javascript

        bb.post("admin/staff/group_get_pairs", {})

admin/staff/group_get_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Return paginate list of staff members groups



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->staff_group_get_list($params);

    .. code-block:: html

        {{ admin.staff_group_get_list() }}

    .. code-block:: javascript

        bb.post("admin/staff/group_get_list", {})

admin/staff/group_create
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Create new staff members group



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:name: **string**   - name of staff members group

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->staff_group_create($params);

    .. code-block:: html

        {{ admin.staff_group_create() }}

    .. code-block:: javascript

        bb.post("admin/staff/group_create", {})

admin/staff/group_get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Return staff group details



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - group id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->staff_group_get($params);

    .. code-block:: html

        {{ admin.staff_group_get() }}

    .. code-block:: javascript

        bb.post("admin/staff/group_get", {})

admin/staff/group_delete
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Remove staff group



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - group id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->staff_group_delete($params);

    .. code-block:: html

        {{ admin.staff_group_delete() }}

    .. code-block:: javascript

        bb.post("admin/staff/group_delete", {})

admin/staff/group_update
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Update staff group



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - group id

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:name: **int**   - new group name

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->staff_group_update($params);

    .. code-block:: html

        {{ admin.staff_group_update() }}

    .. code-block:: javascript

        bb.post("admin/staff/group_update", {})

admin/staff/login_history_get_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get paginated list of staff logins history



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->staff_login_history_get_list($params);

    .. code-block:: html

        {{ admin.staff_login_history_get_list() }}

    .. code-block:: javascript

        bb.post("admin/staff/login_history_get_list", {})

admin/staff/login_history_get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get details of login history event



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - event id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->staff_login_history_get($params);

    .. code-block:: html

        {{ admin.staff_login_history_get() }}

    .. code-block:: javascript

        bb.post("admin/staff/login_history_get", {})

admin/staff/login_history_delete
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Delete login history event



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - event id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->staff_login_history_delete($params);

    .. code-block:: html

        {{ admin.staff_login_history_delete() }}

    .. code-block:: javascript

        bb.post("admin/staff/login_history_delete", {})

Stats
------------------------------------------------------------------------------

Statistics retrieval


admin/stats/get_summary
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Return summary of your system



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->stats_get_summary($params);

    .. code-block:: html

        {{ admin.stats_get_summary() }}

    .. code-block:: javascript

        bb.post("admin/stats/get_summary", {})

admin/stats/get_summary_income
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Return income statistics



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->stats_get_summary_income($params);

    .. code-block:: html

        {{ admin.stats_get_summary_income() }}

    .. code-block:: javascript

        bb.post("admin/stats/get_summary_income", {})

admin/stats/get_orders_statuses
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get order statuses



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->stats_get_orders_statuses($params);

    .. code-block:: html

        {{ admin.stats_get_orders_statuses() }}

    .. code-block:: javascript

        bb.post("admin/stats/get_orders_statuses", {})

admin/stats/get_product_summary
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get active orders stats grouped by products



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->stats_get_product_summary($params);

    .. code-block:: html

        {{ admin.stats_get_product_summary() }}

    .. code-block:: javascript

        bb.post("admin/stats/get_product_summary", {})

admin/stats/get_product_sales
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get product sales



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->stats_get_product_sales($params);

    .. code-block:: html

        {{ admin.stats_get_product_sales() }}

    .. code-block:: javascript

        bb.post("admin/stats/get_product_sales", {})

admin/stats/get_income_vs_refunds
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get income and refunds statistics



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->stats_get_income_vs_refunds($params);

    .. code-block:: html

        {{ admin.stats_get_income_vs_refunds() }}

    .. code-block:: javascript

        bb.post("admin/stats/get_income_vs_refunds", {})

admin/stats/get_refunds
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Return refunds by day. If no timespan is selected method returns
previous month statistics.



Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:date_from: **string**   - day since refunds are counted
:date_to: **string**   - day until refunds are counted

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->stats_get_refunds($params);

    .. code-block:: html

        {{ admin.stats_get_refunds() }}

    .. code-block:: javascript

        bb.post("admin/stats/get_refunds", {})

admin/stats/get_income
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Return icome by day. If no timespan is selected method returns
previous month statistics.



Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:date_from: **string**   - day since income are counted
:date_to: **string**   - day until income are counted

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->stats_get_income($params);

    .. code-block:: html

        {{ admin.stats_get_income() }}

    .. code-block:: javascript

        bb.post("admin/stats/get_income", {})

admin/stats/get_orders
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Return statistics for orders



Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:date_from: **string**   - day since income are counted
:date_to: **string**   - day until income are counted

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->stats_get_orders($params);

    .. code-block:: html

        {{ admin.stats_get_orders() }}

    .. code-block:: javascript

        bb.post("admin/stats/get_orders", {})

admin/stats/get_clients
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Return clients signups by day. If no timespan is selected method returns
previous month statistics.



Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:date_from: **string**   - day since income are counted
:date_to: **string**   - day until income are counted

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->stats_get_clients($params);

    .. code-block:: html

        {{ admin.stats_get_clients() }}

    .. code-block:: javascript

        bb.post("admin/stats/get_clients", {})

admin/stats/client_countries
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get number of clients in country



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->stats_client_countries($params);

    .. code-block:: html

        {{ admin.stats_client_countries() }}

    .. code-block:: javascript

        bb.post("admin/stats/client_countries", {})

admin/stats/sales_countries
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get number of sales by country



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->stats_sales_countries($params);

    .. code-block:: html

        {{ admin.stats_sales_countries() }}

    .. code-block:: javascript

        bb.post("admin/stats/sales_countries", {})

admin/stats/get_invoices
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Return invoices by day. If no timespan is selected method returns
previous month statistics.



Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:date_from: **string**   - day since income are counted
:date_to: **string**   - day until income are counted

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->stats_get_invoices($params);

    .. code-block:: html

        {{ admin.stats_get_invoices() }}

    .. code-block:: javascript

        bb.post("admin/stats/get_invoices", {})

admin/stats/get_tickets
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Return support tickets by day. If no timespan is selected method returns
previous month statistics.



Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:date_from: **string**   - day since income are counted
:date_to: **string**   - day until income are counted

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->stats_get_tickets($params);

    .. code-block:: html

        {{ admin.stats_get_tickets() }}

    .. code-block:: javascript

        bb.post("admin/stats/get_tickets", {})

Support
------------------------------------------------------------------------------

Support management module 


admin/support/ticket_get_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get tickets list



Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:: **string**   status - filter tickets by status
:: **string**   date_from - show tickets created since this day. Can be any string parsable by strtotime()
:: **string**   date_to - show tickets created until this day. Can be any string parsable by strtotime()

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->support_ticket_get_list($params);

    .. code-block:: html

        {{ admin.support_ticket_get_list() }}

    .. code-block:: javascript

        bb.post("admin/support/ticket_get_list", {})

admin/support/ticket_get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Return ticket full details



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - ticket id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->support_ticket_get($params);

    .. code-block:: html

        {{ admin.support_ticket_get() }}

    .. code-block:: javascript

        bb.post("admin/support/ticket_get", {})

admin/support/ticket_update
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Update ticket details



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - ticket id

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:support_helpdesk_id: **int**   - ticket helpdesk id
:status: **string**   - ticket status
:subject: **string**   - ticket subject
:priority: **string**   - ticket priority

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->support_ticket_update($params);

    .. code-block:: html

        {{ admin.support_ticket_update() }}

    .. code-block:: javascript

        bb.post("admin/support/ticket_update", {})

admin/support/ticket_message_update
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Update ticket message



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - ticket id
:content: **string**   - new message content

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->support_ticket_message_update($params);

    .. code-block:: html

        {{ admin.support_ticket_message_update() }}

    .. code-block:: javascript

        bb.post("admin/support/ticket_message_update", {})

admin/support/ticket_delete
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Delete ticket.



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - ticket id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->support_ticket_delete($params);

    .. code-block:: html

        {{ admin.support_ticket_delete() }}

    .. code-block:: javascript

        bb.post("admin/support/ticket_delete", {})

admin/support/ticket_reply
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Add new conversation message to to ticket



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - ticket id
:content: **string**   - ticket message content

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->support_ticket_reply($params);

    .. code-block:: html

        {{ admin.support_ticket_reply() }}

    .. code-block:: javascript

        bb.post("admin/support/ticket_reply", {})

admin/support/ticket_close
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Close ticket



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - ticket id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->support_ticket_close($params);

    .. code-block:: html

        {{ admin.support_ticket_close() }}

    .. code-block:: javascript

        bb.post("admin/support/ticket_close", {})

admin/support/ticket_create
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Method to create open new ticket. Tickets can have tasks assigned to them
via optional parameters.



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:client_id: **int**   - ticket client id
:content: **string**   - ticket message content
:subject: **string**   - ticket subject
:support_helpdesk_id: **int**   - Ticket helpdesk id.

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:status: **string**   - Ticket status. Default - on hold

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->support_ticket_create($params);

    .. code-block:: html

        {{ admin.support_ticket_create() }}

    .. code-block:: javascript

        bb.post("admin/support/ticket_create", {})

admin/support/batch_ticket_auto_close
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Action to close all tickets which have not received any replies for a 
time defined in helpdesk


Run by cron job

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->support_batch_ticket_auto_close($params);

    .. code-block:: html

        {{ admin.support_batch_ticket_auto_close() }}

    .. code-block:: javascript

        bb.post("admin/support/batch_ticket_auto_close", {})

admin/support/batch_public_ticket_auto_close
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Action to close all inquiries which have not received any replies for a
time defined in helpdesk


Run by cron job

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->support_batch_public_ticket_auto_close($params);

    .. code-block:: html

        {{ admin.support_batch_public_ticket_auto_close() }}

    .. code-block:: javascript

        bb.post("admin/support/batch_public_ticket_auto_close", {})

admin/support/public_ticket_get_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get paginated list of inqueries



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->support_public_ticket_get_list($params);

    .. code-block:: html

        {{ admin.support_public_ticket_get_list() }}

    .. code-block:: javascript

        bb.post("admin/support/public_ticket_get_list", {})

admin/support/public_ticket_create
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Create new inquiry. Send email



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:name: **string**   - receivers name
:email: **string**   - receivers email
:subject: **string**   - email subject
:message: **string**   - email message

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->support_public_ticket_create($params);

    .. code-block:: html

        {{ admin.support_public_ticket_create() }}

    .. code-block:: javascript

        bb.post("admin/support/public_ticket_create", {})

admin/support/public_ticket_get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get inquiry details



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - inquiry id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->support_public_ticket_get($params);

    .. code-block:: html

        {{ admin.support_public_ticket_get() }}

    .. code-block:: javascript

        bb.post("admin/support/public_ticket_get", {})

admin/support/public_ticket_delete
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Delete inquiry



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - inquiry id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->support_public_ticket_delete($params);

    .. code-block:: html

        {{ admin.support_public_ticket_delete() }}

    .. code-block:: javascript

        bb.post("admin/support/public_ticket_delete", {})

admin/support/public_ticket_close
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Set iquery status to closed



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - inquiry id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->support_public_ticket_close($params);

    .. code-block:: html

        {{ admin.support_public_ticket_close() }}

    .. code-block:: javascript

        bb.post("admin/support/public_ticket_close", {})

admin/support/public_ticket_update
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Update inquiry details



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - inquiry id

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:subject: **string**   - subject
:status: **string**   - status

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->support_public_ticket_update($params);

    .. code-block:: html

        {{ admin.support_public_ticket_update() }}

    .. code-block:: javascript

        bb.post("admin/support/public_ticket_update", {})

admin/support/public_ticket_reply
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Post new reply to inquiry



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - inquiry id
:content: **string**   - text message

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->support_public_ticket_reply($params);

    .. code-block:: html

        {{ admin.support_public_ticket_reply() }}

    .. code-block:: javascript

        bb.post("admin/support/public_ticket_reply", {})

admin/support/public_ticket_get_statuses
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Return tickets statuses with counter



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->support_public_ticket_get_statuses($params);

    .. code-block:: html

        {{ admin.support_public_ticket_get_statuses() }}

    .. code-block:: javascript

        bb.post("admin/support/public_ticket_get_statuses", {})

admin/support/helpdesk_get_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get helpdesk list



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->support_helpdesk_get_list($params);

    .. code-block:: html

        {{ admin.support_helpdesk_get_list() }}

    .. code-block:: javascript

        bb.post("admin/support/helpdesk_get_list", {})

admin/support/helpdesk_get_pairs
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get pairs of helpdesks



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->support_helpdesk_get_pairs($params);

    .. code-block:: html

        {{ admin.support_helpdesk_get_pairs() }}

    .. code-block:: javascript

        bb.post("admin/support/helpdesk_get_pairs", {})

admin/support/helpdesk_get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get helpdesk details



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - helpdesk id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->support_helpdesk_get($params);

    .. code-block:: html

        {{ admin.support_helpdesk_get() }}

    .. code-block:: javascript

        bb.post("admin/support/helpdesk_get", {})

admin/support/helpdesk_update
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Update helpdesk parameters



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - helpdesk id

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:name: **string**   - helpdesk name
:email: **string**   - helpdesk email
:can_reopen: **string**   - flag to enable/disable ability to reopen closed tickets
:close_after: **int**   - time to wait for reply before auto closing ticket
:signature: **string**   - helpdesk signature

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->support_helpdesk_update($params);

    .. code-block:: html

        {{ admin.support_helpdesk_update() }}

    .. code-block:: javascript

        bb.post("admin/support/helpdesk_update", {})

admin/support/helpdesk_create
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Create new helpdesk



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:name: **string**   - new helpdesk title

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:email: **string**   - helpdesk email
:can_reopen: **string**   - flag to enable/disable ability to reopen closed tickets
:close_after: **int**   - time to wait for reply before auto closing ticket
:signature: **string**   - helpdesk signature

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->support_helpdesk_create($params);

    .. code-block:: html

        {{ admin.support_helpdesk_create() }}

    .. code-block:: javascript

        bb.post("admin/support/helpdesk_create", {})

admin/support/helpdesk_delete
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Delete helpdesk



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - helpdesk id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->support_helpdesk_delete($params);

    .. code-block:: html

        {{ admin.support_helpdesk_delete() }}

    .. code-block:: javascript

        bb.post("admin/support/helpdesk_delete", {})

admin/support/canned_get_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get list of canned responses



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->support_canned_get_list($params);

    .. code-block:: html

        {{ admin.support_canned_get_list() }}

    .. code-block:: javascript

        bb.post("admin/support/canned_get_list", {})

admin/support/canned_pairs
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get list of canned responses grouped by category



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->support_canned_pairs($params);

    .. code-block:: html

        {{ admin.support_canned_pairs() }}

    .. code-block:: javascript

        bb.post("admin/support/canned_pairs", {})

admin/support/canned_get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get canned response details



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - canned response id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->support_canned_get($params);

    .. code-block:: html

        {{ admin.support_canned_get() }}

    .. code-block:: javascript

        bb.post("admin/support/canned_get", {})

admin/support/canned_delete
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Delete canned response



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **id**   - canned response id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->support_canned_delete($params);

    .. code-block:: html

        {{ admin.support_canned_delete() }}

    .. code-block:: javascript

        bb.post("admin/support/canned_delete", {})

admin/support/canned_create
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Create new canned response



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:title: **string**   - canned response title
:category_id: **int**   - canned response category id

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:content: **string**   - canned response content

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->support_canned_create($params);

    .. code-block:: html

        {{ admin.support_canned_create() }}

    .. code-block:: javascript

        bb.post("admin/support/canned_create", {})

admin/support/canned_update
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Update canned response



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - canned response id

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:title: **string**   - canned response title
:category_id: **int**   - canned response category id
:content: **string**   - canned response content

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->support_canned_update($params);

    .. code-block:: html

        {{ admin.support_canned_update() }}

    .. code-block:: javascript

        bb.post("admin/support/canned_update", {})

admin/support/canned_category_pairs
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get canned response pairs



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->support_canned_category_pairs($params);

    .. code-block:: html

        {{ admin.support_canned_category_pairs() }}

    .. code-block:: javascript

        bb.post("admin/support/canned_category_pairs", {})

admin/support/canned_category_get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get canned response category



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - canned response category id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->support_canned_category_get($params);

    .. code-block:: html

        {{ admin.support_canned_category_get() }}

    .. code-block:: javascript

        bb.post("admin/support/canned_category_get", {})

admin/support/canned_category_update
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get canned response category



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - canned response category id

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:title: **string**   - new category title

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->support_canned_category_update($params);

    .. code-block:: html

        {{ admin.support_canned_category_update() }}

    .. code-block:: javascript

        bb.post("admin/support/canned_category_update", {})

admin/support/canned_category_delete
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Delete canned response category



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - canned response category id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->support_canned_category_delete($params);

    .. code-block:: html

        {{ admin.support_canned_category_delete() }}

    .. code-block:: javascript

        bb.post("admin/support/canned_category_delete", {})

admin/support/canned_category_create
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Create canned response category



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:title: **string**   - canned response category title

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->support_canned_category_create($params);

    .. code-block:: html

        {{ admin.support_canned_category_create() }}

    .. code-block:: javascript

        bb.post("admin/support/canned_category_create", {})

admin/support/note_create
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Add note to support ticket



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:ticket_id: **int**   - support ticket id to add note to
:note: **string**   - note

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->support_note_create($params);

    .. code-block:: html

        {{ admin.support_note_create() }}

    .. code-block:: javascript

        bb.post("admin/support/note_create", {})

admin/support/note_delete
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Delete note from support ticket



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - note id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->support_note_delete($params);

    .. code-block:: html

        {{ admin.support_note_delete() }}

    .. code-block:: javascript

        bb.post("admin/support/note_delete", {})

admin/support/task_complete
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Set support ticket related task to completed



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - support ticket id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->support_task_complete($params);

    .. code-block:: html

        {{ admin.support_task_complete() }}

    .. code-block:: javascript

        bb.post("admin/support/task_complete", {})

System
------------------------------------------------------------------------------

System management methods 


admin/system/license_info
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Returns licensing information



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->system_license_info($params);

    .. code-block:: html

        {{ admin.system_license_info() }}

    .. code-block:: javascript

        bb.post("admin/system/license_info", {})

admin/system/param
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Return system setting param



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:key: **string**   - parameter key name

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->system_param($params);

    .. code-block:: html

        {{ admin.system_param() }}

    .. code-block:: javascript

        bb.post("admin/system/param", {})

admin/system/get_params
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get all defined system params



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->system_get_params($params);

    .. code-block:: html

        {{ admin.system_get_params() }}

    .. code-block:: javascript

        bb.post("admin/system/get_params", {})

admin/system/update_params
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Updated parameters array with new values. Creates new setting if it was 
not defined earlier. You can create new parameters using this method.

This method accepts any number of parameters you pass.

Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:key: **string**   - name of the parameter to be changed/created

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->system_update_params($params);

    .. code-block:: html

        {{ admin.system_update_params() }}

    .. code-block:: javascript

        bb.post("admin/system/update_params", {})

admin/system/messages
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

System messages about working environment.



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:type: **string**   - messages type to be returned: info

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->system_messages($params);

    .. code-block:: html

        {{ admin.system_messages() }}

    .. code-block:: javascript

        bb.post("admin/system/messages", {})

admin/system/template_exists
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Check if passed file name template exists for admin area



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:file: **string**   - template file name, example: mod_index_dashboard.phtml

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->system_template_exists($params);

    .. code-block:: html

        {{ admin.system_template_exists() }}

    .. code-block:: javascript

        bb.post("admin/system/template_exists", {})

admin/system/string_render
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Parse string like BoxBilling template



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:_tpl: **string**   - Template text to be parsed

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:_try: **bool**   - if true, will not throw error if template is not valid, returns _tpl string
:_client_id: **int**   - if passed client id, then client API will also be available

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->system_string_render($params);

    .. code-block:: html

        {{ admin.system_string_render() }}

    .. code-block:: javascript

        bb.post("admin/system/string_render", {})

admin/system/env
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Returns system environment information.



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->system_env($params);

    .. code-block:: html

        {{ admin.system_env() }}

    .. code-block:: javascript

        bb.post("admin/system/env", {})

admin/system/is_allowed
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Method to check if staff member has permission to access module



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:mod: **string**   - module name

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:f: **string**   - module method name

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->system_is_allowed($params);

    .. code-block:: html

        {{ admin.system_is_allowed() }}

    .. code-block:: javascript

        bb.post("admin/system/is_allowed", {})

admin/system/clear_cache
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Clear system cache



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->system_clear_cache($params);

    .. code-block:: html

        {{ admin.system_clear_cache() }}

    .. code-block:: javascript

        bb.post("admin/system/clear_cache", {})

Theme
------------------------------------------------------------------------------

admin/theme/get_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get list of available client area themes



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->theme_get_list($params);

    .. code-block:: html

        {{ admin.theme_get_list() }}

    .. code-block:: javascript

        bb.post("admin/theme/get_list", {})

admin/theme/get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get theme by code



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:code: **string**   - theme code

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->theme_get($params);

    .. code-block:: html

        {{ admin.theme_get() }}

    .. code-block:: javascript

        bb.post("admin/theme/get", {})

admin/theme/select
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Set new theme as default



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:code: **string**   - theme code

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->theme_select($params);

    .. code-block:: html

        {{ admin.theme_select() }}

    .. code-block:: javascript

        bb.post("admin/theme/select", {})

admin/theme/preset_delete
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Delete theme preset



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:code: **string**   - theme code
:preset: **string**   - theme preset code

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->theme_preset_delete($params);

    .. code-block:: html

        {{ admin.theme_preset_delete() }}

    .. code-block:: javascript

        bb.post("admin/theme/preset_delete", {})

admin/theme/preset_select
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Select new theme preset



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:code: **string**   - theme code
:preset: **string**   - theme preset code

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_admin->theme_preset_select($params);

    .. code-block:: html

        {{ admin.theme_preset_select() }}

    .. code-block:: javascript

        bb.post("admin/theme/preset_select", {})


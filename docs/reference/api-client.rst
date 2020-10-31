Client API
==============================================================================

This document is the API specification for BoxBilling

Cart
------------------------------------------------------------------------------

Shopping cart management


client/cart/checkout
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Checkout cart which has products



Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:gateway_id: **int**   - payment gateway id. Which payment gateway will be used to make payment

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->cart_checkout($params);

    .. code-block:: html

        {{ client.cart_checkout() }}

    .. code-block:: javascript

        bb.post("client/cart/checkout", {})

Client
------------------------------------------------------------------------------

Client management 


client/client/balance_get_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get payments information



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->client_balance_get_list($params);

    .. code-block:: html

        {{ client.client_balance_get_list() }}

    .. code-block:: javascript

        bb.post("client/client/balance_get_list", {})

Email
------------------------------------------------------------------------------

Emails hostory listing and management 


client/email/get_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get list of emails system had sent to client



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->email_get_list($params);

    .. code-block:: html

        {{ client.email_get_list() }}

    .. code-block:: javascript

        bb.post("client/email/get_list", {})

client/email/get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get email details



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - Email id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->email_get($params);

    .. code-block:: html

        {{ client.email_get() }}

    .. code-block:: javascript

        bb.post("client/email/get", {})

client/email/resend
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Resend email to client once again



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - Email id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->email_resend($params);

    .. code-block:: html

        {{ client.email_resend() }}

    .. code-block:: javascript

        bb.post("client/email/resend", {})

client/email/delete
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Remove email from system.



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - Email id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->email_delete($params);

    .. code-block:: html

        {{ client.email_delete() }}

    .. code-block:: javascript

        bb.post("client/email/delete", {})

Example
------------------------------------------------------------------------------

All public methods in this class are exposed to client using API.
Always think what kind of information you are exposing. 


client/example/get_info
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

From client API you can call any other module API

This method will collect data from all APIs and merge
into one result.

Be careful not to expose sensitive data from Admin API.

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->example_get_info($params);

    .. code-block:: html

        {{ client.example_get_info() }}

    .. code-block:: javascript

        bb.post("client/example/get_info", {})

Forum
------------------------------------------------------------------------------

Forum management 


client/forum/get_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get paginated list of forums



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->forum_get_list($params);

    .. code-block:: html

        {{ client.forum_get_list() }}

    .. code-block:: javascript

        bb.post("client/forum/get_list", {})

client/forum/get_categories
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get forums list grouped by category name



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->forum_get_categories($params);

    .. code-block:: html

        {{ client.forum_get_categories() }}

    .. code-block:: javascript

        bb.post("client/forum/get_categories", {})

client/forum/get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get forum details



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - forum id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->forum_get($params);

    .. code-block:: html

        {{ client.forum_get() }}

    .. code-block:: javascript

        bb.post("client/forum/get", {})

client/forum/get_topic_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get paginated list of topics



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->forum_get_topic_list($params);

    .. code-block:: html

        {{ client.forum_get_topic_list() }}

    .. code-block:: javascript

        bb.post("client/forum/get_topic_list", {})

client/forum/get_topic
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get topic details



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - topic id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->forum_get_topic($params);

    .. code-block:: html

        {{ client.forum_get_topic() }}

    .. code-block:: javascript

        bb.post("client/forum/get_topic", {})

client/forum/start_topic
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Create new topic



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:forum_id: **int**   - forum id
:topic: **string**   - topic title
:message: **string**   - topic message

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:status: **string**   - initial topic status

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->forum_start_topic($params);

    .. code-block:: html

        {{ client.forum_start_topic() }}

    .. code-block:: javascript

        bb.post("client/forum/start_topic", {})

client/forum/get_topic_message_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get topic messages list



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:forum_topic_id: **int**   - topic id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->forum_get_topic_message_list($params);

    .. code-block:: html

        {{ client.forum_get_topic_message_list() }}

    .. code-block:: javascript

        bb.post("client/forum/get_topic_message_list", {})

client/forum/post_message
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

        $result = $api_client->forum_post_message($params);

    .. code-block:: html

        {{ client.forum_post_message() }}

    .. code-block:: javascript

        bb.post("client/forum/post_message", {})

client/forum/is_subscribed
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Check if current client is subscribed to forum notifications



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->forum_is_subscribed($params);

    .. code-block:: html

        {{ client.forum_is_subscribed() }}

    .. code-block:: javascript

        bb.post("client/forum/is_subscribed", {})

client/forum/unsubscribe
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Unsubscribe client from topic notifications



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->forum_unsubscribe($params);

    .. code-block:: html

        {{ client.forum_unsubscribe() }}

    .. code-block:: javascript

        bb.post("client/forum/unsubscribe", {})

client/forum/subscribe
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Subscribe client to forum topic notifications



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - forum topic id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->forum_subscribe($params);

    .. code-block:: html

        {{ client.forum_subscribe() }}

    .. code-block:: javascript

        bb.post("client/forum/subscribe", {})

client/forum/favorites
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get list of topics added to favorites



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->forum_favorites($params);

    .. code-block:: html

        {{ client.forum_favorites() }}

    .. code-block:: javascript

        bb.post("client/forum/favorites", {})

client/forum/is_favorite
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Check if topic is added to favorites



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - forum topic id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->forum_is_favorite($params);

    .. code-block:: html

        {{ client.forum_is_favorite() }}

    .. code-block:: javascript

        bb.post("client/forum/is_favorite", {})

client/forum/favorite_add
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Add topic to favorites



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - forum topic id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->forum_favorite_add($params);

    .. code-block:: html

        {{ client.forum_favorite_add() }}

    .. code-block:: javascript

        bb.post("client/forum/favorite_add", {})

client/forum/favorite_remove
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Remove topic from favorites



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - forum topic id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->forum_favorite_remove($params);

    .. code-block:: html

        {{ client.forum_favorite_remove() }}

    .. code-block:: javascript

        bb.post("client/forum/favorite_remove", {})

client/forum/profile
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Forum profile



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->forum_profile($params);

    .. code-block:: html

        {{ client.forum_profile() }}

    .. code-block:: javascript

        bb.post("client/forum/profile", {})

Invoice
------------------------------------------------------------------------------

Invoice management 


client/invoice/get_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get paginated list of invoices



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->invoice_get_list($params);

    .. code-block:: html

        {{ client.invoice_get_list() }}

    .. code-block:: javascript

        bb.post("client/invoice/get_list", {})

client/invoice/get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get invoice details



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:hash: **string**   - invoice hash

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->invoice_get($params);

    .. code-block:: html

        {{ client.invoice_get() }}

    .. code-block:: javascript

        bb.post("client/invoice/get", {})

client/invoice/update
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Update Invoice details. Only unpaid invoice details can be updated.



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:hash: **string**   - invoice hash

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:gateway_id: **int**   - selected payment gateway id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->invoice_update($params);

    .. code-block:: html

        {{ client.invoice_update() }}

    .. code-block:: javascript

        bb.post("client/invoice/update", {})

client/invoice/renewal_invoice
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Generates new invoice for selected order. If unpaid invoice for selected order
already exists, new invoice will not be generated, and old invoice hash

is returned

Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - ID of order to generate new invoice for

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->invoice_renewal_invoice($params);

    .. code-block:: html

        {{ client.invoice_renewal_invoice() }}

    .. code-block:: javascript

        bb.post("client/invoice/renewal_invoice", {})

client/invoice/funds_invoice
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Deposit money in advance. Generates new invoice for depositing money.
Clients currency must be defined.



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:amount: **float**   - amount to be deposited.

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->invoice_funds_invoice($params);

    .. code-block:: html

        {{ client.invoice_funds_invoice() }}

    .. code-block:: javascript

        bb.post("client/invoice/funds_invoice", {})

client/invoice/delete
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Client removes unpaid invoice.



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:hash: **string**   - invoice hash

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->invoice_delete($params);

    .. code-block:: html

        {{ client.invoice_delete() }}

    .. code-block:: javascript

        bb.post("client/invoice/delete", {})

client/invoice/transaction_get_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get paginated list of transactions.



Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:invoice_hash: **string**   - filter transactions by invoice hash
:gateway_id: **int**   - filter transactions by payment gateway id
:status: **string**   - filter transactions by status
:currency: **string**   - filter transactions by currency code
:date_from: **string**   - filter transactions by date
:date_to: **string**   - filter transactions by date

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->invoice_transaction_get_list($params);

    .. code-block:: html

        {{ client.invoice_transaction_get_list() }}

    .. code-block:: javascript

        bb.post("client/invoice/transaction_get_list", {})

Order
------------------------------------------------------------------------------

Client orders management


client/order/get_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get list of orders



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->order_get_list($params);

    .. code-block:: html

        {{ client.order_get_list() }}

    .. code-block:: javascript

        bb.post("client/order/get_list", {})

client/order/get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get order details



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - order id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->order_get($params);

    .. code-block:: html

        {{ client.order_get() }}

    .. code-block:: javascript

        bb.post("client/order/get", {})

client/order/addons
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get order addons



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - order id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->order_addons($params);

    .. code-block:: html

        {{ client.order_addons() }}

    .. code-block:: javascript

        bb.post("client/order/addons", {})

client/order/service
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get order service. Order must be activated before service can be retrieved.



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - order id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->order_service($params);

    .. code-block:: html

        {{ client.order_service() }}

    .. code-block:: javascript

        bb.post("client/order/service", {})

client/order/upgradables
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

List of product pairs offered as an upgrade



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - order id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->order_upgradables($params);

    .. code-block:: html

        {{ client.order_upgradables() }}

    .. code-block:: javascript

        bb.post("client/order/upgradables", {})

client/order/delete
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Can delete only pending setup and failed setup orders



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - order id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->order_delete($params);

    .. code-block:: html

        {{ client.order_delete() }}

    .. code-block:: javascript

        bb.post("client/order/delete", {})

Profile
------------------------------------------------------------------------------

Client profile management


client/profile/get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get currently logged in client details



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->profile_get($params);

    .. code-block:: html

        {{ client.profile_get() }}

    .. code-block:: javascript

        bb.post("client/profile/get", {})

client/profile/update
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Update currently logged in client details



Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:email: **string**   - new client email. Must not exist on system
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
:document_type: **string**   - Related document type, ie: passpord, driving license
:document_nr: **string**   - Related document number, ie: passport number: LC45698122
:notes: **string**   - Notes about client. Visible for admin only
:lang: **string**   - language option
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

        $result = $api_client->profile_update($params);

    .. code-block:: html

        {{ client.profile_update() }}

    .. code-block:: javascript

        bb.post("client/profile/update", {})

client/profile/api_key_get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Retrieve current API key



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->profile_api_key_get($params);

    .. code-block:: html

        {{ client.profile_api_key_get() }}

    .. code-block:: javascript

        bb.post("client/profile/api_key_get", {})

client/profile/api_key_reset
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Generate new API key



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->profile_api_key_reset($params);

    .. code-block:: html

        {{ client.profile_api_key_reset() }}

    .. code-block:: javascript

        bb.post("client/profile/api_key_reset", {})

client/profile/change_password
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Change client area password



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->profile_change_password($params);

    .. code-block:: html

        {{ client.profile_change_password() }}

    .. code-block:: javascript

        bb.post("client/profile/change_password", {})

client/profile/logout
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Clear session and logout



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->profile_logout($params);

    .. code-block:: html

        {{ client.profile_logout() }}

    .. code-block:: javascript

        bb.post("client/profile/logout", {})

Serviceboxbillinglicense
------------------------------------------------------------------------------

BoxBilling license management


client/serviceboxbillinglicense/reset
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

        $result = $api_client->serviceboxbillinglicense_reset($params);

    .. code-block:: html

        {{ client.serviceboxbillinglicense_reset() }}

    .. code-block:: javascript

        bb.post("client/serviceboxbillinglicense/reset", {})

Servicecentovacast
------------------------------------------------------------------------------

CentovaCast management


client/servicecentovacast/control_panel_url
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Return control panel url for order



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - order id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->servicecentovacast_control_panel_url($params);

    .. code-block:: html

        {{ client.servicecentovacast_control_panel_url() }}

    .. code-block:: javascript

        bb.post("client/servicecentovacast/control_panel_url", {})

client/servicecentovacast/start
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Starts a streaming server for a CentovaCast client account. 
If server-side streaming source support is enabled,

the streaming source is started as well.

Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - order id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->servicecentovacast_start($params);

    .. code-block:: html

        {{ client.servicecentovacast_start() }}

    .. code-block:: javascript

        bb.post("client/servicecentovacast/start", {})

client/servicecentovacast/stop
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Stops a streaming server for a CentovaCast client account. 
If server-side streaming source support is enabled,

the streaming source is stopped as well.

Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - order id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->servicecentovacast_stop($params);

    .. code-block:: html

        {{ client.servicecentovacast_stop() }}

    .. code-block:: javascript

        bb.post("client/servicecentovacast/stop", {})

client/servicecentovacast/restart
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Stops, then re-starts a streaming server for a CentovaCast client account.
If server-side streaming source support is enabled, the streaming

source is restarted as well.

Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - order id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->servicecentovacast_restart($params);

    .. code-block:: html

        {{ client.servicecentovacast_restart() }}

    .. code-block:: javascript

        bb.post("client/servicecentovacast/restart", {})

client/servicecentovacast/reload
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Reloads the streaming server configuration for a CentovaCast client account. 
If server-side streaming source support is enabled,

the configuration and playlist for the streaming source 
is reloaded as well.

Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - order id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->servicecentovacast_reload($params);

    .. code-block:: html

        {{ client.servicecentovacast_reload() }}

    .. code-block:: javascript

        bb.post("client/servicecentovacast/reload", {})

client/servicecentovacast/getaccount
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

        $result = $api_client->servicecentovacast_getaccount($params);

    .. code-block:: html

        {{ client.servicecentovacast_getaccount() }}

    .. code-block:: javascript

        bb.post("client/servicecentovacast/getaccount", {})

client/servicecentovacast/getstatus
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Retrieves status information from the streaming server for a 
CentovaCast client account.



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

        $result = $api_client->servicecentovacast_getstatus($params);

    .. code-block:: html

        {{ client.servicecentovacast_getstatus() }}

    .. code-block:: javascript

        bb.post("client/servicecentovacast/getstatus", {})

client/servicecentovacast/getsongs
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Retrieves a list of tracks that were recently broadcasted on a 
given CentovaCast client's streaming server.



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

        $result = $api_client->servicecentovacast_getsongs($params);

    .. code-block:: html

        {{ client.servicecentovacast_getsongs() }}

    .. code-block:: javascript

        bb.post("client/servicecentovacast/getsongs", {})

Servicecustom
------------------------------------------------------------------------------

Custom product management


client/servicecustom/__call
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

        $result = $api_client->servicecustom___call($params);

    .. code-block:: html

        {{ client.servicecustom___call() }}

    .. code-block:: javascript

        bb.post("client/servicecustom/__call", {})

Servicedomain
------------------------------------------------------------------------------

Domain service management


client/servicedomain/update_nameservers
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Change domain nameservers. Method sends action to registrar.



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

        $result = $api_client->servicedomain_update_nameservers($params);

    .. code-block:: html

        {{ client.servicedomain_update_nameservers() }}

    .. code-block:: javascript

        bb.post("client/servicedomain/update_nameservers", {})

client/servicedomain/update_contacts
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Change domain WHOIS contact details. Method sends action to registrar.



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - domain order id
:contact: **array**   - Contact array must contain these fields: first_name, last_name, email, company, address1, address2, country, city, state, postcode, phone_cc, phone

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->servicedomain_update_contacts($params);

    .. code-block:: html

        {{ client.servicedomain_update_contacts() }}

    .. code-block:: javascript

        bb.post("client/servicedomain/update_contacts", {})

client/servicedomain/enable_privacy_protection
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Enable domain privacy protection.



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - domain order id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->servicedomain_enable_privacy_protection($params);

    .. code-block:: html

        {{ client.servicedomain_enable_privacy_protection() }}

    .. code-block:: javascript

        bb.post("client/servicedomain/enable_privacy_protection", {})

client/servicedomain/disable_privacy_protection
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Disable domain privacy protection.



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - domain order id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->servicedomain_disable_privacy_protection($params);

    .. code-block:: html

        {{ client.servicedomain_disable_privacy_protection() }}

    .. code-block:: javascript

        bb.post("client/servicedomain/disable_privacy_protection", {})

client/servicedomain/get_transfer_code
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Retireve domain transfer code



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - domain order id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->servicedomain_get_transfer_code($params);

    .. code-block:: html

        {{ client.servicedomain_get_transfer_code() }}

    .. code-block:: javascript

        bb.post("client/servicedomain/get_transfer_code", {})

client/servicedomain/lock
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Lock domain



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - domain order id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->servicedomain_lock($params);

    .. code-block:: html

        {{ client.servicedomain_lock() }}

    .. code-block:: javascript

        bb.post("client/servicedomain/lock", {})

client/servicedomain/unlock
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Unlock domain



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - domain order id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->servicedomain_unlock($params);

    .. code-block:: html

        {{ client.servicedomain_unlock() }}

    .. code-block:: javascript

        bb.post("client/servicedomain/unlock", {})

Servicedownloadable
------------------------------------------------------------------------------

Downloadable service management


client/servicedownloadable/send_file
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Use GET to call this method. Sends file attached to order.
Sends file as attachment.



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - downloadable service order id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->servicedownloadable_send_file($params);

    .. code-block:: html

        {{ client.servicedownloadable_send_file() }}

    .. code-block:: javascript

        bb.post("client/servicedownloadable/send_file", {})

Servicehosting
------------------------------------------------------------------------------

Hosting service management 


client/servicehosting/change_username
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

        $result = $api_client->servicehosting_change_username($params);

    .. code-block:: html

        {{ client.servicehosting_change_username() }}

    .. code-block:: javascript

        bb.post("client/servicehosting/change_username", {})

client/servicehosting/change_domain
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Change hosting account domain



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - Hosting account order id
:password: **string**   - New second level domain name, ie: mydomain
:password_confirm: **string**   - New top level domain, ie: .com

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->servicehosting_change_domain($params);

    .. code-block:: html

        {{ client.servicehosting_change_domain() }}

    .. code-block:: javascript

        bb.post("client/servicehosting/change_domain", {})

client/servicehosting/change_password
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Change hosting account password



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - Hosting account order id
:password: **string**   - New account password
:password_confirm: **string**   - Repeat new password

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->servicehosting_change_password($params);

    .. code-block:: html

        {{ client.servicehosting_change_password() }}

    .. code-block:: javascript

        bb.post("client/servicehosting/change_password", {})

client/servicehosting/hp_get_pairs
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get hosting plans pairs. Usually for select box



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->servicehosting_hp_get_pairs($params);

    .. code-block:: html

        {{ client.servicehosting_hp_get_pairs() }}

    .. code-block:: javascript

        bb.post("client/servicehosting/hp_get_pairs", {})

Servicelicense
------------------------------------------------------------------------------

License Service management


client/servicelicense/reset
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Reset license validation rules.



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - License service order id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->servicelicense_reset($params);

    .. code-block:: html

        {{ client.servicelicense_reset() }}

    .. code-block:: javascript

        bb.post("client/servicelicense/reset", {})

Servicesolusvm
------------------------------------------------------------------------------

Solusvm service management


client/servicesolusvm/reboot
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Reboot VPS



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - order id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->servicesolusvm_reboot($params);

    .. code-block:: html

        {{ client.servicesolusvm_reboot() }}

    .. code-block:: javascript

        bb.post("client/servicesolusvm/reboot", {})

client/servicesolusvm/boot
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Boot VPS



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - order id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->servicesolusvm_boot($params);

    .. code-block:: html

        {{ client.servicesolusvm_boot() }}

    .. code-block:: javascript

        bb.post("client/servicesolusvm/boot", {})

client/servicesolusvm/shutdown
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Shutdown VPS



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - order id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->servicesolusvm_shutdown($params);

    .. code-block:: html

        {{ client.servicesolusvm_shutdown() }}

    .. code-block:: javascript

        bb.post("client/servicesolusvm/shutdown", {})

client/servicesolusvm/status
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get status VPS



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - order id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->servicesolusvm_status($params);

    .. code-block:: html

        {{ client.servicesolusvm_status() }}

    .. code-block:: javascript

        bb.post("client/servicesolusvm/status", {})

client/servicesolusvm/info
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Retrieve more information about vps from sulusvm server



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - order id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->servicesolusvm_info($params);

    .. code-block:: html

        {{ client.servicesolusvm_info() }}

    .. code-block:: javascript

        bb.post("client/servicesolusvm/info", {})

client/servicesolusvm/set_root_password
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

        $result = $api_client->servicesolusvm_set_root_password($params);

    .. code-block:: html

        {{ client.servicesolusvm_set_root_password() }}

    .. code-block:: javascript

        bb.post("client/servicesolusvm/set_root_password", {})

client/servicesolusvm/set_hostname
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Change hostname for VPS



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - order id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->servicesolusvm_set_hostname($params);

    .. code-block:: html

        {{ client.servicesolusvm_set_hostname() }}

    .. code-block:: javascript

        bb.post("client/servicesolusvm/set_hostname", {})

client/servicesolusvm/change_password
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Change client area password for solusvm user



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - order id
:password: **string**   - new password

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->servicesolusvm_change_password($params);

    .. code-block:: html

        {{ client.servicesolusvm_change_password() }}

    .. code-block:: javascript

        bb.post("client/servicesolusvm/change_password", {})

client/servicesolusvm/rebuild
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Rebuild vps operating system with new template



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:order_id: **int**   - order id
:template: **string**   - template idetification

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->servicesolusvm_rebuild($params);

    .. code-block:: html

        {{ client.servicesolusvm_rebuild() }}

    .. code-block:: javascript

        bb.post("client/servicesolusvm/rebuild", {})

Serviceyouhosting
------------------------------------------------------------------------------

Youhosting service management


client/serviceyouhosting/info
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get order info



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->serviceyouhosting_info($params);

    .. code-block:: html

        {{ client.serviceyouhosting_info() }}

    .. code-block:: javascript

        bb.post("client/serviceyouhosting/info", {})

client/serviceyouhosting/captcha
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get captcha information



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->serviceyouhosting_captcha($params);

    .. code-block:: html

        {{ client.serviceyouhosting_captcha() }}

    .. code-block:: javascript

        bb.post("client/serviceyouhosting/captcha", {})

client/serviceyouhosting/activate
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Activate order



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:captcha_id: **int**   - captcha id
:order_id: **int**   - order id
:captcha_solution: **string**   - captcha solution

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->serviceyouhosting_activate($params);

    .. code-block:: html

        {{ client.serviceyouhosting_activate() }}

    .. code-block:: javascript

        bb.post("client/serviceyouhosting/activate", {})

Support
------------------------------------------------------------------------------

Client support tickets management


client/support/ticket_get_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get client tickets list



Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:: **string**   status - filter tickets by status
:: **string**   date_from - show tickets created since this day. Can be any string parsable by strtotime()
:: **string**   date_to - show tickets created until this day. Can be any string parsable by strtotime()

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->support_ticket_get_list($params);

    .. code-block:: html

        {{ client.support_ticket_get_list() }}

    .. code-block:: javascript

        bb.post("client/support/ticket_get_list", {})

client/support/ticket_get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Return ticket full details



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - ticket id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->support_ticket_get($params);

    .. code-block:: html

        {{ client.support_ticket_get() }}

    .. code-block:: javascript

        bb.post("client/support/ticket_get", {})

client/support/helpdesk_get_pairs
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Return pairs for support helpdesk. Can be used to populate select box.



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->support_helpdesk_get_pairs($params);

    .. code-block:: html

        {{ client.support_helpdesk_get_pairs() }}

    .. code-block:: javascript

        bb.post("client/support/helpdesk_get_pairs", {})

client/support/ticket_create
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Method to create open new ticket. Tickets can have tasks assigned to them
via optional parameters.



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:content: **string**   - ticket message content
:subject: **string**   - ticket subject
:support_helpdesk_id: **string**   - Ticket helpdesk id.

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:rel_type: **int**   - Ticket relation type
:rel_id: **int**   - Ticket relation id 
:rel_task: **int**   - Ticket task codename
:rel_new_value: **int**   - Task can have new value assigned.

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->support_ticket_create($params);

    .. code-block:: html

        {{ client.support_ticket_create() }}

    .. code-block:: javascript

        bb.post("client/support/ticket_create", {})

client/support/ticket_reply
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Add new conversation message to ticket. Ticket will be reopened if closed



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - ticket id
:content: **string**   - ticket message

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->support_ticket_reply($params);

    .. code-block:: html

        {{ client.support_ticket_reply() }}

    .. code-block:: javascript

        bb.post("client/support/ticket_reply", {})

client/support/ticket_close
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Close ticket



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - ticket id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_client->support_ticket_close($params);

    .. code-block:: html

        {{ client.support_ticket_close() }}

    .. code-block:: javascript

        bb.post("client/support/ticket_close", {})


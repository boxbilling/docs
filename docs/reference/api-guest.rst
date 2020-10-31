Guest API
==============================================================================

This document is the API specification for BoxBilling

Cart
------------------------------------------------------------------------------

Shopping cart management


guest/cart/get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get shopping cart contents



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->cart_get($params);

    .. code-block:: html

        {{ guest.cart_get() }}

    .. code-block:: javascript

        bb.post("guest/cart/get", {})

guest/cart/reset
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Completely remove shopping cart contents



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->cart_reset($params);

    .. code-block:: html

        {{ guest.cart_reset() }}

    .. code-block:: javascript

        bb.post("guest/cart/reset", {})

guest/cart/set_currency
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Set shopping cart currency



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:currency: **string**   - New currency code to applied to shopping cart

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->cart_set_currency($params);

    .. code-block:: html

        {{ guest.cart_set_currency() }}

    .. code-block:: javascript

        bb.post("guest/cart/set_currency", {})

guest/cart/get_currency
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Retrieve information about currently selected shopping cart currency



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->cart_get_currency($params);

    .. code-block:: html

        {{ guest.cart_get_currency() }}

    .. code-block:: javascript

        bb.post("guest/cart/get_currency", {})

guest/cart/apply_promo
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Apply Promo code to shopping cart



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:promocode: **string**   - Promo code string

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->cart_apply_promo($params);

    .. code-block:: html

        {{ guest.cart_apply_promo() }}

    .. code-block:: javascript

        bb.post("guest/cart/apply_promo", {})

guest/cart/remove_promo
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Removes promo from shopping cart and resets discounted prices if any



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->cart_remove_promo($params);

    .. code-block:: html

        {{ guest.cart_remove_promo() }}

    .. code-block:: javascript

        bb.post("guest/cart/remove_promo", {})

guest/cart/remove_item
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Removes product from shopping cart



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - Shopping cart item id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->cart_remove_item($params);

    .. code-block:: html

        {{ guest.cart_remove_item() }}

    .. code-block:: javascript

        bb.post("guest/cart/remove_item", {})

guest/cart/add_item
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Adds product to shopping cart



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - Product ID

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:multiple: **bool**   - Default false. Allow multiple items in cart
:period: **string**   - Billing period 
:quantity: **int**   - Products quantity
:config: **array**   - Product configuration options
:addons: **array**   - List of addons ids

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->cart_add_item($params);

    .. code-block:: html

        {{ guest.cart_add_item() }}

    .. code-block:: javascript

        bb.post("guest/cart/add_item", {})

Client
------------------------------------------------------------------------------

Clients API methods


guest/client/create
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Client signup action.



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:email: **string**   - Email
:first_name: **string**   - First name
:password: **string**   - password
:password_confirm: **string**   - must be same as password

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:auto_login: **bool**   - Auto login client after signup
:last_name: **string**   - last name
:aid: **string**   - Alternative id. Usually used by import tools.
:gender: **string**   - Gender - values: male|female
:country: **string**   - Country
:city: **string**   - city
:birthday: **string**   - Birthday
:type: **string**   - Identifies client type: company or individual
:company: **string**   - Company
:company_vat: **string**   - Company VAT number
:company_number: **string**   - Company number
:address_1: **string**   - Address line 1
:address_2: **string**   - Address line 2
:postcode: **string**   - zip or postcode
:state: **string**   - country state
:phone: **string**   - Phone number
:phone_cc: **string**   - Phone country code
:document_type: **string**   - Related document type, ie: passport, driving license
:document_nr: **string**   - Related document number, ie: passport number: LC45698122
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

        $result = $api_guest->client_create($params);

    .. code-block:: html

        {{ guest.client_create() }}

    .. code-block:: javascript

        bb.post("guest/client/create", {})

guest/client/login
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Client login action



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:email: **string**   - client email
:password: **string**   - client password

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->client_login($params);

    .. code-block:: html

        {{ guest.client_login() }}

    .. code-block:: javascript

        bb.post("guest/client/login", {})

guest/client/reset_password
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Password reset confirmation email will be sent to email.



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:email: **string**   - client email

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->client_reset_password($params);

    .. code-block:: html

        {{ guest.client_reset_password() }}

    .. code-block:: javascript

        bb.post("guest/client/reset_password", {})

guest/client/confirm_reset
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Confirm password reset action



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:hash: **string**   - hash received in email

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->client_confirm_reset($params);

    .. code-block:: html

        {{ guest.client_confirm_reset() }}

    .. code-block:: javascript

        bb.post("guest/client/confirm_reset", {})

guest/client/is_vat
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Check if given vat number is valid EU country VAT number
This method uses http://isvat.appspot.com/ method to validate VAT



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:country: **string**   - Country CODE: FR - France etc.
:vat: **string**   - VAT number

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->client_is_vat($params);

    .. code-block:: html

        {{ guest.client_is_vat() }}

    .. code-block:: javascript

        bb.post("guest/client/is_vat", {})

guest/client/required
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

List of required fields for client registration



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->client_required($params);

    .. code-block:: html

        {{ guest.client_required() }}

    .. code-block:: javascript

        bb.post("guest/client/required", {})

Cron
------------------------------------------------------------------------------

Cron checker


guest/cron/check
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Run cron if is late and web based cron is enabled



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->cron_check($params);

    .. code-block:: html

        {{ guest.cron_check() }}

    .. code-block:: javascript

        bb.post("guest/cron/check", {})

guest/cron/settings
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get cron settings



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->cron_settings($params);

    .. code-block:: html

        {{ guest.cron_settings() }}

    .. code-block:: javascript

        bb.post("guest/cron/settings", {})

guest/cron/is_late
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Tells if cron is late



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->cron_is_late($params);

    .. code-block:: html

        {{ guest.cron_is_late() }}

    .. code-block:: javascript

        bb.post("guest/cron/is_late", {})

Currency
------------------------------------------------------------------------------

Currency management 


guest/currency/get_pairs
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get list of available currencies



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->currency_get_pairs($params);

    .. code-block:: html

        {{ guest.currency_get_pairs() }}

    .. code-block:: javascript

        bb.post("guest/currency/get_pairs", {})

guest/currency/get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get currency by code



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:code: **string**   - currency code, ie: USD

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->currency_get($params);

    .. code-block:: html

        {{ guest.currency_get() }}

    .. code-block:: javascript

        bb.post("guest/currency/get", {})

guest/currency/format
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Format price by currency settings



Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:convert: **bool**   - covert to default currency rate. Default - true; 
:without_currency: **bool**   - Show only number. No symbols are attached Default - false;
:price: **float**   - Price to be formated. Default 0
:code: **string**   - currency code, ie: USD. Default - default currency

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->currency_format($params);

    .. code-block:: html

        {{ guest.currency_format() }}

    .. code-block:: javascript

        bb.post("guest/currency/format", {})

Example
------------------------------------------------------------------------------

All public methods in this class are exposed to public. Always think
what kind of information you are exposing. Emails, passwords and other 
information should NOT be returned by functions in this class

This module can be called from API or in template



guest/example/readme
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get readme.md file contents



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->example_readme($params);

    .. code-block:: html

        {{ guest.example_readme() }}

    .. code-block:: javascript

        bb.post("guest/example/readme", {})

guest/example/top_songs
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get Top Songs from iTunes Store



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:limit: **int**   - define songs limit

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->example_top_songs($params);

    .. code-block:: html

        {{ guest.example_top_songs() }}

    .. code-block:: javascript

        bb.post("guest/example/top_songs", {})

Extension
------------------------------------------------------------------------------

Extensions


guest/extension/is_on
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Checks if extensions is available



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:mod: **string**   - module name to be checked

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->extension_is_on($params);

    .. code-block:: html

        {{ guest.extension_is_on() }}

    .. code-block:: javascript

        bb.post("guest/extension/is_on", {})

guest/extension/theme
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Return active theme info



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->extension_theme($params);

    .. code-block:: html

        {{ guest.extension_theme() }}

    .. code-block:: javascript

        bb.post("guest/extension/theme", {})

guest/extension/languages
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Retrieve list of available languages



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->extension_languages($params);

    .. code-block:: html

        {{ guest.extension_languages() }}

    .. code-block:: javascript

        bb.post("guest/extension/languages", {})

Formbuilder
------------------------------------------------------------------------------

Custom forms


guest/formbuilder/get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get custom order form details for product



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:product_id: **int**   - Product id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->formbuilder_get($params);

    .. code-block:: html

        {{ guest.formbuilder_get() }}

    .. code-block:: javascript

        bb.post("guest/formbuilder/get", {})

Forum
------------------------------------------------------------------------------

Forum management 


guest/forum/get_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get paginated list of forums



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->forum_get_list($params);

    .. code-block:: html

        {{ guest.forum_get_list() }}

    .. code-block:: javascript

        bb.post("guest/forum/get_list", {})

guest/forum/get_categories
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get forums list grouped by category name



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->forum_get_categories($params);

    .. code-block:: html

        {{ guest.forum_get_categories() }}

    .. code-block:: javascript

        bb.post("guest/forum/get_categories", {})

guest/forum/get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get forum details



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - forum id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->forum_get($params);

    .. code-block:: html

        {{ guest.forum_get() }}

    .. code-block:: javascript

        bb.post("guest/forum/get", {})

guest/forum/get_topic_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get paginated list of topics



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->forum_get_topic_list($params);

    .. code-block:: html

        {{ guest.forum_get_topic_list() }}

    .. code-block:: javascript

        bb.post("guest/forum/get_topic_list", {})

guest/forum/get_topic
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get topic details



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - topic id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->forum_get_topic($params);

    .. code-block:: html

        {{ guest.forum_get_topic() }}

    .. code-block:: javascript

        bb.post("guest/forum/get_topic", {})

guest/forum/get_topic_message_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get topic messages list



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:forum_topic_id: **int**   - topic id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->forum_get_topic_message_list($params);

    .. code-block:: html

        {{ guest.forum_get_topic_message_list() }}

    .. code-block:: javascript

        bb.post("guest/forum/get_topic_message_list", {})

guest/forum/search
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Search topic messages



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:q: **string**   - query string

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->forum_search($params);

    .. code-block:: html

        {{ guest.forum_search() }}

    .. code-block:: javascript

        bb.post("guest/forum/search", {})

Invoice
------------------------------------------------------------------------------

Invoice processing 


guest/invoice/get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get invoice details



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:hash: **string**   - invoice hash

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->invoice_get($params);

    .. code-block:: html

        {{ guest.invoice_get() }}

    .. code-block:: javascript

        bb.post("guest/invoice/get", {})

guest/invoice/update
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

        $result = $api_guest->invoice_update($params);

    .. code-block:: html

        {{ guest.invoice_update() }}

    .. code-block:: javascript

        bb.post("guest/invoice/update", {})

guest/invoice/gateways
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get list of available payment gateways to pay for invoices



Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:format: **string**   - if format is "pairs" then id=>name values are returned

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->invoice_gateways($params);

    .. code-block:: html

        {{ guest.invoice_gateways() }}

    .. code-block:: javascript

        bb.post("guest/invoice/gateways", {})

guest/invoice/payment
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Process invoice for selected gateway. Returned result can be processed 
to redirect or to show required information. Returned result depends

on payment gateway.

Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:hash: **string**   - invoice hash
:gateway_id: **int**   - payment gateway id

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:subscription: **bool**   - is payment subscription
:auto_redirect: **bool**   - should payment adapter automatically redirect client or just print pay now button

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->invoice_payment($params);

    .. code-block:: html

        {{ guest.invoice_payment() }}

    .. code-block:: javascript

        bb.post("guest/invoice/payment", {})

Kb
------------------------------------------------------------------------------

Knowledge base API


guest/kb/article_get_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get paginated list of knowledge base articles.
Returns only active articles.



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->kb_article_get_list($params);

    .. code-block:: html

        {{ guest.kb_article_get_list() }}

    .. code-block:: javascript

        bb.post("guest/kb/article_get_list", {})

guest/kb/article_get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get active knowledge base article



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - knowledge base article ID. Required only if SLUG is not passed.
:slug: **string**   - knowledge base article slug. Required only if ID is not passed.

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->kb_article_get($params);

    .. code-block:: html

        {{ guest.kb_article_get() }}

    .. code-block:: javascript

        bb.post("guest/kb/article_get", {})

guest/kb/category_get_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get paginated list of knowledge base categories



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->kb_category_get_list($params);

    .. code-block:: html

        {{ guest.kb_category_get_list() }}

    .. code-block:: javascript

        bb.post("guest/kb/category_get_list", {})

guest/kb/category_get_pairs
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get knowledge base categories id, title pairs



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->kb_category_get_pairs($params);

    .. code-block:: html

        {{ guest.kb_category_get_pairs() }}

    .. code-block:: javascript

        bb.post("guest/kb/category_get_pairs", {})

guest/kb/category_get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get knowledge base category by ID or SLUG



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - knowledge base category ID. Required only if SLUG is not passed.
:slug: **string**   - knowledge base category slug. Required only if ID is not passed.

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->kb_category_get($params);

    .. code-block:: html

        {{ guest.kb_category_get() }}

    .. code-block:: javascript

        bb.post("guest/kb/category_get", {})

News
------------------------------------------------------------------------------

News and announcements management


guest/news/get_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get paginated list of active news items



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->news_get_list($params);

    .. code-block:: html

        {{ guest.news_get_list() }}

    .. code-block:: javascript

        bb.post("guest/news/get_list", {})

guest/news/get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get news item by ID or SLUG



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - news item ID. Required only if SLUG is not passed.
:slug: **string**   - news item slug. Required only if ID is not passed.

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->news_get($params);

    .. code-block:: html

        {{ guest.news_get() }}

    .. code-block:: javascript

        bb.post("guest/news/get", {})

Product
------------------------------------------------------------------------------

Products management api 


guest/product/get_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get paginated list of products



Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:show_hidden: **bool**   - also get hidden products. Default false

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->product_get_list($params);

    .. code-block:: html

        {{ guest.product_get_list() }}

    .. code-block:: javascript

        bb.post("guest/product/get_list", {})

guest/product/get_pairs
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get products pairs. Product id -> title values



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->product_get_pairs($params);

    .. code-block:: html

        {{ guest.product_get_pairs() }}

    .. code-block:: javascript

        bb.post("guest/product/get_pairs", {})

guest/product/get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get product by ID



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:id: **int**   - product id

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->product_get($params);

    .. code-block:: html

        {{ guest.product_get() }}

    .. code-block:: javascript

        bb.post("guest/product/get", {})

guest/product/category_get_list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get paginated list of product categories



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->product_category_get_list($params);

    .. code-block:: html

        {{ guest.product_category_get_list() }}

    .. code-block:: javascript

        bb.post("guest/product/category_get_list", {})

guest/product/category_get_pairs
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get pairs of product categories



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->product_category_get_pairs($params);

    .. code-block:: html

        {{ guest.product_category_get_pairs() }}

    .. code-block:: javascript

        bb.post("guest/product/category_get_pairs", {})

guest/product/get_slider
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Return slider data for product types.
Products are grouped by type. You can pass parameter to select product type for slider

Product configuration must have slider_%s keys

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:type: **string**   - product type for slider - default = hosting
:format: **string**   - return format. Default is array . You can choose json format, to directly inject to javascript

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->product_get_slider($params);

    .. code-block:: html

        {{ guest.product_get_slider() }}

    .. code-block:: javascript

        bb.post("guest/product/get_slider", {})

Servicedomain
------------------------------------------------------------------------------

Domain service management


guest/servicedomain/tlds
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get configured TLDs which can be ordered. Shows only enabled TLDs



Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:allow_register: **bool**   - shows only these TLDs which can be registered
:allow_transfer: **bool**   - shows only these TLDs which can be transferred

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->servicedomain_tlds($params);

    .. code-block:: html

        {{ guest.servicedomain_tlds() }}

    .. code-block:: javascript

        bb.post("guest/servicedomain/tlds", {})

guest/servicedomain/pricing
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get TLD pricing information



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:tld: **string**   - Top level domain, ie: .com

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->servicedomain_pricing($params);

    .. code-block:: html

        {{ guest.servicedomain_pricing() }}

    .. code-block:: javascript

        bb.post("guest/servicedomain/pricing", {})

guest/servicedomain/check
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Check if domain is available for registration. Domain registrar must be
configured in order to get correct results.



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:sld: **string**   - second level domain, ie: mydomain
:tld: **string**   - top level domain, ie: .com

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->servicedomain_check($params);

    .. code-block:: html

        {{ guest.servicedomain_check() }}

    .. code-block:: javascript

        bb.post("guest/servicedomain/check", {})

guest/servicedomain/can_be_transferred
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Check if domain can be transferred. Domain registrar must be
configured in order to get correct results.



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:sld: **string**   - second level domain, ie: mydomain
:tld: **string**   - top level domain, ie: .com

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->servicedomain_can_be_transferred($params);

    .. code-block:: html

        {{ guest.servicedomain_can_be_transferred() }}

    .. code-block:: javascript

        bb.post("guest/servicedomain/can_be_transferred", {})

Servicelicense
------------------------------------------------------------------------------

Licensing server


guest/servicelicense/check
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Check license details callback. Request IP is detected automatically
You can pass any other parameters to be validated by license plugin.



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:license: **string**   - license key
:host: **string**   - hostname where license is installed
:version: **string**   - software version
:path: **string**   - software install path

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:legacy: **string**   - deprecated parameter. Returns result in non consistent API result

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->servicelicense_check($params);

    .. code-block:: html

        {{ guest.servicelicense_check() }}

    .. code-block:: javascript

        bb.post("guest/servicelicense/check", {})

Servicesolusvm
------------------------------------------------------------------------------

Solusvm service management


guest/servicesolusvm/get_templates
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Return operating system templates available on solusVM master server



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:type: **string**   - virtualization type

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->servicesolusvm_get_templates($params);

    .. code-block:: html

        {{ guest.servicesolusvm_get_templates() }}

    .. code-block:: javascript

        bb.post("guest/servicesolusvm/get_templates", {})

Serviceyouhosting
------------------------------------------------------------------------------

Youhosting service management


guest/serviceyouhosting/webhook
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Youhosting webhooks listener



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->serviceyouhosting_webhook($params);

    .. code-block:: html

        {{ guest.serviceyouhosting_webhook() }}

    .. code-block:: javascript

        bb.post("guest/serviceyouhosting/webhook", {})

guest/serviceyouhosting/master_domains
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Return master_domains



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->serviceyouhosting_master_domains($params);

    .. code-block:: html

        {{ guest.serviceyouhosting_master_domains() }}

    .. code-block:: javascript

        bb.post("guest/serviceyouhosting/master_domains", {})

Spamchecker
------------------------------------------------------------------------------

Spam cheking module management 


guest/spamchecker/recaptcha
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Returns recaptcha public key



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->spamchecker_recaptcha($params);

    .. code-block:: html

        {{ guest.spamchecker_recaptcha() }}

    .. code-block:: javascript

        bb.post("guest/spamchecker/recaptcha", {})

Staff
------------------------------------------------------------------------------

Staff methods 


guest/staff/create
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Gives ability to create administrator account if no admins exists on 
the system.

Database structure must be installed before calling this action.
bb-config.php file must already be present and configured.
Used by automated BoxBilling installer.

Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:email: **string**   - admin email
:password: **string**   - admin password

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->staff_create($params);

    .. code-block:: html

        {{ guest.staff_create() }}

    .. code-block:: javascript

        bb.post("guest/staff/create", {})

guest/staff/login
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Login to admin area and save information to session.



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:email: **string**   - admin email
:password: **string**   - admin password

Optional parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:remember: **string**   - pass value "1" to create remember me cookie

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->staff_login($params);

    .. code-block:: html

        {{ guest.staff_login() }}

    .. code-block:: javascript

        bb.post("guest/staff/login", {})

Support
------------------------------------------------------------------------------

Public tickets management


guest/support/ticket_create
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Submit new public ticket



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:name: **string**   - Ticket author name
:email: **string**   - Ticket author email
:subject: **string**   - Ticket subject
:message: **string**   - Ticket message

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->support_ticket_create($params);

    .. code-block:: html

        {{ guest.support_ticket_create() }}

    .. code-block:: javascript

        bb.post("guest/support/ticket_create", {})

guest/support/ticket_get
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get public ticket



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:hash: **string**   - public ticket hash

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->support_ticket_get($params);

    .. code-block:: html

        {{ guest.support_ticket_get() }}

    .. code-block:: javascript

        bb.post("guest/support/ticket_get", {})

guest/support/ticket_close
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Close public ticket



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:hash: **string**   - public ticket hash

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->support_ticket_close($params);

    .. code-block:: html

        {{ guest.support_ticket_close() }}

    .. code-block:: javascript

        bb.post("guest/support/ticket_close", {})

guest/support/ticket_reply
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Reply to public ticket



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:hash: **string**   - public ticket hash
:message: **string**   - public ticket reply message

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->support_ticket_reply($params);

    .. code-block:: html

        {{ guest.support_ticket_reply() }}

    .. code-block:: javascript

        bb.post("guest/support/ticket_reply", {})

System
------------------------------------------------------------------------------

System methods 


guest/system/version
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get BoxBilling version



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->system_version($params);

    .. code-block:: html

        {{ guest.system_version() }}

    .. code-block:: javascript

        bb.post("guest/system/version", {})

guest/system/company
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Returns company information



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->system_company($params);

    .. code-block:: html

        {{ guest.system_company() }}

    .. code-block:: javascript

        bb.post("guest/system/company", {})

guest/system/states
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Returns USA states list



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->system_states($params);

    .. code-block:: html

        {{ guest.system_states() }}

    .. code-block:: javascript

        bb.post("guest/system/states", {})

guest/system/countries_eunion
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Returns list of european union countries



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->system_countries_eunion($params);

    .. code-block:: html

        {{ guest.system_countries_eunion() }}

    .. code-block:: javascript

        bb.post("guest/system/countries_eunion", {})

guest/system/countries
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Returns list of world countries



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->system_countries($params);

    .. code-block:: html

        {{ guest.system_countries() }}

    .. code-block:: javascript

        bb.post("guest/system/countries", {})

guest/system/param
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Returns system parameter by key



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:key: **string**   - Parameter name

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->system_param($params);

    .. code-block:: html

        {{ guest.system_param() }}

    .. code-block:: javascript

        bb.post("guest/system/param", {})

guest/system/periods
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Return list of available payment periods



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->system_periods($params);

    .. code-block:: html

        {{ guest.system_periods() }}

    .. code-block:: javascript

        bb.post("guest/system/periods", {})

guest/system/period_title
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Gets period title by identifier



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:code: **string**   - Period code name, ie: 1M => Monthly

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->system_period_title($params);

    .. code-block:: html

        {{ guest.system_period_title() }}

    .. code-block:: javascript

        bb.post("guest/system/period_title", {})

guest/system/paginator
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Returns info for paginator according to list



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->system_paginator($params);

    .. code-block:: html

        {{ guest.system_paginator() }}

    .. code-block:: javascript

        bb.post("guest/system/paginator", {})

guest/system/current_url
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If called from template file this function returns current url



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->system_current_url($params);

    .. code-block:: html

        {{ guest.system_current_url() }}

    .. code-block:: javascript

        bb.post("guest/system/current_url", {})

guest/system/template_exists
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Check if passed file name template exists for client area



Required parameters
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:file: **string**   - template file name, example: mod_index_dashboard.phtml

API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->system_template_exists($params);

    .. code-block:: html

        {{ guest.system_template_exists() }}

    .. code-block:: javascript

        bb.post("guest/system/template_exists", {})

guest/system/locale
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get current client locale



API call examples
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. configuration-block::

    .. code-block:: php

        $result = $api_guest->system_locale($params);

    .. code-block:: html

        {{ guest.system_locale() }}

    .. code-block:: javascript

        bb.post("guest/system/locale", {})


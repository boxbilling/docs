API
============================================

This describes the resources that make up the official BoxBilling API.

If you have any problems or requests please contact support.

Schema
--------------------------------------------

All API access is over HTTP(S), and accessed from the

.. code-block:: php

    http://www.yourdomain.com/api/

All Requests are made via POST method

All data is sent and received as JSON.

All methods names are lowercase and words are separated by underscore

Blank fields are included as *null* instead of being omitted.

All timestamps are returned in ISO 8601 format

.. code-block:: php

    2011-01-01T12:00:00+00:00

Authentication
--------------------------------------------

API uses Basic Authentication

The same API endpoint can be used for Admin and Client API calls.

Authentication Username is **admin** or **client**

Authentication Password is **token** which can be retrieved from BoxBilling Admin area

API uses cookies to store sessions.

Request
--------------------------------------------

All Requests are made via POST method

Data can be sent as JSON string or POST form.

All data is received as JSON.

Example *api.sh* script

.. code-block:: guess

    #!/bin/bash
    # BoxBilling REST API example

    API_COOKIE=/tmp/bbcookie.txt
    API_AUTH="admin:644846a924e9f4ca76f04f39b3f9c8ac"
    API_ENDPOINT="http://demo.boxbilling.com/api"

    # ****************************************************************************

    echo "Add product #1 to shopping cart using guest API (no need to provide authentication):"
    curl -c $API_COOKIE -b $API_COOKIE -X POST -d '{"id":"1"}' $API_ENDPOINT/guest/cart/add_item
    echo "\n"

    echo "Get cart contents"
    curl -c $API_COOKIE -b $API_COOKIE -X POST $API_ENDPOINT/guest/cart/get
    echo "\n"

    echo "Getting profile:"
    curl -c $API_COOKIE -b $API_COOKIE -u "$API_AUTH" -X POST $API_ENDPOINT/admin/staff/profile_get
    echo "\n"

    echo "API Error example:"
    curl -c $API_COOKIE -b $API_COOKIE -u "$API_AUTH" -X POST $API_ENDPOINT/admin/module/method
    echo "\n"

    echo "Get paginated list of orders:"
    curl -c $API_COOKIE -b $API_COOKIE -u "$API_AUTH" -X POST -d '{"per_page":"1", "page":2}' $API_ENDPOINT/admin/order/get_list
    echo "\n"

Executing above *sh api.sh* script with produce output:

.. code-block:: guess

    Add product #1 to shopping cart using guest API (no need to provide authentication):
    {"result":true,"error":null}

    Get cart contents
    {"result":{"promocode":null,"discount":0,"total":1000,"items":[{"plugin":null,"id":"18","product_id":"1","title":"Samsung tv set","type":"custom","quantity":1,"unit":"product","price":"1000.00","setup_price":"0.00","discount":0,"total":1000}],"currency":{"code":"USD","title":"US Dollar","conversion_rate":1,"format":"$%price%","default":"1"}},"error":null}

    Getting profile:
    {"result":{"id":"1","role":"admin","admin_group_id":"1","email":"admin@boxbilling.com","pass":"1123123123","name":"Demo Administrator","signature":"Sincerely Yours, Demo Administrator","protected":"1","status":"active","api_token":"644846a924e9f4ca76f04f39b3f9c8ac","created_at":"2012-01-01T12:00:00+00:00","updated_at":"2012-01-01T12:00:00+00:00"},"error":null}

    API Error example:
    {"result":null,"error":{"message":"Error message","code":720}}

    Get paginated list of orders:
    {"result":{"pages":1,"page":2,"per_page":1,"total":0,"list":[]},"error":null}

Errors
--------------------------------------------

Consider that error occurred if *error* field is not null.

.. code-block:: guess

    {"result":null,"error":{"message":"Error explanation","code":101}}

Pagination
--------------------------------------------

Requests that return multiple items will be paginated to 30 items by default.

You can specify further pages with the **page** parameter.

You can also set a custom page size up to 100 with the **per_page** parameter.

.. code-block:: guess

    {"per_page":45, "page":2}

Results contains pagination information in the following format:

.. code-block:: guess

    {"result":{"page":2,"per_page":45,"total":0,"list":[]},"error":null}

Rate Limiting
--------------------------------------------

BoxBilling can limit requests to API. By default it is configured to accept
maximum of 1000 requests per hour from one IP.
You can edit these settings at **bb-modules/mod_api/api-config.php**;
You can check the returned HTTP headers of any API request to see your current status:

.. code-block:: guess

    $ curl -i http://demo.boxbilling.com/api/guest/system/version

.. code-block:: guess

    HTTP/1.1 200 OK
    X-RateLimit-Span: 3600
    X-RateLimit-Limit: 1000
    X-RateLimit-Remaining: 999


Lists sorting
--------------------------------------------

BoxBilling has reserved keys: orderby and sortorder to define unified sorting keywords 
in all future API requests.

orderby - depends on API query

sortorder - asc or desc


BoxBilling API Implementations
--------------------------------------------

BoxBilling template file
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Use API in any BoxBilling template.

All client area theme templates has global parameters:
 * request - same as PHP $_GET
 * guest - to access guest API
 * client - if client is logged in
 * admin - if admin is logged in

All admin area theme templates has global parameters:

 * request - same as PHP $_GET
 * guest - to access guest API
 * admin - if admin is logged in

Get currently logged in client profile details in client area template file:

.. code-block:: html

    {% if client %}
        {% set profile = client.client_get %}
        My email is: {{ profile.email }}
        My name is: {{ profile.first_name }} {{ profile.last_name }}
    {% endif %}

PHP
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. only:: html

    .. raw:: html

        <script src="https://gist.github.com/1808649.js"> </script>


PHP API class usage as admin

.. code-block:: php

    <?php
    require_once 'BoxBillingApi.php';
    $config = array(
        'api_role'  =>  'admin',
        'api_token' =>  'your_admin_token',
        'api_url'   =>  'http://www.youdomain.com/api',
    );
    $api_admin = new Service_BoxBilling($config);
    $messages = $api_admin->system_messages();

PHP API class usage as client

.. code-block:: php

    <?php
    require_once 'BoxBillingApi.php';
    $config = array(
        'api_role'  =>  'client',
        'api_token' =>  'your_client_token',
        'api_url'   =>  'http://www.youdomain.com/api',
    );
    $api_client = new Service_BoxBilling($config);
    $orders = $api_client->order_get_list(array('per_page'=>50, 'client_id'=>1));

PHP API class usage as guest

.. code-block:: php

    <?php
    require_once 'BoxBillingApi.php';
    $config = array(
        'api_role'  =>  'guest',
        'api_url'   =>  'http://www.youdomain.com/api',
    );
    $api_guest = new Service_BoxBilling($config);
    $version = $api_guest->system_version();


BASH script
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Example boxbilling.sh

.. code-block:: guess

    #!/bin/bash
    # BoxBilling REST API example

    API_COOKIE=/tmp/bbcookie.txt
    API_AUTH="admin:644846a924e9f4ca76f04f39b3f9c8ac"
    API_ENDPOINT="http://demo.boxbilling.com/api"

    # ****************************************************************************

    echo "Add product #1 to shopping cart using guest API (no need to provide authentication):"
    curl -c $API_COOKIE -b $API_COOKIE -X POST -d '{"id":"1"}' $API_ENDPOINT/guest/cart/add_item
    echo "\n"

    echo "Get cart contents"
    curl -c $API_COOKIE -b $API_COOKIE -X POST $API_ENDPOINT/guest/cart/get


JavaScript
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Add this line to your 

.. code-block:: html

    <script type="text/javascript">
        var api = {
            post: function(url, params, jsonp) {
                $.ajax({
                    type: "POST",
                    url: 'http://www.yourdomain.com/api/' + url,
                    data: params,
                    dataType: 'json',
                    error: function(jqXHR, textStatus, e) {
                        alert(e);
                    },
                    success: function(data) {
                        if(data.error) {
                            alert(data.error.message);
                        } else {
                            if(typeof jsonp === 'function') {
                                return jsonp(data.result);
                            } else if(window.hasOwnProperty('console')) {
                                console.log(data.result);
                            }
                        }
                    }
                });
            }
        }
    </script>

Get BoxBilling version:

.. code-block:: html

    bb.post("guest/system/version", {}, function(result){ alert(result); });

Add product to shopping cart:

.. code-block:: html

    bb.post("guest/cart/add_item", {id:1}, function(result){ alert(result); });

Dump shopping cart contents browser to console:

.. code-block:: html

    bb.post("guest/cart/get", {}, function(result){ console.debug(result) });

API Based Modules
--------------------------------------------

If you have developed API based extension, please open pull request at
https://github.com/boxbilling/extensions
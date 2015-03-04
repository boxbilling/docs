Products management
====================

Products are what you will be offering for your clients.
Main page for products management *Configuration -> Products* section.

Adding a new category
--------------------------------------------

The category is a simple way to organize your products.

Each product belongs to category. You will need to create category before
creating new product. Go to **Configuration > Products -> New category** tab to
create new category. Provide title and description and click on *Create*.

Removing a category
--------------------------------------------

To remove product category go to *Configuration > Products > Manage categories*.
Select category which you would like to remove and click on **delete** icon.

.. note::

    Removing category will also remove all products within.


Adding a new product
--------------------------------------------

You can add a new product by pressing the *Add new product to this category*.

Product types
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

License
    You can sell software licenses using BoxBilling. Provide your own algorithm
    to generate license key via simple plugin. By default license product has
    these options: license prefix, the length of the license code and which
    fields should be validated (IP, domain, version or path).
    License can be validated inside software by decoding license key or by
    using licensing server. BoxBilling has its own licensing server so all
    callbacks from software can be made to validate licenses. You can also
    provide custom validation rules in licensing plugins.

Downloadable product
    It should be used when you need to provide a file for your clients, and
    wish to charge for the ability to download it. The setup process is
    similar to other products, - you will see one new tab where you will be
    able to upload the file that will be offered after purchase.

Domain product
    Offer domain registrations, renewals, transfers with BoxBilling. Domain
    pricing can be set for every tld separately. Configure which domain can be
    transferred, registered. Supports major domain registrars by default.
    More about at :ref:`service-domain`.

Hosting
    Offering hosting services with BoxBilling is really easy. Setup
    server on which hosting accounts are going to be created, create hosting plan
    for your server manager, setup product prices.
    More about at :ref:`service-hosting`.
    
Custom product
    It is a general product you would be offering via your website. You can
    set a title, description, product unit (whether the price is for the product,
    service or a period of time that the product will be used). Each product has
    a payment option (free, one time payment and subscription payment) and
    activation status (how it will be activated).
    Custom product orders can be controlled via custom event hooks. For example:

.. code-block:: php

    <?php
    /**
     * Example product plugin usage
     */
    class Hook_Custom
    {
        public static function onAfterOrderActivate(Box_Event $event)
        {
            $order = $event->getSubject();
            $plugin = $order->Product->plugin;
            if($plugin == 'MyPlugin') {
                // init plugin class
                // do something with plugin on order activation action
            }
        }

        public static function onAfterOrderRenew(Box_Event $event)
        {

        }

        public static function onAfterOrderSuspend(Box_Event $event)
        {

        }

        public static function onAfterOrderUnsuspend(Box_Event $event)
        {

        }

        public static function onAfterOrderCancel(Box_Event $event)
        {

        }

        public static function onAfterOrderUncancel(Box_Event $event)
        {

        }

        public static function onAfterOrderDelete(Box_Event $event)
        {

        }
    }

Product pricing
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

There are 3 types of payment options available:

Free
    The product is free and there is no billing involved. No invoice is generated
    if ordering free product only.

One time
    Payment is submitted once for the product and no other invoice is going to
    be issued automatically.

Recurring payment
    Recurring payments are used to bill clients periodically.
    Monthly, Every 3 months, Every 6 months, Every year, Every 2 years,
    Every 3 years

Removing a product
--------------------------------------------

You can remove products by clicking *delete* icon in the products list.

Product Addons
--------------------------------------------

All existing product add-ons are listed in the section *Configuration > Product Addons*

To create new addon open *Configuration > Product Addons > Create new* tab.

In the first tab (General), you will need to select a *title* and *description* for your add-on.
Then, as you move on to the second tab (Payment), you will be able to set the payment options for the selected add-on.

After you have filled in the fields and selected the needed options, press Create and it will be added to your Product Addons section.

.. note::
    When you have created product add-ons, they will be visible and available for each product you create via the *Addons* tab.

Product Promotions
--------------------------------------------

To manage product promotions go to  *Admin area > Configuration > Product Promotions*

Promotion can be one of these types:

* Fixed amount discount (e.g. $10 Off)
* Percentage discount (e.g. 15% Off)

After you have setup promotion code your clients will be able to use this code
at checkout process.

How to create a new promotion
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

* Start by going to *Configuration > Product Promotions*
* Click on the *Create New* tab
* You must enter a promotion code - this is the code that customers will need
  to enter on the order form to receive the discount
* You can then choose the discount type Fixed amount discount, Percentage discount, Free trial
* Enter amount of $ or % or days according to discount type
* Choose maximum number of uses. Use 0 for unlimited number of uses.
* All other options are additional, you can now click on *Create*

Additional settings
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

* By selecting products at the *Products* tab it is possible to limit promo to
  specific products/services. Promo code will not be applied if selected product
  is not in the shopping cart.
* It is possible when creating a promotion to specify an expiry date.
  Select *Date* tab and if you want the promo code to become valid for the
  specific time period define dates in select boxes.
* You can also enable or disable product promotion by setting *Active* to *Yes/No*
* If you do not want the same user to use this promotion code more than once
  select *User can use no more than one time* to *No*
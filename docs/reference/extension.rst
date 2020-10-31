Extensions
============================================

BoxBilling is designed to be extended easily.

.. _extension-event-listener:

Event listener - Hook
--------------------------------------------

Event listeners are useful and easy way to extend BoxBilling. You might want to
send yourself some notification whenever an invoice is issued or payment is
received. Event listeners is the way you want to do that.

Every event listener is a simple PHP class with public static methods, where method
name is event name.

Every event method receives parameter **Box_Event $event** which contains data
related to that event.

You can create your own event listener and place it in directory
**/bb-library/Hook** directory

List of all available event hooks see :ref:`extension-event-hooks` section.

Example BoxBilling event listener class

.. code-block:: php

    <?php
    class Hook_Example
    {
        public static function onBeforeClientSignUp(Box_Event $event)
        {
            $di = $event->getDi();             //Retrieve DI (Dependency Injector)
            $db    = $di['db'];                //Get any object from DI (in this case it is database object)
            $params = $event->getParameters(); //Getting parameters which were attached to this event
            $disable_registrations = TRUE;
            if($disable_registrations) {
                throw new Exception('New registrations are currently disabled', 512);
            }
        }
    }

.. _extension-server-manager:

Server manager
--------------------------------------------

You can create your own server manager extension and put in 
**/bb-library/Server/Manager** directory

Following example should be enough to understand the concept of server manager adapter class.
You create **Server_Manager_Custom** class

.. code-block:: php

    <?php

    class Server_Manager_Custom extends Server_Manager
    {
        public static function getForm()
        {
            return array(
                'label'     =>  'Custom Server Manager',
            );
        }

        public function getLoginUrl()
        {
            return 'http://www.google.com?q=cpanel';
        }

        public function getResellerLoginUrl()
        {
            return 'http://www.google.com?q=whm';
        }

        public function testConnection()
        {
            return TRUE;
        }

        public function synchronizeAccount(Server_Account $a)
        {
            $this->getLog()->info('Synchronizing account with server '.$a->getUsername());
            return $a;
        }

        public function createAccount(Server_Account $a)
        {
            if($a->getReseller()) {
                $this->getLog()->info('Creating reseller hosting account');
            } else {
                $this->getLog()->info('Creating shared hosting account');
            }
        }

        public function suspendAccount(Server_Account $a)
        {
            if($a->getReseller()) {
                $this->getLog()->info('Suspending reseller hosting account');
            } else {
                $this->getLog()->info('Suspending shared hosting account');
            }
        }

        public function unsuspendAccount(Server_Account $a)
        {
            if($a->getReseller()) {
                $this->getLog()->info('Unsuspending reseller hosting account');
            } else {
                $this->getLog()->info('Unsuspending shared hosting account');
            }
        }

        public function cancelAccount(Server_Account $a)
        {
            if($a->getReseller()) {
                $this->getLog()->info('Canceling reseller hosting account');
            } else {
                $this->getLog()->info('Canceling shared hosting account');
            }
        }

        public function changeAccountPackage(Server_Account $a, Server_Package $p)
        {
            if($a->getReseller()) {
                $this->getLog()->info('Updating reseller hosting account');
            } else {
                $this->getLog()->info('Updating shared hosting account');
            }

            $p->getName();
            $p->getQuota();
            $p->getBandwidth();
            $p->getMaxSubdomains();
            $p->getMaxParkedDomains();
            $p->getMaxDomains();
            $p->getMaxFtp();
            $p->getMaxSql();
            $p->getMaxPop();

            $p->getCustomValue('param_name');
        }

        public function changeAccountUsername(Server_Account $a, $new)
        {
            if($a->getReseller()) {
                $this->getLog()->info('Changing reseller hosting account username');
            } else {
                $this->getLog()->info('Changing shared hosting account username');
            }
        }

        public function changeAccountDomain(Server_Account $a, $new)
        {
            if($a->getReseller()) {
                $this->getLog()->info('Changing reseller hosting account domain');
            } else {
                $this->getLog()->info('Changing shared hosting account domain');
            }
        }

        public function changeAccountPassword(Server_Account $a, $new)
        {
            if($a->getReseller()) {
                $this->getLog()->info('Changing reseller hosting account password');
            } else {
                $this->getLog()->info('Changing shared hosting account password');
            }
        }

        public function changeAccountIp(Server_Account $a, $new)
        {
            if($a->getReseller()) {
                $this->getLog()->info('Changing reseller hosting account ip');
            } else {
                $this->getLog()->info('Changing shared hosting account ip');
            }
        }
    }

To enable extension simply drop it to **bb-library/Server/Manager/** folder
It will be detected automatically when on server configuration page.

.. note::

    Class name can not conflict with existing one.

.. _extension-domain-registrar:

Domain registrar
--------------------------------------------

You can create your own domain registrar extension and put in
**/bb-library/Registrar/Adapter** directory.
When new file is detected by BoxBilling admin area, you can install it by
clicking on install button.

Only installed domain registrars can be configured.

Following example should be enough to understand the concept of domain 
registration adapter class.

You create **Registrar_Adapter_Myregistrar** class

.. code-block:: php

    <?php
    /**
    * Custom domain registrar
    */
    class Registrar_Adapter_Myregistrar extends Registrar_AdapterAbstract
    {
        public $config = array(
            'use_whois'   => FALSE,
        );

        public function __construct($options)
        {

        }

        public function getTlds()
        {
            return array();
        }

        public static function getConfig()
        {
            return array(
                'label' => 'Custom Registrar always responds with positive results. Usefull if no other registrar is suitable.',
            );
        }

        public function isDomainCanBeTransfered(Registrar_Domain $domain)
        {
            $this->getLog()->debug('Checking if domain can be transfered: ' . $domain->getName());
            return true;
        }

        public function isDomainAvailable(Registrar_Domain $domain)
        {
            return true;
        }

        public function modifyNs(Registrar_Domain $domain)
        {
            $this->getLog()->debug('Modifying nameservers: ' . $domain->getName());
            $this->getLog()->debug('Ns1: ' . $domain->getNs1());
            $this->getLog()->debug('Ns2: ' . $domain->getNs2());
            $this->getLog()->debug('Ns3: ' . $domain->getNs3());
            $this->getLog()->debug('Ns4: ' . $domain->getNs4());
            return true;
        }

        public function transferDomain(Registrar_Domain $domain)
        {
            $this->getLog()->debug('Transfering domain: ' . $domain->getName());
            $this->getLog()->debug('Epp code: ' . $domain->getEpp());
            return true;
        }

        public function getDomainDetails(Registrar_Domain $domain)
        {
            $this->getLog()->debug('Getting whois: ' . $domain->getName());

            if(!$domain->getRegistrationTime()) {
                $domain->setRegistrationTime(time());
            }
            if(!$domain->getExpirationTime()) {
                $years = $domain->getRegistrationPeriod();
                $domain->setExpirationTime(strtotime("+$years year"));
            }
            return $domain;
        }

        public function deleteDomain(Registrar_Domain $domain)
        {
            $this->getLog()->debug('Removing domain: ' . $domain->getName());
            return true;
        }

        public function registerDomain(Registrar_Domain $domain)
        {
            $this->getLog()->debug('Registering domain: ' . $domain->getName(). ' for '.$domain->getRegistrationPeriod(). ' years');
            return true;
        }

        public function renewDomain(Registrar_Domain $domain)
        {
            $this->getLog()->debug('Renewing domain: ' . $domain->getName());
            return true;
        }

        public function modifyContact(Registrar_Domain $domain)
        {
            $this->getLog()->debug('Updating contact info: ' . $domain->getName());
            return true;
        }

        public function enablePrivacyProtection(Registrar_Domain $domain)
        {
            $this->getLog()->debug('Enabling Privacy protection: ' . $domain->getName());
            return true;
        }

        public function disablePrivacyProtection(Registrar_Domain $domain)
        {
            $this->getLog()->debug('Disabling Privacy protection: ' . $domain->getName());
            return true;
        }

        public function getEpp(Registrar_Domain $domain)
        {
            $this->getLog()->debug('Retrieving domain transfer code: ' . $domain->getName());
            return true;
        }

        public function lock(Registrar_Domain $domain)
        {
            $this->getLog()->debug('Locking domain: ' . $domain->getName());
            return true;
        }

        public function unlock(Registrar_Domain $domain)
        {
            $this->getLog()->debug('Unlocking: ' . $domain->getName());
            return true;
        }
    }

.. note::

    Class name can not conflict with existing one.


.. _extension-payment-gateway:

Payment gateway
--------------------------------------------

Assuming you have not found payment gateway on extension site, 
you can create your own payment gateway extension and put in
**/bb-library/Payment/Adapter** directory

BoxBilling automatically detects new payment gateway and shows it in admin area
payment gateways section. Install detected gateway by clicking on install button
and now you are able to configure it.

All payment gateways can be copied.

Following example should be enough to understand the concept of payment gateway adapter class.
You create **Payment_Adapter_Custom** class

.. code-block:: php

    <?php
    /**
     * BoxBilling
     *
     * @copyright BoxBilling, Inc (http://www.boxbilling.com)
     * @license   Apache-2.0
     *
     * Copyright BoxBilling, Inc
     * This source file is subject to the Apache-2.0 License that is bundled
     * with this source code in the file LICENSE
     */

    class Payment_Adapter_Custom
    {
        private $config = array();

        public function __construct($config)
        {
            $this->config = $config;
        }

        public static function getConfig()
        {
            return array(
                'supports_one_time_payments'   =>  true,
                'supports_subscriptions'       =>  true,
                'description'     =>  'Custom payment gateway allows you to give instructions how can your client pay invoice. All system, client, order and invoice details can be printed. HTML and JavaScript code is supported.',
                'form'  => array(
                    'single' => array('textarea', array(
                                'label' => 'Enter your text for single payment information',
                        ),
                    ),
                    'recurrent' => array('textarea', array(
                                'label' => 'Enter your text for subscription information',
                        ),
                    ),
                ),
            );
        }

        /**
         * Generate payment text
         * 
         * @param Api_Admin $api_admin
         * @param int $invoice_id
         * @param bool $subscription
         * 
         * @since BoxBilling v2.9.15
         * 
         * @return string - html form with auto submit javascript
         */
        public function getHtml($api_admin, $invoice_id, $subscription)
        {
            $invoice = $api_admin->invoice_get(array('id'=>$invoice_id));

            $vars = array(
                'client'    =>  $invoice['buyer'],
                'invoice'   =>  $invoice,
                '_tpl'      =>  ($subscription) ? $this->config['recurrent'] : $this->config['single'],
            );

            return $api_admin->system_string_render($vars);
        }

        /**
         * Process transaction received from payment gateway
         * 
         * @since BoxBilling v2.9.15
         * 
         * @param Api_Admin $api_admin
         * @param int $id - transaction id to process
         * @param array $ipn - post, get, server, http_raw_post_data
         * @param int $gateway_id - payment gateway id on BoxBilling
         * 
         * @return mixed
         */
        public function processTransaction($api_admin, $id, $data, $gateway_id)
        {
            //$tx = $api_admin->invoice_transaction_get(array('id'=>$id));
        }
    }


Payment adapter class is simple PHP class with 4 methods:

* public static function getConfig() - tells BoxBilling information to generate settings form
* public function __construct($config) - receives configuration settings from settings form
* public function getHtml($api_admin, $invoice_id, $subscription) - generates payment html. Can use Admin api to get additional information
* public function processTransaction($api_admin, $id, $data) - processes transaction received from payment gateway. Can use Admin api to get additional information

.. note::

    Class name can not conflict with existing one.

Tutorials
=========

In BoxBilling we try to keep it simple while making our software as flexible as possible. These tutorials will show you how to make use of BoxBilling and add additional functionality

Wysiwyg Editor tutorial
-----------------------

Enable wysiwyg editor
~~~~~~~~~~~~~~~~~~~~~
#. Go to **Extensions -> Overview** page
#. Enable Wysiwyg extension from BoxBilling extension list
#. Select editor from available editor list

Append wysiwyg editor's toolbar to textarea
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#. In template file find textarea tag and add ``bb-textarea`` class
#. At the end of template file append

.. code-block:: none

   {% block head %}{{ mf.bb_editor('.bb-textarea') }}{% endblock %}

--------------------

How to edit BoxBilling templates
--------------------------------------------
If you want to edit any BoxBilling template you can feel free to do so, however there is one thing to remember before you do it.
All templates you want to edit must be copied from extension folder to theme html folder.

Let's say you are using ``huraga`` theme and want to change the way invoice is displayed for client. 

In this case you would need to copy ``bb-modules/Invoice/html_client/mod_invoice_invoice.phtml`` to ``bb-themes/huraga/html`` and then you can edit it to fit you needs.

Why is it necessary?
~~~~~~~~~~~~~~~~~~~~
When you update BoxBilling all of the core files are being overwritten what would result in your edited files being overwritten as well. Meanwhile theme files stay untouched during update.

How BoxBilling knows which file to render?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
BoxBilling first of all looks into ``bb-themes/$theme/html`` folder (where ``$theme`` means your default theme) and if it does not find required template there then it looks in extension directory. This way if there are 2 files with same name in theme and extension directories the one from theme folder would be loaded and second one ignored.

How to add order popup to custom theme?
--------------------------------------------
Order popup (which is default way to order products and services in **huraga** theme ) can be added to any custom template in a few simple steps:

1. Go to **Configuration -> Settings -> Order Button** and adjust popup settings. You can see how it will look by clicking on *"TRY YOUR POPUP"* button. Code which you need to include to your template will be generated automatically and will look similar to following:

.. code-block:: html

   <script type="text/javascript" src="http://www.yourdomain.com/index.php?_url=/orderbutton/js&options=1&width=600&theme_color=green&background_color=%23000000&background_opacity=50&bind_selector=.order-button&border_radius=0"></script>

2. Include this code in footer or head of your HTML template.

.. code-block:: html

   <head>
   <title>My Website Name</title>
   <script type="text/javascript" src="http://www.yourdomain.com/index.php?_url=/orderbutton/js&options=1&width=600&theme_color=green&background_color=%23000000&background_opacity=50&bind_selector=.order-button&border_radius=0"></script>
   </head>

3. Now you need to add class to button or any other HTML element which should open popup. You can set any class you like in popup settings, but in this example we will use default ``.order-button`` class. Let's say we have a button which is supposed to open order popup, so it should look like this:

.. code-block:: html

   <button class="order-button">Order</button>

That's it, now when someone clicks on this button they will see popup where they can choose from products list or product order form depending how you configured it.
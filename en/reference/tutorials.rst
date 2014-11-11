Tutorials
=========

In BoxBilling we try to keep it simple while making our software as flexible as possible. These tutorials will show you how to make use of BoxBilling and add additional functionality

Wysiwyg Editor tutorial
-----------------------

Enable wysiwyg editor
~~~~~~~~~~~~~~~~~~~~~
#. Go to **Extensions -> Overview** page
#. Enable Wysiwyg extension from boxbilling extension list
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
If you want to edit any BoxBilling template you can feel free to do so, however there is one thing to rememeber before you do it.
All templates you want to edit must be copied from extension folder to theme html folder.

Let's say you are using ``huraga`` theme and want to change the way invoice is displayed for client. 

In this case you would need to copy ``bb-modules/Invoice/html_client/mod_invoice_invoice.phtml`` to ``bb-themes/huraga/html`` and then you can edit it to fit you needs.

Why is it necessary?
~~~~~~~~~~~~~~~~~~~~
When you update BoxBilling all of the core files are being overwritten what would result in your edited files being overwritten as well. Meanwhile theme files stay untouched during update.

How BoxBilling knows which file to render?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
BoxBilling first of all looks into ``bb-themes/$theme/html`` folder (where ``$theme`` means your default theme) and if it does not find required template there then it looks in extension directory. This way if there are 2 files with same name in theme and extension directories the one from theme folder would be loaded and second one ignored.
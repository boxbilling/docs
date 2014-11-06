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
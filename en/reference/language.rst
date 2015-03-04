BoxBilling in Your Language
================================================================================

Although BoxBilling displays in U.S. English by default, the software has the 
built-in capability to be used in any language. 

About locales
--------------------------------------------------------------

A locale is a combination of language and regional dialect. 
Usually locales correspond to countries, as is the case with 
Portuguese (Portugal)[pt_PT] and Portuguese (Brazil)[pt_BR].

You can do a translation for any locale you wish, even other English locales 
such as Canadian English or Australian English, to adjust for regional 
spelling and idioms.

The default locale of BoxBilling is U.S. English[en_US].

Localization technology
--------------------------------------------------------------

BoxBilling's developers chose to use the GNU **gettext** localization framework 
to provide localization infrastructure to BoxBilling. **gettext** is a mature, 
widely used framework for modular translation of software, 
and is the de facto standard for localization in the open source/free software realm.


Translating client area with Poedit
--------------------------------------------------------------

Assuming translation file is not available at https://www.transifex.com/projects/p/boxbilling/
you can translate BoxBilling using Poedit.

* Download and install http://www.poedit.net/
* Copy **bb-locale/en_US** folder to bb-locale/**es_ES** (where es_ES is your locale)
* Open the file bb-locale/es_ES/**LC_MESSAGES/messages.po** in Poedit.
* You will see two blocks. First for message to be translated, second for translation
* Go to File → Save as… to save your translations in a PO file.
* When you are finished translating, go to File → Save as… again to generate the MO file.
  Or you can set your Poedit to always compile a MO file when saving changes 
  by clicking File → Preferences and on the Editor tab check the Automatically 
  compile .mo file on save box.
* We would appreciate if you would upload translated file to our `language repository`_.

.. note::

    Depending on theme used in client area, you may require translate additional messages

Adding new language
--------------------------------------------------------------

Follow instructions bellow to install new language.

* Check if your language translation file is available at https://www.transifex.com/projects/p/boxbilling/
* In **bb-locale** folder create folder with your locale name (e.g. pt_BR) and create folder **LC_MESSAGES** in it
* Add **messages.po** and **messages.mo** files to **LC_MESSAGES** folder you just created (e.g. *bb-locale/pt_BR/LC_MESSAGES/messages.mo*)
* Language will be automatically detected and language picker will appear in client and admin areas

Changing default language
--------------------------------------------------------------

Default language can be set in **bb-config.php** 
parameter **'locale'    =>  'en_US',**

Removing language
--------------------------------------------------------------

Removing languages from BoxBilling is really simple. 
Just delete language folder you wish from **bb-locale/** folder

.. _`language repository`: https://www.transifex.com/projects/p/boxbilling/
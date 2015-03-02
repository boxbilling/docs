BoxBilling in Your Language
================================================================================

Although BoxBilling displays in U.S. English by default, the software has the 
built-in capability to be used in any language. 

About locales
--------------------------------------------------------------

A locale is a combination of language and regional dialect. 
Usually locales correspond to countries, as is the case with 
Portuguese (Portugal) and Portuguese (Brazil).

You can do a translation for any locale you wish, even other English locales 
such as Canadian English or Australian English, to adjust for regional 
spelling and idioms.

The default locale of BoxBilling is U.S. English.

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
* You will see two block. First for message to be translated, second for translation
* Go to File → Save as… to save your translations in a PO file.
* When you are finished translating, go to File → Save as… again to generate the MO file.
  Or you can set your Poedit to always compile a MO file when saving changes 
  by clicking File → Preferences and on the Editor tab check the Automatically 
  compile .mo file on save box.

.. note::

    Depending on theme used in client area, you may require translate additional messages

Adding new language
--------------------------------------------------------------

Follow instructions bellow to install new language.

* Check if your language translation file is available at https://www.transifex.com/projects/p/boxbilling/
* Download language files and place them to **bb-locale** folder
* Language will be automatically detected and can be changed in client area

Changing default language
--------------------------------------------------------------

Default language can be set in **bb-config.php** 
parameter **define('BB_LOCALE', 'en_US');**

Removing language
--------------------------------------------------------------

Removing languages from BoxBilling is really simple. 
Just delete language folder you wish from **bb-locale/** folder

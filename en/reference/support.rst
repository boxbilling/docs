Support center
====================

Help desks management
-------------------------------

Help desks are easy way to organize support tickets you are receiving from clients.
It is very common to have help desks such as *General*, *Sales*.

When you receive support ticket you can forward ticket to other help desk team.
In this way it is easier for support staff to manage tickets faster and be responsible
for issues they are dedicated to.

To manage help desk go to section *Configuration > Help Desks*

Manage select help desk by clicking on it. You can define hours of ticket will stay
in *On Hold* status before auto-closing it. 

Clients tickets
-------------------------------

The Support center can be accessed via administration area
area by clicking the *Support* menu option on the left menu.

Support area has these options:

The overview shows the most recent list of tickets created / opened / answered. 
You can conveniently open a ticket by clicking on subject or *edit* button.

When a ticket is opened, you will see the conversation history opened by default. 
Additional information can be accessed via the *Ticket notes*, *Client* and *Client tickets* tabs.

You can reply to a ticket by scrolling down to the bottom of the ticket history, 
where you will see a text box automatically filled with your default predefined message.

You can select any other predefined message that you wish to send to your client 
via the *Predefined replies* list box.

View (search) tickets
-------------------------------

It can be used to find or filter a specific support tickets by Ticket ID, 
Client, Subject, Status, Help desk department, or message.

You can either enter a full search query or part of it, for example if you 
search by a Subject *paym*, tickets with subject *payment*, *paymore*, 
*can i make a payment*, etc. would be filtered out.


New Ticket
-------------------------------

A new ticket can be sent via admin area for any client (you will need to enter a client ID).

Here you will see a text box automatically filled with your default predefined message which you can edit to make your ticket.

You can select any other predefined message that you wish to send to your client via the *Predefined replies* list box.

There is also an attachment box if you need to attach a file with your ticket.

If you need to send a ticket for a specific client, but you do not remember the client ID, you can browse for the client via the *Clients* menu option on the left menu of the BoxBilling Administration area.


Public Tickets
-------------------------------

Public tickets are tickets that have been received from contact form.
Your site visitors do not to have to become clients in order to contact your support team.

Administrators can submit public tickets to given email address for different purposes.
All these tickets are tracked for later analysis.

Predefined replies
-------------------------------

Predefined replies are useful and can speed up your support response time greatly. 
If you notice that you have several similar replies that you are sending out 
to your customers, you can add them to the predefined replies area.

To create a predefined reply, you will need to select (or add) the corresponding 
category to add it to.

Then you will need to press *Create a reply in this category*.

A new box will be shown, where you will be able to input a title and message body of your predefined reply.

All predefined replies can be accessed when creating or replying to a ticket, 
via the *Predefined replies* list box.


Knowledge base
-------------------------------

You can add all of the most frequent requests / questions about your services / products / etc. to the knowledge base. All clients should be notified to check for an answer in the Knowledge base prior to contacting your support via the Ticket system, as this reduces the work load for your support staff.

Firstly, you will need to setup a category for your Knowledge base articles.

When you have created a category, please select it (from the tree list on the left pane), and you will be able to add a new ticket by clicking *Create an Article in this category*. A new box will be shown, where you will be able to input a title and message body of your knowledge base article.

Your clients will be able to access the knowledge base via their Client area > *Knowledge base* on the main left menu.


Forum
-------------------------------

Forum is a place for your clients to discuss topics related to services you are
providing.

To create new forum go to *Support > Forum*. Simple form with 2 input field will
be displayed. To create Forum only title is required. Add description to explain
what this forum is about.

.. note::

    Only administrators can create new forums.


Forum topic
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Topics are created by registered clients. Topic belongs to forum. It can be moved
from one forum to another via administration area. Topics can be locked.
Clients will not be able to post new messages into locked topics, but topic will
be visible.


Forum topic message
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Topic messages uses markdown syntax. Html rendering is disabled.
Posting new messages are allowed only for registered clients.
Topic must not be locked in order to post new message in it.

.. code-block:: php

    # Header 1 #
    ## Header 2 ##
    ### Header 3 ###             (Hashes on right are optional)
    #### Header 4 ####
    ##### Header 5 #####

    This is a paragraph, which is text surrounded by whitespace.
    Paragraphs can be on one line (or many), and can drone on for
    hours.

    [Reference style links][1] and [inline links](http://example.com)
    [1]: http://example.com "Title is optional"

    Inline markup like _italics_,  **bold**, and `code()`.

    ![picture alt](/images/photo.jpeg "Title is optional")

    > Blockquotes are like quoted text in email replies
    >> And, they can be nested

        code blocks are for preformatted
        text and must be indented with four spaces

    * Bullet lists are easy too
      * You can
      * even
      * nest them
    - Another one
    + Another one

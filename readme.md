# DWM 2017 eval

## required config and main usage directives

database name: shop

usage of laravel-colective forms

admin acount: 
- email: admin@admin.com
- password: 0000Admin

A sybolinc link between the public directory and the storage directory is required ->
If the images do no show up on the products display page, run the following command at the root of the project:

    php artisan storage:link

By the way, the way, the root directry name I used was "test". That should't make any difference but that's one maybe usefull info for toubleshooting.

## Data Architecture

### user table

self managed by the Laravel auth middleware, but with an added collumn is_admin for quick privileges management.

### products table

Stores, in order:
- link to related product image
- title
- product description

### messages table

Stores the messages sent by users, as well as their reading status as a 0/1 integer:
- sender
- message content, as html code, with the topic pasted at the top
- read: a INT(1) collumn for the read/unread status
- the eloquent standard timestamps that are only user for sorting messages by order of arrival

## Features

- Welcome page

- Product page 

    - Dynamic product description appearance

- Contact page

    - Message topic is integrated in the content upon sending

- Message reading page

    - Includes an ajax request to delete or mark messages as read and a special display for unread ones

- add Product

    - Includes a file upload field (unstyled by lack of time) and a WYSIWYG editor for the product (the image is a kitten as a placeholder as I didn't know hot to do in otherwise) 

## issues

- A single CSS and JS file is loaded in every page leaving a lot of what is loaded unused
- No checking is made on the type of file that is uploaded or even on the data that goes in the foms besides existance leading to possible security flaws

## Side Notes

- I know the result is ugly... I did my best you know...
- I did not have time for the U and D in the products CRUD... That's kind of a shame... Kinda kills the usability of the whole thing.
- I wanted to include snek ( https://github.com/iarmagnat/snek.git ) as a 404 page but again, time ran by quickly...

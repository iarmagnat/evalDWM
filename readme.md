# DWM 2017 eval

## required config and main usage directives

database name: shop

usage of laravel-colective forms

admin acount: 
- email: admin@admin.com
- password: 0000Admin

## Data Architecture

### user table

self managed by the Laravel auth middleware, but with an added collumn is_admin for quick privileges management.

### products table

Stores, in order:
- link to related product image
- title
- product description

### messages table

Stores the messages sent by users, as well as their reading status as a 0/1 integer

## Features

- Welcome page

- Product page 

    - Dynamic product description appearance

- Contact page

    - Message topic is integrated in the content upon sending

- Message reading page

    - Includes an ajax request to delete or mark messages as read and a special display for unread ones

## issues

- A single CSS and JS file is loaded in every page leaving a lot of what is loaded unused
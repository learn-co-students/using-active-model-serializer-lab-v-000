# Using ActiveModel::Serializer Lab

## Objectives

  1. Use AMS to render JSON.
  2. Use AMS to render JSON associations.

## Introduction

We're going to continue updating our products/orders system to use
ActiveModel::Serializer for JSON serialization. The solution to the
previous lab is provided.

Don't forget to run `rake db:seed` for some starter data and lots of
Latin practice!

## Instructions

1. Create an ActiveModel::Serializer for `Product` and update the
   `products_controller` to use the new serializer in place of the
existing `to_json` code.
2. Update the product show page to handle the new JSON.
3. On the products `index` page, update the `More Info` button so that it
   uses the `/products/id.json` route to get both description and
inventory.
  * **Note:** The serializer will return a different value for
    `inventory` than the previous API, so you'll have to handle that.
4. Update the `ProductSerializer` to include the orders for the product.
5. Update the `More Info` button on the products `index` page to show a
   list of orders with `id` and `created_at` in addition to the
description and inventory.
6. Update the `OrderSerializer` to include the product names of all
   products on that order.
7. Get rid of the unused `/products/id/description` and
   `/products/id/inventory` routes.
8. Make sure tests pass!

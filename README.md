# Jungle

A mini e-commerce application built with Rails 4.2. Unit testing done in rspec and feature testing done with Capybara.

## Table Of Contents

  - [Setup](#Setup)
  - [Stripe-Testing](#stripe-testing)
  - [Dependencies](#dependencies)
  - [Final Product](#final-product)


## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server
9. For signup or login enter any email and any password with more than 3 characters

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe

## Final Product
 !["View all products"](docs/products-page.png)
  !["add prodicts to your shopping cart"](docs/my-cart.png)
  !["View details about your order after payment"](docs/order-complete.png)
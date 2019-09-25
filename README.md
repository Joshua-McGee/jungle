# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.


## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env variables
8. Run `bin/rails s -b 0.0.0.0` to start the server
9. Make sure localhost:3000 is clear or not being used

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/) can use newer version of rails
* PostgreSQL 9.x
* Stripe

## Screenshots

!["Home page"](https://github.com/Joshua-McGee/jungle/blob/master/docs/home%20page.png?raw=true)
!["my cart"](https://github.com/Joshua-McGee/jungle/blob/master/docs/my%20cart.png?raw=true)
!["checkout with credit card"](https://github.com/Joshua-McGee/jungle/blob/master/docs/checkout%20credit%20card.png?raw=true)
!["order confirmation"](https://github.com/Joshua-McGee/jungle/blob/master/docs/order%20confirmation.png?raw=true)

## Screenshots Admin
!["View all products"](https://github.com/Joshua-McGee/jungle/blob/master/docs/admin%20product%20controls.png?raw=true)
!["Create product"](https://github.com/Joshua-McGee/jungle/blob/master/docs/admin%20create%20product.png?raw=true)

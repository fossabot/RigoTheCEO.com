# RigoTheCEO.com

[![Build Status](https://travis-ci.org/RigoTheCEO/RigoTheCEO.com.svg?branch=master)](https://travis-ci.org/RigoTheCEO/RigoTheCEO.com)
[![FOSSA Status](https://app.fossa.io/api/projects/git%2Bgithub.com%2FRigoTheCEO%2FRigoTheCEO.com.svg?type=shield)](https://app.fossa.io/projects/git%2Bgithub.com%2FRigoTheCEO%2FRigoTheCEO.com?ref=badge_shield)

This is the official repository for my site's source code. Learn from it to make yourself your own cool site.

## Ruby version

This repository should work with any Ruby version but personally I'm running it on `Ruby 2.4.1`.

## System dependencies

* You should have the latest version of `Postgres` installed on your system.

## Environment variables

There are 4 `.env.example` files. Create 4 more files with the same file names without the `.example` extension.

* `.env` are global environment variables that go into any Application environment.
* `.env.dev`, `.env.test`, & `.env.production` are for environment variables that go only into the Application environments `development`, `test`, & `production` respectively.

## Database initialization

To initiate your databases, run: `rails db:setup`. Then `rails db:migrate` if necessary.

## How to run the test suite

Just run `rails test`.

## Services (job queues, cache servers, search engines, etc.)

There are no current job queue, cache servers, or search engines installed.

## Deployment instructions

### Heroku

* TODO: Heroku instructions right here

### AWS

* TODO: AWS instructions right here.


## License
[![FOSSA Status](https://app.fossa.io/api/projects/git%2Bgithub.com%2FRigoTheCEO%2FRigoTheCEO.com.svg?type=large)](https://app.fossa.io/projects/git%2Bgithub.com%2FRigoTheCEO%2FRigoTheCEO.com?ref=badge_large)
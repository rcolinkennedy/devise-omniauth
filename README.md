#devise-omniauth

Basic Application to try building an authentication system that implements one-click, streamlined signon using Devise and third-party authentications with OmniAuth

## Getting Started
* Ruby 2.1.0, Rails 4.0.4


## System dependencies
* uses gem figaro to handle keys as environment variables for Twitter and Mandrill (https://github.com/laserlemon/figaro)
* currently set up for Mandrill SMTP for transactional email
* this configuration is set up for local and test environments to use SQLITE and deployment to Heroku using PostgreSQL

## Contributing
In lieu of a formal styleguide, take care to maintain the existing coding style. Add unit tests for any new or changed functionality. Comment and test your code.

## Authors
- R. Colin Kennedy (https://github.com/rcolinkennedy)


## License
Licensed under the MIT license. 
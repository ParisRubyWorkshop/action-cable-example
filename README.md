Action Cable Example
===

Let's build a chat with ActionCable!

This kata borrows heavily from [Sophie DeBenedetto's awesome tutorial on ActionCable](https://blog.heroku.com/archives/2016/5/9/real_time_rails_implementing_websockets_in_rails_5_with_action_cable).

ActionCable is a new component of Rails that allows for real time features.


## Setup

You'll need to be running ruby 2.3.0 (we recommend using [rbenv](https://github.com/rbenv/rbenv) to manage multiple versions of ruby).

ActionCable uses Redis to persist connection data. You can install Redis like so:
* For Mac OS: `brew install redis`
* For Linux:
```
wget http://download.redis.io/redis-stable.tar.gz
tar xvzf redis-stable.tar.gz
cd redis-stable
make
make install
```

We'll also be using PostgreSQL as our database. On Mac OS, you can install it with `brew install postgres`. You'll find instructions [here](https://wiki.postgresql.org/wiki/Detailed_installation_guides) for Linux.

And of course, once you've forked this repo, you need to run `bundle install`.

Create the database with `rake db:create`

Migrate the database with `rake db:migrate`

## Domain

[See the original article](https://blog.heroku.com/real_time_rails_implementing_websockets_in_rails_5_with_action_cable#domain-model)

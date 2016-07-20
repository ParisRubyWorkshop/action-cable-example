Action Cable Example
===

Let's build a chat with ActionCable!

This kata borrows heavily from [Sophie DeBenedetto's awesome tutorial on ActionCable](https://blog.heroku.com/archives/2016/5/9/real_time_rails_implementing_websockets_in_rails_5_with_action_cable).

This app is a small chat system: users can send messages on different channels. However, all the pages are static, which means you have to refresh the page to see if new messages have been posted.

The point of this kata is to fix that by using ActionCable.


## Setup

You'll need to be running ruby 2.3.0 (we recommend using [rbenv](https://github.com/rbenv/rbenv) to manage multiple versions of ruby).

ActionCable uses Redis to persist connection data. You can install Redis like this:
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

The only objects we're dealing with are users, channels and messages. Check out the models and the `db/schema.rb` file to understand them.

## Using ActionCable

First, we need to modify the html so that sending the message happens by pressing Enter instead of submitting the form.
Add this to `app/assets/javascripts/chatrooms.js`:

```
$(document).ready(function() {
  submitNewMessage();
});

function submitNewMessage(){
  $('textarea#message_content').keydown(function(event) {
    if (event.keyCode == 13) {
        $('[data-send="message"]').click();
        $('[data-textarea="message"]').val(" ")
        return false;
     }
  });
}
```


Then, [follow the steps](https://blog.heroku.com/real_time_rails_implementing_websockets_in_rails_5_with_action_cable#step-1-establish-the-socket-connection-server-side) from the original article.

[![General Assembly Logo](https://camo.githubusercontent.com/1a91b05b8f4d44b5bbfb83abac2b0996d8e26c92/687474703a2f2f692e696d6775722e636f6d2f6b6538555354712e706e67)](https://generalassemb.ly/education/web-development-immersive)

## Links to my client-side application, deployed client app, and deployed api
[sport-client](https://github.com/skylarkJ/sport-client)
[sport-api](https://github.com/skylarkJ/sport-api)
[deployed client](https://skylarkj.github.io/sport-client/)
[deployed api](https://powerful-citadel-79189.herokuapp.com/)

## ERD
![erd](https://raw.githubusercontent.com/skylarkJ/sport-api/8e6e5652f88fffba4fd057ad3ec123ce0a2da809/app/views/layouts/erd.jpg "ERD")

## A list of my API routes
### For User
| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/sign-up`             | `users#signup`    |
| POST   | `/sign-in`             | `users#signin`    |
| PATCH  | `/change-password/:id` | `users#changepw`  |
| DELETE | `/sign-out/:id`        | `users#signout`   |

### For Favorites and Highlights
Prefix Verb   URI Pattern                    Controller#Action

favorites GET    /favorites(.:format)           favorites#index
       POST   /favorites(.:format)           favorites#create

favorite GET    /favorites/:id(.:format)       favorites#show

       PATCH  /favorites/:id(.:format)       favorites#update
       PUT    /favorites/:id(.:format)       favorites#update

       DELETE /favorites/:id(.:format)       favorites#destroy

highlights GET    /highlights(.:format)          highlight#index
 users GET    /users(.:format)               users#index
  user GET    /users/:id(.:format)           users#show


### Installation instructions - To Access YouTube APIs
[`Repo - Ruby Client for the YouTube API`](https://github.com/Fullscreen/yt)
[Documentation - Ruby Gems Yt](http://www.rubydoc.info/gems/yt/frames)
1. I have put into Gemfile  `gem 'yt', '~> 0.28.0'`
2. I have run in the terminal `bundle install` to get a version `yt 0.28.5`
3. I created at [Google Developers Console]  (https://console.developers.google.com/apis/credentials/key/101?project=sport-highlights-162617)
a new project called Sport Highlights and created under `Credentials` unique API key for my project.

### Dependencies

Installed with `bundle install`.

-   [`rails-api`](https://github.com/rails-api/rails-api)
-   [`rails`](https://github.com/rails/rails)
-   [`active_model_serializers`](https://github.com/rails-api/active_model_serializers)
-   [`ruby`](https://www.ruby-lang.org/en/)
-   [`postgres`](http://www.postgresql.org)
-   [`Ruby Gems Yt`](http://www.rubydoc.info/gems/yt/frames)

### Installation for Setting Up The Project

1.  I have [Downloaded](../../archive/master.zip) this template.
2.  Unzipped and renamed the template directory.
3.  I filled [`README.md`](README.md) with my own content of development process.
4.  I moved into the new project and did `git init`.
5.  Installed dependencies with `bundle install`.
6.  Renamed my app module in `config/application.rb` (change
    `RailsApiTemplate`).
7.  Renamed my project database in `config/database.yml` (change
    `'rails-api-template'`).
8.  Created a `.env` for sensitive settings (`touch .env`).
9.  Generated new `development` and `test` secrets (`bundle exec rake secret`).
10. Stored them in `.env` with keys as:
    `SECRET_KEY_BASE_DEVELOPMENT=`
    `SECRET_KEY_BASE_TEST=`
11.  In order to make requests to my deployed API, I needed to set
      heroku variables:
     `heroku config:set SECRET_KEY_BASE=$(rake secret)`
     `heroku config:set SECRET_TOKEN=$(rake secret)`
12.  In order to make requests from my deployed client application, I set
     `CLIENT_ORIGIN` in the environment of the production API (e.g.
    `heroku config:set CLIENT_ORIGIN=https://skylarkj.github.io`).
13.  Then I setup my database with `bin/rake db:nuke_pave`.
14.  I tested the API server with running in the terminal:
     `bin/rails server`.

     ### Resetting Database without dropping

     **locally**

     ```sh
     bin/rake db:migrate VERSION=0
     bin/rake db:migrate db:seed db:examples
     ```

     **heroku**

     ```sh
     heroku run rake db:migrate VERSION=0
     heroku run rake db:migrate db:seed db:examples
     ```

## Explanations of the technologies used
I have used javascript front end framework Ember.js while Ruby on Rails on the back end.
YouTube highlights are rendered in the browser through a controller in the backend -
making queries to YouTube APIs.

## A couple paragraphs about the general approach you took
I have picked to build an application that would solve the inconvinient jumping of sport fans of any kinds from one application to another to catch up on sport highlights in their busy lives.
Now with the mind of 4 days to complete a project I decided to go with
highlights for just NHL teams. There are 30 teams available and all highligts accessible
from YouTube APIs. The search is sorted from the top to bottom according to the latest upload. In the future I would like to store third party APIs from several sources for several team sports.

## Descriptions of any unsolved problems or major hurdles you had to overcome
The major hurdle was a deployment of Ember client side to the GH-pages. In terms
of own development, I had a problem for some time to figure out how to use YouTube
Apis because their main source of documentation is not current. I have found
a repo on GitHub for YouTube APIs which worked. Also, YouTube is giving a search
result of 100 000 items so I had to figure out how to limit that to just 25 items.
Another issue - I created a model with videoId at first instead of video_id so it took me also for a while to realize why the youTube doesn't catch the request fo the video
highlight. Then I had to correct that in every file which was annoying.

## Both client and api repositories must be pinned on your GitHub page
[`pinned client and api repositories`](https://github.com/skylarkJ)

## rails-api-template
[rails-api](https://github.com/skylarkJ/rails-api-template) - includes authentication

## ember-auth-template
[ember auth](https://github.com/skylarkJ/ember-auth)

## Structure
I have creaded one more script called search.sh to test the API for YouTube NHL Hockey.
It can be found under `scripts/search.sh content:`

```
#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/highlights?query=washington"
curl "${API}${URL_PATH}" \
  --include \
  --request GET #\
  # --header "Authorization: Token token=$TOKEN"

echo
```

And this is the curl response in the terminal:
```
$ sh ./scripts/search.sh
HTTP/1.1 200 OK
X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
Content-Type: application/json; charset=utf-8
ETag: W/"c8c1641cb514dfb8b63ca58f685a9785"
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 0e077a32-b12a-4d68-b4b8-2780d7d70b75
X-Runtime: 3.279595
Vary: Origin
Transfer-Encoding: chunked
```


## [License](LICENSE)

1.  All content is licensed under a CC­BY­NC­SA 4.0 license.
1.  All software code is licensed under GNU GPLv3. For commercial use or
    alternative licensing, please contact legal@ga.co.

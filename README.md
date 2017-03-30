[![General Assembly Logo](https://camo.githubusercontent.com/1a91b05b8f4d44b5bbfb83abac2b0996d8e26c92/687474703a2f2f692e696d6775722e636f6d2f6b6538555354712e706e67)](https://generalassemb.ly/education/web-development-immersive)

## Links to my client-side application, deployed client app, and deployed api
[sport-client](https://github.com/skylarkJ/sport-client)
[sport-api](https://github.com/skylarkJ/sport-api)
[deployed client](https://skylarkj.github.io/sport-client/)
[deployed api](https://powerful-citadel-79189.herokuapp.com/)

## ERD
![erd](https://raw.githubusercontent.com/skylarkJ/sport-api/8e6e5652f88fffba4fd057ad3ec123ce0a2da809/app/views/layouts/erd.jpg "ERD")

## A list of my API routes


## Installation instructions for any dependencies
## Explanations of the technologies used
## A couple paragraphs about the general approach you took

## Descriptions of any unsolved problems or major hurdles you had to overcome
The major hurdle was a deployment of Ember client side to the gh-pages. In terms
of own development I had a problem for some time to figure out how to use YouTube
Apis because their main source of documentation is not current. I have found
a repo on GitHub for YouTube APIs which worked. Also YouTube is giving a search
result of 100 000 items so I had to figure out how to limit that to just 25 items.
Another issue - I created a model with videoId at first instead of video_id so it took me also for a while to realize why the youTube doesn't catch the request fo the video
highlight. Then I had to correct that in every file which was annoying.

## Both client and api repositories must be pinned on your GitHub page
[`pinned client and api repositories`](https://github.com/skylarkJ)

## rails-api-template

I have used a template for starting projects with `rails-api`. Includes authentication.

## Dependencies

Installed with `bundle install`.

-   [`rails-api`](https://github.com/rails-api/rails-api)
-   [`rails`](https://github.com/rails/rails)
-   [`active_model_serializers`](https://github.com/rails-api/active_model_serializers)
-   [`ruby`](https://www.ruby-lang.org/en/)
-   [`postgres`](http://www.postgresql.org)

## Installation for Setting Up The Project

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
    `SECRET_KEY_BASE` in the environment of the production API. I used `heroku
    config:set` in my terminal while logged into Heroku through terminal.
12.  In order to make requests from my deployed client application, I set
     `CLIENT_ORIGIN` in the environment of the production API (e.g.
    `heroku config:set CLIENT_ORIGIN https://skylarkj.github.io`).
13.  Then I setup my database with `bin/rake db:nuke_pave`.
14.  I tested the API server with running in the terminal:
     `bin/rails server`.

## [License](LICENSE)

1.  All content is licensed under a CC­BY­NC­SA 4.0 license.
1.  All software code is licensed under GNU GPLv3. For commercial use or
    alternative licensing, please contact legal@ga.co.

## CleanApp

#### Minimal new rails app:
1. Rails 5.1.5 + ruby 2.5.0
2. Webpack + React support
3. Webpack's style frontend
4. SLIM
5. Sidekiq
6. Rspec for tests
7. Capistrano for deploy
8. Base API + Active_serializers support

#### To install application you need run commands:

1. `git clone https://github.com/kortirso/clean_app your_name`.
2. `cd your_name-kortirso`.
3. Change `CleanApp` for yours app name.
4. `bundle install`.
5. `yarn install`.
6. Rename application.yml.example to application.yml and fill with your secrets.
7. `rake db:create`.
8. `rake db:schema:load`.

#### To launch application:

1. In project folder run `foreman s`.
2. In project folder run `redis-server`.
3. In project folder run `sidekiq`.
4. Open `http://localhost:5000`.

#### To launch tests:

1. In project folder run `rspec`.

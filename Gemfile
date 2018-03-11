source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.5.1"

gem "rails", "~> 5.2.0"

gem "bootsnap", require: false
gem "pg"
gem "puma"
gem "rollbar"
gem "sass-rails"
gem "skylight"
gem "turbolinks"
gem "uglifier"
gem "webpacker"

group :development, :test do
  gem "byebug"
  gem "factory_bot_rails"
  gem "rspec-rails"
end

group :development do
  gem "flamegraph"
  gem "listen"
  gem "memory_profiler"
  gem "rack-mini-profiler"
  gem "rubocop", require: false
  gem "spring"
  gem "spring-commands-rspec"
  gem "spring-watcher-listen"
  gem "stackprof"
  gem "web-console"
end

group :test do
  gem "bullet"
  gem "capybara"
  gem "database_cleaner"
  gem "domino", github: "emilford/domino"
  gem "selenium-webdriver"
  gem "shoulda-matchers"
end

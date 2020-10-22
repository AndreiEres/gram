# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.6.5"

gem "bootsnap", ">= 1.4.2", require: false
gem "jbuilder", "~> 2.7"
gem "omniauth"
gem "omniauth-github"
gem "pg", ">= 0.18", "< 2.0"
gem "puma", "~> 4.1"
gem "rails", "~> 6.0.3", ">= 6.0.3.3"
gem "sass-rails", ">= 6"
gem "webpacker", "~> 4.0"

group :development, :test do
  gem "brakeman"
  gem "bundler-audit"
  gem "byebug", platforms: %i[mri mingw x64_mingw]
  gem "factory_bot_rails"
  gem "rspec-rails"
  gem "rubocop"
  gem "rubocop-rails"
  gem "rubocop-rspec"
end

group :development do
  gem "guard-rubocop"
  gem "listen", "~> 3.2"
  gem "web-console", ">= 3.3.0"
end

group :test do
  gem "database_cleaner-active_record"
  gem "shoulda-matchers"
end

gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]

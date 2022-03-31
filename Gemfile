source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'
gem 'rails', '~> 6.0.2', '>= 6.0.2.1'
gem 'bcrypt'
gem 'faker'
gem 'carrierwave'
gem 'mini_magick'
gem 'will_paginate'
gem 'bootstrap-will_paginate'
gem 'puma', '~> 4.3'
gem 'bootstrap-sass'
gem 'sass-rails', '>= 6'
gem 'bootstrap'
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'webpacker'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'rails-i18n'
gem 'counter_culture'
gem 'geocoder'
gem 'rspec_junit_formatter'
gem 'dotenv-rails'

group :development, :test do
  gem 'sqlite3'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails'
  gem 'factory_bot_rails'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara'
end

group :production do
  gem 'fog'
  gem 'mysql2'
end
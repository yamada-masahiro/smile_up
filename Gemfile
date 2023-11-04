source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.2"

gem "rails", "~> 7.0.8"
gem 'devise', "~> 4.9.2"
gem 'slim-rails'
gem "sprockets-rails"
gem "sqlite3", "~> 1.4"
gem "puma", "~> 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
# gem "redis", "~> 4.0"
# gem "kredis"
gem "bcrypt", "~> 3.1.7"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
gem "bootstrap-sass"
gem "sassc-rails"
# gem "image_processing", "~> 1.2"
gem "validate_url"
gem "will_paginate"
gem "bootstrap-will_paginate"

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "gimei"
end

group :development do
  gem "web-console"
  # gem "rack-mini-profiler"
  # gem "spring"
  gem "html2slim"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "minitest-reporters"
end

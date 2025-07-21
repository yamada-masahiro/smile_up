source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.2"

gem "rails", "~> 7.1.0"
gem 'devise', '>= 4.9.3'
gem "sprockets-rails", ">= 3.5.0"
gem "sqlite3", "~> 1.4"
gem "puma", "~> 5.0"
gem "importmap-rails", ">= 1.2.2"
gem "turbo-rails", ">= 2.0.0"
gem "stimulus-rails", ">= 1.3.1"
gem "jbuilder", ">= 2.12.0"
# gem "redis", "~> 4.0"
# gem "kredis"
# gem "bcrypt", "~> 3.1.7"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
# gem "sassc-rails"
# gem "image_processing", "~> 1.2"

group :development, :test do
  gem "debug", ">= 1.9.0", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem "web-console"
  # gem "rack-mini-profiler"
  # gem "spring"
end

group :test do
  gem "capybara", ">= 3.40.0"
  gem "selenium-webdriver", ">= 4.15.0"
end

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.0"


gem "rails", "~> 7.0.2", ">= 7.0.2.3"
gem "sprockets-rails"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
# Bundle and transpile JavaScript [https://github.com/rails/jsbundling-rails]
gem "jsbundling-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "cssbundling-rails"
gem "jbuilder"
gem "redis", "~> 4.0"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false

# Use Sass to process CSS
# gem "sassc-rails"

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem "web-console"
  gem "better_errors"
  gem "binding_of_caller"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end

gem 'devise'
gem "haml-rails"
gem 'classy_enum', '~> 4.0'

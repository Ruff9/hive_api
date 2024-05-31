source "https://rubygems.org"

ruby "3.3.2"

gem "rails", "~> 7.1.3"

gem "pg", "~> 1.1"
gem "puma", ">= 5.0"
gem "bootsnap", require: false

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin Ajax possible
# gem "rack-cors"

group :development, :test do
  gem "debug", platforms: %i[ mri windows ]
  gem 'rspec-rails', '~> 6.1.0'
  gem 'dotenv'
end

group :development do
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end


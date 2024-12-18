source "https://rubygems.org"

# Rails
gem "rails", github: "rails/rails", branch: "main"

# Database
gem "sqlite3", ">= 2.1"
# gem "pg", "~> 1.1"

# Web server
gem "puma", ">= 5.0.3"

# Asset management
gem "propshaft"
# gem "sprockets-rails", ">= 2.0.0", require: false  # May conflict with Rails 8

# Hotwire
gem "turbo-rails"
gem "stimulus-rails"
gem "importmap-rails", ">= 1.2.3"
gem "tailwindcss-rails"
# gem "dartsass-rails"

# Caching and Queuing
gem "solid_cache"
gem "solid_queue"
gem "solid_cable"

# Authentication and Security
gem "bcrypt", "~> 3.1.11", require: false
gem "jwt", "~> 2.5"
gem "email_validator"

# Utilities
gem "redis", ">= 4.0.1", require: false
gem "redis-namespace"
gem "launchy"
gem "prism"
gem "useragent", require: false

# Performance
gem "rack-cache", "~> 1.2"
gem "rack-cors"

# Rails enhancements
gem "kamal", require: false
gem "thruster", require: false

# Windows platform gems
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]
gem "wdm", ">= 0.1.0", platforms: [:windows]

# Essential Gems
gem "bootsnap", ">= 1.4.4", require: false
# gem "webrick", require: false
# gem "jbuilder", require: false

# HTTP and WebSocket Clients
gem "aws-sdk-sns", require: false

# Icon Libraries
gem "rails_heroicon"

# Platform-specific Gems
gem "libxml-ruby", platforms: :ruby
gem "connection_pool", require: false
gem "rexml", require: false
gem "msgpack", ">= 1.7.0", require: false

# Version control of rack
rack_version = ENV.fetch("RACK", "~> 3.0")
if rack_version != "head"
  gem "rack", rack_version
else
  gem "rack", git: "https://github.com/rack/rack.git", branch: "main"
end

# Development and Test
group :development, :test do
  gem "faker"

  gem "webmock"
  gem "httpclient", github: "nahi/httpclient", branch: "master", require: false
  gem "websocket-client-simple", github: "matthewd/websocket-client-simple", branch: "close-race", require: false

  gem "dotenv-rails"
  gem "dotenv"
  gem "debug", platforms: %i[mri windows], require: "debug/prelude"
  gem "pry"

  # Static analysis for security vulnerabilities
  gem "brakeman", require: false

  # Development tools
  gem "annotate"
  gem "factory_bot_rails"
  gem "foreman"
  gem "letter_opener"
  gem "letter_opener_web"
  gem "rufo"
  gem "bundler-audit"
  gem "rspec-rails"
  gem "guard-rspec", require: false
end

# Development only
group :development do
  gem "web-console"
  gem "hotwire-spark"
  # gem "rack-mini-profiler"  # May conflict with Rails 8
  # gem "spring"              # May conflict with Rails 8
end

# Test only
group :test do
  gem "database_cleaner-active_record"
  gem "rspec-json_expectations"
  gem "shoulda-matchers"
  gem "simplecov", require: false
end

# Linting
group :lint do
  gem "syntax_tree", "6.1.1", require: false
end

group :rubocop do
  gem "rubocop", ">= 1.25.1", require: false
  gem "rubocop-packaging", require: false
  gem "rubocop-performance", require: false
  gem "rubocop-rails", require: false
  gem "rubocop-md", require: false
  gem "rubocop-factory_bot"
  gem "rubocop-rails-omakase", require: false
  gem "rubocop-rspec"
end

group :mdl do
  gem "mdl", "!= 0.13.0", require: false
end

# Documentation
group :doc do
  gem "sdoc", git: "https://github.com/rails/sdoc.git", branch: "main"
  gem "rdoc", "~> 6.7"
  gem "redcarpet", "~> 3.2.3", platforms: :ruby
  gem "w3c_validators", "~> 1.3.6"
  gem "rouge"
  gem "rubyzip", "~> 2.0"
end

# Background Jobs
group :job do
  gem "resque", require: false
  gem "resque-scheduler", require: false
  gem "sidekiq", require: false
  gem "sucker_punch", require: false
  gem "queue_classic", ">= 4.0.0", require: false, platforms: :ruby
  gem "sneakers", require: false
  gem "backburner", require: false
end

# Storage
group :storage do
  gem "aws-sdk-s3", require: false
  gem "google-cloud-storage", "~> 1.11", require: false
  gem "azure-storage-blob", "~> 2.0", require: false
  gem "image_processing", "~> 1.2"
end

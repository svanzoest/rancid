# frozen_string_literal: true

source 'https://rubygems.org'

# resolve nokogiri updates for chefdk, although it may force chefdk now
# https://github.com/chef/chef-dk/issues/278#issuecomment-89251860
ENV['PKG_CONFIG_PATH'] = '/opt/chefdk/embedded/lib/pkgconfig'

gem 'berkshelf', '~> 7.0', '>= 7.0.8'

group :unit do
  gem 'chefspec',         '~> 8.0', '>= 8.0.0'
  gem 'foodcritic',       '~> 16.1', '>= 16.1.1'
  gem 'rspec_junit_formatter'
  gem 'rubocop', '~> 0.48'
  gem 'rubocop-checkstyle_formatter'
end

group :integration do
  gem 'kitchen-digitalocean', :require => false
  gem 'kitchen-docker', :require => false
  gem 'kitchen-ec2', :require => false
  gem 'kitchen-vagrant', '~> 1.6', :require => false
  gem 'test-kitchen', '~> 2.3.2'
end

group :development do
  gem 'guard', '~> 2.14'
  gem 'guard-rubocop',    '~> 1.2'
  # gem 'guard-foodcritic', '~> 2.1'
  gem 'guard-kitchen',    '~> 0.0'
  gem 'guard-rspec',      '~> 4.7.3'
  gem 'psych', '~> 3.1.0'
  gem 'rb-fsevent', require: false
  gem 'rb-inotify', require: false
  gem 'terminal-notifier-guard', require: false
  require 'rbconfig'
  if RbConfig::CONFIG['target_os'] =~ /mswin|mingw|cygwin/i
    gem 'wdm', '>= 0.1.1'
    gem 'win32console'
  end
end

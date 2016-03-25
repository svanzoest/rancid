source 'https://rubygems.org'

gem 'berkshelf', '~> 4.3.1'

group :unit do
  gem 'foodcritic', '~> 5.0.0'
  gem 'rubocop', '~> 0.38.0'
  gem 'chefspec', '~> 4.6.0'
end

group :integration do
  gem 'test-kitchen', '~> 1.6.0'
  gem 'kitchen-vagrant', :require => false
  gem 'kitchen-docker', :require => false
end

group :release do
  gem 'rspec_junit_formatter'
  gem 'rubocop-checkstyle_formatter'
end

group :development do
  gem 'guard', '~> 2.13.0'
  gem 'guard-rubocop', '~> 1.2.0'
  gem 'guard-foodcritic', '~> 2.0.0'
  gem 'guard-kitchen', '~> 0.0.2'
  gem 'guard-rspec', '~> 4.6.4'
  gem 'rb-fsevent', :require => false
  gem 'rb-inotify', :require => false
  gem 'terminal-notifier-guard', :require => false
end

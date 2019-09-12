# frozen_string_literal: true

name 'rancid'
maintainer  'Sander van Zoest'
maintainer_email 'cookbooks@vanzoest.com'
license          'Apache-2.0'
description 'Installs/Configures RANCID (Really Awesome New Cisco confIg Differ)'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
source_url       'https://github.com/svanzoest/rancid'
issues_url       'https://github.com/svanzoest/rancid/issues'
version '0.1.0'
chef_version '>= 13.9'
supports 'ubuntu', '>= 14.04'
supports 'debian', '>= 7.0'
supports 'centos', '>= 6.6'
depends 'cron'

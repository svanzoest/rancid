# frozen_string_literal: true

name 'rancid'
maintainer  'Sander van Zoest'
maintainer_email 'cookbooks@vanzoest.com'
license 'Apache v2.0'
description 'Installs/Configures RANCID (Really Awesome New Cisco confIg Differ)'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.1.0'
supports 'ubuntu', '>= 14.04'
supports 'debian', '>= 7.0'
supports 'centos', '>= 6.6'
depends 'cron'

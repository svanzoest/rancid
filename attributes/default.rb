#
# Cookbook Name:: rancid
# Attributes:: default
#
# Copyright (C) 2015 Alexander van Zoest
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

case node['platform']
when 'debian', 'ubuntu'
  default['rancid']['user']                 = 'root'
  default['rancid']['group']                = 'root'
  default['rancid']['path']                 = '/bin:/usr/bin:/usr/sbin:/usr/local/bin'
  default['rancid']['conf']['path']         = node['rancid']['path']
  default['rancid']['conf']['basedir']      = '/var/lib/rancid'
  default['rancid']['conf']['logdir']       = '/var/logs/rancid'
  default['rancid']['bindir']               = '/usr/bin'
  default['rancid']['etcdir']               = '/etc/rancid'
  default['rancid']['vardir']               = '/var/rancid'
  default['rancid']['conf']['tmpdir']       = '/tmp'
  default['rancid']['lg']['cache_dir']  = './tmp'
  default['rancid']['lg']['log']        = './tmp/lg.log'
  default['rancid']['lg']['routerdb']   = '/etc/rancid/router.db'
else
  default['rancid']['user']                 = 'rancid'
  default['rancid']['group']                = 'rancid'
  default['rancid']['path']                 = '/bin:/usr/bin:/usr/sbin:/usr/local/rancid/bin'
  default['rancid']['conf']['path']         = node['rancid']['path']
  default['rancid']['conf']['basedir']      = '/var/lib/rancid'
  default['rancid']['conf']['logdir']       = '/var/lib/rancid/logs'
  default['rancid']['conf']['bindir']       = '/usr/local/rancid/bin'
  default['rancid']['etcdir']               = '/usr/local/rancid/etc'
  default['rancid']['vardir']               = '/usr/local/rancid/var'
  default['rancid']['conf']['tmpdir']       = '/tmp'
  default['rancid']['lg']['cache_dir']      = './tmp'
  default['rancid']['lg']['log']            = './tmp/lg.log'
  default['rancid']['lg']['routerdb']       = '/etc/rancid/router.db'
end

# Important files
# default['rancid']['cloginrc'] = /usr/local/rancid/.cloginrc
# /usr/local/rancid/etc/rancid.conf
# (list of devices to backup up=backup, down=dontbackup)
# /usr/local/rancid/var/networking/router.db
# (file where you can specify the mail from address, search for sendmail eg sendmail -fsupport@test.com -FRancid -t)
# default['rancid']['control_rancid'] = /usr/local/rancid/bin/control_rancid
# default['rancid']['routerdb']
default['rancid']['config_mode']  = 0600

# rancid configuration attributes
default['rancid']['umask']           = '027'
default['rancid']['conf']['list_of_groups']  = ''
# options: NO | YES | ALL
default['rancid']['conf']['filter_pwds']     = 'YES'
default['rancid']['conf']['aclsort']         = 'YES'
default['rancid']['conf']['cvsroot']         = "#{node['rancid']['basedir']}/CVS"
default['rancid']['conf']['maildomain']      = node['domain']
default['rancid']['conf']['mailheaders']     = 'Precedence: bulk'
default['rancid']['conf']['htmlmails']       = 'YES'
default['rancid']['conf']['max_rounds']      = 4
default['rancid']['conf']['nocommstr']       = 'YES'
# default['rancid']['conf']['nopipe']          = ''
default['rancid']['conf']['oldtime']         = 24
default['rancid']['conf']['par_count']       = 5
# options: cvs, svn, git, git-remote
default['rancid']['conf']['rcssys']          = 'cvs'
default['rancid']['conf']['term']            = 'network'
default['rancid']['conf']['lc_collate']      = 'POSIX'

# looking glass configuration attributes
default['rancid']['lg']['bgp_rt']       = '1'
default['rancid']['lg']['cache_time']   = 600
default['rancid']['lg']['cloginrc']     = '$HOME/.cloginrc'
default['rancid']['lg']['image']        = '<img src=\'/icons/rancid.gif\' alt=\'rancid\'/>'
default['rancid']['lg']['info']         = "For Support contact <a href='mailto:webmaster@#{node['rancid']['conf']['maildomain']}'>webmaster</a>"
default['rancid']['lg']['single']       = '0'
default['rancid']['lg']['strip']        = '1'
default['rancid']['lg']['style']        = '/style/style.css'

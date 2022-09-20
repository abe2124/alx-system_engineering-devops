Skip to content
Search or jump to…
Pulls
Issues
Marketplace
Explore
 
@abe2124 
Emmastro
/
alx-system_engineering-devops
Public
Code
Issues
1
Pull requests
Actions
Projects
Security
Insights
alx-system_engineering-devops/0x0C-web_server/7-puppet_install_nginx_web_server.pp
@Emmastro
Emmastro mysql replica
Latest commit 1adf31d on May 4, 2021
 History
 1 contributor
21 lines (17 sloc)  448 Bytes

# Setup nginx server

package { 'nginx':
  ensure     => 'installed',
}

file { '/var/www/html/index.html':
  content => 'Hello World!',
}

file_line { 'aaaaa':
  ensure => 'present',
  path   => '/etc/nginx/sites-available/default',
  after  => 'listen 80 default_server;',
  line   => 'rewrite ^/redirect_me https://www.youtube.com/watch?v=ywA6AUZJ4EE permanent;',
}

service { 'nginx':
  ensure  => running,
  require => Package['nginx'],
}
Footer
© 2022 GitHub, Inc.
Footer navigation
Terms
Privacy
Security
Status
Docs
Contact GitHub
Pricing
API
Training
Blog
About
You have no unread notifications

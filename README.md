vagrant-chef-lamp-wordpress-example
===================================

 Vagrant + CentOS6.5 + Apache + php + Wordpress sample
 
```
bundle install

vagrant up

cd chef-repo

bundle exec berks install

bundle exec knife solo prepare 192.168.33.10

bundle exec knife solo cook 192.168.33.10

# open your browser
http://192.168.33.10
```



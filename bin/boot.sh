export APACHE_ROOT=/home/vcap/app/httpd

mv $APACHE_ROOT/conf/httpd.conf $APACHE_ROOT/conf/httpd.conf.org
erb $APACHE_ROOT/conf/httpd.conf.org > $APACHE_ROOT/conf/httpd.conf
(tail $APACHE_ROOT/logs/*log &)
exec $APACHE_ROOT/bin/httpd -DFOREGROUND

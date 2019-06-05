export APP_ROOT=/home/vcap/app
export APACHE_ROOT=/home/vcap/app/httpd

mv $APACHE_ROOT/conf/httpd.conf $APACHE_ROOT/conf/httpd.conf.org
erb $APACHE_ROOT/conf/httpd.conf.org > $APACHE_ROOT/conf/httpd.conf
mv $APP_ROOT/custom/htdocs $APACHE_ROOT
(tail $APACHE_ROOT/logs/*log &)
exec $APACHE_ROOT/bin/httpd -DFOREGROUND

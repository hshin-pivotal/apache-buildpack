export APP_ROOT=/home/vcap/app

mv $APP_ROOT/httpd.conf $APP_ROOT/httpd.conf.org
erb $APP_ROOT/httpd.conf.org > $APP_ROOT/httpd.conf
(tail $APP_ROOT/httpd/logs/*log &)
exec $APP_ROOT/httpd/bin/httpd -f $APP_ROOT/httpd.conf -DFOREGROUND

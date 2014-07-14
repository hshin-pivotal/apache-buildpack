# Apache buildpack

This buildpack tries to boot strap the apache proxy inside of cloudfoundry

## How to
In order to deploy the proxy to cloudfoundry.
* The application folder has to have a httpd.conf file with <pre><code>Listen <%= ENV["PORT"] %></code></pre>
* The httpd.conf has reverse proxy configured end of the file
<pre><code>ProxyPass / http://spring-music.10.244.0.34.xip.io/
ProxyPassReverse / http://spring-music.10.244.0.34.xip.io/</code></pre>
* Deploy the reverse proxy
<pre><code>cf push proxy -b http://github.com/datianshi/apache-buildpack</pre></code>

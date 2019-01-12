Docker run:
sudo docker run -a stdin -a stdout -i -t --net=host --restart unless-stopped --name apache -v /opt/Docker/apache/html/:/var/www -v /opt/Docker/apache/sites-available:/etc/apache2/sites-available -v /opt/Docker/apache/letsencrypt:/var/lib/acme klajmajk/apache

Acmetool pro certifikáty
https://github.com/hlandau/acme

Spustit v containeru:
1) acmetool quickstart
2) acmetool want adamklima.cz www.adamklima.cz home.adamklima.cz home-jihlava.adamklima.cz camunda.adamklima.cz chat.adamklima.cz gitlab.adamklima.cz
3) certifikáty jsou v /var/lib/acme

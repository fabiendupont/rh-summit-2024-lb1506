FROM registry.access.redhat.com/ubi9/ubi

RUN dnf install -y httpd
RUN echo Hello RedHat > /var/www/html/index.html

ENTRYPOINT /usr/sbin/httpd -DFOREGROUND

FROM docker.io/niektoniekde/php81fpm:latest

USER root
# install php81 extensions
RUN apk --no-cache add php81-bcmath \
  php81-ctype            \
  php81-curl             \
  php81-dom              \
  php81-fileinfo         \
  php81-mbstring         \
  php81-openssl          \
  php81-pdo              \
  php81-pdo_mysql        \
  php81-tokenizer        \
  php81-xml

# install composer
RUN apk --no-cache add composer
# install Node.js
RUN apk --no-cache add nodejs
# install NPM
RUN apk --no-cache add npm

USER phpfpm
ENTRYPOINT ["/usr/local/bin/entrypoint.bash"]

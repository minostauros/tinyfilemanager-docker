FROM php:alpine3.11

LABEL maintainer minostauros <6764739+minostauros@users.noreply.github.com>

RUN apk --update add git less openssh && \
    mkdir /app && \
    cd /app && \
    git clone https://github.com/prasathmani/tinyfilemanager.git && \
    sed -i.bak -e "s/\$root\_path = \$\_SERVER\['DOCUMENT_ROOT'\];/\$root_path = \'\/data\';/g" \
                  /app/tinyfilemanager/tinyfilemanager.php && \
    apk del git less openssh && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

RUN apk --update add zip libzip-dev && \
    docker-php-ext-install zip fileinfo

WORKDIR /app/tinyfilemanager

ENTRYPOINT ["php"]
CMD ["-S", "0.0.0.0:80", "tinyfilemanager.php"]

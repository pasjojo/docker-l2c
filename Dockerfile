FROM nginx

# VOLUME /usr/share/nginx/html

# RUN set -x && apt-get update && apt-get install --no-install-recommends --no-install-suggests -y git \
#	&& rm -rf /var/lib/apt/list/*

# RUN apt-get purge -y --auto-remove  

# WORKDIR /usr/share/nginx

COPY html /usr/share/nginx/html
RUN chmod ugo+rX /usr/share/nginx/html -R

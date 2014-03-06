FROM tutum/lamp:latest
MAINTAINER Fernando Mayo <fernando@tutum.co>

# Set up local database
RUN /create_db.sh wordpress

# Download latest version of Wordpress into /app
RUN rm -fr /app && git clone https://github.com/WordPress/WordPress.git /app

# Configure Wordpress to connect to local DB
ADD wp-config.php /app/wp-config.php

EXPOSE 80 3306
CMD ["/run.sh"]
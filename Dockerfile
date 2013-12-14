FROM tutum/lamp:latest
MAINTAINER Fernando Mayo <fernando@tutum.co>

RUN rm -fr /app
RUN git clone https://github.com/WordPress/WordPress.git /app
EXPOSE 80
CMD ["/run.sh"]
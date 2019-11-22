from ruby:2.6.5-alpine

RUN apk add --update build-base libffi-dev
RUN gem install transmission-rss

CMD ["transmission-rss", "-c", "/config/transmission-rss.conf"]

VOLUME /config

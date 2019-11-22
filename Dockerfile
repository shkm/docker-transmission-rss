from ruby:2.6.5-alpine

ENV UID 1000
ENV GID 1000

RUN apk add --update build-base libffi-dev shadow
RUN gem install transmission-rss --no-doc
RUN adduser -D -g '' abc

COPY "entrypoint.sh" /usr/local/bin

ENTRYPOINT ["entrypoint.sh"]
CMD ["transmission-rss", "-c", "/config/transmission-rss.conf"]

VOLUME /config

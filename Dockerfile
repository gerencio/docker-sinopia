FROM gerencio/alpine-env:node-6.9.1
MAINTAINER Clayton Silva <clayton@xdevel.com.br>
RUN adduser -D -g "" sinopia
RUN mkdir -p /opt/sinopia/storage
WORKDIR /opt/sinopia
RUN npm install js-yaml sinopia sinopia-github-oauth
RUN chown -R sinopia:sinopia /opt/sinopia
USER sinopia
RUN mkdir config
ADD config.yaml /tmp/config.yaml
ADD start.sh /opt/sinopia/start.sh
CMD ["sh","/opt/sinopia/start.sh"]
EXPOSE 4873
VOLUME /opt/sinopia
